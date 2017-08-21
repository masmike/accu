<?php
namespace App\Database;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $table = 'company';

    protected $fillable = ['name', 'alamat', 'phone1', 'phone2', 'lat', 'lang', 'status'];

}