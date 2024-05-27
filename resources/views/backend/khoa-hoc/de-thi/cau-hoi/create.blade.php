@extends('backend.layouts.master')
@section('title', 'Thêm câu hỏi cho đề thi thử')
@section('main-content')
    <style>
        #cau_hoi_id option {
            overflow-wrap: break-word;
            white-space: pre-wrap;
        }
    </style>
    <h1>Thêm một câu hỏi cho đề thi thử</h1>
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
            Quản lý câu hỏi của đề thi thử
        </li>
    </ol>
    <h2>{{ $khoaHoc->ten_khoa_hoc }}</h2>
    <h3>{{ $deThi->tieu_de }}</h3>
    <p class="text-danger">Câu hỏi có màu đỏ là câu hỏi điểm liệt!</p>
    <form method="POST" action="{{ route('khoa-hoc.de-thi.cau-hoi.store', [$khoaHoc, $deThi]) }}">
        @csrf
        <div class="mb-3">
            <label for="cau_hoi_id" class="form-label">Câu hỏi số:</label>
            <select id="cau_hoi_id" name="cau_hoi_id" class="form-control" size="5" required>
                @foreach ($khoaHoc->cau_hois as $cauHoi)
                    @if ($cauHoi->de_thi_id === $deThi->id || $cauHoi->de_thi_id !== null)
                    @else
                        <option value="{{ $cauHoi->id }}"
                            class="{{ $cauHoi->la_cau_diem_liet === 1 ? 'text-danger' : '' }}"
                            style="overflow-wrap: break-word;">
                            {{ $cauHoi->thu_tu }}
                        </option>
                    @endif
                @endforeach
            </select>
            @error('cau_hoi_id')
                <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
        <hr class="table-group-divider">
        <button type="submit" class="btn btn-primary">Thêm</button><br>
        <a href="{{ route('khoa-hoc.de-thi.cau-hoi.index', [$khoaHoc, $deThi]) }}">Quay lại danh sách</a>
    </form><br>
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
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Thứ tự</th>
                            <th class="col-3">Nội dung</th>
                            <th class="col-2">Hình ảnh</th>
                            <th class="col-4">Các phương án</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach ($khoaHoc->cau_hois as $cauHoi)
                            @if ($cauHoi->de_thi_id === $deThi->id || $cauHoi->de_thi_id !== null)
                            @else
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
                                        <ol>
                                            @foreach ($cauHoi->phuong_ans as $phuongAn)
                                                <li class="{{ $phuongAn->la_phuong_an_dung === 1 ? 'text-danger' : '' }}">
                                                    {{ $phuongAn->noi_dung }}
                                                </li>
                                            @endforeach
                                        </ol>
                                    </td>
                                </tr>
                            @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
@push('styles')
    @include('backend.layouts.index-push-styles')
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
