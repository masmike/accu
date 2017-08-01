<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    protected $table = 'master_pembayaran';

    public function transaction()
    {
    	return $this->hasMany(Transaction::class);
    }

    public function customer()
    {
    	return $this->hasMany(Customer::class);
    }

}