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
	    $custId = $this->param('cid');
	    $custName = $this->param('cname');
	    $custAddr = $this->param('caddr');
	    $custP1 = $this->param('cphone1');
	    $custP2 = $this->param('cphone2');
	    $custEmail = $this->param('cemail');
	    $custStatus = $this->param('cstatus');
	    $custMobile = $this->param('csmobile');

	    $customer = Customer::where('id', $custId)->first();
	    //print_r($custName); die();
	    $customer->update([
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
