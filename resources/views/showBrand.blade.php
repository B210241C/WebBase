@extends('layout')
@section('content')
<head>
	<style>
		#Vbrand {
			font-family: Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}

		#Vbrand td, #Vbrand th {
			border: 1px solid #ddd;
			padding: 8px;
		}

		#Vbrand tr:nth-child(even){background-color: #f2f2f2;}

		#Vbrand tr:hover {background-color: #ddd;}

		#Vbrand th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: left;
			background-color: #000000;
			color: white;
		}
	</style>
</head>
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <br><br>
        <table class="table table-bordered" id="Vbrand">
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
