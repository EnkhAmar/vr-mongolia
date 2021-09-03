<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    protected $table = 'contents';

    public static function getContents()
    {
        $contents = Content::orderBy('created_at', 'asc')->get();
        return $contents;
    }
}
