<?php
namespace App\Http\Controllers\Website;

use App\Database\Banner;
use App\Database\Position;
use App\Http\Controllers\Controller;

class BannerController extends Controller
{
    function get()
    {
    	$banner = Banner::with('position')->get();
    	$data = array('page' => 'dashboard.website.banner', 'allBanner' => $banner);

        return $this->render('dashboard/website/banner/list', $data);
    }

    function getAdd()
    {
    	$pos = Position::all();
    	$data = array('banner_pos' => $pos);

    	return $this->render('dashboard/website/banner/add', $data);
    }
}
