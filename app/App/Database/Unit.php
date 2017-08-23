<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    protected $table = 'master_unit';

    protected $fillable = ['merk_id', 'kode', 'type_id', 'slug', 'harga', 'harga_diskon', 'stock', 'deskripsi', 'status'];

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

    public function gambar()
    {
        return $this->hasMany(UnitPicture::class);
    }

    // public function hasLowStock()
    // {
    //     if($this->outOfStock()){
    //         return false;
    //     }

    //     return (bool) ($this->stock <=5);
    // }

    

    // public function hasStock($quantity)
    // {
    //     return $this->stock >= $quantity;
    // }

}