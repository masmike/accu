<?php
namespace App\Http\Controllers\Member;

use Carbon\Carbon;

use App\Database\Customer;
use App\Http\Controllers\Controller;
use App\Lib\Cookie;
use App\Lib\Session;

class LoginController extends Controller
{
    public function post()
    {
        $email = $this->param('email');
        $password = $this->param('password');

        $member = Customer::where('email', $email)->first();
        $result = array();

            if(!$member || !$this->hash->verifyPassword($password, $member->password)) {
                // error password
                $result['noauth'] = 'true';
                $result['message'] = 'E-Mail / Password Salah!';
                $result['time'] = microtime(true);
                return json_encode($result, 200, JSON_PRETTY_PRINT);
            } else if($member && !(bool)$member->statusMobile) {
                Session::set('temp_member_id', $member->id);
                // return not activated
                $result['noauth'] = 'true';
                $result['message'] = 'Account anda belum diaktivasi!';
                $result['time'] = microtime(true);
                return json_encode($result, 200, JSON_PRETTY_PRINT);
            } else if($member && $this->hash->verifyPassword($password, $member->password)) {
                Session::set($this->config('app.member_id'), $member->id);
                
                if(Session::exists('temp_member_id')) {
                    Session::destroy('temp_member_id');
                }               
                // return login success
                $result['noauth'] = 'false';
                $result['uid'] = $member['id'];
                $result['name'] = $member['nama'];
                $result['email'] = $member['email'];
                $result['created_at'] = $member['created_at'];
                return json_encode($result, 200, JSON_PRETTY_PRINT);
            }

        // error other
        $result['noauth'] = 'true';
        $result['message'] = 'Invalid Login';
        $result['time'] = microtime(true);
        
    }
}
