<head>
    <title>Southern Online</title>
	<style>
	#Vproduct {
			font-family: Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}

		#Vproduct td, #Vproduct th {
			border: 1px solid #ddd;
			padding: 8px;
		}

		#Vproduct tr:nth-child(even){background-color: #f2f2f2;}

		#Vproduct tr:hover {background-color: #ddd;}

		#Vproduct th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: left;
			background-color: #000000;
			color: white;
		}
	</style>
</head>

<body>
<h3>MY Order Report</h3>
<table id="Vproduct">
    <thead>
 		<tr>
        	<th>Order ID</th>
    		<th>Payment Status</th>
            <th>Amount</th>
		</tr>
	</thead>
	<tbody>
    	@foreach($data as $order)
    	<tr>
    		<td>{{$order->id}}</td>
                <td>{{$order->paymentStatus}}</td>
                <td>RM {{$order->amount}}</td>
        	</tr>
        @endforeach
    </tbody>
</table>
</body>