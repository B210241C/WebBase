<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\brands;

class BrandController extends Controller
{
    public function add(){
        $r=request();
        $addBrand=brands::create([
            'name'=>$r->brandName,
        ]);
        return redirect()->route('viewBrand');
    }

    public function view(){
    	$viewBrand=brands::all();//generate SQL select*from category
    	return view('showBrand')->with('brands',$viewBrand);
    }
}
