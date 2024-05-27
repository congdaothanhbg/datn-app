@foreach ($dsBinhLuan as $binhLuan)
    @php
        $dep = $depth - 1;
    @endphp
    <div class="display-comment" @if ($binhLuan->id != null) style="margin-left:40px;" @endif>
        <div class="comment-list">
            <div class="single-comment">
                @if ($binhLuan->user_info['photo'])
                    <img src="{{ $binhLuan->user_info['photo'] }}" alt="{{ $binhLuan->user_info['name'] }}">
                @else
                    <img src="{{ asset('backend/img/avatar.png') }}" alt="{{ $binhLuan->user_info['name'] }}">
                @endif
                <div class="content">
                    <h4>
                        {{ $binhLuan->user_info['name'] }}
                        <span>
                            {{ $binhLuan->created_at->format('d/m/Y') }} - {{ $binhLuan->created_at->format('G:i') }}
                        </span>
                    </h4>
                    <p>{{ $binhLuan->noi_dung }}</p>
                    @if ($dep)
                        <div class="button">
                            <a href="#" class="btn btn-reply reply" data-id="{{ $binhLuan->id }}">
                                <i class="fa fa-reply" aria-hidden="true"></i>Phản hồi
                            </a>
                            <a href="" class="btn btn-reply cancel" style="display: none;">
                                <i class="fa fa-trash" aria-hidden="true"></i>Huỷ bỏ
                            </a>
                        </div>
                    @endif
                </div>
            </div>
        </div>
        @include('frontend.pages.comment', ['dsBinhLuan' => $binhLuan->noi_dung_phan_hoi, 'depth' => $dep])
    </div>
@endforeach
