<?php
namespace App\Http\Controllers\Member;

use Carbon\Carbon;

use App\Database\Member;
use App\Http\Controllers\Controller;
use App\Lib\Cookie;
use App\Lib\Session;

class LoginController extends Controller
{
    public function post()
    {
        $email = $this->param('email');
        $password = $this->param('password');

        // $validator = $this->validator()->validate([
        //     'username|Username' => [$membername, 'required'],
        //     'password|Password' => [$password, 'required'],
        // ]);

        if($validator->passes()) {
            $member = User::where('email', $membername)->orWhere('phone1', $membername)->first();

            if(!$member || !$this->hash->verifyPassword($password, $member->password)) {
                $this->flash("error", $this->lang('alerts.login.invalid'));
                return $this->redirect('member.login');
            } else if($member && !(bool)$member->status) {
                Session::set('temp_user_id', $member->id);
                $this->flash("raw_warning", "The account you are trying to access has not been activated. <a class='alert-link' href='" . $this->router()->pathFor('auth.activate.resend') . "'>Resend activation link</a>");
                return $this->redirect('member.login');
            } else if($member && $this->hash->verifyPassword($password, $member->password)) {
                Session::set($this->config('app.auth_id'), $member->id);
                
                if(Session::exists('temp_user_id')) {
                    Session::destroy('temp_user_id');
                }
                
                return $this->redirect('dashboard.home');
            }
        }

        $this->flashNow("error", $this->lang('alerts.login.error'));
        return $this->render('auth/login', [
            'errors' => $validator->errors(),
        ]);
    }
}
