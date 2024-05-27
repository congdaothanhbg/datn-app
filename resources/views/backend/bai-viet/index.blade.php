@extends('backend.layouts.master')
@section('title', 'Quản lý bài viết')
@section('main-content')
    <div class="row">
        <div class="col-md-12">
            @include('backend.layouts.thong-bao')
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{ route('admin') }}">Dashboard</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Quản lý bài viết
            </li>
        </ol>
    </nav>
    <div class="card shadow">

        <div class="card-header">
            <h5 class="m-0 font-weight-bold text-primary float-left">Danh sách bài viết</h5>
            <a href="{{ route('bai-viet.create') }}" class="btn btn-primary btn-sm float-right" data-toggle="tooltip"
                data-placement="bottom" title="Thêm mới">
                <i class="fas fa-plus"></i> Thêm mới
            </a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                @if (count($dsBaiViet) > 0)
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên bài viết</th>
                                <th>Danh mục bài viết</th>
                                <th>Tác giả</th>
                                <th>Hình ảnh</th>
                                <th>Video</th>
                                <th>Trạng thái</th>
                                <th>Quản lý</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Tên bài viết</th>
                                <th>Danh mục bài viết</th>
                                <th>Tác giả</th>
                                <th>Hình ảnh</th>
                                <th>Video</th>
                                <th>Trạng thái</th>
                                <th>Quản lý</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($dsBaiViet as $baiViet)
                                @php
                                    $author_info = DB::table('users')
                                        ->select('name')
                                        ->where('id', $baiViet->user_id)
                                        ->get();
                                @endphp
                                <tr>
                                    <td>{{ $baiViet->id }}</td>
                                    <td>{{ $baiViet->ten_bai_viet }}</td>
                                    <td>
                                        @if ($baiViet->cat_info === null)
                                            Không thuộc danh mục nào
                                        @else
                                            {{ $baiViet->cat_info->ten_danh_muc }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($author_info === null)
                                            @foreach ($author_info as $author)
                                                {{ $author->name }}
                                            @endforeach
                                        @else
                                            Không xác định
                                        @endif
                                    </td>
                                    <td>
                                        @if ($baiViet->hinh_anh)
                                            <img src="{{ $baiViet->hinh_anh }}" class="img-fluid zoom"
                                                style="max-width:80px" alt="{{ $baiViet->hinh_anh }}">
                                        @else
                                            <img src="{{ asset('backend/img/thumbnail-default.jpg') }}" class="img-fluid"
                                                style="max-width:80px" alt="avatar.png">
                                        @endif
                                    </td>
                                    <td>
                                        @if ($baiViet->video)
                                            <video src="{{ $baiViet->video }}" style="max-width:80px">
                                            @else
                                                Không có video
                                        @endif
                                    </td>
                                    <td>
                                        @if ($baiViet->trang_thai === 1)
                                            <span class="badge badge-success">Khả dụng</span>
                                        @else
                                            <span class="badge badge-warning">Không khả dụng</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('bai-viet.edit', $baiViet->id) }}"
                                            class="btn btn-primary btn-sm">
                                            Chỉnh sửa
                                        </a>
                                        <form method="POST" action="{{ route('bai-viet.destroy', [$baiViet->id]) }}">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm dltBtn" data-id={{ $baiViet->id }}>
                                                Xoá bỏ
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                @else
                    <h6 class="text-center">Không tìm thấy bài viết nào! Vui lòng tạo bài viết mới.</h6>
                @endif
            </div>
        </div>
    </div>
@endsection
@push('styles')
    @include('backend.layouts.index-push-styles')
    <style>
        .zoom {
            transition: transform .2s;
            /* Animation */
        }

        .zoom:hover {
            transform: scale(5);
        }
    </style>
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
