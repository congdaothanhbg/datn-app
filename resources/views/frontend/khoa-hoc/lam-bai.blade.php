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
        <div class="px-5 py-3">
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
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5>Câu hỏi số {{ $thuTu++ }}:</h5>
                            <b class="text-primary fs-5">{{ $cauHoi->noi_dung }}</b>
                            <input type="hidden" name="cau_hoi_id[]" value="{{ $cauHoi->id }}"><br>
                            @if ($cauHoi->hinh_anh !== null)
                                <img src="{{ $cauHoi->hinh_anh }}" alt="" class="img-fluid">
                            @endif
                            @foreach ($cauHoi->phuong_ans as $phuongAn)
                                <div class="form-group">
                                    <input id="phuong_an_{{ $phuongAn->id }}" type="radio"
                                        name="dap_an_id[{{ $cauHoi->id }}]" class="form-check-inline"
                                        value="{{ $phuongAn->id }}" required>
                                    <label for="phuong_an_{{ $phuongAn->id }}" class="form-label fs-5">
                                        {{ $phuongAn->noi_dung }}
                                    </label>
                                </div>
                            @endforeach
                        </div>
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
            var quizDuration = 19 * 60; // 19 minutes in seconds
            var testId = '{{ $deThi->id }}'; // Unique identifier for the test

            function startTimer(duration) {
                timer.start({
                    countdown: true,
                    startValues: {
                        seconds: duration
                    }
                });
            }

            function getElapsedTime() {
                var startTime = localStorage.getItem('quizStartTime_' + testId);
                if (startTime) {
                    var currentTime = Math.floor(Date.now() / 1000);
                    return currentTime - startTime;
                }
                return 0;
            }

            var elapsedTime = getElapsedTime();
            if (elapsedTime < quizDuration) {
                var remainingTime = quizDuration - elapsedTime;
                startTimer(remainingTime);

                timer.addEventListener('secondsUpdated', function(e) {
                    document.querySelector('#time').textContent = timer.getTimeValues().toString(['minutes',
                        'seconds'
                    ]);
                });

                timer.addEventListener('targetAchieved', function(e) {
                    document.getElementById('quiz-form').submit();
                });
            } else {
                document.getElementById('quiz-form').submit();
            }

            if (!localStorage.getItem('quizStartTime_' + testId)) {
                localStorage.setItem('quizStartTime_' + testId, Math.floor(Date.now() / 1000));
            }

            // Xác nhận trước khi nộp bài
            document.getElementById('quiz-form').addEventListener('submit', function(event) {
                if (!confirm('Bạn có chắc chắn muốn nộp bài không?')) {
                    event.preventDefault();
                }
            });

            // Xác nhận trước khi đóng tab
            window.addEventListener('beforeunload', function(event) {
                event.preventDefault();
                event.returnValue =
                    'Bạn có chắc chắn muốn rời khỏi trang này? Mọi thay đổi sẽ không được lưu lại.';
            });
        });
    </script>
@endpush
