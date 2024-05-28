@extends('backend.layouts.master')
@section('title', 'Quản lý bài giảng')
@section('main-content')
    <div class="row">
        <div class="col-12">
            @include('backend.layouts.thong-bao')
        </div>
    </div>
    <h1 class="mt-4">Quản lý bài giảng</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item">
            <a href="{{ route('admin') }}">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">
            <a href="{{ route('khoa-hoc.index') }}">Quản lý khóa học</a>
        </li>
        <li class="breadcrumb-item active">
            Quản lý bài giảng
        </li>
    </ol>
    <h2 class="mt-4">Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    <a href="{{ route('khoa-hoc.bai-giang.create', $khoaHoc) }}" class="btn btn-primary">Thêm mới</a>
    @if ($dsBaiGiang->isEmpty())
        <div class="card mb-4">
            <div class="card-body">
                Không tìm thấy bài giảng nào! Vui lòng tạo bài giảng mới.
            </div>
        </div>
    @else
        <div class="card mb-4">
            <div class="card-header">
                Danh sách bài giảng
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Thứ tự</th>
                                <th>Tên bài giảng</th>
                                <th class="col-4">Nội dung</th>
                                <th class="col-2">Hình ảnh</th>
                                <th class="col-2">Video</th>
                                <th>Trạng thái</th>
                                <th>Quản lý</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Thứ tự</th>
                                <th>Tên bài giảng</th>
                                <th class="col-4">Nội dung</th>
                                <th class="col-2">Hình ảnh</th>
                                <th class="col-2">Video</th>
                                <th>Trạng thái</th>
                                <th>Quản lý</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($dsBaiGiang as $baiGiang)
                                <tr>
                                    <th>{{ $baiGiang->id }}</th>
                                    <td>{{ $baiGiang->thu_tu }}</td>
                                    <td>{{ $baiGiang->ten_bai_giang }}</td>
                                    <td class="col-4">{!! $baiGiang->noi_dung !!}</td>
                                    <td class="col-2">
                                        @if ($baiGiang->hinh_anh !== null)
                                            <img src="{{ $baiGiang->hinh_anh }}" alt="" width="200px">
                                        @endif
                                    </td>
                                    <td class="col-2">
                                        @if ($baiGiang->video !== null)
                                            <video src="{{ $baiGiang->video }}" controls width="200px"></video>
                                        @endif
                                    </td>
                                    <td>{{ $baiGiang->trang_thai }}</td>
                                    <td>
                                        <a href="{{ route('khoa-hoc.bai-giang.edit', [$khoaHoc, $baiGiang]) }}"
                                            class="btn btn-primary btn-sm">
                                            Chỉnh sửa
                                        </a>
                                        <form method="POST"
                                            action="{{ route('khoa-hoc.bai-giang.destroy', [$khoaHoc, $baiGiang]) }}">
                                            @csrf
                                            @method('delete')
                                            <a href="{{ route('khoa-hoc.bai-giang.destroy', [$khoaHoc, $baiGiang]) }}"
                                                class="btn btn-danger btn-sm dltBtn">
                                                Xoá bỏ
                                            </a>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    @endif
@endsection
@push('styles')
    @include('backend.layouts.index-push-styles')
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
