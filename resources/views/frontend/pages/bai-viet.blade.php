@extends('frontend.layouts.master')
@section('title', 'Bài viết hướng dẫn chăm sóc xe')
@section('main-content')
    <div class="container">
        <nav aria-label="breadcrumb" class="py-1">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="{{ route('home') }}" class="text-primary">
                        Trang chủ
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Bài viết hướng dẫn chăm sóc xe
                </li>
            </ol>
        </nav>
        <hr class="table-group-divider">
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <div class="col-md-12 px-0">
                <h1 class="display-4 font-italic">Nơi chia sẻ những cách chăm sóc xe hiệu quả</h1>
                <p class="lead my-3">
                    Tại đây, bạn sẽ tìm thấy những bí quyết, mẹo vặt và hướng dẫn chi tiết về cách duy trì và nâng cao hiệu
                    suất cho chiếc xe của mình, từ việc bảo dưỡng định kỳ đến những kỹ thuật chăm sóc chuyên sâu.
                </p>
            </div>
        </div>
        <hr class="table-group-divider">
        <section class="blog-single shop-blog grid section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-12">
                        <div class="row">
                            @foreach ($dsBaiViet as $post)
                                <div class="col-lg-6 col-md-6 col-12 mb-3">
                                    <div class="shop-single-post">
                                        <img src="{{ $post->hinh_anh }}" alt="{{ $post->hinh_anh }}">
                                        <div class="content">
                                            <p class="date">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                                {{ $post->created_at->format('d/m/Y') }}
                                                <span class="float-right">
                                                    <i class="fa fa-user" aria-hidden="true"></i>
                                                    {{ $post->author_info->name ?? 'Không xác định' }}
                                                </span>
                                            </p>
                                            <a href="{{ route('bai-viet.detail', $post->slug) }}"
                                                class="title">
                                                {{ $post->tieu_de }}
                                            </a>
                                            <p>{!! html_entity_decode($post->summary) !!}</p>
                                            <a href="{{ route('bai-viet.detail', $post->slug) }}"
                                                class="btn btn-primary text-white">
                                                Chi tiết
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            <div class="col-12">
                                {{-- {{$dsBaiViet->appends($_GET)->links()}} --}}
                            </div>
                        </div>
                    </div>
                    @include('frontend.pages.bai-viet-sidebar')
                </div>
            </div>
        </section>
        <hr class="table-group-divider">
    </div>
@endsection
@push('styles')
    <style>
        .pagination {
            display: inline-flex;
        }
    </style>
@endpush
