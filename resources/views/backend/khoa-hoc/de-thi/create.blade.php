@extends('backend.layouts.master')
@section('title', 'Thêm đề thi thử')
@section('main-content')
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item">
            <a href="{{ route('admin') }}">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('khoa-hoc.index') }}">Quản lý khóa học</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('khoa-hoc.de-thi.index', $khoaHoc) }}">Quản lý đề thi</a>
        </li>
        <li class="breadcrumb-item active">
            Thêm mới
        </li>
    </ol>
    <h1>Tạo một đề thi mới</h1>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    <form method="POST" action="{{ route('khoa-hoc.de-thi.store', $khoaHoc) }}">
        @csrf
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Thêm mới đề thi
            </div>
            <div class="card-body">
                <div class="row g-3">
                    <div class="col-12">
                        <label for="ten_de_thi" class="form-label">Tiêu đề</label>
                        <input id="ten_de_thi" type="text" name="ten_de_thi" class="form-control" required>

                        @error('ten_de_thi')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <hr class="my-4">
                <button type="submit" class="btn btn-primary">Thêm</button><br>
                <a href="{{ route('khoa-hoc.de-thi.index', $khoaHoc) }}">Quay lại danh sách</a>
            </div>
        </div>
    </form>
@endsection
