<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class UnitPicture extends Model
{
	protected $table = 'master_unit_picture';

    protected $fillable = ['unit_id', 'picture'];

    function unit()
    {
    	return $this->belongsTo(Unit::class);
    }
}