<?php

namespace App\Http\Controller\Member;

use App\Http\Controllers\Controller;

class SettingsController extends Controller
{

	public function getPassword()
	{
		$this->render('member/password/change');
	}
}