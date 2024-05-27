@extends('backend.layouts.master')
@section('title', 'Thêm mới khoá học')
@section('main-content')
    <h1 class="mt-4">Tạo một khóa học mới</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item">
            <a href="{{ route('admin') }}">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('khoa-hoc.index') }}">Quản lý khóa học</a>
        </li>
        <li class="breadcrumb-item active">
            Thêm mới
        </li>
    </ol>
    <form method="POST" action="{{ route('khoa-hoc.store') }}">
        @csrf
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Thêm mới khoá học
            </div>
            <div class="card-body">
                <div class="row g-3">
                    <div class="col-12">
                        <label for="ten_khoa_hoc" class="form-label">Tên khoá học:</label>
                        <input type="text" id="ten_khoa_hoc" name="ten_khoa_hoc" class="form-control" required>
                    </div>
                </div>
                <div class="row g-3">
                    <div class="col-12">
                        <label for="mo_ta" class="form-label">Mô tả:</label>
                        <textarea id="mo_ta" name="mo_ta" class="form-control" required></textarea>
                    </div>
                </div>
                <hr class="my-4">
                <button type="submit" class="btn btn-primary">Thêm</button><br>
                <a href="{{ route('khoa-hoc.index') }}">Quay lại danh sách</a>
            </div>
        </div>
    </form>
@endsection
