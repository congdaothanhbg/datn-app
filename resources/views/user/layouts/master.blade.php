<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head></head>
@include('user.layouts.head')
</head>

<body id="page-top">
    <div id="wrapper">
        @include('user.layouts.sidebar')
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                @include('user.layouts.header')
                @yield('main-content')
            </div>
            @include('user.layouts.footer')
</body>

</html>
