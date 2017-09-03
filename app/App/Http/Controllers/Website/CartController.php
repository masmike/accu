<?php
namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Database\Unit;
use App\Basket\Basket;
use App\Basket\Exceptions\QuantityExceededException;

class CartController extends Controller
{

    public function get()
    {
    	$this->basket->refresh();
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
            //flash message here
		}

        return $this->redirect('cart');
    }

    public function postUpdate($slug)
    {
        $produk = Unit::where('slug', $slug)->first();

       if (!$produk) {
            return $this->redirect('home');
        }

        try {
            $qty = $this->param('quantity');

            $this->updateBasket($produk, $qty);
        } catch (QuantityExceededException $e) {

        }

        return $this->redirect('cart');
    }


}
