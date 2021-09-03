<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'feedbacks';

    public static function createFeedback($name, $email, $message)
    {   
        $feedback = New Feedback;
        $feedback->name = $name;
        $feedback->email = $email;
        $feedback->feedback = $message;
        $feedback->save();
    }
}
