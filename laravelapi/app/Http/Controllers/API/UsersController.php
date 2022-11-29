<?php
namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Image;
use App\Models\Setting;
use DataTables,Str,Storage;
use Illuminate\Http\Request;
// use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;
use Illuminate\Contracts\Session\Session;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class UsersController extends Controller{
    private $status_code    =        200;
    public function userSignUp(Request $request) {
        $validator  =  Validator::make($request->all(), [
            "name"      =>  "required",
            "email"     =>  "required|email",
            "password"  =>  "required",
        ]);
        if($validator->fails()) {
            return response()->json(["status" => "failed", "message" => "validation_error", "errors" => $validator->errors()]);
        } try{
            $data = [
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->password),
            ];
            $singup = User::create($data);
            return response()->json([
                'singup'  => $singup,
                'status' => 'success',
                'message' => 'Singup Sucessfully ⚡️'
            ]);
        }catch (\Exception $e){
            return [
                'value'  => [],
                'status' => 'error',
                'message'   => $e->getMessage()
            ];
        }
    }


    public function userLogin(Request $request){
        if (\Auth::attempt([
            'email'     => $request->get('email'),
            'password'  => $request->get('password'),
            'status'    => 'active',
        ])){
            $loginAttempt = Auth::attempt([
                'email' => $request->get('email'),
                'password' => $request->get('password')
            ]);
            if(Auth::user()->user_type == 'users'){
                $user = $this->userDetail($request->email);
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "Singup Sucessfully ⚡️", "data" => $user]);
            }else{
                return response()->json(["status" => "failed", "success" => false, "message" => "Unable to login. Incorrect password."]);
            }
        }else{
            return response()->json(["status" => "failed", "success" => false, "message" => "Unable to login. Email doesn't exist."]);
        }
    }



    // ------------------ [ User Detail ] ---------------------
    public function userDetail($email) {
        $user = array();
        if($email != "") {
            $user = User::where("email", $email)->first();
            return $user;
        }
    }

    public function profile(Request $request){
        try{
            if($request->has('image')){
                $file = $request->file('image');
                $extension = $file->getClientOriginalExtension();
                $filename = Str::random(10).'.'.$extension;
                Storage::disk('public')->putFileAs('avatar', $file,$filename);
            }
            //     Image::create(['image'=>$filename]);
            // if($request->hasFile('avatar')){
            //     $file = $request->file('avatar');
            //     $extension = $file->getClientOriginalExtension();
            //     $filename = Str::random(10).'.'.$extension;
            //     Storage::disk('public')->putFileAs('avatar', $file,$filename);
            // }else{
            //     $userDetail=User::where('id',$request->profile_id)->first()->avatar;
            //     $filename = $userDetail;
            // }

            User::where('id',$request->profile_id)->update([
                'email'    => $request->email,
                'name'     => $request->name,
                'avatar'   => $filename,
            ]);
            $user = User::where('id',$request->profile_id)->first();
            return response()->json([
                'user'  => $user,
                'status' => 'success',
                'message' => 'User Profile Sucessfully !!'
            ]);
        }catch (\Exception $e){
            return [
                'value'  => [],
                'status' => 'error',
                'message'   => $e->getMessage()
            ];
        }
    }

    public function forgotPassword(Request $request){
        try{
            $user = User::where(['email'=>$request->email])->first();
            // dd($user);
            if(!$user){
                return response()->json(['status'    => 'error','message'   => "Invalid e-mail address."]);
            } else {
                $thankyou1 = Setting::where('code','thankyou')->first();
                $thankyou = $thankyou1->value;
                $password = Str::random(8);
                $body = "We cannot simply send you your old password. New Password";
                $details = [
                    'title' => 'Forget Password',
                    'body' => $body,
                    'name' => $user->name,
                    'password' => $password,
                    'thankyou' => $thankyou,
                ];
                Mail::to($user->email)->send(new \App\Mail\ForgetPasswordMail($details));
                $user->password = \Hash::make($password);
                $user->save();
                return response()->json(['status'    => 'success','message'   => 'New password is sent to your mail.']);
            }
        }catch(Exception $e){
            return response()->json(['status'    => 'error','message'   => $e->getMessage()]);
        }
    }


    public function images(Request $request){
        if($request->has('image')){
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            $filename = Str::random(10).'.'.$extension;
            Storage::disk('public')->putFileAs('image', $file,$filename);
        }
        Image::create(['image'=>$filename]);
    }

    public function modellogin(Request $request,$id){
        try{
            $userlogindetail = User::where('id',$id)->first();
            return response()->json([
                'userlogindetail'  => $userlogindetail,
                'status' => 'success',
                'message' => 'user login Detail Listed Successfully !!'
                ]);
        }catch (\Exception $e){
            return [
            'value'  => [],
            'status' => 'error',
            'message'   => $e->getMessage()

            ];
        }
    }

}
