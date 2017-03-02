<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CheckArticlesRequest;
use App\Articles;
use Carbon\Carbon;

class ArticlesController extends Controller
{
    public function index()
    {
  		$articles = Articles::latest('created_at')->where('created_at', '<=', Carbon::now())->get();

    	return view('articles')->with("articles",$articles);
    }

    public function create() 
    {
    	return view('create');
    }

    public function store(CheckArticlesRequest $request)
    { 	
    	$dulieu_tu_input = $request->all();
 		
	  	Articles::create($dulieu_tu_input);
 		
		return redirect('articles');
    }

    public function edit($id)
    {

    	$articles = Articles::findOrFail($id);
    	return view('edit',compact('articles'));
    }

    public function update($id, Request $request)
    {
    	$articles = Articles::findOrFail($id);
    	$articles->update($request->all());
    	return redirect('articles');
    }
}
