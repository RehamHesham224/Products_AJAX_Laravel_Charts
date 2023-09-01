<!DOCTYPE html>
<html>
<head>
    <title>Products Page</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
{{--    <link href="{{ asset('css/app.css') }}" rel="stylesheet">--}}
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

</head>
<body>
@yield('content')
<!-- Scripts -->
<script src="{{ asset('js/app.js') }}" defer></script>
<script src="{{ asset('js/bootstrap.bundle.min.js') }}" defer></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>

<script src="{{ asset('js/products.js') }}"></script>
</body>
</html>
