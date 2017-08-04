<?php
namespace App\Http\Controllers\Master;

use App\Database\Unit;
use App\Http\Controllers\Controller;

class UnitController extends Controller
{
    public function get()
    {
    	$unit = Unit::all();

    	$data = array('page' => 'dashboard.master.unit', 'allUnit' => $unit);
        return $this->render('dashboard/master/unit/list', $data);
    }
}
