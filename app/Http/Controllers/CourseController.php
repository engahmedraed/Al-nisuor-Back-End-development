<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\CourseRepository;

class CourseController extends Controller
{

    private $CourseRepository;
    public function __construct()
    {
        $this->CourseRepository = new CourseRepository(new Course());
        $this->middleware('Rules:admin', ['only' => [  'store', 'update', 'destroy']]);
    }

    //all Course data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = ['ar_name','ar_description','en_name','en_description','price','is_sustainabilty'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->CourseRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['price'] = $item->price;
                $data['image'] = $item->image;
                $data['description'] = $item->en_description;
                $data['status'] = $item->status;
                $data['is_sustainabilty'] = $item->is_sustainabilty;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                  $data['id'] = $item->id;
                  $data['name'] = $item->ar_name;
                  $data['price'] = $item->price;
                  $data['image'] = $item->image;
                  $data['description'] = $item->ar_description;
                $data['is_sustainabilty'] = $item->is_sustainabilty;
                $data['status'] = $item->status;
                  $data['created_at'] = $item->created_at;
                  $data['updated_at'] = $item->updated_at;
                  
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);
    }

    //all Course data
    public function showBySus(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = ['ar_name','ar_description','en_name','en_description','price','is_sustainabilty'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->CourseRepository->showBySus($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['price'] = $item->price;
                $data['image'] = $item->image;
                $data['description'] = $item->en_description;
                $data['status'] = $item->status;
                $data['is_sustainabilty'] = $item->is_sustainabilty;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                  $data['id'] = $item->id;
                  $data['name'] = $item->ar_name;
                  $data['price'] = $item->price;
                  $data['image'] = $item->image;
                  $data['description'] = $item->ar_description;
                $data['is_sustainabilty'] = $item->is_sustainabilty;
                $data['status'] = $item->status;
                  $data['created_at'] = $item->created_at;
                  $data['updated_at'] = $item->updated_at;
                  
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);
    }
     
    //get Course by Id
    public function show(Request $request, $id)
    {
        $relations = [];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        Course::where('id', $id)->firstOrFail();
       //Processing
       $response = $this->CourseRepository->getByIdCourse($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response
        ->map(function($item){
            $data['id'] = $item->id;
            $data['name'] = $item->en_name;
            $data['price'] = $item->price;
            $data['image'] = $item->image;
            $data['description'] = $item->en_description;
            $data['status'] = $item->status;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            
            return $data;
        });
        return Utilities::wrap($dataItem[0] , 200);
        }
        elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->ar_name;
                $data['price'] = $item->price;
                $data['image'] = $item->image;
                $data['description'] = $item->ar_description;
                $data['status'] = $item->status;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                
                return $data;
            });
            return Utilities::wrap($dataItem[0], 200);
        }
        return Utilities::wrap($response[0], 200);

    }

    //add Course
    public function store(Request $request)
    {
        //validations 
        $Course = $request->validate([
            'ar_name' => 'required|string',
            'en_name' => 'required|string',
            'ar_description' => 'required|string',
            'en_description' => 'required|string',
            'image' => 'required|file|mimes:jpeg,bmp,png,jpg',
            'price' => 'required|string',
            'is_sustainabilty' => 'integer|in:0,1'
        ]);

        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_name = $fileName->store('courseImage');
            $Course['image'] = $new_name;
        }
        $response = $this->CourseRepository->create($Course);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Course
    public function update(Request $request, $id)
    {
        //validations 
        $Course = $request->validate([
            'ar_name' => 'string',
            'en_name' => 'string',
            'ar_description' => 'string',
            'en_description' => 'string',
            'image' => 'file|mimes:jpeg,bmp,png,jpg',
            'price' => 'string',
        ]);
        
        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_name = $fileName->store('courseImage');
            $Course['image'] = $new_name;
        }
        $response = $this->CourseRepository->update($id, $Course);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //change status  course
    public function changeStatus($id)
    {
        $Course = Course::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        if($Course->status == 0){
            $response = $this->CourseRepository->update($id, [
                'status' => 1
            ]);
        }else{
            $response = $this->CourseRepository->update($id, [
                'status' => 0
            ]);
        }

        //Response
        return Utilities::wrap($response, 200);
        
    } 
    
    //delete Course
    public function destroy($id)
    {
        $Course = Course::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->CourseRepository->delete($Course);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
