@extends('backend.layouts.master')
@section('title', 'Quản lý danh mục bài viết')
@section('main-content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                @include('backend.layouts.thong-bao')
            </div>
        </div>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('admin') }}">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Quản lý danh mục bài viết</li>
            </ol>
        </nav>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <h6 class="m-0 font-weight-bold text-primary col-9">Quản lý danh mục bài viết</h6>
                    <div class="col-3 text-right">
                        <a href="{{ route('danh-muc-bai-viet.create') }}"
                            class="d-sm-inline-block btn btn-sm btn-primary shadow-sm" data-toggle="tooltip"
                            data-placement="bottom" title="Thêm mới">
                            <i class="fas fa-plus fa-sm text-white"></i> Thêm mới
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    @if ($dsDanhMuc->isEmpty())
                        <div class="card">
                            <div class="card-body">
                                Không tìm thấy danh mục bài viết nào! Vui lòng tạo danh mục bài viết mới.
                            </div>
                        </div>
                    @else
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tiêu đề</th>
                                    <th>Slug</th>
                                    <th>Trạng thái</th>
                                    <th>Quản lý</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Tiêu đề</th>
                                    <th>Slug</th>
                                    <th>Trạng thái</th>
                                    <th>Quản lý</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @foreach ($dsDanhMuc as $danhMuc)
                                    <tr>
                                        <td>{{ $danhMuc->id }}</td>
                                        <td>{{ $danhMuc->ten_danh_muc }}</td>
                                        <td>{{ $danhMuc->slug }}</td>
                                        <td>
                                            @if ($danhMuc->trang_thai === 1)
                                                <span class="badge badge-success">Khả dụng</span>
                                            @else
                                                <span class="badge badge-warning">Không khả dụng</span>
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{ route('danh-muc-bai-viet.edit', $danhMuc) }}"
                                                class="btn btn-primary btn-sm">
                                                Chỉnh sửa
                                            </a>
                                            <form method="POST"
                                                action="{{ route('danh-muc-bai-viet.destroy', $danhMuc) }}">
                                                @csrf
                                                @method('delete')
                                                <button class="btn btn-danger btn-sm dltBtn" data-id={{ $danhMuc }}>
                                                    Xoá bỏ
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <span>{{ $dsDanhMuc->links() }}</span>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
@push('styles')
    @include('backend.layouts.index-push-styles')
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
