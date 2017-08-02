<?php
namespace App\Http\Controllers\Master;

use App\Database\Merk;
use App\Http\Controllers\Controller;

class MerkController extends Controller
{
    public function get()
    {
    	$merk = Merk::all();

    	$data = array('page' => 'dashboard.master.merk', 'allMerk' => $merk);
        return $this->render('dashboard/master/merk/list', $data);
    }

    public function post()
    {
    	$namaMerk = $this->param('namaMerk');
    	$statusActive = $this->param('statusActive');

        $isExist = Merk::where('nama', $namaMerk)->first();
        
        if(!($isExist)) {
            $merk = Merk::create([
               'nama' => $namaMerk,
               'status' => $statusActive,
            ]);

            return json_encode(array('status' => 'OK'));
        } else {
            
            return json_encode(array('status' => 'Failed',
                'message' => 'Merk '.$namaMerk.' sudah pernah terdaftar sebelumnya!'));
        }
    }

    public function getDetail($merkID)
    {
    	$merk = Merk::where('id', $merkID)->first();

    	$data = array('page' => 'dashboard.master.merk.edit', 'merk' => $merk);
    	return $this->render('dashboard/master/merk/edit', $data);
    }

    public function postDetail()
    {
        $merkID = $this->param('id');
        $merkName = $this->param('nama');
        $merkStatus = $this->param('statusAktif');

        $merk = Merk::where('id', $merkID)->first();
        $merk->update([
            'nama' => $merkName,
            'status' => $merkStatus
        ]);

        return json_encode(array('status' => '200'));
    }
}
