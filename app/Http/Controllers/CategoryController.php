<?php

namespace App\Http\Controllers;
use Session;
use Illuminate\Http\Request;
use DB;
use App\Models\Category;

class CategoryController extends Controller
{
    public function add(){
        $r=request();
        $addCategory=Category::create([
            'name'=>$r->categoryName,
        ]);
        return redirect()->route('viewCategory');
    }

    public function view(){
    	$viewCategory=Category::all();//generate SQL select*from category
    	return view('showCategory')->with('categories',$viewCategory);
    }
   


    public function delete($id){
        $deleteProduct=Category::find($id);
        $deleteProduct->delete();
        Session::flash('success',"Category delete sucessfully!");
        return redirect()->route('viewCategory');
    }
}
