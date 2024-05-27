<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            LOGO
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item {{ Request::path() == 'home' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('home') }}">Trang chủ</a>
                </li>
                <li class="nav-item {{ Request::path() == 'bai-viet' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('bai-viet') }}">Hướng dẫn chăm sóc xe</a>
                </li>
                <li class="nav-item {{ Request::path() == 'khoa-hoc' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('khoa-hoc') }}">Đào tạo bằng lái</a>
                </li>
            </ul>
            <div class="navbar-nav ms-auto">
                <div class="input-group rounded">
                    <input type="search" class="form-control rounded" placeholder="Tìm kiếm" aria-label="Search"
                        aria-describedby="search-addon" />
                    <span class="input-group-text border-0" id="search-addon">
                        <i class="fas fa-search"></i>
                    </span>
                </div>
            </div>
            <ul class="navbar-nav ms-auto">
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login.form') }}">Đăng nhập</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register.form') }}">Đăng ký</a>
                    </li>
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            @if (Auth::user()->role == 'admin')
                                <a href="{{ route('admin') }}" target="_blank" class="dropdown-item">
                                    Dashboard
                                </a>
                            @else
                                <a href="{{ route('user') }}" target="_blank" class="dropdown-item">
                                    Hồ sơ
                                </a>
                            @endif
                            <a href="{{ route('user.logout') }}" class="dropdown-item">
                                Đăng xuất
                            </a>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>
