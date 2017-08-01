<?php
namespace App\Http\Controllers\Dashboard;

use Carbon\Carbon;
use App\Database\Transaction;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function get()
    {
    	$today = date('Y-m-d');
    	$bulanIni = date('F Y');

    	$monthlySales = Transaction::where('tanggal', '>=', Carbon::now()->startOfMonth())->sum('amount');
    	$todaySales = Transaction::where('tanggal', $today)->sum('amount');
    	
    	$monthlyOrder = Transaction::where('tanggal', '>=', Carbon::now()->startOfMonth())->count();
    	$pendingOrder = Transaction::where('status', '0')
    		->where('tanggal', $today)->count();

    	$monthlyDetailOrder = Transaction::where('tanggal', '=', Carbon::now()->startOfMonth())->get();
    	$data = array('bulanBerjalan' => $bulanIni, 'allSales' => $monthlySales, 'todaySales' => $todaySales, 'monthlyOrder' => $monthlyOrder, 'pendingOrder' => $pendingOrder , 'page' => 'dashboard.home', 'dataTransaksi' => $monthlyDetailOrder);
    	
    	// var_dump($today);
    	return $this->render('dashboard/home', $data);
    }

    // public function getOrders()
    // {
    //     return $this->redirect('dashboard.list');
    // }

}
