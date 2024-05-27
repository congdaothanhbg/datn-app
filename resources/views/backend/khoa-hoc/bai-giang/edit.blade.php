@extends('backend.layouts.app')
@section('title', 'Chỉnh sửa bài giảng')
@section('content')
    <h1 class="mt-4">Chỉnh sửa khóa học</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item">
            <a href="{{ route('admin.index') }}">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
            <a href="{{ route('admin.courses.index') }}">Quản lý khóa học</a>
        </li>
        <li class="breadcrumb-item active">
            Quản lý bài giảng
        </li>
    </ol>
    <form method="POST" action="{{ route('admin.courses.update', $course) }}">
        @csrf
        @method('put')
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Chỉnh sửa bài giảng
            </div>
            <div class="card-body">
                <div class="row g-3">
                    <div class="col-12">
                        <label for="course_name" class="form-label">Bài giảng số (Thứ tự bài giảng):</label>
                        <input type="number" id="course_name" name="course_name" class="form-control"
                            value="{{ $lesson->lesson_number }}" required>
                    </div>
                </div>
                <div class="row g-3">
                    <div class="col-12">
                        <label for="description" class="form-label">Tiêu đề bài giảng:</label>
                        <textarea id="description" name="description" class="form-control" required>{{ $lesson->lesson_title }}</textarea>
                    </div>
                </div>
                <div class="row g-3">
                    <div class="col-12">
                        <label for="description" class="form-label">Nội dung:</label>
                        <textarea id="description" name="description" class="form-control" required>{{ $lesson->lesson_content }}</textarea>
                    </div>
                </div>
                <hr class="my-4">
                <button type="submit" class="btn btn-primary">Cập nhật</button><br>
                <a href="{{ route('admin.courses.index') }}">Quay lại danh sách</a>
            </div>
        </div>
    </form>
@endsection
