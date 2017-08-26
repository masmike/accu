<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Kota extends Model
{
    protected $table = 'master_kota';

    protected $fillable = ['kode', 'propinsi_id', 'nama'];

    public function propinsi()
    {
    	return $this->belongsTo(Propinsi::class);
    }
}