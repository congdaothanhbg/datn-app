@extends('backend.layouts.master')
@section('title', 'Quản lý bình luận')
@section('main-content')
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
                @if (count($dsBinhLuan) > 0)
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tác giả</th>
                                <th>Tiêu đề bài viết</th>
                                <th>Nội dung bình luận</th>
                                <th>Ngày đăng</th>
                                <th>Trạng thái</th>
                                <th>Quản lý</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Tác giả</th>
                                <th>Tiêu đề bài viết</th>
                                <th>Nội dung bình luận</th>
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
                                    <td>{{ $binhLuan->post->ten_bai_viet }}</td>
                                    <td>{{ $binhLuan->comment }}</td>
                                    <td>{{ $binhLuan->created_at->format('M d D, Y g: i a') }}</td>
                                    <td>
                                        @if ($binhLuan->status == 'active')
                                            <span class="badge badge-success">{{ $binhLuan->status }}</span>
                                        @else
                                            <span class="badge badge-warning">{{ $binhLuan->status }}</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('comment.edit', $binhLuan->id) }}"
                                            class="btn btn-primary btn-sm float-left mr-1"
                                            style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip"
                                            title="edit" data-placement="bottom"><i class="fas fa-edit"></i></a>
                                        <form method="POST" action="{{ route('comment.destroy', [$binhLuan->id]) }}">
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
                    <h6 class="text-center">Không có bình luận nào!</h6>
                @endif
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
