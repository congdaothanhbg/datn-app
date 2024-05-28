@extends('user.layouts.master')
@section('title', 'Chỉnh sửa bình luận')
@section('main-content')
    <div class="card">
        <h5 class="card-header">Chỉnh sửa bình luận</h5>
        <div class="card-body">
            <form action="{{ route('user.binh-luan.update', $comment->id) }}" method="POST">
                @csrf
                @method('PATCH')
                <div class="form-group">
                    <label for="name">Người đăng:</label>
                    <input type="text" disabled class="form-control" value="{{ $comment->user_info->name }}">
                </div>
                <div class="form-group">
                    <label for="comment">Nội dung</label>
                    <textarea name="comment" id="" cols="20" rows="10" class="form-control">{{ $comment->noi_dung }}</textarea>
                </div>
                <div class="form-group">
                    <label for="status">Trạng thái</label>
                    <select name="status" id="" class="form-control">
                        <option value="0" {{ $comment->status == 1 ? 'selected' : '' }}>Khả dụng</option>
                        <option value="`" {{ $comment->status == 0 ? 'selected' : '' }}>Không khả dụng</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-success">Cập nhật</button>
                <button type="reset" class="btn btn-secondary">Huỷ bỏ</button>
            </form>
        </div>
    </div>
@endsection
