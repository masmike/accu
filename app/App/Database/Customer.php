<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table = 'master_customer';

    protected $fillable = ['nama', 'alamat', 'phone1', 'phone2', 'email', 'status', 'statusMobile'];

    public function transaction()
    {
    	return $this->hasMany(Transaction::class);
    }

    public function pembayaran()
    {
    	return $this->belongsTo(Pembayaran::class);
    }

}