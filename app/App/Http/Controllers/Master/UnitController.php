<?php
namespace App\Http\Controllers\Master;

use App\Database\Unit;
use App\Database\Merk;
use App\Database\Type;
use App\Http\Controllers\Controller;

class UnitController extends Controller
{
    public function get()
    {
    	$unit = Unit::all();
    	$merk = Merk::all();
    	$type = Type::all();

    	$data = array('page' => 'dashboard.master.unit', 'allUnit' => $unit, 'allMerk' => $merk, 'allType' => $type);
        return $this->render('dashboard/master/unit/list', $data);
    }

    public function post()
    {
    	$uMerk = $this->param('umerk');
    	$uKode = $this->param('ukode');
    	$uType = $this->param('utype');
    	$uHarga = $this->param('uharga');
    	$uDetail = $this->param('udetail');
    	$uStatus = $this->param('statusActive');

    	$isExist = Unit::where('kode', $uKode)->and('merk_id', $uMerk)->first();

    	if(!($isExist)) {
            $unit = Unit::create([
               'merk_id' => $uMerk,
               'kode' => $uKode,
               'type_id' => $uType,
               'harga' => $uHarga,
               'deskripsi' => $uDetail,
               'status' => $uStatus,
            ]);

            return json_encode(array('status' => 'OK'));
        } else {
            
            return json_encode(array('status' => 'Failed',
                'message' => 'Unit '.$uKode.' sudah pernah terdaftar sebelumnya!'));
        }
    }

    public function getDetail($unitId)
    {
        $unit = Unit::with(['merk', 'type'])->where('id', $unitId)->first();

        $data = array('page' => 'dashboard.master.unit.edit', 'unit' => $unit);
       // var_dump(json_encode($data));
        return $this->render('dashboard/master/unit/edit', $data);
    }
}
