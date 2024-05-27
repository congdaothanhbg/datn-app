@extends('backend.layouts.master')
@section('title', 'Quản lý câu hỏi cho đề thi thử')
@section('main-content')
    <h1>
        Quản lý câu hỏi cho đề thi thử</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item">
            <a href="{{ route('admin') }}">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('khoa-hoc.index') }}">Quản lý khóa học</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('khoa-hoc.de-thi.index', $khoaHoc) }}">Quản lý đề thi thử</a>
        </li>
        <li class="breadcrumb-item active">
            Quản lý câu hỏi cho đề thi thử
        </li>
    </ol>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    <h3>Đề thi thử: <b>{{ $deThi->tieu_de }}</b></h3>
    @php
        $disabled = null;
        if (count($deThi->cau_hois) >= 25) {
            $disabled = 'disabled';
        }
    @endphp
    <a href="{{ route('khoa-hoc.de-thi.cau-hoi.create', [$khoaHoc, $deThi]) }}"
        class="btn btn-primary {{ $disabled }}">Thêm câu hỏi</a>
        @if ($disabled !== null)
            <span class="badge badge-danger">Đã đạt giới hạn 25 câu hỏi của đề thi này.</span>
        @endif
    @if ($dsCauHoi->isEmpty())
        <div class="card mb-4">
            <div class="card-body">
                Không tìm thấy câu hỏi nào cho đề thi thử này! Vui lòng thêm các câu hỏi.
            </div>
        </div>
    @else
        @php
            $stt = 0;
        @endphp
        <div class="table-responsive">
            <table class="table table-striped table-hover table-bordered table-sm">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Thứ tự</th>
                        <th>Nội dung câu hỏi</th>
                        <th>Hình ảnh</th>
                        <th>Các đáp án</th>
                        <th>Quản lý</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>STT</th>
                        <th>Thứ tự</th>
                        <th>Nội dung câu hỏi</th>
                        <th>Hình ảnh</th>
                        <th>Các đáp án</th>
                        <th>Quản lý</th>
                    </tr>
                </tfoot>
                <tbody>
                    @foreach ($dsCauHoi as $cauHoi)
                        <tr>
                            <th scope="row">{{ ++$stt }}</th>
                            <td>{{ $cauHoi->thu_tu }}</td>
                            <td>{{ $cauHoi->noi_dung }}</td>
                            <td>
                                @if ($cauHoi->hinh_anh === null)
                                    Không có hình ảnh
                                @else
                                    <img src="{{ asset($cauHoi->hinh_anh) }}" alt="Hình ảnh câu hỏi" style="width: 200px;">
                                @endif
                            </td>
                            <td>
                                @if ($cauHoi->phuong_ans === null)
                                    Không tìm thấy phương án của câu hỏi này.
                                @else
                                    <ol>
                                        @foreach ($cauHoi->phuong_ans as $phuongAn)
                                            <li>{{ $phuongAn->noi_dung }}</li>
                                        @endforeach
                                    </ol>
                                @endif
                            </td>
                            <td>
                                <form method="POST"
                                    action="{{ route('khoa-hoc.de-thi.cau-hoi.destroy', [$khoaHoc, $deThi, $cauHoi]) }}">
                                    @csrf
                                    @method('delete')
                                    <button class="btn btn-danger btn-sm dltBtn" data-id={{ $cauHoi->id }}>
                                        Xoá bỏ
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endif
@endsection
@push('styles')
    @include('backend.layouts.index-push-styles')
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
