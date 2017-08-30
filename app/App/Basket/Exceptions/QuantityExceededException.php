<?php
namespace App\Basket\Exceptions;

use Exception;

class QuantityExceededException extends Exception
{
	protected $message = "Stok batas maksimum produk ini tepenuhi.";
}