@extends('backend.layouts.master')
@section('title', 'Thêm mới bài giảng')
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
                <a href="{{ route('khoa-hoc.bai-giang.index', $khoaHoc) }}">
                    Quản lý bài giảng
                </a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Thêm mới
            </li>
        </ol>
    </nav>
    <h1>Tạo một bài giảng mới</h1>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    <form method="POST" action="{{ route('khoa-hoc.bai-giang.store', $khoaHoc) }}">
        @csrf
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Thêm mới bài giảng</h6>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="thu_tu" class="form-label">
                        Thứ tự
                    </label>
                    <input id="thu_tu" type="number" name="thu_tu"
                        class="form-control @error('thu_tu') is-invalid @enderror" value="{{ old('thu_tu') }}" required min="1">
                    @error('thu_tu')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="ten_bai_giang" class="form-label">
                        Tên bài giảng
                    </label>
                    <input id="ten_bai_giang" type="text" name="ten_bai_giang"
                        class="form-control @error('ten_bai_giang') is-invalid @enderror" value="{{ old('ten_bai_giang') }}"
                        required>
                    @error('ten_bai_giang')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="form-group mb-3">
                    <label for="noi_dung" class="form-label">
                        Nội dung
                    </label>
                    <textarea id="noi_dung" name="noi_dung" class="form-control @error('noi_dung') is-invalid @enderror" cols="30"
                        rows="10" required>{{ old('noi_dung') }}</textarea>
                    @error('noi_dung')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="thumbnail" class="form-label">
                        Hình ảnh
                    </label>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <a id="lfm" data-input="thumbnail" data-preview="holder"
                                class="btn btn-primary text-white">
                                <i class="fa-solid fa-image"></i> Chọn
                            </a>
                        </span>
                        <input id="thumbnail" class="form-control @error('hinh_anh') is-invalid @enderror" type="text"
                            name="hinh_anh" value="{{ old('hinh_anh') }}">
                    </div>
                    <div id="holder" style="margin-top:15px;max-height:100px;"></div>
                    @error('hinh_anh')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="video" class="form-label">
                        Video
                    </label>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <a id="lfmVideo" data-input="video" data-preview="video"
                                class="btn btn-primary text-white">
                                <i class="fa-solid fa-video"></i> Chọn
                            </a>
                        </span>
                        <input id="video" class="form-control @error('video') is-invalid @enderror" type="text"
                            name="video" value="{{ old('video') }}">
                    </div>
                    <div id="video" style="margin-top:15px;max-height:100px;"></div>
                    @error('video')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="trang_thai" class="form-label">
                        Trạng thái <span class="text-danger">*</span>
                    </label>
                    <select name="trang_thai" class="form-select">
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
                <a href="{{ route('khoa-hoc.bai-giang.index', $khoaHoc) }}">Quay lại danh sách</a>
            </div>
        </div>
    </form>
@endsection
@push('styles')
    <link rel="stylesheet" href="{{ asset('backend/summernote/summernote.min.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
@endpush
@push('scripts')
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
    <script src="{{ asset('backend/summernote/summernote.min.js') }}"></script>
    <script>
        $('#lfm').filemanager('image');
        $('#lfmVideo').filemanager('video');
        $(document).ready(function() {
            $('#noi_dung').summernote({
                placeholder: "Soạn thảo nội dung cho bài giảng ...",
                tabsize: 2,
                height: 150
            });
        });
    </script>
@endpush
