<?php
namespace App\Http\Controllers\Dashboard;

use App\Database\Transaction;
use App\Http\Controllers\Controller;

class OrderController extends Controller
{
    public function get()
    {
    	$allTransaction = Transaction::with(['customer', 'merk', 'unit'])->get();

    	$data = array('page' => 'dashboard.orderlist', 'allTransaksi' => $allTransaction);
        return $this->render('dashboard/orders/list', $data);
    }

    public function getDetail($orderID)
    {
    	$customerOrder = Transaction::with(['customer', 'merk', 'unit', 'pembayaran'])->where('id', $orderID)->first();

        $data = array('page' => 'dashboard.orders.edit', 'order' => $customerOrder);      
    	return $this->render('dashboard/orders/edit', $data);
    }

    public function postDetail($orderID)
    {
    	$orderID = $this->param('orderID');

    	$order = Transaction::with(['customer'])->where('id', $orderID)->first();
    	$order->update([
    		'status' => '1'
    	]);

    	$this->flash('success', $this->lang('transaction.general.confirm.success'));
    	return $this->redirect('dashboard.orderlist');
    }
}
