<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
	protected $table = 'master_type';

    protected $fillable = ['nama', 'status'];

    public function unit()
    {
    	return $this->belongsTo(Unit::class);
    }
}