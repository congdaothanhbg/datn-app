@extends('frontend.layouts.master')
@section('title', 'Bài giảng')
@section('main-content')
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="{{ route('home') }}" class="text-primary">
                        Trang chủ
                    </a>
                </li>
                <li class="breadcrumb-item">
                    <a href="{{ route('khoa-hoc') }}" class="text-primary">
                        Đào tạo bằng lái
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    <a href="{{ route('khoa-hoc.detail', $khoaHoc->slug) }}" class="text-primary">
                        {{ $khoaHoc->ten_khoa_hoc }}
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Bài giảng
                </li>
            </ol>
        </nav>
        <h2>Khoá học: <b class="text-danger">{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
        <p>Mô tả: <b>{{ $khoaHoc->mo_ta }}</b></p>
        <hr class="table-group-divider">
        <ul class="dropdown-menu position-static d-grid gap-1 p-2 rounded-3 mx-0 shadow w-220px">
            <li>
                <a class="dropdown-item rounded-2" href="{{ route('cau-hoi', $khoaHoc->slug) }}">
                    {{ $khoaHoc->cau_hois->count() }} câu hỏi
                </a>
            </li>
            <li>
                <a class="dropdown-item rounded-2" href="{{ route('bai-giang', $khoaHoc->slug) }}">
                    Bài giảng
                </a>
            </li>
            <li>
                <a class="dropdown-item rounded-2" href="{{ route('de-thi', $khoaHoc->slug) }}">
                    Thi thử
                </a>
            </li>
        </ul>
        <hr class="table-group-divider">
        <h2 class="text-uppercase text-primary">Bài giảng</h2>
        @if (!$baiGiang)
            Không tìm thấy bài giảng.
        @else
            <div class="card">
                <div class="card-header">
                    <h5>
                        Bài giảng số {{ $baiGiang->thu_tu }}: {{ $baiGiang->ten_bai_giang }}
                    </h5>
                </div>
                <div class="card-body">
                    <p>{!! $baiGiang->noi_dung !!}</p><br>
                    @if ($baiGiang->hinh_anh)
                        <img src="{{ $baiGiang->hinh_anh }}" alt="" class="img-fluid">
                    @endif
                    @if ($baiGiang->video)
                        <video src="{{ $baiGiang->video }}" style="max-width: 500px;"></video>
                    @endif
                </div>
            </div>
        @endif
        <hr class="table-group-divider">
    </div>
@endsection
