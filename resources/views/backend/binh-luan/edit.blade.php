@extends('backend.layouts.master')
@section('title', 'Chỉnh sửa bình luận')
@section('main-content')
    <div class="card">
        <h5 class="card-header">Chỉnh sửa bình luận</h5>
        <div class="card-body">
            <form action="{{ route('binh-luan.update', $binhLuan->id) }}" method="POST">
                @csrf
                @method('put')
                <div class="form-group">
                    <label for="name">Người đăng:</label>
                    <input type="text" disabled class="form-control" value="{{ $binhLuan->user_info->name }}">
                </div>
                <div class="form-group">
                    <label for="comment">Nội dung bình luận</label>
                    <textarea name="comment" id="" cols="20" rows="10" class="form-control" disabled>{{ $binhLuan->noi_dung }}</textarea>
                </div>
                <div class="form-group">
                    <label for="trang_thai">Trạng thái</label>
                    <select name="trang_thai" id="" class="form-control">
                        <option value="1" {{ $binhLuan->trang_thai == 1 ? 'selected' : '' }}>Khả dụng</option>
                        <option value="0" {{ $binhLuan->trang_thai == 0 ? 'selected' : '' }}>Không khả dụng</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-success">Cập nhật</button>
                <button type="reset" class="btn btn-secondary">Huỷ bỏ</button>
            </form>
        </div>
    </div>
@endsection

@push('styles')
    <style>
        .order-info,
        .shipping-info {
            background: #ECECEC;
            padding: 20px;
        }

        .order-info h4,
        .shipping-info h4 {
            text-decoration: underline;
        }
    </style>
@endpush
