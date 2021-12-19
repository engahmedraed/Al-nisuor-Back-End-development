<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\SinceDepartment;
use App\Repository\TeacherRepository;
use App\Repository\SinceDepartmentRepository;

class TeacherController extends Controller
{

    private $SinceDepartmentRepository;
    private $TeacherRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->TeacherRepository = new TeacherRepository(new Teacher());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all teacher data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['depatrment'];
        $filter = ['department_id', 'ar_name','en_name','ar_description','en_description','ar_graduation_degree','ar_general_specialty','ar_accurate_specialty','en_graduation_degree','en_general_specialty','en_accurate_specialty','email'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->TeacherRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
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
                if(!empty($item->depatrment)){
                  $data['depatrment'] = [
                      'id' => $item->depatrment->id,
                     'name'=> $item->depatrment->en_name,
                     'link' => $item->depatrment->link,
                     'logo' => $item->depatrment->logo
                    ];
                }else{
                  $data['depatrment']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
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
                if(!empty($item->depatrment)){
                $data['depatrment'] = [
                    'id' => $item->depatrment->id,
                    'name'=> $item->depatrment->ar_name,
                    'link' => $item->depatrment->link,
                    'logo' => $item->depatrment->logo
                    ];
                }else{
                $data['depatrment']=[];
                }
                return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get teacher by Id
    public function show(Request $request, $id)
    {
        $relations = ['depatrment','research'];
        $lang = $request->header('Accept-Language');

       //Processing
       $response = $this->TeacherRepository->getByIdTeacher($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
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
            if(!empty($item->depatrment)){
              $data['depatrment'] = [
                  'id' => $item->depatrment->id,
                 'name'=> $item->depatrment->en_name,
                 'link' => $item->depatrment->link,
                 'logo' => $item->depatrment->logo
                ];
            }else{
              $data['depatrment']=[];
            }
            if(!empty($item->research)){
            $data['research'] =$item->research
            ->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['magazine'] = $item->magazine;
                $data['link'] = $item->link;
                $data['publish_date'] = $item->publish_date;
                $data['teacher_id'] = $item->teacher_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['research']=[];
            }
            return $data;
      });
      return Utilities::wrap($dataItem[0], 200);
    }elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
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
            if(!empty($item->depatrment)){
            $data['depatrment'] = [
                'id' => $item->depatrment->id,
                'name'=> $item->depatrment->ar_name,
                'link' => $item->depatrment->link,
                'logo' => $item->depatrment->logo
                ];
            }else{
            $data['depatrment']=[];
            }
            if(!empty($item->research)){
            $data['research'] =$item->research
            ->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->ar_title;
                $data['magazine'] = $item->magazine;
                $data['link'] = $item->link;
                $data['publish_date'] = $item->publish_date;
                $data['teacher_id'] = $item->teacher_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            }else{
                $data['research']=[];
            }
            return $data;
        });
        return Utilities::wrap($dataItem[0], 200);
    }
       //Response
       return Utilities::wrap($response[0], 200);
    }

    //get about by department Id
    public function showBydepartmentId(Request $request, $id)
    {
        $relations = ['teachers'];
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
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
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
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
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
       //Response
       return Utilities::wrap($response, 200);
    }

    //add teacher
    public function store(Request $request)
    {
        //validations 
        $teacher = $request->validate([
            'ar_name' => 'required|string',
            'ar_description' => 'required|string',
            'is_manager' => 'integer|in:1,0',
            'en_name' => 'required|string',
            'en_description' => 'required|string',
            'ar_graduation_degree' => 'string',
            'en_graduation_degree' => 'string',
            'image' => 'file|mimes:jpeg,bmp,png,jpg',
            'ar_general_specialty' => 'string',
            'en_general_specialty' => 'string',
            'ar_accurate_specialty' => 'string',
            'en_accurate_specialty' => 'string',
            'file_cv' => 'file',
            'en_file_cv' => 'file',
            'email' => 'required|string|email',
            'department_id' => 'required|integer|exists:since_departments,id',
        ]);

        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_name = $fileName->store('techerImage');
            $teacher['image'] = $new_name;
        }
        if($request->hasFile('file_cv')){//check file
            $fileName = $request->file('file_cv');
            $new_nameCv = $fileName->store('TeacherCv');
            $teacher['file_cv'] = $new_nameCv;
        }
        if($request->hasFile('en_file_cv')){//check file
            $fileName = $request->file('en_file_cv');
            $new_nameCv = $fileName->store('EnTeacherCv');
            $teacher['en_file_cv'] = $new_nameCv;
        }
        $response = $this->TeacherRepository->create($teacher);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update teacher
    public function update(Request $request, $id)
    {
        //validations 
        $teacher = $request->validate([
            'ar_name' => 'string',
            'ar_description' => 'string',
            'en_name' => 'string',
            'is_manager' => 'integer|in:1,0',
            'en_description' => 'string',
            'ar_graduation_degree' => 'string',
            'en_graduation_degree' => 'string',
            'image' => 'file|mimes:jpeg,bmp,png,jpg',
            'ar_general_specialty' => 'string',
            'en_general_specialty' => 'string',
            'ar_accurate_specialty' => 'string',
            'en_accurate_specialty' => 'string',
            'file_cv' => 'file',
            'en_file_cv' => 'file',
            'email' => 'string|email',
            'department_id' => 'integer|exists:since_departments,id',
        ]);

        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_name = $fileName->store('techerImage');
            $teacher['image'] = $new_name;
        }
        if($request->hasFile('file_cv')){//check file
            $fileName = $request->file('file_cv');
            $new_nameCv = $fileName->store('TeacherCv');
            $teacher['file_cv'] = $new_nameCv;
        }
        if($request->hasFile('en_file_cv')){//check file
            $fileName = $request->file('en_file_cv');
            $new_nameCv = $fileName->store('EnTeacherCv');
            $teacher['en_file_cv'] = $new_nameCv;
        }
        $response = $this->TeacherRepository->update($id, $teacher);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete teacher
    public function destroy($id)
    {
        $teacher = Teacher::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->TeacherRepository->delete($teacher);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
