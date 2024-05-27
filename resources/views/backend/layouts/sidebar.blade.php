<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Logo -->
    <div class="sidebar-brand d-flex align-items-center justify-content-center">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fa-solid fa-user-gear"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Quản trị viên</div>
    </div>

    <hr class="sidebar-divider my-0">
    <!-- Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="{{ route('admin') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>

    {{-- <hr class="sidebar-divider">
    <!-- Unisharp Laravel File Manager -->
    <li class="nav-item">
        <a class="nav-link" href="{{ route('file-manager') }}">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Quản lý đa phương tiện</span>
        </a>
    </li> --}}

    <hr class="sidebar-divider">
    <div class="sidebar-heading">Hướng dẫn chăm sóc xe</div>
    <!-- Bài viết -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#postCollapse"
            aria-expanded="true" aria-controls="postCollapse">
            <i class="fas fa-blog"></i>
            <span>Quản lý bài viết</span>
        </a>
        <div id="postCollapse" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Tuỳ chọn:</h6>
                <a class="collapse-item" href="{{ route('bai-viet.index') }}">Danh sách bài viết</a>
                <a class="collapse-item" href="{{ route('bai-viet.create') }}">Thêm mới</a>
            </div>
        </div>
    </li>

    <!-- Danh mục bài viết-->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#postCategoryCollapse"
            aria-expanded="true" aria-controls="postCategoryCollapse">
            <i class="fas fa-list"></i>
            <span>Quản lý danh mục BV</span>
        </a>
        <div id="postCategoryCollapse" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Tuỳ chọn:</h6>
                <a class="collapse-item" href="{{ route('danh-muc-bai-viet.index') }}">Danh sách danh mục</a>
                <a class="collapse-item" href="{{ route('danh-muc-bai-viet.create') }}">Thêm mới</a>
            </div>
        </div>
    </li>

    <!-- Bình luận -->
    <li class="nav-item">
        <a class="nav-link" href="{{ route('comment.index') }}">
            <i class="fas fa-comments"></i>
            <span>Quản lý bình luận</span>
        </a>
    </li>

    <hr class="sidebar-divider">
    <div class="sidebar-heading">Đào tạo bằng lái</div>
    <!-- Khoá học -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#khoaHocCollapse"
            aria-expanded="true" aria-controls="khoaHocCollapse">
            <i class="fas fa-chalkboard-teacher"></i>
            <span>Quản lý khoá học</span>
        </a>
        <div id="khoaHocCollapse" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Tuỳ chọn:</h6>
                <a class="collapse-item" href="{{ route('khoa-hoc.index') }}">Danh sách khoá học</a>
                {{-- <a class="collapse-item" href="">Thêm mới</a> --}}
            </div>
        </div>
    </li>

    <!-- Đánh giá -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-star"></i>
            <span>Quản lý đánh giá</span>
        </a>
    </li>

    <hr class="sidebar-divider d-none d-md-block">
    <div class="sidebar-heading">Người dùng</div>
    <!-- Người dùng -->
    <li class="nav-item">
        <a class="nav-link" href="{{ route('nguoi-dung.index') }}">
            <i class="fas fa-users"></i>
            <span>Quản lý người dùng</span>
        </a>
    </li>

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
