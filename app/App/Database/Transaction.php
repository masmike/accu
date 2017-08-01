<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $table = 'transaction';

    protected $fillable = ['tanggal', 'amount', 'remark', 'status'];

    public function customer()
    {
    	return $this->belongsTo(Customer::class);
    }

    public function unit()
    {
    	return $this->belongsTo(Unit::class);
    }

    public function merk()
    {
    	return $this->belongsTo(Merk::class);
    }

    public function pembayaran()
    {
        return $this->belongsTo(Pembayaran::class);
    }
    
}