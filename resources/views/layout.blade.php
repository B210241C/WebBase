<!doctype html>
<html lang="en">
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
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>LAK Shopping</title>
  </head>
  <body>

    @if(Session::has('success'))
      <div class="alert alert-success" role="alert">
        <h4 class="alert-heading"></h4>
        <p> {{Session::get('success')}}</p>
        <p class="mb-0"></p>
      </div>
      </div>
    @endif

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <img src="{{asset('images/LAK_Logo.png')}}" style="border-radius: 5%;" alt="Southern Online" width="50">&nbsp;
  <a class="navbar-brand" href="" style="font-family:cambria;margin-left:5px">LAK Shopping</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
   
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="{{route('phone')}}">Phone</a>
          <a class="dropdown-item" href="{{route('computer')}}">Desktops/Laptop</a>
          <a class="dropdown-item" href="{{route('headphone')}}">Headphones</a>
          <a class="dropdown-item" href="{{route('tv')}}">TV</a>
          <a class="dropdown-item" href="{{route('accesssories')}}">Accesssories</a>
          <a class="dropdown-item" href="{{route('watch')}}">Watch</a>
        
        
      </li> 
      <ul class="navbar-nav">
   
      
   <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     {{ Auth::user()->name }}
     </a>
     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
       <a class="dropdown-item" href="{{route('phone')}}">Phone</a>
       <a class="dropdown-item" href="{{route('computer')}}">Desktops/Laptop</a>
       <a class="dropdown-item" href="{{route('headphone')}}">Headphones</a>
       <a class="dropdown-item" href="{{route('tv')}}">TV</a>
       <a class="dropdown-item" href="{{route('accesssories')}}">Accesssories</a>
       <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Log Out') }}
                                    </a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
     
     
   </li>      
 </ul>     
    </ul>
    
    <form class="form-inline my-2 my-lg-0" action="{{route('search.products')}}" method="POST">
      @csrf
      <input class="form-control mr-sm-2" name="keyword" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Search</button>
   
    </form>&nbsp;
    
    @guest
    <a class="btn btn-outline-warning my-2 my-sm-0" href="{{route('myCart')}}" >
          My Cart<span class="badge bg-danger">
             
             </span>
        </a>

    @else
       
          <a class="btn btn-outline-warning my-2 my-sm-0" href="{{route('myCart')}}" >
          My Cart&nbsp;<span class="badge bg-danger">
          {{Session()->get('cartItem')}}
             </span>
        </a>

    @endguest
    
  </div>
</nav>

@yield('content')

 <!-- footer -->
 <!-- Footer -->

<footer class="bg-dark text-center text-white" >
  <!-- Grid container -->

    <!-- Section: Text -->

    <!-- Section: Links -->
   
  <!-- Grid container -->

  <!-- Copyright -->

  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2021 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->

 <!-- end footer --> 

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    -->
  </body>
</html>