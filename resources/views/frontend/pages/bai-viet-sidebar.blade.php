<div class="col-lg-4 col-12">
    <div class="main-sidebar">
        <div class="single-widget search">
            <form method="GET" action="{{ route('bai-viet.search') }}" class="form">
                <input type="text" name="search" placeholder="Tìm kiếm bài viết theo tên ..." value="{{ request()->query('search') }}">
                <button type="sumbit" class="button"><i class="fa fa-search"></i></button>
            </form>
        </div>
        <div class="single-widget category">
            <h3 class="title">Danh mục bài viết</h3>
            <ul class="categor-list">
                @if (!empty($_GET['category']))
                    @php
                        $filter_cats = explode(',', $_GET['category']);
                    @endphp
                @endif
                <form method="POST" action="{{ route('bai-viet.filter') }}">
                    @csrf
                    @foreach (Helper::postCategoryList('posts') as $cat)
                        <li>
                            <a href="{{ route('bai-viet.category', $cat->slug) }}">{{ $cat->ten_danh_muc }}
                            </a>
                        </li>
                    @endforeach
                </form>
            </ul>
        </div>
        <div class="single-widget recent-post">
            <h3 class="title">Bài viết gần đây</h3>
            @foreach ($dsBaiVietGanDay as $baiVietGanDay)
                <div class="single-post">
                    <div class="image">
                        <img src="{{ $baiVietGanDay->hinh_anh }}" alt="{{ $baiVietGanDay->ten_bai_viet }}">
                    </div>
                    <div class="content">
                        <h5>
                            <a
                                href="{{ route('bai-viet.detail', $baiVietGanDay->slug) }}">{{ $baiVietGanDay->ten_bai_viet }}</a>
                        </h5>
                        <ul class="comment">
                            <li>
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                {{ $baiVietGanDay->created_at->format('d/m/Y') }}
                            </li>
                            <li>
                                <i class="fa fa-user" aria-hidden="true"></i>
                                {{ $baiVietGanDay->author_info->name ?? 'Không xác định' }}
                            </li>
                        </ul>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
