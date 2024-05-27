@extends('backend.layouts.master')
@section('title', 'Danh mục bài viết: Thêm mới')
@section('main-content')
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
            <form method="POST" action="{{ route('danh-muc-bai-viet.store') }}">
                @csrf
                <div class="form-group">
                    <label for="ten_danh_muc" class="col-form-label">Tên danh mục</label>
                    <input id="ten_danh_muc" type="text" name="ten_danh_muc" value="{{ old('ten_danh_muc') }}" class="form-control">
                    @error('ten_danh_muc')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="trang_thai" class="col-form-label">Trạng thái</label>
                    <select name="trang_thai" class="form-control">
                        <option value="1">Khả dụng</option>
                        <option value="0">Không khả dụng</option>
                    </select>
                    @error('trang_thai')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <hr class="table-group-divider">
                <button type="submit" class="btn btn-primary">Tạo</button>
                <a href="{{ route('danh-muc-bai-viet.index') }}">Quay lại danh sách</a>
            </form>
        </div>
    </div>
@endsection
