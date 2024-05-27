@extends('frontend.layouts.master')
@section('title', 'Câu hỏi')
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
        <h2 class="text-uppercase text-primary">{{ count($dsCauHoi) }} câu hỏi dùng cho sát hạch, cấp giấy phép lái xe hạng
            A1</h2>
        @if ($dsCauHoi->isEmpty())
            Không tìm thấy câu hỏi nào.
        @else
            @foreach ($dsCauHoi as $cauHoi)
                <div class="question mb-3">
                    <h5>Câu hỏi số: {{ $cauHoi->thu_tu }}</h5>
                    <b style="font-size: large;">{{ $cauHoi->noi_dung }}</b><br>
                    @if ($cauHoi->hinh_anh !== null)
                        <img src="{{ $cauHoi->hinh_anh }}" alt="{{ $cauHoi->noi_dung }}" class="img-fluid">
                    @endif
                    @if ($cauHoi->phuong_ans)
                        <ol class="ml-5">
                            @foreach ($cauHoi->phuong_ans as $phuongAn)
                                <li>{{ $phuongAn->noi_dung }}</li>
                            @endforeach
                        </ol>
                    @endif
                    <button class="btn btn-warning xemDapAnBtn">Xem đáp án =></button>
                    @foreach ($cauHoi->phuong_ans as $phuongAn)
                        @if ($phuongAn->la_phuong_an_dung)
                            <b class="text-danger dapAn" style="display: none;">{{ $phuongAn->noi_dung }}</b>
                        @endif
                    @endforeach
                </div>
            @endforeach
        @endif
        <hr>
    </div>
@endsection
@push('scripts')
    <script>
        $(document).ready(function() {
            $('.xemDapAnBtn').click(function() {
                $(this).siblings('.dapAn').toggle();
            });
        });
    </script>
@endpush
