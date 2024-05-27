@extends('backend.layouts.master')
@section('title', 'Thêm đề thi thử')
@section('main-content')
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{ route('admin') }}">
                    Dashboard
                </a>
            </li>
            <li class="breadcrumb-item">
                <a href="{{ route('khoa-hoc.index') }}">
                    Quản lý khóa học
                </a>
            </li>
            <li class="breadcrumb-item">
                <a href="{{ route('khoa-hoc.de-thi.index', $khoaHoc) }}">
                    Quản lý đề thi
                </a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Chỉnh sửa
            </li>
        </ol>
    </nav>
    <h1>Chỉnh sửa đề thi</h1>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    <form method="POST" action="{{ route('khoa-hoc.de-thi.update', [$khoaHoc, $deThi]) }}">
        @csrf
        @method('put')
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa đề thi</h6>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="ten_de_thi" class="form-label">Tên đề thi</label>
                    <input id="ten_de_thi" type="text" name="ten_de_thi" class="form-control"
                        value="{{ $deThi->ten_de_thi }}" required>
                    @error('ten_de_thi')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <hr class="table-group-divider">
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật</button><br>
            <button type="reset" class="btn btn-secondary">Huỷ bỏ</button><br>
            <a href="{{ route('khoa-hoc.de-thi.index', $khoaHoc) }}">Quay lại danh sách</a>
        </div>
    </form>
@endsection
