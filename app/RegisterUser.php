<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RegisterUser extends Model
{
    protected $table = 'register_users';

    public static function createRegisterUser($name, $phone, $email, $server)
    {   
        $user = New RegisterUser;
        $user->name = $name;
        $user->phone = $phone;
        $user->email = $email;
        $user->server_id = $server;
        $user->save();
    }

    public static function createRegisterUserCorp($name, $organization_name, $organization_position, $phone, $email, $server)
    {   
        $user = New RegisterUser;
        $user->name = $name;
        $user->organization_name = $organization_name;
        $user->organization_position = $organization_position;
        $user->phone = $phone;
        $user->email = $email;
        $user->server_id = $server;
        $user->save();
    }

}
