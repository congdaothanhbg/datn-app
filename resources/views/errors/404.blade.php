<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    @include('backend.layouts.head')
</head>

<body>
    <div class="container-fluid">
        <div class="row" style="margin-top:10%">
            <div class="col-md-12">
                <div class="text-center">
                    <div class="error mx-auto" data-text="404">404</div>
                    <p class="lead text-gray-800 mb-5">Không tìm thấy trang.</p>
                    <p class="text-gray-500 mb-0">Có vẻ như bạn đang tìm kiếm một tài nguyên không tồn tại.</p>
                    <a href="javascript:history.back()">&larr; Quay lại</a>
                </div>
            </div>
        </div>
    </div>
    @include('backend.layouts.footer')
</body>

</html>
