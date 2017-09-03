<?php
namespace App\Http\Middleware;

use App\Http\Middleware\Middleware;

class GuestMemberMiddleware extends Middleware
{
    public function __invoke($request, $response, $next)
    {

        if($this->authmember()->checks()) {
            return $this->redirect($response, 'home');
        }
        
        $response = $next($request, $response);
        return $response;
    }
}
