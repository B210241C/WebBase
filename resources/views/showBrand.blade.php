@extends('layout')
@section('content')
<head>
	
</head>
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <br><br>
        <table class="table table-bordered" id="Vproduct">
        	<thead>
        		<tr>
        			<th>ID</th>
        			<th>Name</th>
        			<th>Action</th>
        		</tr>
        	</thead>
        	<tbody>
        		@foreach($brands as $brand)
        		<tr>
        			<td>{{$brand->id}}</td>
        			<td>{{$brand->name}}</td>
					<td>
                   
                            <a href="{{route('deletebrand',['id'=>$brand->id])}}" class="btn btn-danger btn-xs" onClick="return confirm('Are you sure to delete?')">Delete</a>
                        </td> 
        		</tr>
        		@endforeach
        	</tbody>
        </table>
    </div>
    <div class="col-sm-3"></div>
</div>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br>
@endsection
