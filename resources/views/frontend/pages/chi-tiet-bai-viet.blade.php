@extends('frontend.layouts.master')
@section('title', 'Chi tiết bài viết')
@section('main-content')
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="{{ route('home') }}">
                        Trang chủ
                    </a>
                </li>
                <li class="breadcrumb-item">
                    <a href="{{ route('bai-viet') }}">
                        Bài viết hướng dẫn chăm sóc xe
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    Chi tiết bài viết
                </li>
            </ol>
        </nav>
        <section class="blog-single section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-12">
                        <div class="blog-single-main">
                            <div class="row">
                                <div class="col-12">
                                    <div class="image">
                                        @if ($baiViet->hinh_anh !== null)
                                            <img src="{{ $baiViet->hinh_anh }}" alt="{{ $baiViet->hinh_anh }}">
                                        @else
                                            <img src="" alt="Hình ảnh">
                                        @endif
                                    </div>
                                    <div class="blog-detail">
                                        <h2 class="blog-title">
                                            {{ $baiViet->ten_bai_viet }}
                                        </h2>
                                        <div class="blog-meta">
                                            <span class="author">
                                                <a href="javascript:void(0);">
                                                    <i class="fa fa-user"></i>
                                                    Đăng bởi:
                                                    @if ($baiViet->author_info === null)
                                                        Không xác định
                                                    @else
                                                        {{ $baiViet->author_info['name'] }}
                                                    @endif
                                                </a>
                                                <a href="javascript:void(0);">
                                                    <i class="fa fa-calendar"></i>
                                                    {{ $baiViet->created_at->format('d/m/Y') }}
                                                </a>
                                                <a href="javascript:void(0);">
                                                    <i class="fa fa-comments"></i>
                                                    Bình luận ({{ $baiViet->allComments->count() }})
                                                </a>
                                            </span>
                                        </div>
                                        <div class="content">
                                            <p>{!! $baiViet->noi_dung !!}</p>
                                        </div>
                                    </div>
                                </div>
                                <hr class="table-group-divider">
                                @auth
                                    <div class="col-12 mt-4">
                                        <div class="reply">
                                            <div class="reply-head comment-form" id="commentFormContainer">
                                                <h2 class="reply-title">Bình luận</h2>
                                                <form class="form comment_form" id="commentForm"
                                                    action="{{ route('binh-luan.store', $baiViet->slug) }}" method="POST">
                                                    @csrf
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="form-group  comment_form_body">
                                                                <label for="noi_dung">Viết cảm nghĩ của
                                                                    bạn<span>*</span></label>
                                                                <textarea id="noi_dung" name="noi_dung" rows="10"></textarea>
                                                                <input type="hidden" name="bai_viet_id"
                                                                    value="{{ $baiViet->id }}" />
                                                                <input type="hidden" name="slug"
                                                                    value="{{ $baiViet->slug }}" />
                                                                <input type="hidden" name="binh_luan_id" id="binh_luan_id"
                                                                    value="" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group button">
                                                                <button type="submit" class="btn btn-primary">
                                                                    <span class="comment_btn comment">
                                                                        Đăng
                                                                    </span>
                                                                    <span class="comment_btn reply" style="display: none;">
                                                                        Phản hồi
                                                                    </span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                @else
                                    <p class="text-center p-5">
                                        Bạn cần phải
                                        <a href="{{ route('login.form') }}" class="text-primary">
                                            Đăng nhập
                                        </a>
                                        hoặc
                                        <a href="{{ route('register.form') }}" class="text-primary">
                                            Đăng ký
                                        </a>
                                        để có thể bình luận.
                                    </p>
                                @endauth
                                <div class="col-12">
                                    <div class="comments">
                                        <h3 class="comment-title">Lượt bình luận ({{ $baiViet->allComments->count() }})
                                        </h3>
                                        @include('frontend.pages.binh-luan', [
                                            'dsBinhLuan' => $baiViet->comments,
                                            'bai_viet_id' => $baiViet->id,
                                            'depth' => 3,
                                        ])
                                    </div>
                                </div>
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
@push('scripts')
    <script>
        $(document).ready(function() {
            (function($) {
                "use strict";
                $('.btn-reply.reply').click(function(e) {
                    e.preventDefault();
                    $('.btn-reply.reply').show();
                    $('.comment_btn.comment').hide();
                    $('.comment_btn.reply').show();

                    $(this).hide();
                    $('.btn-reply.cancel').hide();
                    $(this).siblings('.btn-reply.cancel').show();

                    var binh_luan_id = $(this).data('id');
                    var html = $('#commentForm');
                    $(html).find('#binh_luan_id').val(binh_luan_id);
                    $('#commentFormContainer').hide();
                    $(this).parents('.comment-list').append(html).fadeIn('slow').addClass('appended');
                });

                $('.comment-list').on('click', '.btn-reply.cancel', function(e) {
                    e.preventDefault();
                    $(this).hide();
                    $('.btn-reply.reply').show();

                    $('.comment_btn.reply').hide();
                    $('.comment_btn.comment').show();

                    $('#commentFormContainer').show();
                    var html = $('#commentForm');
                    $(html).find('#binh_luan_id').val('');

                    $('#commentFormContainer').append(html);
                });

            })(jQuery)
        })
    </script>
@endpush
