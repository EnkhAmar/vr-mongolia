<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Server extends Model
{
    protected $table = 'servers';

    public static function getServers()
    {
        $servers = Server::orderBy('created_at', 'asc')->get();
        return $servers;
    }
}
