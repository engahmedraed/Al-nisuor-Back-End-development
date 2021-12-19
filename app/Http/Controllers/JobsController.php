<?php

namespace App\Http\Controllers;

use App\Models\Jobs;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\JobsRepository;

class jobsController extends Controller
{

    private $JobsRepository;
    public function __construct()
    {
        $this->JobsRepository = new JobsRepository(new Jobs());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy', 'updateType']]);
    }

    //all Jobs data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['user'];
        $filter = ['ar_title','ar_description','en_title','en_description','skills','type','ar_sub_description','en_sub_description'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->JobsRepository->getListDatas($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['sub_description'] = $item->en_sub_description;
                $data['skills'] = $item->skills;
                $data['type'] = $item->type;
                $data['image'] = $item->image;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->user)){
                  $data['user'] = [
                      'id' => $item->user->id,
                     'full_name'=> $item->user->full_name,
                     'email'=> $item->user->email,
                     'phone'=> $item->user->phone,
                     'image'=> $item->user->image,
                    ];
                }else{
                  $data['user']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->ar_title;
                $data['description'] = $item->ar_description;
                $data['sub_description'] = $item->ar_sub_description;
                $data['skills'] = $item->skills;
                $data['type'] = $item->type;
                $data['image'] = $item->image;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->user)){
                $data['user'] = [
                    'id' => $item->user->id,
                    'full_name'=> $item->user->full_name,
                    'email'=> $item->user->email,
                    'phone'=> $item->user->phone,
                    'image'=> $item->user->image,
                    ];
                }else{
                $data['user']=[];
                }
                return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        
        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get Jobs by Id
    public function show(Request $request, $id)
    {
       $relations = ['presentationForms','user'];
       $lang = $request->header('Accept-Language');
    //    if(!in_array($lang, ['en', 'ar']) && $lang != null){
    //       $lang = 'ar';
    //    }

       //Processing
       Jobs::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       $response = $this->JobsRepository->getJobById2($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['title'] = $item->en_title;
            $data['description'] = $item->en_description;
            $data['sub_description'] = $item->en_sub_description;
            $data['skills'] = $item->skills;
            $data['type'] = $item->type;
            $data['image'] = $item->image;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            if(!is_null($item->user)){
            $data['user'] = [
                'id' => $item->user->id,
                'full_name'=> $item->user->full_name,
                'email'=> $item->user->email,
                'phone'=> $item->user->phone,
                'image'=> $item->user->image,
                ];
            }else{
                $data['user']=[];
            }
            if(!empty($item->presentationForms)){
            $data['presentation_forms'] =$item->presentationForms
            ->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->name;
                $data['phone'] = $item->phone;
                $data['email'] = $item->email;
                $data['file_cv'] = $item->file_cv;
                $data['job_id'] = $item->job_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['presentation_forms']=[];
            }
            return $data;
    });
    return Utilities::wrap($dataItem[0], 200);
    }
    elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['title'] = $item->ar_title;
            $data['description'] = $item->ar_description;
            $data['sub_description'] = $item->ar_sub_description;
            $data['skills'] = $item->skills;
            $data['type'] = $item->type;
            $data['image'] = $item->image;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            if(!is_null($item->user)){
            $data['user'] = [
                'id' => $item->user->id,
                'full_name'=> $item->user->full_name,
                'email'=> $item->user->email,
                'phone'=> $item->user->phone,
                'image'=> $item->user->image,
                ];
            }else{
                $data['user']=[];
            }
            if(!empty($item->presentationForms)){
            $data['presentation_forms'] = $item->presentationForms
            ->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->name;
                $data['phone'] = $item->phone;
                $data['email'] = $item->email;
                $data['file_cv'] = $item->file_cv;
                $data['job_id'] = $item->job_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['presentation_forms']=[];
            }
            return $data;
        });
        return Utilities::wrap($dataItem[0], 200);
    }
       //Response
       return Utilities::wrap($response[0], 200);
    }

    //add Jobs
    public function store(Request $request)
    {
        //validations 
        $Jobs = $request->validate([
            'ar_title' => 'required|string',
            'ar_description' => 'required|string',
            'en_title' => 'required|string',
            'en_description' => 'required|string',
            'ar_sub_description' => 'required|string',
            'en_sub_description' => 'required|string',
            'skills' => 'required|string',
            'image' => 'required|file',
        ]);
        //Processing
        $Jobs['user_id'] = auth()->user()->id;
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_nameCv = $fileName->store('imageJobs');
            $Jobs['image'] = $new_nameCv;
        }
        $response = $this->JobsRepository->create($Jobs);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Jobs
    public function update(Request $request, $id)
    {
        //validations 
        $Jobs = $request->validate([
            'ar_title' => 'string',
            'ar_description' => 'string',
            'en_title' => 'string',
            'en_description' => 'string',
            'ar_sub_description' => 'string',
            'en_sub_description' => 'string',
            'skills' => 'string',
            'image' => 'file',
            'type' => 'integer|in:0,1',
        ]);
        
        //Processing
        $Jobs['user_id'] = auth()->user()->id;
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_nameCv = $fileName->store('imageJobs');
            $Jobs['image'] = $new_nameCv;
        }
        $response = $this->JobsRepository->update($id, $Jobs);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Jobs type
    public function updateType(Request $request, $id)
    {
        //validations 
        $Jobs = $request->validate([
            'type' => 'required|integer|in:1,0',
        ]);
        
        //Processing
        $response = $this->JobsRepository->update($id, $Jobs);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Jobs
    public function destroy($id)
    {
        $Jobs = Jobs::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->JobsRepository->delete($Jobs);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
