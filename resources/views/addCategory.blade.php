@extends('layout')
@section('content')
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <br><br>
        <br>
       
        <form action="{{route('addCategory')}}" method="POST">
            @CSRF
            <h3>Add New Category</h3>   
            <label for="addCategory"> </label>
            <input class="form-control" type="text" id="categoryName" name="categoryName" required>
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