<?php

namespace App\Http\Controllers;

use App\Database\Unit;
use App\Basket\Basket;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function get()
    {
 
    	// var_dump($basket);
    	// die();

    	$products = Unit::with('merk')->where('featured', 1)->limit(6)->get();
    	$produkbaru = Unit::with('merk')->orderBy('created_at', 'desc')->limit(8)->get();

    	$data = array('pageId' => 'Halaman Utama', 'page' => 'frontpage', 'banner_middle' => 'false', 'featured_products' => 'false', 'latest_news' => 'false', 'products' => $products, 'produkbaru' => $produkbaru);
        return $this->render('home', $data);
    }
}
