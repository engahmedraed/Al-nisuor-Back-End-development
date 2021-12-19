<?php

namespace App\Http\Controllers;

use JWTAuth;
use App\Models\User;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\UserRepository;
use App\Repository\ImportRepository;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{   
    
     private $UserRepository;
     public function __construct()
     {
        $this->UserRepository = new UserRepository(new User());
     }

     //All users data
     public function getList(Request $request)
     {
        //validations
        $request->validate([
            'take' => 'required|integer',
            'skip' => 'integer',
        ]);

        //parameters
        $filter =  ['full_name', 'phone', 'email', 'rule_id'];
        $relations =['rules'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;

        //Processing
        $response = $this->UserRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
     }
    
     
    //Get user By Id
    public function getById($id)
    {
        $relations = 'rules';
        //Processing
        $response = $this->UserRepository->getById($id, $relations);

        //Response
        return Utilities::wrap($response, 200);
    } 

     //registeration
     public function register(Request $request)
     {
        //validations
        $user = $request->validate([
            'full_name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users,email',
            'phone' => 'required|min:11|max:11',
            'password' => 'required|string|min:6',
        ]);
        $user['rule_id'] = 2;
        //Processing
        $response = $this->UserRepository->registerUser($user);

        //Response
        return Utilities::wrap($response['message'], 200);
     }
     
     //registeration
     public function add(Request $request)
     {
        //validations
       $data = $request->validate([
            'full_name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users,email',
            'phone' => 'required|min:11|max:11',
            'password' => 'required|string|min:6',
            'rule_id' => 'required|integer|exists:rules,id',
        ]);

        if(array_key_exists('passwrd',  $data)){
            $data['password'] = Hash::make($data['password']);
        }
        if($request->hasFile('image')){//check file
            $request->validate([
                'image' => 'file|mimes:jpeg,bmp,png,jpg'
            ]);
            $fileName = $request->file('image');
            $new_name = $fileName->store('uploads');
            $data['image'] = $new_name;
        }
        //Processing
        $response = $this->UserRepository->registerUser($data);

        //Response
        return Utilities::wrap($response['message'], 200);
     }
      
     //update profile
     public function updateProfile(Request $request)
     {
         //validations
        $data = $request->validate([
            'password' => 'string|min:6',
            'email' => 'string|email|unique:users,email',
            'phone' => 'min:11|max:11',
            'full_name' => 'string|max:255',
        ]);
        
        if(array_key_exists('passwrd',  $data)){
            $data['password'] = Hash::make($data['password']);
        }

        if($request->hasFile('image')){//check file
            $request->validate([
                'image' => 'file|mimes:jpeg,bmp,png,jpg'
            ]);
            $fileName = $request->file('image');
            $new_name = $fileName->store('uploads');
            $data['image'] = $new_name;
        }
        // Processing
        $response = $this->UserRepository->update(auth()->user()->id, $data);

        //Response
        return Utilities::wrap($response, 200);
     }
      
     //update user
     public function update(Request $request, $id)
     {
         //validations
        $data = $request->validate([
            'password' => 'string|min:6',
            'phone' => 'min:11|max:11',
            'full_name' => 'string|max:255',
            'email' => 'string|max:255',
            'rule_id' => 'integer|exists:rules,id',
        ]);
        if(array_key_exists('password',  $data)){
            $data['password'] = Hash::make($data['password']);
        }
        if($request->hasFile('image')){//check file
            $request->validate([
                'image' => 'file|mimes:jpeg,bmp,png,jpg'
            ]);
            $fileName = $request->file('image');
            $new_name = $fileName->store('uploads');
            $data['image'] = $new_name;
        }
        // Processing
        $response = $this->UserRepository->update($id, $data);

        //Response
        return Utilities::wrap($response, 200);
     }
        
     //login
     public function login(Request $request)
     {
        //validations
        $valiation = $request->validate([
            'email' => 'required',
            'password' => 'required|min:6',
        ]);

        //Processing
        $response = $this->UserRepository->authenticate($valiation);

        //Response
        return Utilities::wrap(['message' => $response['message']], $response['code']);
     }
     
     //logout user
     public function logout()
     {
        //Processing
        $response = $this->UserRepository->logoutUser();

        //Response
        return Utilities::wrap(['message' => $response['message']],$response['code']);
     }
          
     //logout user
     public function details()
     {
        //Processing
        $response = $this->UserRepository->me();

        //Response
        return Utilities::wrap($response['message'],$response['code']);
     }

    //Delete user with his details
    public function delete($id)
    {
        //Find user
        $model = User::where('id', $id)->where('is_deleted', 0)->firstOrFail();

        //Processing
        $response = $this->UserRepository->delete($model);

        //Response
        return Utilities::wrap($response, 200);
    } 
    
}
