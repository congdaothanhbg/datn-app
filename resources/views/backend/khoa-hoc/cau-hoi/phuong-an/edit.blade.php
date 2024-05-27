@extends('backend.layouts.master')
@section('title', 'Chỉnh sửa phương án')
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
                Quản lý phương án
            </li>
        </ol>
    </nav>
    <h1>Chỉnh sửa phương án</h1>
    <h2>Câu hỏi số {{ $cauHoi->thu_tu }}: <b>{{ $cauHoi->noi_dung }}</b></h2>
    <form method="POST" action="{{ route('khoa-hoc.cau-hoi.phuong-an.update', [$khoaHoc, $cauHoi]) }}">
        @csrf
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Chỉnh sửa phương án</h6>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="noi_dung" class="form-label">
                        Nội dung phương án
                    </label>
                    <input id="noi_dung" type="text" name="noi_dung"
                        class="form-control @error('noi_dung') is-invalid @enderror" value="{{ $phuongAn->noi_dung }}" required>
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
                    <div class="form-check form-check-inline">
                        <input id="1" type="radio" name="la_phuong_an_dung" class="form-check-input"
                            value="1" {{$phuongAn->la_phuong_an_dung ? 'checked' : ''}} required>
                        <label for="1" class="form-check-label">Phải</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input id="0" type="radio" name="la_phuong_an_dung" class="form-check-input"
                            value="0" {{$phuongAn->la_phuong_an_dung ? '' : 'checked'}} required>
                        <label for="0" class="form-check-label">Không phải</label>
                    </div>
                    @error('la_phuong_an_dung')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <hr class="table-group-divider">
                <button type="submit" class="btn btn-primary">Cập nhật</button>
                <a href="{{ route('khoa-hoc.cau-hoi.phuong-an.index', [$khoaHoc, $cauHoi]) }}">
                    Quay lại danh sách
                </a>
            </div>
        </div>
    </form>
@endsection
