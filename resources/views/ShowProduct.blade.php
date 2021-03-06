@extends('layout')
@section('content')
<head>
  
</head>
<div class="row">
    <div class="col-sm-1"></div>
    <div class="col-sm-10">
        <br><br>
        <table id="Vproduct">
        	<thead>
        		<tr>
        			<th style="width:30px;">ID</th>
        			<th style="width:150px;">Name</th>
                    <th style="width:500px;">Description</th>
                    <th style="width:50px;">Price</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Category</th>
                    <th>Brand</th>
                    <th>Action</th>
        		</tr>
        	</thead>
        	<tbody>
        		@foreach($products as $product)
        		<tr>
        			<td>{{$product->id}}</td>
        			<td>{{$product->name}}</td>
                    <td>{{$product->description}}</td>
                    <td>{{$product->price}}</td>
                    <td><img src="{{ asset('images/') }}/{{$product->image}}" alt="" width="100" class="img-fluid"></td>
                    <td>{{$product->quantity}}</td>
                    <td>{{$product->catName}}</td>
                    <td>{{$product->BrandName}}</td>
                
                
                    <td>
                            <a href="{{route('editProduct',['id'=>$product->id])}}" class="btn btn-warning">Edit</a>
                            <a href="{{ route('deleteProduct',['id'=>$product->id])}}" class="btn btn-danger btn-xs" onClick="return confirm('Are you sure to delete?')">Delete</a>
                        </td> 

        		</tr>
        		@endforeach
        	</tbody>
        </table>
    </div>
    <div class="col-sm-1"></div>
</div>
@endsection
