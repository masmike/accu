<?php
namespace App\Http\Controllers\Member;

use Carbon\Carbon;

use App\Database\Customer;
use App\Http\Controllers\Controller;
use App\Lib\Cookie;
use App\Lib\Session;

class LoginController extends Controller
{
	public function get()
    {
        return $this->render('member/login');
    }

    public function post()
    {

    	$email = $this->param('email');
        $password = $this->param('password');

        $validator = $this->validator()->validate([
            'email|Email' => [$email, 'email|required'],
            'password|Password' => [$password, 'required'],
        ]);

        if($validator->passes()) {
            $member = Customer::where('email', $email)->first();

            if(!$member || !$this->hash->verifyPassword($password, $member->password)) {
                // error password
                return $this->redirect('member.login');

            } else if($member && !(bool)$member->statusMobile) {
                Session::set('temp_member_id', $member->id);
                // return not activated
                return $this->redirect('member.login');

            } else if($member && $this->hash->verifyPassword($password, $member->password)) {
                Session::set($this->config('app.authmember_id'), $member->id);
                
                if(Session::exists('temp_member_id')) {
                    Session::destroy('temp_member_id');
                }               
                // return login success
                return $this->redirect('home');
            }

        }

        // error other
        $msg = array('error' => [
            'email' => $validator->errors()->first('email'),
            'password' => $validator->errors()->first('password')]
            );

        return $this->render('member/login', $msg);

    }
}	