<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class PagesController extends Controller
{
    public function about2() {
    	$name = "Viet";
    	$age = 26;
    	return view('pages.about')->with([
    		'name' => $name,
    		'age' => $age,
		]);
    }

    public function about() {
    	return view('pages.about');
    }

    public function contact() {
    	return view('pages.contact');
    }
}
