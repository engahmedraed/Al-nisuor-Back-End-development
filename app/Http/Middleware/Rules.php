<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Tymon\JWTAuth\Exceptions\JWTException;

class Rules extends Middleware
{
    /**
     * Handle an incoming request.
     * @param array $roles
     * @param $next
     * @param $request
     * @return mixed
     * @throws JWTException
     */
    public function handle($request, Closure $next,...$Rules)
    {
        $user_role = auth()->user()->rules->name;
        //  $Rules;
        foreach ($Rules as $role) {
            if($role == $user_role) {
                return $next($request);
            }
        }
        return response()->json([
            "message" => "you don't have permission",
            "roles" => $Rules
        ],401);

    }

}
