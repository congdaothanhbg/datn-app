@extends('backend.layouts.master')
@section('title', 'Danh mục bài viết: Chỉnh sửa')
@section('main-content')
    <div class="container-fluid">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('admin') }}">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Danh mục bài viết: Thêm mới</li>
            </ol>
        </nav>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Danh mục bài viết: Thêm mới</h6>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ route('danh-muc-bai-viet.update', $danhMuc->id) }}">
                    @csrf
                    @method('put')
                    <div class="form-group">
                        <label for="tieu_de" class="col-form-label">Tiêu đề</label>
                        <input id="tieu_de" type="text" name="tieu_de" value="{{ $danhMuc->tieu_de }}"
                            class="form-control">
                        @error('tieu_de')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="trang_thai" class="col-form-label">Trạng thái</label>
                        <select name="trang_thai" class="form-control">
                            <option value="Khả dụng" {{ $danhMuc->trang_thai == 'Khả dụng' ? 'selected' : '' }}>Khả dụng
                            </option>
                            <option value="Không khả dụng" {{ $danhMuc->trang_thai == 'Không khả dụng' ? 'selected' : '' }}>
                                Không khả dụng</option>
                        </select>
                        @error('trang_thai')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group mb-3">
                        <button type="submit" class="btn btn-success">Sửa</button>
                        <button type="reset" class="btn btn-secondary">Huỷ</button>
                    </div>
                    <div class="form-group mb-3">
                        <a href="{{ route('danh-muc-bai-viet.index') }}">Quay lại danh sách</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
