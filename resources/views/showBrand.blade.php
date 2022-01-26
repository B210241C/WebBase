@extends('layout')
@section('content')
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <br><br>
        <table class="table table-bordered">
        	<thead>
        		<tr>
        			<td>ID</td>
        			<td>Name</td>
        			<td>Action</td>
        		</tr>
        	</thead>
        	<tbody>
        		@foreach($brands as $brand)
        		<tr>
        			<td>{{$brand->id}}</td>
        			<td>{{$brand->name}}</td>
        			<td></td>
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
