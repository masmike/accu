<?php
namespace App\Auth;

use App\Database\Customer;
use App\Lib\Session;

class AuthMember extends Customer
{
    public function checks()
    {
        return Session::exists(env('APP_MEMBER_ID', 'member_id'));
    }

    public function customer()
    {
        return Customer::find(Session::get(env('APP_MEMBER_ID', 'member_id')));
    }

}