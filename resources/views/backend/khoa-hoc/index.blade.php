@extends('backend.layouts.master')
@section('title', 'Quản lý khoá học')
@section('main-content')
    <div class="row">
        <div class="col-12">
            @include('backend.layouts.thong-bao')
        </div>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="">Dashboard</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Quản lý khóa học
            </li>
        </ol>
    </nav>
    <h1>Quản lý khóa học</h1>
    {{-- <a href="{{ route('khoa-hoc.create') }}" class="btn btn-primary">Thêm mới</a> --}}
    @if ($dsKhoaHoc->isEmpty())
        <div class="card">
            <div class="card-body">
                Không tìm thấy khoá học nào! Vui lòng tạo khoá học mới.
            </div>
        </div>
    @else
        <div class="card">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Danh sách khoá học
            </div>
            <div class="card-body">
                <table class="table table-striped table-hover table-bordered table-sm" id="dataTable">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tên khoá học</th>
                            <th>Mô tả</th>
                            <th class="col-3">Quản lý</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $stt = 0;
                        @endphp
                        @foreach ($dsKhoaHoc as $khoaHoc)
                            <tr>
                                <td scope="row">{{ ++$stt }}</td>
                                <td>{{ $khoaHoc->ten_khoa_hoc }}</td>
                                <td>{{ $khoaHoc->mo_ta }}</td>
                                <td>
                                    <a href="{{ route('khoa-hoc.edit', $khoaHoc) }}" class="btn btn-primary btn-sm">
                                        Chỉnh sửa
                                    </a>
                                    {{-- <form method="POST" action="{{ route('khoa-hoc.destroy', $khoaHoc) }}">
                                        @csrf
                                        @method('delete')
                                        <button class="btn btn-danger btn-sm dltBtn" data-id={{ $khoaHoc }}>
                                            Xoá bỏ
                                        </button>
                                    </form> --}}
                                    <a href="{{ route('khoa-hoc.bai-giang.index', $khoaHoc) }}"
                                        class="btn btn-success btn-sm">
                                        Bài giảng
                                    </a>
                                    <a href="{{ route('khoa-hoc.cau-hoi.index', $khoaHoc) }}"
                                        class="btn btn-warning btn-sm">
                                        Câu hỏi
                                    </a>
                                    <a href="{{ route('khoa-hoc.de-thi.index', $khoaHoc) }}" class="btn btn-info btn-sm">
                                        Đề thi
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
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
