<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    protected $table = 'banner_image';

    protected $fillable = ['path', 'status'];

    public function position()
    {
    	return $this->belongsTo(Position::class);
    }
}