@extends('backend.layouts.master')
@section('title', 'Quản lý phương án')
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
            <li class="breadcrumb-item">
                <a href="{{ route('khoa-hoc.cau-hoi.index', $khoaHoc) }}">
                    Quản lý câu hỏi
                </a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                Quản lý phương án
            </li>
        </ol>
    </nav>
    <h1>Quản lý phương án</h1>
    <h2>Khoá học: <b>{{ $khoaHoc->ten_khoa_hoc }}</b></h2>
    <h3>Câu hỏi số {{ $cauHoi->thu_tu }}: <b>{{ $cauHoi->noi_dung }}</b></h3>
    <form id="cauHoiForm" method="POST">
        <label for="thu_tu">Nhập thứ tự câu hỏi:</label>
        <input type="text" id="thu_tu" name="thu_tu" class="form-control" required>
        <button type="submit" class="btn btn-outline-primary">Đi tới phương án</button>
    </form>
    <br>
    <a href="{{ route('khoa-hoc.cau-hoi.phuong-an.create', [$khoaHoc, $cauHoi]) }}" class="btn btn-primary">
        Thêm mới
    </a>
    @if ($dsPhuongAn->isEmpty())
        <div class="card">
            <div class="card-body">
                Không tìm thấy phương án nào của câu hỏi này! Vui lòng tạo phương án mới.
            </div>
        </div>
    @else
        <div class="card shadow">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">Danh sách phương án</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nội dung phương án</th>
                                <th>Là phương án đúng?</th>
                                <th>Quản lý</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Nội dung phương án</th>
                                <th>Là phương án đúng?</th>
                                <th>Quản lý</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($dsPhuongAn as $phuongAn)
                                <tr>
                                    <td>{{ $phuongAn->id }}</td>
                                    <td>{{ $phuongAn->noi_dung }}</td>
                                    <td>{{ $phuongAn->la_phuong_an_dung ? 'Phải' : 'Không phải' }}</td>
                                    <td>
                                        <a href="{{ route('khoa-hoc.cau-hoi.phuong-an.edit', [$khoaHoc, $cauHoi, $phuongAn]) }}"
                                            class="btn btn-primary btn-sm">
                                            Chỉnh sửa
                                        </a>
                                        <form method="POST"
                                            action="{{ route('khoa-hoc.cau-hoi.phuong-an.destroy', [$khoaHoc, $cauHoi, $phuongAn]) }}">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm dltBtn" data-id={{ $phuongAn }}>
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
    <script>
        document.getElementById('cauHoiForm').addEventListener('submit', function(event) {
            event.preventDefault();
            var cauHoiId = document.getElementById('thu_tu').value;
            var khoaHocId = {{ $khoaHoc->id }};
            window.location.href = '/quan-tri-vien/khoa-hoc/' + khoaHocId + '/cau-hoi/' + cauHoiId + '/phuong-an';
        });
    </script>
@endpush
