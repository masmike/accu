<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    protected $table = 'master_unit';

    public function merk()
    {
    	return $this->belongsTo(Merk::class);
    }

    public function transaction()
    {
    	return $this->hasMany(Transaction::class);
    }

}