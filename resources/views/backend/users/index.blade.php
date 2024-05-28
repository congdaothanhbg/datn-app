@extends('backend.layouts.master')
@section('title', 'Quản lý người dùng')
@section('main-content')
    <div class="card shadow mb-4">
        <div class="row">
            <div class="col-md-12">
                @include('backend.layouts.thong-bao')
            </div>
        </div>
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary float-left">Danh sách người dùng</h6>
            <a href="{{ route('nguoi-dung.create') }}" class="btn btn-primary btn-sm float-right">
                <i class="fas fa-plus"></i> Thêm mới
            </a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Họ tên</th>
                            <th>Email</th>
                            <th>Hình ảnh</th>
                            <th>Ngày tham gia</th>
                            <th>Vai trò</th>
                            <th>Trạng thái</th>
                            <th>Quản lý</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Họ tên</th>
                            <th>Email</th>
                            <th>Hình ảnh</th>
                            <th>Ngày tham gia</th>
                            <th>Vai trò</th>
                            <th>Trạng thái</th>
                            <th>Quản lý</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach ($users as $user)
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>
                                    @if ($user->photo)
                                        <img src="{{ $user->photo }}" class="img-fluid rounded-circle"
                                            style="max-width:50px" alt="{{ $user->photo }}">
                                    @else
                                        <img src="{{ asset('backend/img/avatar.png') }}" class="img-fluid rounded-circle"
                                            style="max-width:50px" alt="avatar.png">
                                    @endif
                                </td>
                                <td>{{ $user->created_at ? $user->created_at->diffForHumans() : '' }}</td>
                                <td>{{ $user->role }}</td>
                                <td>
                                    @if ($user->status == 1)
                                        <span class="badge badge-success">Khả dụng</span>
                                    @else
                                        <span class="badge badge-warning">Không khả dụng</span>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{ route('nguoi-dung.edit', $user->id) }}"
                                        class="btn btn-primary btn-sm float-left mr-1"
                                        style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip"
                                        title="edit" data-placement="bottom">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <form method="POST" action="{{ route('nguoi-dung.destroy', [$user->id]) }}">
                                        @csrf
                                        @method('delete')
                                        <button class="btn btn-danger btn-sm dltBtn" data-id={{ $user->id }}
                                            style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip"
                                            data-placement="bottom" title="Delete">
                                            <i class="fas fa-trash-alt"></i>
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
@endsection
@push('styles')
    <link href="{{ asset('backend/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
