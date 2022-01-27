@extends('layout')
@section('content')
<div class="row justify-content-center">
    @if($products)
        @foreach($products as $product)
            <div class="card m-1"  style="width: 33%;">
                <img src="{{ asset('images/') }}/{{$product->image}}" alt="" width="70%" class="card-image-top">
                <div class="card-body">
                    <h5 class="card-title">{{$product->name}}</h5>
                    <p class="card-text">RM{{$product->price}}</p>
                    <a href="{{ route('productdetail',['id'=>$product->id])}}" target="_blank" class="btn btn-danger">Add to cart</a>
                </div>
            </div>
        @endforeach
        @endif
</div>
<div class="d-flex justify-content-center">
    {!! $products->links() !!}
</div>
@endsection
