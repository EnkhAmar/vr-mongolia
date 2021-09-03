<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Content;
use App\CriticalSkill;
use App\Member;
use App\Lesson;
use App\RegisterUser;
use App\Feedback;
use App\Server;
use Validator, DB;

class HomeController extends Controller
{

    public function index(Request $request)
    {
        if ($request->hasCookie('visit')) {
            $contents = Content::getContents();
            $skills = CriticalSkill::getSkills();
            $members = Member::getMembers();
            $servers = Server::getServers();
            return view('home', ['contents' => $contents, 'skills' => $skills, 'members' => $members, 'servers' => $servers]);
        }
        $minutes = 60;
        $response = new Response(view('intro'));
        $response->withCookie(cookie('visit', 1, $minutes));
        return $response;
    }

    public function register(Request $request)
    {
        $credentials = $request->only('phone', 'name', 'email', 'lesson', 'organization_name', 'organization_position');
        
        $rules = [
            'name' => 'required',
            'phone' => 'required|digits_between:8,16',
            'email' => 'required|email',
            'lesson' => 'required'
        ];

        $messages = [
            'name.required' => 'Овог нэрээ оруулна уу.',
            'phone.required' => 'Та утасны дугаараа оруулаагүй байна.',
            'phone.digits' => 'Утасны дугаар 8-16н оронтой байх ёстой.',
            'email.required' => 'Емэйл хаягаа оруулна уу.',
            'email.email' => 'Емэйл хаяг буруу байна.',
            'lesson.required' => 'Та хичээлээ сонгоно уу.'
        ];

        $validator = Validator::make($credentials, $rules, $messages);
        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()->all()]);
        }

        // $register_user = DB::table('register_users')
        //     ->where('email', '=', $request->email)
        //     ->orWhere('phone', '=', $request->phone)
        //     ->where('server_id', '=', $request->lesson)
        //     ->first();
        
        // if ($register_user) {
        //     return response()->json(['errors'=>'Та энэ хөтөлбөрт бүртгүүлсэн байна.']);
        // }

        $name = $request->name;
        $phone = $request->phone;
        $email = $request->email;
        $server_id = $request->lesson;

        RegisterUser::createRegisterUser($name, $phone, $email, $server_id);

        return response()->json(['success'=>'Амжилттай бүртгүүллээ.']);
    }

    public function registerCorp(Request $request)
    {
        $credentials = $request->only('phone', 'name', 'email', 'lesson', 'organization_name', 'organization_position');
        
        $rules = [
            'name' => 'required',
            'phone' => 'required|digits_between:8,16',
            'email' => 'required|email',
            'lesson' => 'required',
            'organization_name' => 'required',
            'organization_position' => 'required' 
        ];

        $messages = [
            'name.required' => 'Овог нэрээ оруулна уу.',
            'phone.required' => 'Та утасны дугаараа оруулаагүй байна.',
            'phone.digits' => 'Утасны дугаар 8-16н оронтой байх ёстой.',
            'email.required' => 'Емэйл хаягаа оруулна уу.',
            'email.email' => 'Емэйл хаяг буруу байна.',
            'lesson.required' => 'Та хичээлээ сонгоно уу.',
            'organization_name.required' => 'Та байгууллагын нэрээ оруулна уу.',
            'organization_position.required' => 'Та байгууллагын байршилаа оруулна уу.',
        ];

        $validator = Validator::make($credentials, $rules, $messages);
        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()->all()]);
        }

        // $register_user = DB::table('register_users')
        //     ->where('email', '=', $request->organization_name)
        //     ->where('server_id', '=', $request->lesson)
        //     ->first();

        // if ($register_user) {
        //     return response()->json(['errors'=> 'Та энэ хөтөлбөрт бүртгүүлсэн байна.']);
        // }

        $name = $request->name;
        $phone = $request->phone;
        $email = $request->email;
        $server_id = $request->lesson;

        $organization_name = $request->organization_name;
        $organization_position = $request->organization_position;

        RegisterUser::createRegisterUserCorp($name, $organization_name, $organization_position, $phone, $email, $server_id);

        return response()->json(['success'=>'Амжилттай бүртгүүллээ.']);
    }

    public function feedback(Request $request)
    {
        $credentials = $request->only('name', 'email', 'feedback');

        $rules = [
            'name' => 'required',
            'email' => 'required|email',
            'feedback' => 'required'
        ];

        $messages = [
            'name.required' => 'Овог нэрээ оруулна уу.',
            'email.required' => 'Емэйл хаягаа оруулна уу.',
            'email.email' => 'Емэйл хаяг буруу байна.',
            'feedback.required' => 'Та санал хүсэлтээ оруулна уу.',
        ];

        $validator = Validator::make($credentials, $rules, $messages);
        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()->all()]);
        }

        $name = $request->name;
        $email = $request->email;
        $message = $request->feedback;

        Feedback::createFeedback($name, $email, $message);

        return response()->json(['success'=>'Амжилттай хүлээн авлаа.']);
    }
}
