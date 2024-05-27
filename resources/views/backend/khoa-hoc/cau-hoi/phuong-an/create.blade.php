@extends('backend.layouts.master')
@section('title', 'Thêm mới phương án')
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
            <li class="breadcrumb-item active">
                <a href="{{ route('khoa-hoc.cau-hoi.phuong-an.index', [$khoaHoc, $cauHoi]) }}">
                    Quản lý phương án
                </a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Thêm mới
            </li>
        </ol>
    </nav>
    <h1>Tạo một phương án mới</h1>
    <h2>Câu hỏi số {{ $cauHoi->thu_tu }}: <b>{{ $cauHoi->noi_dung }}</b></h2>
    <div class="card-body">
        <img src="{{ $cauHoi->hinh_anh }}" alt="Câu hỏi số {{ $cauHoi->thu_tu }}" width="500px;">
    </div>
    <form method="POST" action="{{ route('khoa-hoc.cau-hoi.phuong-an.store', [$khoaHoc, $cauHoi]) }}">
        @csrf
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Thêm mới phương án</h6>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="noi_dung" class="form-label">
                        Nội dung phương án
                    </label>
                    <textarea name="noi_dung" id="noi_dung" cols="30" rows="5"
                        class="form-control @error('noi_dung') is-invalid @enderror" required>{{ old('noi_dung') }}</textarea>
                    @error('noi_dung')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="la_phuong_an_dung" class="form-label">
                        Là đáp án đúng?
                    </label><br>
                    <div class="form-check form-check-inline custom-radio">
                        <input id="1" type="radio" name="la_phuong_an_dung" class="form-check-input"
                            value="1" required>
                        <label for="1" class="form-check-label">Phải</label>
                    </div>
                    <div class="form-check form-check-inline custom-radio">
                        <input id="0" type="radio" name="la_phuong_an_dung" class="form-check-input"
                            value="0" required>
                        <label for="0" class="form-check-label">Không phải</label>
                    </div>
                    @error('la_phuong_an_dung')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <hr class="table-group-divider">
            </div>
            <button type="submit" class="btn btn-primary">Tạo</button><br>
            <a href="{{ route('khoa-hoc.cau-hoi.phuong-an.index', [$khoaHoc, $cauHoi]) }}">
                Quay lại danh sách
            </a>
        </div>
    </form>
@endsection
@push('styles')
    <style>
        .custom-radio {
            display: inline-block;
            width: 150px;
            /* Adjust width as needed */
            margin: 10px;
        }

        .custom-radio input[type="radio"] {
            display: none;
        }

        .custom-radio label {
            display: block;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .custom-radio input[type="radio"]:checked+label {
            background-color: #007bff;
            color: #fff;
            border-color: #007bff;
        }
    </style>
@endpush
