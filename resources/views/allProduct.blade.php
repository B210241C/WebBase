@extends('layout')
@section('content')
<div class="row justify-content-center">
    @if($products)
        @foreach($products as $product)
        <div class="row">
            <div class="col-sm-3"></div>
                <div class="col-sm-6">
                   <br><br>
                     <div class="card-body">
                         <div class="row">
                              <div class="col-md-6">
                            
                                    <img src="{{ asset('images/') }}/{{$product->image}}" alt="" width="100%" class="card-image-top">
                                           <div class="card-body">
                                              <h5 class="card-title">{{$product->name}}</h5>
                                              <p class="card-text">RM{{$product->price}}</p>
                                              <a href="{{ route('productdetail',['id'=>$product->id])}}" target="_blank" class="btn btn-danger">Add to cart</a>
                                           
                                 </div>
                             </div>
                         </div>
                    </div>
                </div>
            <div class="col-sm-3"></div>
        @endforeach
        @endif

</div>
<div class="d-flex justify-content-center">
    {!! $products->links() !!}
</div>
</div>
@endsection
