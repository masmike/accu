<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Propinsi extends Model
{
    protected $table = 'master_propinsi';

    protected $fillable = ['kode', 'nama'];

    public function kota()
    {
    	return $this->hasMany(Kota::class);
    }
}