<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    protected $table = 'lessons';

    public static function getLessons()
    {
        $lessons = Lesson::orderBy('created_at', 'asc')->get();
        return $lessons;
    }
}
