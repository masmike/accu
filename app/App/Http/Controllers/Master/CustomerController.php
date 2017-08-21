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

	    $isExist = Customer::where([['email', '=', $custEmail], ['id', '!=', $custId]])
	    			->orWhere([['phone1', '=', $custP1],['id', '!=', $custId]])
	    			->first();

	    $actsms = 'Not Activated';
	 //    if($custMobile == '1'){
		//     $cekPass = Customer::select('password')->where('id', $custId)->first();
		//     if(is_null($cekPass['password']) || $cekPass['password'] == '') {
		//     	$password = substr($this->hash->generate(8), 0, 7);
		//     	echo $password;
		//     } else {
		//     	echo ('sini');
		//     }
		// } else {
		// 	echo 'engga update';
		// }
	    if(!($isExist)) {

		    $customer->update([
		    	'nama' => $custName,
		    	'alamat' => $custAddr,
		    	'phone1' => $custP1,
		    	'phone2' => $custP2,
		    	'email' => $custEmail,
		    	'status' => $custStatus,
		    	'statusMobile' => $custMobile,
		    ]);

		    if($custMobile == '1'){
		    	$cekPass = Customer::select('password')->where('id', $custId)->first();
		    	if(is_null($cekPass['password']) || $cekPass['password'] == '') {

		    		$password = substr($this->hash->generate(8), 0, 7);
		    		$customer->update([
		    			//cek ulang login via hp
		    			'password' => $this->hash->password($password),
		    		]);

		    		//verifikasi via sms kalau enable
		    		if($this->config('app.mobile_activation.method') === 'mail') {
			    		$complete = '';
			    		$message = 'Hallo, '.$custName.'. Gunakan password '.$password.' untuk login ke System Accu Mobile';
			    		$user = 'admin';
			    		$passwd = 'admin';
			    		$modem = '7';

			    		$smsServer = 'http://124.40.249.222:7890/';
			    		$smsKeyword = 'sendmsg?';
			    		$smsAuth = 'user=' . $user . '&passwd=' . $passwd;
	        			$smsType = '&cat=1&modem=' . $modem;
			    		$smsMessage = str_replace(' ', '%20', $message);
			    		$smsData = '&to=' . $custP1 . '&text=' . $smsMessage;
			    		$complete = $smsServer . $smsKeyword . $smsAuth . $smsType . $smsData;
			    		
			    		$ch = curl_init($complete);
	                	$timeout = 5;
	                	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		                curl_setopt($ch, CURLOPT_BINARYTRANSFER, true);
		                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		                curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
		                $output = curl_exec($ch);
		                curl_close($ch);

		                if (strpos($output, 'Err')) {
		                    $actsms = 'Failed';

		                } else {
		                	$actsms = 'Success';
		                }
		            };
					$actsms = 'No SMS Verification';
		    	}
		    }

		    return json_encode(array('status' => 'OK', 'sms' => $actsms));

		} else {
	    	return json_encode(array('status' => 'Failed', 'message' => 'E-Mail / Nomor Handphone sudah pernah terdaftar!'));
	    }

    }
}
