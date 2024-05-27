<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('user') }}">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fa-solid fa-user"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Người dùng</div>
    </a>
    <hr class="sidebar-divider my-0">
    <li class="nav-item active">
        <a class="nav-link" href="{{ route('user') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Bài viết
    </div>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('user.binh-luan.index') }}">
            <i class="fas fa-comments fa-chart-area"></i>
            <span>Bình luận</span>
        </a>
    </li>
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Khoá học
    </div>
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
