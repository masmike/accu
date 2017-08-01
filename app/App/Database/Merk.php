<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Merk extends Model
{
    protected $table = 'master_merk';

    protected $fillable = ['nama', 'status'];

    public function unit()
    {
    	return $this->hasMany(Unit::class);
    }

   	public function transaction()
   	{
   		return $this->hasMany(Transaction::class);
   	}

}