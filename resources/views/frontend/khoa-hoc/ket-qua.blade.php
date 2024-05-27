@extends('frontend.layouts.master')
@section('title', 'Kết quả')
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
                <li class="breadcrumb-item">
                    <a href="{{ route('khoa-hoc.detail', $khoaHoc->slug) }}"
                        class="text-primary">{{ $khoaHoc->ten_khoa_hoc }}</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Kết quả thi thử
                </li>
            </ol>
        </nav>
        <h2>Kết quả bài thi: <b>{{ $deThi->ten_de_thi }}</b></h2>
        <h3>Khóa học: <b class="text-danger">{{ $khoaHoc->ten_khoa_hoc }}</b></h3>
        <hr class="table-group-divider">
        <h3>Điểm của bạn: {{ $diem }}</h3>
        <div class="mb-3">
            <b>Câu bạn chọn được tô đậm</b>
        </div>
        <div class="mb-3">
            <p class="text-danger">Đáp án được tô màu đỏ</p>
        </div>
        <div class="text-danger mb-3">
            <b>Câu bạn chọn đúng được in đậm và tô màu đỏ</b>
        </div>
        @foreach ($ketQua as $item)
            <div class="card mb-3">
                <div class="card-header">
                    <h5>
                        Câu hỏi số {{ $loop->iteration }}
                        @if ($item['cauHoi']->la_cau_diem_liet)
                            (câu hỏi ĐIỂM LIỆT)
                        @endif
                    </h5>
                </div>
                <div class="card-body">
                    <b class="text-primary fs-5">{{ $item['cauHoi']->noi_dung }}</b><br>
                    @if ($item['cauHoi']->hinh_anh !== null)
                        <img src="{{ $item['cauHoi']->hinh_anh }}" alt="" class="img-fluid">
                    @endif
                    <ol class="mt-3">
                        @foreach ($item['cauHoi']->phuong_ans as $phuongAn)
                            <li class="form-label fs-6"
                                style="
                                    @if ($phuongAn->id == $item['dapAnDung']) color: red; @endif
                                    @if ($phuongAn->id == $item['dapAnNguoiDung']) font-weight: bold; @endif
                                ">
                                {{ $phuongAn->noi_dung }}
                            </li>
                        @endforeach
                    </ol>
                </div>
            </div>
        @endforeach
        <hr class="table-group-divider">
    </div>
@endsection
