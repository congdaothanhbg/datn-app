@foreach ($dsBinhLuan as $binhLuan)
    @php $dep = $depth-1; @endphp
    <div class="display-comment" @if ($binhLuan->id != null) style="margin-left:40px;" @endif>
        <div class="comment-list">
            <div class="single-comment">
                @if ($binhLuan->user_info['photo'])
                    <img src="{{ $binhLuan->user_info['photo'] }}" alt="#">
                @else
                    <img src="{{ asset('backend/img/avatar.png') }}" alt="">
                @endif
                <div class="content">
                    <h4>
                        {{ $binhLuan->user_info['name'] }} <span>{{ $binhLuan->created_at->format('G:i') }} <i
                                class="fa-solid fa-calendar"></i>
                            {{ $binhLuan->created_at->format('d/m/Y') }}</span>
                    </h4>
                    <p class="fs-5">
                        @if ($binhLuan->trang_thai === 1)
                            {{ $binhLuan->noi_dung }}
                        @else
                            <i>(Bình luận này hiện đang bị tạm ẩn)</i>
                        @endif
                    </p>
                    @if ($dep)
                        <div class="button">
                            <a href="#" class="btn btn-reply reply" data-id="{{ $binhLuan->id }}"><i
                                    class="fa fa-reply" aria-hidden="true"></i>Phản hồi</a>
                            <a href="" class="btn btn-reply cancel" style="display: none;"><i class="fa fa-trash"
                                    aria-hidden="true"></i>Huỷ bỏ</a>
                        </div>
                    @endif
                </div>
            </div>
        </div>
        @include('frontend.pages.binh-luan', ['dsBinhLuan' => $binhLuan->replies, 'depth' => $dep])
    </div>
@endforeach
