@extends('frontend.layouts.master')
@section('title', 'Đề thi thử')
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
                <li class="breadcrumb-item">
                    <a href="{{ route('khoa-hoc.detail', $khoaHoc->slug) }}" class="text-primary">
                        {{ $khoaHoc->ten_khoa_hoc }}
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Thi thử
                </li>
            </ol>
        </nav>
    </div>
    @if ($khoaHoc->id === 1)
        <div class="container">
            <h2 style="text-align: center;">
                <span style="color: #ff0000;">
                    <strong class="text-success">{{ $khoaHoc->ten_khoa_hoc }}<br><br>BỘ ĐỀ THI THỬ</strong>
                </span>
            </h2>
            <div>
                <p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif;">Cấu trúc bộ đề thi
                        sát
                        hạch giấy phép lái xe hạng A1 sẽ bao gồm <strong>25 câu hỏi</strong>, mỗi câu hỏi chỉ có <strong>duy
                            nhất 1 đáp trả lời đúng</strong>. Mỗi đề thi sẽ có từ <strong>2 - 4 câu hỏi điểm liệt</strong>
                        để
                        học viên có thể làm quen và ghi nhớ, tránh việc
                        làm sai câu hỏi liệt.</span></p>

                <ul style="text-align: justify;">
                    <li><span style="font-family: arial, helvetica, sans-serif;">Số lượng câu hỏi: <strong><span
                                    style="color: #ff0000;">25 Câu</span></strong>.</span></li>
                    <li><span style="font-family: arial, helvetica, sans-serif;">Yêu cầu làm đúng <span
                                style="color: #ff0000;"><strong>21/25 Câu</strong></span>.</span></li>
                    <li><span style="font-family: arial, helvetica, sans-serif;">Thời gian: <span
                                style="color: #ff0000;"><strong>19 Phút</strong></span>.</span></li>
                </ul>
                <p style="text-align: justify;">
                    <span style="font-family: arial, helvetica, sans-serif;">
                        <strong>Lưu ý đặc biệt:</strong> <span style="color: #0000ff;">Tuyệt đối không được làm sai câu hỏi
                            điểm
                            liệt, vì trong kỳ thi thật nếu học viên làm sai "<strong>câu ĐIỂM LIỆT</strong>" đồng nghĩa với
                            việc
                            "<strong>KHÔNG ĐẠT</strong>" dù cho các câu khác trả lời đúng!</span>
                    </span>
                </p>
                <div>
                    <div style="margin-bottom:10px">
                        <strong style="font-size: 16px; color: red;">
                            Chọn đề thi để luyện:
                        </strong>
                    </div>
                    <div>
                        <strong style="font-size: 16px;">
                            @foreach ($dsDeThi as $deThi)
                                <a class="btn btn-success text-white" href="{{ route('lam-bai', [$khoaHoc->slug, $deThi->slug]) }}">
                                    {{ $deThi->ten_de_thi }}
                                </a>
                            @endforeach
                        </strong>
                    </div>
                </div>
            </div>
        </div>
    @else
    @endif
@endsection
