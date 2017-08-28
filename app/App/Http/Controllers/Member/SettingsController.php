<?php

namespace App\Http\Controllers\Member;

use App\Http\Controllers\Controller;
use App\Database\Propinsi;
use App\Database\Kota;

class SettingsController extends Controller
{

	public function getDetail()
	{
		$propinsi = Propinsi::all();
		$kota = Kota::all();

		$this->render('/member/account/detail', array('allPropinsi' => $propinsi, 'allKota' => $kota));
	}

    public function postDetail()
    {
        
    }

	public function getPassword()
	{
		$this->render('member/password/change');
	}

	public function postPassword()
    {
        $currentPassword = $this->param('oldpassword');
        $newPassword = $this->param('newpassword');   
        $confirmNewPassword = $this->param('verifypassword');

        $validator = $this->validator()->validate([
            'oldpassword|Password Sekarang' => [$currentPassword, 'required|memberMatchesCurrentPassword'],
            'newpassword|Password Baru' => [$newPassword, 'required|min(6)'],
            'verifypassword|Konfirmasi Password Baru' => [$confirmNewPassword, 'required|matches(newpassword)'],
        ]);

        if($validator->passes()) {
            $this->customer()->update([
                'password' => $this->hash->password($newPassword),
            ]);

            $this->flash('success', $this->lang('alerts.account.password.updated'));
            return $this->redirect('member.profile.password');
        }

        // /$this->flashNow("error", $this->lang('alerts.account.password.failed'));
        $msg = array('error' => [
            'oldpassword' => $validator->errors()->first('oldpassword'),
            'newpassword' => $validator->errors()->first('newpassword'),
            'verifypassword' => $validator->errors()->first('verifypassword')]
            );

        // var_dump($validator->errors());
        // die();
        return $this->render('member/password/change', $msg);
    }
}