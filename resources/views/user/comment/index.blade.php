@extends('user.layouts.master')
@section('title', 'Bình luận')
@section('main-content')
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="row">
            <div class="col-md-12">
                @include('backend.layouts.thong-bao')
            </div>
        </div>
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary float-left">Danh sách bình luận</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                @if (!$dsBinhLuan->isEmpty())
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Người đăng</th>
                                <th>Bài viết</th>
                                <th>Nội dung</th>
                                <th>Ngày đăng</th>
                                <th>Trạng thái</th>
                                <th>Quản lý</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Người đăng</th>
                                <th>Bài viết</th>
                                <th>Nội dung</th>
                                <th>Ngày đăng</th>
                                <th>Trạng thái</th>
                                <th>Quản lý</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @foreach ($dsBinhLuan as $binhLuan)
                                <tr>
                                    <td>{{ $binhLuan->id }}</td>
                                    <td>{{ $binhLuan->user_info['name'] }}</td>
                                    <td>
                                        @if ($binhLuan->post === null)
                                            <span class="text-danger">Bài viết không tồn tại.</span>
                                        @else
                                            <a href="{{ route('bai-viet.detail', $binhLuan->post->id) }}">{{ $binhLuan->post->tieu_de }}</a>
                                        @endif

                                    </td>
                                    <td>{{ $binhLuan->noi_dung }}</td>
                                    <td>{{ $binhLuan->created_at->format('M d D, Y g: i a') }}</td>
                                    <td>
                                        @if ($binhLuan->trang_thai === 'Khả dụng')
                                            <span class="badge badge-success">{{ $binhLuan->trang_thai }}</span>
                                        @else
                                            <span class="badge badge-warning">{{ $binhLuan->trang_thai }}</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('user.binh-luan.edit', $binhLuan->id) }}"
                                            class="btn btn-primary btn-sm float-left mr-1"
                                            style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip"
                                            title="edit" data-placement="bottom"><i class="fas fa-edit"></i></a>
                                        <form method="POST" action="{{ route('user.binh-luan.delete', [$binhLuan->id]) }}">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm dltBtn" data-id={{ $binhLuan->id }}
                                                style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip"
                                                data-placement="bottom" title="Delete"><i
                                                    class="fas fa-trash-alt"></i></button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <span style="float:right">{{ $dsBinhLuan->links() }}</span>
                @else
                    <h6 class="text-center">Không tìm thấy bình luận nào.</h6>
                @endif
            </div>
        </div>
    </div>
@endsection

@push('styles')
    <link href="{{ asset('backend/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
    <style>
        div.dataTables_wrapper div.dataTables_paginate {
            display: none;
        }
    </style>
@endpush
@push('scripts')
    @include('user.layouts.index-push-scripts')
@endpush
