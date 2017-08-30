<?php
namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Database\Unit;
use App\Basket\Basket;
use App\Basket\Exceptions\QuantityExceededException;

class CartController extends Controller
{
	// protected $basket;
	// protected $unit;

	// public function __construct($basket, $unit)
	// {
	// 	$this->basket = $basket;
	// 	$this->unit = $unit;
	// }

    public function get()
    {
    	
    	return $this->render('templates/cart');
    }

    public function getAdd($slug, $quantity)
    {
    	$produk = Unit::where('slug', $slug)->first();

    	if(!$produk) {
    		return $this->redirect('home');
    	}

    	try {

			$this->addToBasket($produk, $quantity);
		} catch (QuantityExceededException $e) {

		}
    }


}
