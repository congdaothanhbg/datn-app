@extends('frontend.layouts.master')
@section('title', 'Thi thử: Làm bài')
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
                    Thi thử
                </li>
            </ol>
        </nav>
        <h2>Khoá học: <b class="text-danger">{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
        <p>Mô tả: <b>{{ $khoaHoc->mo_ta }}</b></p>
        <hr>
        <div class="card px-5 py-3">
            <div class="text-center">
                <h3>{{ $deThi->ten_de_thi }}</h3>
            </div>
            <div style="text-align: right;">
                <h1>Thời gian còn lại: <span id="time">19:00</span></h1>
            </div>
            <form id="quiz-form" method="POST" action="{{ route('nop-bai', [$khoaHoc->slug, $deThi->slug]) }}">
                @csrf
                @php
                    $thuTu = 1;
                @endphp
                @foreach ($dsCauHoi as $cauHoi)
                    <div class="card-body mb-3">
                        <h5>Câu hỏi số {{ $thuTu++ }}:</h5>
                        <b class="text-primary fs-5">{{ $cauHoi->noi_dung }}</b>
                        <input type="hidden" name="cau_hoi_id[]" value="{{ $cauHoi->id }}">
                        @foreach ($cauHoi->phuong_ans as $phuongAn)
                            <div class="form-group">
                                <input id="phuong_an_{{ $phuongAn->id }}" type="radio"
                                    name="dap_an_id[{{ $cauHoi->id }}]" class="form-check-inline"
                                    value="{{ $phuongAn->id }}">
                                <label for="phuong_an_{{ $phuongAn->id }}"
                                    class="form-label fs-5">{{ $phuongAn->noi_dung }}</label>
                            </div>
                        @endforeach
                    </div>
                @endforeach
                <button type="submit" class="btn btn-primary">Kết thúc bài thi</button>
            </form>
        </div>
        <hr>
    </div>
@endsection
@push('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var timer = new easytimer.Timer();
            timer.start({countdown: true, startValues: {minutes: 19}});
            timer.addEventListener('secondsUpdated', function (e) {
                document.querySelector('#time').textContent = timer.getTimeValues().toString(['minutes', 'seconds']);
            });
            timer.addEventListener('targetAchieved', function (e) {
                document.getElementById('quiz-form').submit();
            });
        });
    </script>
@endpush
