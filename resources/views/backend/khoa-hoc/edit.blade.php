@extends('backend.layouts.master')
@section('title', 'Chỉnh sửa khoá học')
@section('main-content')
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item">
            <a href="{{ route('admin') }}">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('khoa-hoc.index') }}">Quản lý khóa học</a>
        </li>
        <li class="breadcrumb-item active">
            Chỉnh sửa
        </li>
    </ol>
    <h1 class="mt-4">Chỉnh sửa khóa học</h1>
    <form method="POST" action="{{ route('khoa-hoc.update', $khoaHoc) }}">
        @csrf
        @method('put')
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Chỉnh sửa khoá học
            </div>
            <div class="card-body">
                <div class="row g-3">
                    <div class="col-12">
                        <label for="ten_khoa_hoc" class="form-label">Tên khoá học:</label>
                        <input type="text" id="ten_khoa_hoc" name="ten_khoa_hoc" class="form-control"
                            value="{{ $khoaHoc->ten_khoa_hoc }}" required>
                    </div>
                </div>
                <div class="row g-3">
                    <div class="col-12">
                        <label for="mo_ta" class="form-label">Mô tả:</label>
                        <textarea id="mo_ta" name="mo_ta" class="form-control" required>{{ $khoaHoc->mo_ta }}</textarea>
                    </div>
                </div>
                <hr class="my-4">
                <button type="submit" class="btn btn-primary">Cập nhật</button><br>
                <a href="{{ route('khoa-hoc.index') }}">Quay lại danh sách</a>
            </div>
        </div>
    </form>
@endsection
