@extends('backend.layouts.master')
@section('title', 'Thêm mới bài viết')
@section('main-content')
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{ route('admin') }}">
                    Dashboard
                </a>
            </li>
            <li class="breadcrumb-item">
                <a href="{{ route('bai-viet.index') }}">
                    Quản lý bài viết
                </a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Thêm mới
            </li>
        </ol>
    </nav>
    <h1>Tạo một bài viết mới</h1>
    <form method="POST" action="{{ route('bai-viet.store') }}">
        @csrf
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Thêm mới bài viết</h6>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="ten_bai_viet" class="form-label">
                        Tên bài viết <span class="text-danger">*</span>
                    </label>
                    <input id="ten_bai_viet" type="text" name="ten_bai_viet"
                        class="form-control @error('ten_bai_viet') is-invalid @enderror" value="{{ old('ten_bai_viet') }}"
                        required>
                    @error('ten_bai_viet')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="noi_dung" class="form-label">Nội dung <span class="text-danger">*</span></label>
                    <textarea id="noi_dung" name="noi_dung" class="form-control">{{ old('noi_dung') }}</textarea>
                    @error('noi_dung')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="danh_muc_id">Danh mục bài viết <span class="text-danger">*</span></label>
                    <select name="danh_muc_id" class="form-control" required>
                        <option value="">--Chọn danh mục bài viết--</option>
                        @foreach ($dsDanhMuc as $danhMuc)
                            <option value='{{ $danhMuc->id }}'>{{ $danhMuc->ten_danh_muc }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="mb-3">
                    <label for="user_id">Tác giả</label>
                    <select name="user_id" class="form-control">
                        <option value="">--Chọn tác giả--</option>
                        @foreach ($users as $key => $data)
                            <option value='{{ $data->id }}' {{ $key == 0 ? 'selected' : '' }}>
                                {{ $data->name }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="mb-3">
                    <label for="thumbnail" class="form-label">
                        Hình ảnh <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <a id="lfm" data-input="thumbnail" data-preview="holder"
                                class="btn btn-primary text-white">
                                <i class="fa fa-picture-o"></i> Chọn
                            </a>
                        </span>
                        <input id="thumbnail" class="form-control" type="text" name="hinh_anh"
                            value="{{ old('hinh_anh') }}">
                    </div>
                    <div id="holder" style="margin-top:15px;max-height:100px;"></div>
                    @error('hinh_anh')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="trang_thai" class="form-label">
                        Trạng thái <span class="text-danger">*</span>
                    </label>
                    <select name="trang_thai" class="form-control">
                        <option value="1">Khả dụng</option>
                        <option value="0">Không khả dụng</option>
                    </select>
                    @error('trang_thai')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mb-3 mb-3">
                    <button type="reset" class="btn btn-warning">Huỷ bỏ</button>
                    <button type="submit" class="btn btn-success">Thêm</button>
                </div>
            </div>
        </div>
    </form>
@endsection
@push('styles')
    <link rel="stylesheet" href="{{ asset('backend/summernote/summernote.min.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
@endpush
@push('scripts')
    <script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
    <script src="{{ asset('backend/summernote/summernote.min.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>

    <script>
        $('#lfm').filemanager('image');

        $(document).ready(function() {
            $('#noi_dung').summernote({
                placeholder: "Soạn thảo nội dung cho bài viết ...",
                tabsize: 2,
                height: 150
            });
        });
        $('select').selectpicker();
    </script>
@endpush
