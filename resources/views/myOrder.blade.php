@extends('layout')
@section('content')

<head>
	<style>
		#order {
			font-family: Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}

		#order td, #order th {
			border: 1px solid #ddd;
			padding: 8px;
		}

		#order tr:nth-child(even){background-color: #f2f2f2;}

		#order tr:hover {background-color: #ddd;}

		#order th {
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
        <table id="order">
        	<thead>
        		<tr>
        			<th>Order ID</th>
        			<th>Payment Status</th>
                    <th>Amount</th>
        		</tr>
        	</thead>
        	<tbody>
        		@foreach($orders as $order)
        		<tr>
        			<td>{{$order->id}}</td>
                    <td>{{$order->paymentStatus}}</td>
                    <td>RM {{$order->amount}}</td>
        		</tr>
        		@endforeach
        	</tbody>
        </table>
    </div>
    <div class="col-sm-4"></div>
    
    
</div>
<div style="height:20px;"></div>
<div class="row">
	<div class="col-sm-5"></div>
	<div class="col-sm-7"><a class="btn btn-xs btn-info"href="{{route('pdfReport')}}">Download Report</a></div>		
</div>
<div style="height:400px;"></div>


@endsection
