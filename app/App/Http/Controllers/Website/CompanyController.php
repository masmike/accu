<?php
namespace App\Http\Controllers\Website;

use App\Database\Company;
use App\Http\Controllers\Controller;

class CompanyController extends Controller
{
    function get()
    {
	    $company = Company::all();
	    $data = array('page' => 'dashboard.website.company', 'allCompany' => $company);

	    return $this->render('dashboard/website/company/list', $data);
	}

}
