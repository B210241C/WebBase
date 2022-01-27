<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Product;
use Session;
use App\Models\Category;
use App\Models\brands;

class ProductController extends Controller
{
    public function add(){
        $r=request();
        $image=$r->file('productImage');
        $image->move('images',$image->getClientOriginalName());
        $imageName=$image->getClientOriginalName();

        $addProduct=Product::create([
            'CategoryID'=>$r->categoryID, 
            'name'=>$r->productName,
            'image'=>$imageName,
            'quantity'=>$r->productQuantity,
            'price'=>$r->productPrice,
            'description'=>$r->productDescription,
            'BrandID'=>$r->BrandID, 

        ]);
        Session::flash('success',"Product create sucessfully!!");
        return redirect()->route('viewProduct');
    }

    public function view(){
        $viewProduct=DB::table('products')

        ->leftjoin('categories','categories.id','=','products.CategoryID') 
        ->leftjoin('brands','brands.id','=','products.BrandID') 
        ->select('products.*','brands.name as BrandName','categories.name as catName')
        ->get();
        
       
       
        return view('showProduct')->with('products',$viewProduct);

    }

    public function edit($id){
        $products=Product::all()->where('id',$id);
        return view('editProduct')->with('products',$products)
                                 ->with('brands',brands::all())
                                  ->with('categories',Category::all());


    }

    public function update(){
        $r=request();
        $products =Product::find($r->id); 
        if($r->file('productImage')!=''){
            $image=$r->file('productImage');
            $image->move('images',$image->getClientOriginalName());
            $imageName=$image->getClientOriginalName();
            $products->image=$imageName;
        }
        $products->BrandID = $r->BrandID;
        $products->categoryID = $r->categoryID;
        $products->name=$r->productName;
        $products->quantity=$r->productQuantity;
        $products->price=$r->productPrice;
        $products->description=$r->productDescription;
        $products->save();

        Session::flash('success', "Product update successfully!");
        return redirect()->route('viewProduct');
    }

    public function delete($id){
        $deleteProduct=Product::find($id);
        $deleteProduct->delete();
        Session::flash('success',"Product delete sucessfully!");
        return redirect()->route('viewProduct');
    }

    public function productdetail($id){
        $products=Product::all()->where('id',$id);
        return view('productDetail')->with('products',$products);

    }

    public function allProduct(){
        $products=Product::paginate(40);
        return view('allProduct',compact('products'));
    }

    public function searchProduct(){
        $r=request();
        $keyword=$r->keyword;
        $products=DB::table('products')->where('name','like','%'.$keyword.'%')
       
                                       ->orWhere('BrandID','like','%'.$keyword.'%')
        ->paginate(16);
        return view('allProduct')->with('products',$products);
    }

    public function viewProduct(){
        (new CartController)->cartItem();
        $products=Product::all();
        return view('viewProducts')->with('products',$product);
    }

    public function computer(){
        $viewPhone=DB::table('products')->where('CategoryID','=','2')->get();
        return view('allProduct')->with('products',$viewPhone);

    }
    public function phone(){
        $viewPhone=DB::table('products')->where('CategoryID','=','1')->get();
        return view('allProduct')->with('products',$viewPhone);

    }
    public function headphone(){
        $viewPhone=DB::table('products')->where('CategoryID','=','3')->get();
        return view('allProduct')->with('products',$viewPhone);

        }
    public function tv(){
        $viewPhone=DB::table('products')->where('CategoryID','=','4')->get();
        return view('allProduct')->with('products',$viewPhone);

        }
 public function accesssories(){
        $viewPhone=DB::table('products')->where('CategoryID','=','5')->get();
        return view('allProduct')->with('products',$viewPhone);

        }
    public function watch(){
        $viewPhone=DB::table('products')->where('CategoryID','=','6')->get();
        return view('allProduct')->with('products',$viewPhone);
        
        }


}