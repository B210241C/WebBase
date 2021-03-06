@extends('layout')
@section('content')
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <br><br>
        <div class="card-body">
            <form action="{{route('add.to.cart')}}" method="POST">
            @CSRF
            @foreach($products as $product)
        
            <div class="row">
                <div class="col-md-6">
              
                    <input type="hidden" name="id" value="{{$product->id}}"> 
                    <img src="{{ asset('images/') }}/{{$product->image}}" alt="" width="100%" class="img-fluid">
                </div>

                <div class="col-md-6">
                 <br><br>
                <h5 class="card-title">{{$product->name}}</h5>
                <p class="card-text">{{$product->description}}</p>
                    <p class="card-text">Available:{{$product->quantity}}</p>
                    <div class="card-heading">Quantity:&nbsp<input type="number" min="1" name="quantity"></div>
                    <br><br>
                    <div class="card-heading">Price:{{$product->price}}</div>
                    <br>
                    <button type="submit" class="btn btn-danger btn-xs">Add to cart</button>
                </div>
            </div>
            <div style="height:160px;"></div>
            @endforeach
            </form>
        </div>		
    </div>
    <div class="col-sm-3"></div>
</div>
@endsection
