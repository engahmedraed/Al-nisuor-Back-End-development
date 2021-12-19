<?php
namespace App\Repository;

use JWTAuth;
use App\Models\User;
use App\Repository\BRepository;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class UserRepository extends BRepository {
    // Repo to Get all users
    public function getListUsers($skip, $take)
    {
        $result = User::where('is_deleted', 0)->orderBy("id", "desc");
        $totalCount = User::where('is_deleted', 0);

        $resp = [
            'items' => $result->skip($skip)->take($take)->get(),
            'totalCount' => $totalCount->get()->count()
        ];

        return $response = ['message' => $resp,'code' => 200];


    }

    //Repo for Login 
    public function authenticate($request)
     {
        $user = User::where('email', $request['email'])->firstOrFail();

        if (!Hash::check($request['password'], $user->password)) {//check password
            return $response = ['message' => 'The password is invalid','code' => 401];
        }
        
        try {
            JWTAuth::factory()->setTTL(60*1*360);
             if (! $token = JWTAuth::fromUser($user)) {
                 return $response = ['message' =>  'invalid_credentials', 'code' => 401];
                }
            } catch (JWTException $e) {
                return $response = ['message' => 'could_not_create_token', 'code' => 400];
        }
        
        return  $response = ['message' => ['token' => $token, 'rule_id' => $user->rule_id],'code' => 200];
    }

    //Repo for registration 
    public function registerUser($request)
    {
        $request['password'] = Hash::make($request['password']);
        $usere = User::create($request);
        // $user = User::where('email', $usere->email)->firstOrFail();

        // if (!Hash::check($user->password, $user->password)) {//check password
        //     return $response = ['message' => 'The password is invalid','code' => 401];
        // }
        
        try {
            JWTAuth::factory()->setTTL(60*1*360);
             if (! $token = JWTAuth::fromUser($usere)) {
                 return $response = ['message' =>  'invalid_credentials', 'code' => 401];
                }
            } catch (JWTException $e) {
                return $response = ['message' => 'could_not_create_token', 'code' => 400];
        }
        
        return  $response = ['message' => ['token' => $token, 'rule_id' => $usere->rule_id],'code' => 200];
    }

    //Repo for Logout user
    public function logoutUser()
    {
        Auth::guard('api')->logout();
        return  $response = ['message' => 'Successfully logout','code' => 200];
    }

    //Repo for user details
    public function me()
    {
       $id = auth()->user()->id;
       $check = User::where('id', $id)->with('rules')->firstOrFail();
       return  $response = ['message' =>  $check,'code' => 200];
    }
    
}