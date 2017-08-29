<?php
namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;

class CartController extends Controller
{
    public function get()
    {
    	return $this->render('templates/cart');
    }
}
