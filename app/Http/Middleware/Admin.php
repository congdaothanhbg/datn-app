<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->user()->role == 'admin') {
            return $next($request);
        } else {
            request()->session()->flash('error', 'Bạn không có quyền truy cập trang này!');
            return redirect()->route($request->user()->role);
        }
    }
}
