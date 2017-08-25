<?php
namespace App\Http\Middleware;

use App\Http\Middleware\Middleware;

class AuthMemberMiddleware extends Middleware
{
    public function __invoke($request, $response, $next)
    {
        if(!$this->authmember()->check()) {
            $this->flash('warning', $this->lang('alerts.requires_auth'));
            return $this->redirect($response, 'member.login');
        }
        
        $response = $next($request, $response);
        return $response;
    }
}
