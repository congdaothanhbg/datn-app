@extends('backend.layouts.master')
@section('title', 'Quản lý đề thi thử')
@section('main-content')
    <div class="row">
        <div class="col-12">
            @include('backend.layouts.thong-bao')
        </div>
    </div>
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="{{ route('admin') }}">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('khoa-hoc.index') }}">Quản lý khóa học</a>
        </li>
        <li class="breadcrumb-item active">
            Quản lý đề thi
        </li>
    </ol>
    <h1>Quản lý đề thi</h1>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    @php
        $disabled = '';
        $limited = false;
        if (
            ($khoaHoc->id === 1 && $khoaHoc->de_this->count() >= 8) ||
            ($khoaHoc->id === 2 && $khoaHoc->de_this->count() >= 18)
        ) {
            $disabled = 'disabled';
            $limited = true;
        }
    @endphp
    <a href="{{ route('khoa-hoc.de-thi.create', $khoaHoc) }}" class="btn btn-primary {{ $disabled }}">Thêm mới</a>
    @if ($limited)
        <span class="badge badge-danger">Đã đạt giới hạn đề thi của khoá học này.</span>
    @endif
    {{-- <a href="{{ route('khoa-hoc.de-thi.cau-hoi.create', $khoaHoc) }}">Tạo câu hỏi ngẫu nhiên</a> --}}
    @if ($dsDeThi->isEmpty())
        <div class="card">
            <div class="card-body">
                Không tìm thấy đề thi nào! Vui lòng tạo đề thi mới.
            </div>
        </div>
    @else
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Danh sách đề thi</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên đề thi</th>
                                <th>Quản lý</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Tên đề thi</th>
                                <th>Quản lý</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($dsDeThi as $deThi)
                                <tr>
                                    <th scope="row">{{ $deThi->id }}</th>
                                    <td>{{ $deThi->ten_de_thi }}</td>
                                    <td>
                                        <a href="{{ route('khoa-hoc.de-thi.edit', [$khoaHoc, $deThi]) }}"
                                            class="btn btn-primary btn-sm">
                                            Chỉnh sửa
                                        </a>
                                        {{-- <form method="POST"
                                            action="{{ route('khoa-hoc.de-thi.destroy', [$khoaHoc, $deThi]) }}">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm dltBtn" data-id={{ $deThi }}>
                                                Xoá bỏ
                                            </button>
                                        </form> --}}
                                        <a href="{{ route('khoa-hoc.de-thi.cau-hoi.index', [$khoaHoc, $deThi]) }}"
                                            class="btn btn-success btn-sm">
                                            Câu hỏi
                                        </a>
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
