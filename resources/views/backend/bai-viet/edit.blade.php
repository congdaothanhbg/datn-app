@extends('backend.layouts.master')
@section('title', 'Chỉnh sửa bài viết')
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
                Chỉnh sửa
            </li>
        </ol>
    </nav>
    <h1>Chỉnh sửa bài viết</h1>
    <form method="post" action="{{ route('bai-viet.update', $baiViet) }}">
        @csrf
        @method('put')
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa bài viết</h6>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="ten_bai_viet" class="col-form-label">
                        Tiêu đề <span class="text-danger">*</span>
                    </label>
                    <input id="ten_bai_viet" type="text" name="ten_bai_viet" placeholder="Nhập tiêu đề ..."
                        value="{{ $baiViet->ten_bai_viet }}" class="form-control">
                    @error('ten_bai_viet')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="noi_dung" class="col-form-label">
                        Nội dung <span class="text-danger">*</span>
                    </label>
                    <textarea id="noi_dung" name="noi_dung" class="form-control">{{ $baiViet->noi_dung }}</textarea>
                    @error('noi_dung')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="danh_muc_id">Danh mục <span class="text-danger">*</span></label>
                    <select name="danh_muc_id" class="form-control">
                        <option value="">--Chọn danh mục--</option>
                        @foreach ($dsDanhMuc as $danhMuc)
                            <option value='{{ $danhMuc->id }}'
                                {{ $danhMuc->id == $baiViet->danh_muc_id ? 'selected' : '' }}>
                                {{ $danhMuc->ten_danh_muc }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="user_id">Tác giả</label>
                    <select name="user_id" class="form-control">
                        <option value="">--Chọn tác giả--</option>
                        @foreach ($users as $user)
                            <option value='{{ $user->id }}' {{ $baiViet->tac_gia_id == $user->id ? 'selected' : '' }}>
                                {{ $user->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="thumbnail" class="col-form-label">Hình ảnh <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                                <i class="fa fa-picture-o"></i> Chọn
                            </a>
                        </span>
                        <input id="thumbnail" class="form-control" type="text" name="hinh_anh"
                            value="{{ $baiViet->hinh_anh }}">
                    </div>
                    <div id="holder" style="margin-top:15px;max-height:100px;"></div>
                    @error('hinh_anh')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="trang_thai" class="col-form-label">Trạng thái <span class="text-danger">*</span></label>
                    <select name="trang_thai" class="form-control">
                        <option value="1" {{ $baiViet->trang_thai == '1' ? 'selected' : '' }}>Khả dụng</option>
                        <option value="0" {{ $baiViet->trang_thai == '0' ? 'selected' : '' }}>Không
                            khả dụng</option>
                    </select>
                    @error('trang_thai')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group mb-3">
                    <button class="btn btn-success" type="submit">Cập nhật</button>
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
    </script>
@endpush
