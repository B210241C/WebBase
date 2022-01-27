@extends('layout')
@section('content')
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <br><br>
        <table class="table table-bordered"id="Vproduct">
        	<thead>
        		<tr>
        			<th>ID</th>
        			<th>Name</th>
        			<th>Action</th>
        		</tr>
        	</thead>
        	<tbody>
        		@foreach($categories as $category)
        		<tr>
        			<td>{{$category->id}}</td>
        			<td>{{$category->name}}</td>
					<td>
                            
                            <a href="{{route('deleteCategory',['id'=>$category->id])}}" class="btn btn-danger btn-xs" onClick="return confirm('Are you sure to delete?')">Delete</a>
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
