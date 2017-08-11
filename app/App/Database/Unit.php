<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    protected $table = 'master_unit';

    protected $fillable = ['merk_id', 'kode', 'type_id', 'harga', 'deskripsi', 'status'];

    public function merk()
    {
    	return $this->belongsTo(Merk::class);
    }

    public function transaction()
    {
    	return $this->hasMany(Transaction::class);
    }

    public function type()
    {
    	return $this->belongsTo(Type::class);
    }

}