@extends('frontend.layouts.master')
@section('title', 'Bài giảng')
@section('main-content')
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="{{ route('home') }}" class="text-primary">Trang chủ</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="{{ route('khoa-hoc') }}" class="text-primary">Đào tạo bằng lái</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    {{ $khoaHoc->ten_khoa_hoc }}
                </li>
            </ol>
        </nav>
        <h2>Khoá học: <b class="text-danger">{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
        <p>Mô tả: <b>{{ $khoaHoc->mo_ta }}</b></p>
        <hr>
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
        <hr>
        <h2 class="text-uppercase text-primary">Bài giảng</h2>
        @if ($dsBaiGiang->isEmpty())
            Không tìm thấy bài giảng nào.
        @else
            @foreach ($dsBaiGiang as $baiGiang)
                <h5>
                <a href="{{ route('bai-giang.detail', [$khoaHoc->slug, $baiGiang->slug]) }}">Bài giảng số: {{ $baiGiang->thu_tu }}</a>
                </h5>
            @endforeach
        @endif
        <hr>
    </div>
@endsection
