<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CriticalSkill extends Model
{
    protected $table = 'critical_skills';

    public static function getSkills()
    {
        $skills = CriticalSkill::orderBy('created_at', 'asc')->get();
        return $skills;
    }
}
