
<div class="row">
    @foreach($products as $product)
        <div class="product col-6 ">
            <h3 class="bg-danger-subtle m-3 p-3 ">{{ $product->product }}</h3>
            {{--        <p>Category: {{ $product->category }}</p>--}}
            {{--        <p>Brand: {{ $product->brand }}</p>--}}
        </div>
    @endforeach

</div>
