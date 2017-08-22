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
    	$merk = Merk::where('status', '1')->get();
    	$type = Type::where('status', '1')->get();

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
        $columnId = Unit::select('merk_id', 'type_id')->where('id', $unitId)->first();
        $merk = Merk::where([['status', '=', '1'], ['id', '!=', $columnId['merk_id']]])->get();
        $type = Type::where([['status', '=', '1'], ['id', '!=', $columnId['type_id']]])->get();

        $data = array('page' => 'dashboard.master.unit.edit', 'unit' => $unit, 'allMerk' => $merk, 'allType' => $type);

        return $this->render('dashboard/master/unit/edit', $data);
    }

    public function postDetail()
    {
        $uId = $this->param('uid');
        $uMerk = $this->param('umerk');
        $uKode = $this->param('ukode');
        $uType = $this->param('utype');
        $uHarga = $this->param('uharga');
        $uDetail = $this->param('udetail');
        $uStatus = $this->param('statusActive');

        $unit = Unit::where('id', $uId)->first();

        $unit->update([
            'merk_id' => $uMerk,
            'kode' => $uKode,
            'type_id' => $uType,
            'harga' => $uHarga,
            'deskripsi' => $uDetail,
            'status' => $uStatus
            ]);

        return json_encode(array('status' => 'OK'));

    }

    public function getSlug($slug)
    {
        $unit = Unit::with('merk')->where('slug', $slug)->first();;
        $data = array('pageId' => $unit['merk']['nama'].' '.$unit['kode'],'page' => 'produk.detail', 'unitDetail' => $unit);

        return $this->render('products/products', $data);
    }

}
