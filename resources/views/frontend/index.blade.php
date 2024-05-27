@extends('frontend.layouts.master')
@section('title', 'Trang chủ')
@section('main-content')
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Trang chủ</li>
        </ol>
    </nav>
    <div class="container">
        <section class="shop-blog section">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>
                            <a href="{{ route('bai-viet') }}">Bài viết hướng dẫn chăm sóc xe</a>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @if ($dsBaiViet->isEmpty())
                    <div class="card">
                        <div class="card-body">
                            <p>Hệ thống không tìm thấy bài viết nào! Chúng tôi sẽ sớm khắc phục vấn đề này.</p>
                            <p>Bạn vui lòng thử lại sau. Xin cảm ơn.</p>
                        </div>
                    </div>
                @else
                    <div class="row">
                        @foreach ($dsBaiViet as $baiViet)
                            <div class="col-lg-4 col-md-12 mb-4">
                                {{-- <div class="shop-single-post"> --}}
                                <div class="card">
                                    <div class="bg-image hover-overlay">
                                        <img src="{{ $baiViet->hinh_anh }}" alt="{{ $baiViet->ten_bai_viet }}">
                                        <a href="{{ route('bai-viet.detail', $baiViet->slug) }}">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    {{-- <div class="content"> --}}
                                    <div class="card-body">
                                        <h5 class="card-title">{{ $baiViet->ten_bai_viet }}</h5>
                                        <p class="date">{{ $baiViet->created_at->format('d/m/Y') }}</p>
                                        <br>
                                        @if ($baiViet->cat_info === null)
                                        @else
                                            <strong class="d-inline-block text-warning">
                                                {{ $baiViet->cat_info->tieu_de }}
                                            </strong>
                                        @endif
                                        <br>
                                        <a href="{{ route('bai-viet.detail', $baiViet->slug) }}"
                                            class="btn btn-primary text-white" data-bs-ripple-init>
                                            Chi tiết
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @endif
            </div>
        </section>
    </div>
    <hr>
    <div class="row">
        <div class="col-12">
            <div class="section-title">
                <h2>
                    <a href="{{ route('khoa-hoc') }}">Khoá học đào tạo bằng lái</a>
                </h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="card">
            <div class="row">
                @if ($dsKhoaHoc)
                    @foreach ($dsKhoaHoc as $khoaHoc)
                        <div class="col-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="content">
                                        <span>
                                            Khoá học:
                                            <h5 class="card-title">
                                                {{ $khoaHoc->ten_khoa_hoc }}
                                            </h5>
                                        </span>
                                        <p class="card-text">
                                            Mô tả:<br>{{ $khoaHoc->mo_ta }}
                                        </p>
                                        <hr>
                                        <a href="{{ route('khoa-hoc.detail', $khoaHoc->slug) }}"
                                            class="btn btn-primary text-white {{ $khoaHoc->id === 2 ? 'disabled' : '' }}">
                                            Chi tiết
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
@endsection
