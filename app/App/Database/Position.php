<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $table = 'banner_position';

    protected $fillable = ['name'];

    public function banner()
    {
    	return $this->hasMany(Banner::class);
    }
}