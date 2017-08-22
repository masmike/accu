<?php
namespace App\Http\Controllers;

use App\Database\Unit;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function get()
    {
    	$products = Unit::with('merk')->where('featured', 1)->limit(6)->get();

    	$data = array('pageId' => 'Halaman Utama', 'page' => 'frontpage', 'banner_middle' => 'false', 'featured_products' => 'false', 'latest_news' => 'false', 'products' => $products);
        return $this->render('home', $data);
    }
}
