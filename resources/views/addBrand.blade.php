@extends('layout')
@section('content')
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <br><br>
        <br>
       
        <form action="{{route('addBrand')}}" method="POST">
            @CSRF
            <h3>Add New Brand</h3>   
            <label for="addBrand"> </label>
            <input class="form-control" type="text" id="brandName" name="brandName" required>
            <br>
            <button type="submit" class="btn btn-primary">Add New</button>
        </form>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br><br>   
    </div>
   
</div>
@endsection