@extends('frontend.layouts.master')
@section('title', 'Bài viết hướng dẫn chăm sóc xe')
@section('main-content')
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="{{ route('home') }}" class="text-primary">Trang chủ</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Khoá học đào tạo bằng lái</li>
            </ol>
        </nav>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">Ứng dụng hỗ trợ đào tạo bằng lái HaUI</h1>
                <p>
                    Với giao diện thân thiện, nội dung phong phú, và các bài kiểm tra sát với thực tế, ứng dụng giúp bạn nắm vững kiến thức lý thuyết để chuẩn bị tốt cho kỳ thi bằng lái xe chính thức.
                </p>
            </div>
        </div>
        <hr>
        <h1>Các khoá học chúng tôi cung cấp</h1>
        <section class="blog-single shop-blog grid section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="row align-items-md-stretch">
                                @foreach ($dsKhoaHoc as $khoaHoc)
                                    <div class="col-md-6">
                                        <div class="h-100 p-5 bg-light border rounded-3">
                                            <h2>{{ $khoaHoc->ten_khoa_hoc }}</h2>
                                            <p>{{ $khoaHoc->mo_ta }}</p>
                                            <a href="{{ route('khoa-hoc.detail', $khoaHoc->slug) }}"
                                                class="btn btn-outline-secondary {{$khoaHoc->id == 2 ? 'disabled' : ''}}">
                                                Chi tiết
                                            </a>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr>
    </div>
@endsection
