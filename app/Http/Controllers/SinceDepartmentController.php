<?php

namespace App\Http\Controllers;

use App\Models\SinceDepartment;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\SinceDepartmentRepository;

class SinceDepartmentController extends Controller
{

    private $SinceDepartmentRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all since department data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['about', 'teachers', 'installment','news'];
        $filter = ['ar_name','en_name'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->SinceDepartmentRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['link'] = $item->link;
                $data['logo'] = $item->logo;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                $data['installment'] = $item->installment;
                if(!is_null($item->about)){
                $data['about'] = [
                    'id' => $item->about->id,
                    'vision'=> $item->about->en_vision,
                    'message'=> $item->about->en_message,
                    'goals'=> $item->about->en_goals,
                    'created_at'=> $item->about->created_at,
                    'updated_at'=> $item->about->updated_at,
                    ];
                }else{
                    $data['about']=[];
                }
                if(!empty($item->teachers)){
                $data['teachers'] =$item->teachers
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['name'] = $item->en_name;
                    $data['description'] = $item->en_description;
                    $data['email'] = $item->email;
                    $data['image'] = $item->image;
                    $data['graduation_degree'] = $item->en_graduation_degree;
                    $data['general_specialty'] = $item->en_general_specialty;
                    $data['accurate_specialty'] = $item->en_accurate_specialty;
                    $data['file_cv'] = $item->en_file_cv;
                    $data['department_id'] = $item->department_id;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['teachers']=[];
                }
                if(!empty($item->stages)){
                $data['stages'] =$item->stages
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['name'] = $item->name;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['stages']=[];
                }
                if(!empty($item->news)){
                $data['news'] =$item->news
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['title'] = $item->en_title;
                    $data['description'] = $item->en_description;
                    $data['sub_description'] = $item->en_sub_description;
                    $data['image'] = $item->image;
                    $data['views'] = $item->views;
                    $data['comment_count'] = $item->comment_count;
                    $data['user_id'] = $item->user_id;
                    $data['department_id'] = $item->department_id;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['news']=[];
                }
                if(!empty($item->installment)){
                $data['installment'] =$item->installment
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['department_id'] = $item->department_id;
                    $data['first_batch'] = $item->first_batch;
                    $data['second_batch'] = $item->second_batch;
                    $data['third_batch'] = $item->third_batch;
                    $data['fourth_batch'] = $item->fourth_batch;
                    $data['total_batch'] = $item->first_batch +  $item->second_batch + $item->third_batch + $item->fourth_batch;
                    $data['stage'] = $item->en_stage;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['installment']=[];
                }
                return $data;
        });
        return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->ar_name;
                $data['link'] = $item->link;
                $data['logo'] = $item->logo;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                $data['installment'] = $item->installment;
                if(!is_null($item->about)){
                $data['about'] = [
                    'id' => $item->about->id,
                    'vision'=> $item->about->ar_vision,
                    'message'=> $item->about->ar_message,
                    'goals'=> $item->about->ar_goals,
                    'created_at'=> $item->about->created_at,
                    'updated_at'=> $item->about->updated_at,
                    ];
                }else{
                    $data['about']=[];
                }
                if(!empty($item->teachers)){
                $data['teachers'] =$item->teachers
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['name'] = $item->ar_name;
                    $data['description'] = $item->ar_description;
                    $data['email'] = $item->email;
                    $data['image'] = $item->image;
                    $data['graduation_degree'] = $item->ar_graduation_degree;
                    $data['general_specialty'] = $item->ar_general_specialty;
                    $data['accurate_specialty'] = $item->ar_accurate_specialty;
                    $data['file_cv'] = $item->file_cv;
                    $data['department_id'] = $item->department_id;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['teachers']=[];
                }
                if(!empty($item->stages)){
                $data['stages'] =$item->stages
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['name'] = $item->name;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['stages']=[];
                }
                if(!empty($item->news)){
                $data['news'] =$item->news
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['title'] = $item->ar_title;
                    $data['description'] = $item->ar_description;
                    $data['sub_description'] = $item->ar_sub_description;
                    $data['image'] = $item->image;
                    $data['views'] = $item->views;
                    $data['comment_count'] = $item->comment_count;
                    $data['user_id'] = $item->user_id;
                    $data['department_id'] = $item->department_id;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['news']=[];
                }
                if(!empty($item->installment)){
                $data['installment'] =$item->installment
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['department_id'] = $item->department_id;
                    $data['first_batch'] = $item->first_batch;
                    $data['second_batch'] = $item->second_batch;
                    $data['third_batch'] = $item->third_batch;
                    $data['fourth_batch'] = $item->fourth_batch;
                    $data['total_batch'] = $item->first_batch +  $item->second_batch + $item->third_batch + $item->fourth_batch;
                    $data['stage'] = $item->ar_stage;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['installment']=[];
                }
                return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);
    }
     
    //get since department by Id
    public function show(Request $request, $id)
    {
        $relations = ['about', 'teachers', 'news'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }

       //Processing
       $response = $this->SinceDepartmentRepository->getByIdSinceDepartment($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['name'] = $item->en_name;
            $data['link'] = $item->link;
            $data['logo'] = $item->logo;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            if(!is_null($item->about)){
            $data['about'] = [
                'id' => $item->about->id,
                'vision'=> $item->about->en_vision,
                'message'=> $item->about->en_message,
                'goals'=> $item->about->en_goals,
                'created_at'=> $item->about->created_at,
                'updated_at'=> $item->about->updated_at,
                ];
            }else{
                $data['about'] = [];
            }
            if(!empty($item->news)){
            $data['news'] =$item->news
            ->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['sub_description'] = $item->en_sub_description;
                $data['image'] = $item->image;
                $data['views'] = $item->views;
                $data['comment_count'] = $item->comment_count;
                $data['user_id'] = $item->user_id;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['news']=[];
            }
            if(!empty($item->teachers)){
            $data['teachers'] =$item->teachers
            ->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['description'] = $item->en_description;
                $data['email'] = $item->email;
                $data['image'] = $item->image;
                $data['graduation_degree'] = $item->en_graduation_degree;
                $data['general_specialty'] = $item->en_general_specialty;
                $data['accurate_specialty'] = $item->en_accurate_specialty;
                $data['file_cv'] = $item->en_file_cv;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['teachers'] = [];
            }
            return $data;
    });
    return Utilities::wrap($dataItem[0], 200);
    }
    elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['name'] = $item->ar_name;
            $data['link'] = $item->link;
            $data['logo'] = $item->logo;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            if(!is_null($item->about)){
            $data['about'] = [
                'id' => $item->about->id,
                'vision'=> $item->about->ar_vision,
                'message'=> $item->about->ar_message,
                'goals'=> $item->about->ar_goals,
                'created_at'=> $item->about->created_at,
                'updated_at'=> $item->about->updated_at,
                ];
            }else{
                $data['about']=[];
            }
            if(!empty($item->news)){
            $data['news'] =$item->news
            ->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->ar_title;
                $data['description'] = $item->ar_description;
                $data['sub_description'] = $item->ar_sub_description;
                $data['image'] = $item->image;
                $data['views'] = $item->views;
                $data['comment_count'] = $item->comment_count;
                $data['user_id'] = $item->user_id;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['news']=[];
            }
            if(!empty($item->teachers)){
            $data['teachers'] =$item->teachers
            ->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->ar_name;
                $data['description'] = $item->ar_description;
                $data['email'] = $item->email;
                $data['image'] = $item->image;
                $data['graduation_degree'] = $item->ar_graduation_degree;
                $data['general_specialty'] = $item->ar_general_specialty;
                $data['accurate_specialty'] = $item->ar_accurate_specialty;
                $data['file_cv'] = $item->file_cv;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['teachers']=[];
            }
            return $data;
        });
        return Utilities::wrap($dataItem[0], 200);
    }
    return Utilities::wrap($response[0], 200);
    
    }

    //add since department
    public function store(Request $request)
    {
        //validations 
        $sinceDepartment = $request->validate([
            'ar_name' => 'required|string',
            'link' => 'string',
            'en_name' => 'required|string',
            'logo' => 'required|file'
        ]);

        //Processing
        if($request->hasFile('logo')){//check file
            $fileName = $request->file('logo');
            $new_name = $fileName->store('departmentLogo');
            $sinceDepartment['logo'] = $new_name;
        }
        $response = $this->SinceDepartmentRepository->create($sinceDepartment);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update since department
    public function update(Request $request, $id)
    {
        //validations 
        $sinceDepartment = $request->validate([
            'ar_name' => 'string',
            'link' => 'string',
            'en_name' => 'string',
            'logo' => 'file'
        ]);

        //Processing
        if($request->hasFile('logo')){//check file
            $fileName = $request->file('logo');
            $new_name = $fileName->store('departmentLogo');
            $sinceDepartment['logo'] = $new_name;
        }
        $response = $this->SinceDepartmentRepository->update($id, $sinceDepartment);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete since department
    public function destroy($id)
    {
        $sinceDepartment = SinceDepartment::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->SinceDepartmentRepository->delete($sinceDepartment);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
