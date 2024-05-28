<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
    <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
        <i class="fa fa-bars"></i>
    </button>
    <a href="{{ route('storage.link') }}" class="btn btn-outline-primary btn-sm mr-3">
        Liên kết kho lưu trữ
    </a>
    <a href="{{ route('cache.clear') }}" class="btn btn-outline-danger btn-sm mr-3">
        Xoá bộ nhớ đệm
    </a>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="{{ route('home') }}" target="_blank" data-toggle="tooltip"
                data-placement="bottom" title="Trang chủ" role="button">
                <i class="fas fa-home fa-fw"></i>
            </a>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
            @include('backend.thong-bao.show')
        </li>
        <div class="topbar-divider d-none d-sm-block"></div>
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">{{ Auth()->user()->name }}</span>
                @if (Auth()->user()->photo)
                    <img class="img-profile rounded-circle" src="{{ Auth()->user()->photo }}">
                @else
                    <img class="img-profile rounded-circle" src="{{ asset('backend/img/avatar.png') }}">
                @endif
            </a>
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="{{ route('admin-profile') }}">
                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Hồ sơ
                </a>
                <a class="dropdown-item" href="{{ route('change.password.form') }}">
                    <i class="fas fa-key fa-sm fa-fw mr-2 text-gray-400"></i>
                    Đổi mật khẩu
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Đăng xuất
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            </div>
        </li>
    </ul>
</nav>
