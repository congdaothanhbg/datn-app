@extends('backend.layouts.master')
@section('title', 'Chỉnh sửa câu hỏi')
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
                <a href="{{ route('khoa-hoc.cau-hoi.index', $khoaHoc) }}">
                    Quản lý câu hỏi
                </a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Chỉnh sửa câu hỏi
            </li>
        </ol>
    </nav>
    <h1>Chỉnh sửa câu hỏi</h1>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    <form method="POST" action="{{ route('khoa-hoc.cau-hoi.update', [$khoaHoc, $cauHoi]) }}">
        @csrf
        @method('put')
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa câu hỏi</h6>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="thu_tu" class="form-label">
                        Thứ tự <span class="text-danger fs-5">*</span>
                    </label>
                    <input id="thu_tu" type="number" name="thu_tu"
                        class="form-control @error('thu_tu') is-invalid @enderror" value="{{ $cauHoi->thu_tu }}" required
                        autocomplete="thu_tu" min="1">
                    @error('thu_tu')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="noi_dung" class="form-label">
                        Nội dung <span class="text-danger fs-5">*</span>
                    </label>
                    <textarea id="noi_dung" name="noi_dung" cols="30" rows="5"
                        class="form-control @error('noi_dung') is-invalid @enderror" required autocomplete="noi_dung">{{ $cauHoi->noi_dung }}</textarea>
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
                            name="hinh_anh" value="{{ $cauHoi->hinh_anh }}">
                    </div>
                    <div id="holder" style="margin-top:15px;max-height:100px;"></div>
                    @error('hinh_anh')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="la_cau_diem_liet" class="form-label">
                        Là câu điểm liệt?
                    </label><br>
                    <div class="form-check form-check-inline">
                        <input id="1" type="radio" name="la_cau_diem_liet" class="form-check-input" value="1"
                            required {{ $cauHoi->la_cau_diem_liet ? 'checked' : '' }}>
                        <label for="1" class="form-check-label">Phải</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input id="0" type="radio" name="la_cau_diem_liet" class="form-check-input" value="0"
                            required {{ $cauHoi->la_cau_diem_liet ? '' : 'checked' }}>
                        <label for="0" class="form-check-label">Không phải</label>
                    </div>
                    @error('la_cau_diem_liet')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <hr class="table-group-divider">
                <button type="submit" class="btn btn-primary">Cập nhật</button>
                <a href="{{ route('khoa-hoc.cau-hoi.index', $khoaHoc) }}">
                    Quay lại danh sách
                </a>
            </div>
        </div>
    </form>
@endsection
@push('scripts')
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
    <script>
        $('#lfm').filemanager('image');
    </script>
@endpush
