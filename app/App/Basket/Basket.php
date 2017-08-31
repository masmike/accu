<?php

namespace App\Basket;

use App\Database\Unit;
use App\Support\Storage\Contracts\StorageInterface;
use App\Basket\Exceptions\QuantityExceededException;

class Basket
{
	protected $storage;
  	protected $unit;
	  
	public function __construct($storage, $unit)
	{
		$this->storage = $storage;
	    $this->unit = $unit;
	}

	public function add($unit, $quantity)
	{

	    if ($this->has($unit)) {
	      $quantity = $this->get($unit)['quantity'] + $quantity;
	      echo $quantity;
	    }

	    $this->update($unit, $quantity);
	}

	public function update($unit, $quantity)
	{
	    if (!$this->unit->find($unit->id)->hasStock($quantity)) {
	       throw new QuantityExceededException;
	    }

	    if ($quantity === 0) {
	      $this->remove($unit);
	      return;
	    }

	    $this->storage->set($unit['id'], [
	        'unit_id' => $unit['id'],
	        'quantity' => (int) $quantity,
	    ]);
	}

	public function remove(unit $unit)
	{
	    $this->storage->unset($unit['id']);
	}

	public function has($unit)
	{
	    return $this->storage->exist($unit['id']);
	}

	public function get($unit)
	{
	    return $this->storage->get($unit['id']);
	}

	public function clear()
	{
	    $this->storage->clear();
	}

	public function all()
	{
	    $ids = [];
	    $items = [];

	    foreach ($this->storage->all() as $unit) {
	      $ids[] = $unit['unit_id'];
	    }

	    $units = $this->unit->find($ids);
	    foreach ($units as $unit) {
	      $unit['quantity'] = $this->get($unit)['quantity'];
	      $items[] = $unit;
	    }
	    return $items;
	}

	public function itemCount(){
	    return count($this->storage);
	}
}