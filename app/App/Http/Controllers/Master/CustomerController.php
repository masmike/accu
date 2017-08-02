<?php
namespace App\Http\Controllers\Master;

use App\Database\Customer;
use App\Http\Controllers\Controller;

class CustomerController extends Controller
{
    public function get()
    {
    	$customer = Customer::all();

    	$data = array('page' => 'dashboard.master.customer', 'allCustomer' => $customer);
        return $this->render('dashboard/master/customer/list', $data);
    }

    public function getDetail($custID)
    {
    	$customer = Customer::where('id', $custID)->first();

    	$data = array('page' => 'dashboard.master.customer.detail', 'customer' => $customer);
   		return $this->render('dashboard/master/customer/edit', $data);
    }

    public function postDetail()
    {
	    $custId = $this->params('cid');
	    $custName = $this->params('cname');
	    $custAddr = $this->params('caddr');
	    $custP1 = $this->params('cphone1');
	    $custP2 = $this->params('cphone2');
	    $custEmail = $this->params('cemail');
	    $custStatus = $this->params('cstatus');
	    $custMobile = $this->params('csmobile');

	    $upd = Customer::where('id', $custId)->first();
	    $upd->update([
	    	'nama' => $custName,
	    	'alamat' => $custAddr,
	    	'phone1' => $custP1,
	    	'phone2' => $custP2,
	    	'email' => $custEmail,
	    	'status' => $custStatus,
	    	'statusMobile' => $custMobile
	    ]);

	    return json_encode(array('status' => '200'));

    }
}
