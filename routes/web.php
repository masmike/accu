<?php

$app->group('/', function() {
    $this->route(['GET'], '[/]', App\Http\Controllers\HomeController::class)->add(new App\Http\Middleware\GuestMemberMiddleware($this->getContainer()))->setName('home');

    $this->route(['GET'], '/{slug}', App\Http\Controllers\Master\UnitController::class, 'info')->add(new App\Http\Middleware\GuestMemberMiddleware($this->getContainer()))->setName('produk.info');

});


$app->group('/keranjang', function() {
    $this->route(['GET'], '[/]', App\Http\Controllers\Website\CartController::class)->add(new App\Http\Middleware\GuestMemberMiddleware($this->getContainer()))->setName('cart');

    $this->route(['GET'], '/add/{slug}/{quantity}', App\Http\Controllers\Website\CartController::class, 'add')->add(new App\Http\Middleware\GuestMemberMiddleware($this->getContainer()))->setName('cart.add');

    $this->route(['POST'], '/update/{slug}', App\Http\Controllers\Website\CartController::class, 'update')->add(new App\Http\Middleware\GuestMemberMiddleware($this->getContainer()))->setName('cart.update');
});

$app->group('/member', function() {
    $this->route(['GET', 'POST'], '/login', App\Http\Controllers\Member\LoginController::class)->add(new App\Http\Middleware\GuestMiddleware($this->getContainer()))->setName('member.login');

    $this->route(['GET', 'POST'], '/register', App\Http\Controllers\Member\RegisterController::class)->add(new App\Http\Middleware\GuestMiddleware($this->getContainer()))->setName('member.register');

    $this->route(['GET', 'POST'], '/profile/changepass', App\Http\Controllers\Member\SettingsController::class, 'password')->add(new App\Http\Middleware\AuthMemberMiddleware($this->getContainer()))->setName('member.profile.password');

    $this->route(['GET', 'POST'], '/profile/detail', App\Http\Controllers\Member\SettingsController::class, 'detail')->add(new App\Http\Middleware\AuthMemberMiddleware($this->getContainer()))->setName('member.profile.detail');

});

$app->group('/auth', function() {
    $this->route(['GET', 'POST'], '/login', App\Http\Controllers\Auth\LoginController::class)->add(new App\Http\Middleware\GuestMiddleware($this->getContainer()))->setName('auth.login');
    
    $this->route(['GET', 'POST'], '/register', App\Http\Controllers\Auth\RegisterController::class)->add(new App\Http\Middleware\GuestMiddleware($this->getContainer()))->setName('auth.register');

    $this->route(['GET'], '/settings', App\Http\Controllers\Auth\SettingsController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('auth.settings');
    
    $this->route(['GET', 'POST'], '/settings/profile', App\Http\Controllers\Auth\SettingsController::class, 'profile')->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('auth.settings.profile');
    
    $this->route(['GET', 'POST'], '/settings/password', App\Http\Controllers\Auth\SettingsController::class, 'password')->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('auth.settings.password');

    $this->route(['GET'], '/activate', App\Http\Controllers\Auth\ActivationController::class)->setName('auth.activate');
    
    $this->route(['GET'], '/activate/resend', App\Http\Controllers\Auth\ActivationController::class, 'resend')->setName('auth.activate.resend');

    $this->route(['GET', 'POST'], '/password/forgot', App\Http\Controllers\Auth\PasswordResetController::class, 'forgot')->add(new App\Http\Middleware\GuestMiddleware($this->getContainer()))->setName('auth.password.forgot');

    $this->route(['GET', 'POST'], '/password/reset', App\Http\Controllers\Auth\PasswordResetController::class, 'reset')->add(new App\Http\Middleware\GuestMiddleware($this->getContainer()))->setName('auth.password.reset');
});

$app->group('/admin', function() {
    $this->route(['GET'], '[/]', App\Http\Controllers\Admin\AdminController::class)->setName('admin.home');

    $this->route(['GET'], '/users[/]', App\Http\Controllers\Admin\AdminUserController::class)->setName('admin.users.list');

    $this->route(['GET'], '/users/{userId}/edit[/]', App\Http\Controllers\Admin\AdminUserController::class, 'edit')->setName('admin.users.edit');

    $this->route(['GET', 'POST'], '/users/{userId}/delete[/]', App\Http\Controllers\Admin\AdminUserController::class, 'delete')->setName('admin.users.delete');

    $this->route(['GET', 'POST'], '/users/{userId}/edit/profile', App\Http\Controllers\Admin\AdminUserController::class, 'editProfile')->setName('admin.users.edit.profile');
    
    $this->route(['GET', 'POST'], '/users/{userId}/edit/settings', App\Http\Controllers\Admin\AdminUserController::class, 'editSettings')->setName('admin.users.edit.settings');

    $this->route(['POST'], '/users/{userId}/update/role/{role}/{action}', App\Http\Controllers\Admin\AdminUserController::class, 'updateRole')->setName('admin.users.update.role');
})->add(new App\Http\Middleware\AdminMiddleware($app->getContainer()));

$app->get('/auth/logout', function($request, $response, $args) {
    if(App\Lib\Cookie::exists(env('APP_REMEMBER_ID', 'APP_REMEMBER_TOKEN'))) {
        $this['auth']->user()->removeRememberCredentials();
        App\Lib\Cookie::destroy(env('APP_REMEMBER_ID', 'APP_REMEMBER_TOKEN'));
    }

    App\Lib\Session::destroy(env('APP_AUTH_ID', 'user_id'));

    return $response->withRedirect($this['router']->pathFor('auth.login'));
})->add(new App\Http\Middleware\AuthMiddleware($app->getContainer()))->setName('auth.logout'); 

$app->get('/member/logout', function($request, $response, $arg) {
    if(App\Lib\Cookie::exists(env('APP_REMEMBER_ID', 'APP_REMEMBER_TOKEN'))) {
        $this['auth']->user()->removeRememberCredentials();
        App\Lib\Cookie::destroy(env('APP_REMEMBER_ID', 'APP_REMEMBER_TOKEN'));
    }

    App\Lib\Session::destroy(env('APP_MEMBER_ID', 'member_id'));

    return $response->withRedirect($this['router']->pathFor('home'));
})->add(new App\Http\Middleware\AuthMemberMiddleware($app->getContainer()))->setName('member.logout'); 

$app->group('/dashboard', function() {
    $this->route(['GET'], '[/]', App\Http\Controllers\Dashboard\DashboardController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.home');

    $this->route(['GET'], '/orders', App\Http\Controllers\Dashboard\OrderController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.orderlist');

    $this->route(['GET', 'POST'], '/orders/{orderId}[/]', App\Http\Controllers\Dashboard\OrderController::class, 'detail')->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.orders.edit');

    $this->route(['GET', 'POST'], '/merk', App\Http\Controllers\Master\MerkController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.master.merk');

    $this->route(['GET', 'POST'], '/merk/{merkId}[/]', App\Http\Controllers\Master\MerkController::class, 'detail')->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.master.merk.edit');

    $this->route(['GET'], '/customer', App\Http\Controllers\Master\CustomerController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.master.customer');

    $this->route(['GET', 'POST'], '/customer/{custId}[/]', App\Http\Controllers\Master\CustomerController::class, 'detail')->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.master.customer.detail');

    $this->route(['GET','POST'], '/unit', App\Http\Controllers\Master\UnitController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.master.unit');

    $this->route(['GET', 'POST'], '/unit/{unitId}[/]', App\Http\Controllers\Master\UnitController::class, 'detail')->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.master.unit.detail');

    $this->route(['GET'], '/banner', App\Http\Controllers\Website\BannerController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.webbanner');

    $this->route(['GET', 'POST'], '/banner/add', App\Http\Controllers\Website\BannerController::class, 'add')->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.webbanner.add');

    $this->route(['GET', 'POST'], '/website/company', App\Http\Controllers\Master\CompanyController::class)->add(new App\Http\Middleware\AuthMiddleware($this->getContainer()))->setName('dashboard.webcompany');

});