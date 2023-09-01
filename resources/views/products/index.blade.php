@extends('layouts.site')
@section('content')
<div class="container">
<div class="row">
    <div class="col-4 ">
        @include('products.product_form')
    </div>
    <div class="col-8">
        <div id="product-list">
            <!-- Products will be loaded here using AJAX -->
        </div>
        <div class="load-more">
            <button id="load-more" class="btn btn-outline-success p-3 align-self-center d-flex m-3">Load More</button>
        </div>
        <!-- Add the canvas for the chart -->
        <canvas id="searchTimesChart" width="400" height="200"></canvas>

    </div>
</div>
</div>
@endsection


