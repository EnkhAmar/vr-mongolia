<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $table = 'members';

    public static function getMembers()
    {
        $members = Member::orderBy('created_at', 'asc')->get();
        return $members;
    }
}
