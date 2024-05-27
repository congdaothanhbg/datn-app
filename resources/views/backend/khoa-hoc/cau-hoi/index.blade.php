@extends('backend.layouts.master')
@section('title', 'Quản lý câu hỏi')
@section('main-content')
    <div class="row">
        <div class="col-12">
            @include('backend.layouts.thong-bao')
        </div>
    </div>
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
            <li class="breadcrumb-item active" aria-current="page">
                Quản lý câu hỏi
            </li>
        </ol>
    </nav>
    <h1>Quản lý câu hỏi</h1>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    @php
        $disabled = '';
        if (
            ($khoaHoc->id === 1 && $khoaHoc->cau_hois->count() >= 200) ||
            ($khoaHoc->id === 2 && $khoaHoc->cau_hois->count() >= 450)
        ) {
            $disabled = 'disabled';
            $limited = 1;
        }
    @endphp
    <a href="{{ route('khoa-hoc.cau-hoi.create', $khoaHoc) }}" class="btn btn-primary {{ $disabled }}">Thêm mới</a>
    @if ($limited)
        <span class="badge badge-danger">Đã đạt giới hạn câu hỏi của khoá học này.</span>
    @endif
    @if ($dsCauHoi->isEmpty())
        <div class="card">
            <div class="card-body">
                Không tìm thấy câu hỏi nào! Vui lòng tạo câu hỏi mới.
            </div>
        </div>
    @else
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Danh sách câu hỏi</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Thứ tự</th>
                                <th class="col-3">Nội dung</th>
                                <th class="col-2">Hình ảnh</th>
                                <th class="col-4">Các phương án</th>
                                <th>Quản lý</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Thứ tự</th>
                                <th class="col-3">Nội dung</th>
                                <th class="col-2">Hình ảnh</th>
                                <th class="col-4">Các phương án</th>
                                <th>Quản lý</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($dsCauHoi as $cauHoi)
                                <tr>
                                    <th>{{ $cauHoi->id }}</th>
                                    <td>
                                        {{ $cauHoi->thu_tu }}
                                        @if ($cauHoi->la_cau_diem_liet)
                                            <b class="text-danger">(Câu hỏi ĐIỂM LIỆT)</b>
                                        @endif
                                    </td>
                                    <td class="col-3">{{ $cauHoi->noi_dung }}</td>
                                    <td class="col-2">
                                        @if ($cauHoi->hinh_anh === null)
                                            Không có hình ảnh
                                        @else
                                            <img src="{{ asset($cauHoi->hinh_anh) }}" alt="Hình ảnh câu hỏi"
                                                style="width: 200px;">
                                        @endif
                                    </td>
                                    <td class="col-4">
                                        <a href="{{ route('khoa-hoc.cau-hoi.phuong-an.index', [$khoaHoc, $cauHoi]) }}"
                                            class="btn btn-success btn-sm">
                                            Phương án
                                        </a>
                                        <ol>
                                            @foreach ($cauHoi->phuong_ans as $phuongAn)
                                                <li class="{{ $phuongAn->la_phuong_an_dung === 1 ? 'text-danger' : '' }}">
                                                    {{ $phuongAn->noi_dung }}
                                                </li>
                                            @endforeach
                                        </ol>
                                    </td>
                                    <td>
                                        <a href="{{ route('khoa-hoc.cau-hoi.edit', [$khoaHoc, $cauHoi]) }}"
                                            class="btn btn-primary btn-sm">
                                            Chỉnh sửa
                                        </a>
                                        <form method="POST"
                                            action="{{ route('khoa-hoc.cau-hoi.destroy', [$khoaHoc, $cauHoi]) }}">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm dltBtn" data-id={{ $cauHoi }}>
                                                Xoá bỏ
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    @endif
@endsection
@push('styles')
    @include('backend.layouts.index-push-styles')
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
