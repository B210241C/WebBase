@extends('layout')
@section('content')
<div style="height:20px;"></div>
<div class="row justify-content-center">
    @if($products)
        @foreach($products as $product)
        
            <div class="card m-1"  style="width: 33%;">
           
                <img style="width:300px; height:300px;display: block;  margin-left: auto;  margin-right: auto;  width: 50%;"src="{{ asset('images/') }}/{{$product->image}}" alt="" width="70%" class="card-image-top">
                <div class="card-body">
                <h4 class="card-title">{{$product->name}}</h4>
                    <p class="card-text">RM{{$product->price}}</p>
                    <a href="{{ route('productdetail',['id'=>$product->id])}}" target="_blank" class="btn btn-danger">Add to cart</a>
                </div>
            </div>
        @endforeach
        @endif
</div>
<div class="d-flex justify-content-center">

</div>
@endsection
