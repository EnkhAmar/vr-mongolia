<?php

namespace App\Http\Middleware;

use Closure;

class SetLanguage
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(\Session::has('locale')) {
            if(\Session::get('locale') == 'en')
                \App::setLocale(\Session::get('locale'));
            else
                \App::setLocale('mn');
        }
        return $next($request);
    }
}
