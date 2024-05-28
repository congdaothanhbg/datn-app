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
        <hr class="table-group-divider">

        <div class="text-center">
            <h3>{{ $deThi->ten_de_thi }}</h3>
        </div>
        <div style="text-align: right;">
            <h1>Thời gian còn lại: <span id="time">19:00</span></h1>
        </div>
        <div class="card mb-3">
            <div class="card-body">
                @foreach ($dsCauHoi as $index => $cauHoi)
                    <label class="btn btn-success btn-cauhoi clickcauhoi active" id="show{{ $index + 1 }}"
                        data-id="data{{ $index + 1 }}">
                        <input type="radio" id="{{ $index + 1 }}" name="cau_hoi_id" data-id="{{ $cauHoi->id }}">
                        {{ $index + 1 }}
                    </label>
                @endforeach
            </div>
        </div>
        <div id="cau-hoi-hien-tai">
            <!-- Nội dung câu hỏi sẽ được tải vào đây -->
        </div>
        <form id="quiz-form" method="POST" action="{{ route('nop-bai', [$khoaHoc->slug, $deThi->slug]) }}">
            @csrf
            <div id="noi-dung-cau-hoi">
                <!-- Nội dung câu hỏi sẽ được hiển thị ở đây khi chọn radio button -->
            </div>
            <button type="submit" class="btn btn-primary">Kết thúc bài thi</button>
        </form>

        {{-- <form id="quiz-form" method="POST" action="{{ route('nop-bai', [$khoaHoc->slug, $deThi->slug]) }}">
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
            </form> --}}
        <hr class="table-group-divider">
    </div>
@endsection
@push('styles')
    <style>
        .btn-cauhoi {
            background-color: #127f2b;
            color: white;
            border: none;
            margin: 5px;
            padding: 10px 15px;
            cursor: pointer;
        }

        .btn-cauhoi.active {
            background-color: #22953b;
        }
    </style>
@endpush
@push('scripts')
    <script>
        let timer;
        let seconds = 19 * 60;

        function startTimer() {
            timer = setInterval(updateTimer, 1000);
        }

        function updateTimer() {
            seconds--;
            if (seconds < 0) {
                clearInterval(timer);
                document.getElementById('quiz-form').submit();
            } else {
                let minutes = Math.floor(seconds / 60);
                let remainingSeconds = seconds % 60;
                document.getElementById('time').innerText = minutes + ":" + (remainingSeconds < 10 ? "0" +
                    remainingSeconds : remainingSeconds);
            }
        }
        startTimer();
    </script>
    <script>
        $(document).ready(function() {
            let userAnswers = {};

            $('input[name="cau_hoi_id"]').change(function() {
                var questionId = $(this).data('id');
                loadQuestion(questionId);
            });

            function loadQuestion(questionId) {
                $.ajax({
                    url: '/cau-hoi/' + questionId,
                    method: 'GET',
                    success: function(response) {
                        let cauHoiHtml = '<div class="card mb-3">' +
                            '<div class="card-body">' +
                            '<h5>Câu hỏi:</h5>' +
                            '<b class="text-primary fs-5">' + response.noi_dung + '</b><br>';
                        if (response.hinh_anh) {
                            cauHoiHtml += '<img src="' + response.hinh_anh +
                                '" alt="" class="img-fluid"><br>';
                        }
                        response.phuong_ans.forEach(function(phuongAn) {
                            const checked = userAnswers[response.id] == phuongAn.id ?
                                'checked' : '';
                            cauHoiHtml += '<div class="form-group">' +
                                '<input id="phuong_an_' + phuongAn.id +
                                '" type="radio" name="dap_an_id[' + response.id +
                                ']" class="form-check-inline" value="' + phuongAn.id + '" ' +
                                checked + '<label for="phuong_an_' + phuongAn.id +
                                '" class="form-label fs-5">' + phuongAn.noi_dung + '</label>' +
                                '</div>';
                        });
                        cauHoiHtml += '</div></div>';
                        $('#noi-dung-cau-hoi').html(cauHoiHtml);

                        $('input[name="dap_an_id[' + response.id + ']"]').change(function() {
                            userAnswers[response.id] = $(this).val();
                        });
                    }
                });
            }
        });
    </script>
@endpush
