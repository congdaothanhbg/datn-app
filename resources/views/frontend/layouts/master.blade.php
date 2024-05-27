<!DOCTYPE html>
<html lang="zxx">

<head>
    @include('frontend.layouts.head')
</head>

<body>
    <div id="app">
        @include('frontend.layouts.notification')
        @include('frontend.layouts.header')
        @yield('main-content')
        @include('frontend.layouts.footer')
    </div>
</body>

</html>
