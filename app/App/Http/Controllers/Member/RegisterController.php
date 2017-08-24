<?php
namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Database\Customer;
use App\Lib\Session;


class RegisterController extends Controller
{
    public function get()
    {
        return $this->render('member/register');
    }
}
