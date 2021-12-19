<?php

namespace App\Http\Controllers;

use App\Models\Research;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\ResearchRepository;

class ResearchController extends Controller
{

    private $ResearchRepository;
    public function __construct()
    {
        $this->ResearchRepository = new ResearchRepository(new Research());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all Research data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['teacher'];
        $filter = ['ar_title','en_title','magazine', 'teacher_id', 'teacher.department_id'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->ResearchRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['magazine'] = $item->magazine;
                $data['link'] = $item->link;
                $data['publish_date'] = $item->publish_date;
                $data['teacher_id'] = $item->teacher_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->teacher)){
                  $data['teacher'] = [
                        'id' => $item->teacher->id,
                        'name'=> $item->teacher->en_name,
                        'description'=> $item->teacher->en_description,
                        'email'=> $item->teacher->email,
                        'image'=> $item->teacher->image,
                        'graduation_degree'=> $item->teacher->en_graduation_degree,
                        'general_specialty'=> $item->teacher->en_general_specialty,
                        'accurate_specialty'=> $item->teacher->en_accurate_specialty,
                        'file_cv'=> $item->teacher->file_cv,
                        'department_id'=> $item->teacher->department_id,
                    ];
                }else{
                  $data['teacher']=[];
                }
                if(!is_null($item->teacher->depatrment)){
                  $data['department'] = [
                        'id' => $item->teacher->depatrment->id,
                        'name'=> $item->teacher->depatrment->en_name,
                        'link'=> $item->teacher->depatrment->link,
                        'logo'=> $item->teacher->depatrment->logo,
                    ];
                }else{
                  $data['department']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->ar_title;
                $data['magazine'] = $item->magazine;
                $data['link'] = $item->link;
                $data['publish_date'] = $item->publish_date;
                $data['teacher_id'] = $item->teacher_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->teacher)){
                  $data['teacher'] = [
                        'id' => $item->teacher->id,
                        'name'=> $item->teacher->ar_name,
                        'description'=> $item->teacher->ar_description,
                        'email'=> $item->teacher->email,
                        'image'=> $item->teacher->image,
                        'graduation_degree'=> $item->teacher->ar_graduation_degree,
                        'general_specialty'=> $item->teacher->ar_general_specialty,
                        'accurate_specialty'=> $item->teacher->ar_accurate_specialty,
                        'file_cv'=> $item->teacher->file_cv,
                        'department_id'=> $item->teacher->department_id,
                    ];
                }else{
                  $data['teacher']=[];
                }
                if(!is_null($item->teacher->depatrment)){
                  $data['department'] = [
                        'id' => $item->teacher->depatrment->id,
                        'name'=> $item->teacher->depatrment->ar_name,
                        'link'=> $item->teacher->depatrment->link,
                        'logo'=> $item->teacher->depatrment->logo,
                    ];
                }else{
                  $data['department']=[];
                }
                return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get Research by Id
    public function show(Request $request, $id)
    {
        $relations = ['teacher'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        Research::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       //Processing
       $response = $this->ResearchRepository->getByIdResearch($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['title'] = $item->en_title;
            $data['magazine'] = $item->magazine;
            $data['link'] = $item->link;
            $data['publish_date'] = $item->publish_date;
            $data['teacher_id'] = $item->teacher_id;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            if(!empty($item->teacher)){
              $data['teacher'] = [
                  'id' => $item->teacher->id,
                 'name'=> $item->teacher->en_name,
                 'description'=> $item->teacher->en_description,
                 'email'=> $item->teacher->email,
                 'image'=> $item->teacher->image,
                 'graduation_degree'=> $item->teacher->en_graduation_degree,
                 'general_specialty'=> $item->teacher->en_general_specialty,
                 'accurate_specialty'=> $item->teacher->en_accurate_specialty,
                 'file_cv'=> $item->teacher->file_cv,
                 'department_id'=> $item->teacher->department_id,
                ];
            }else{
              $data['teacher']=[];
            }
            if(!is_null($item->teacher->depatrment)){
              $data['department'] = [
                    'id' => $item->teacher->depatrment->id,
                    'name'=> $item->teacher->depatrment->en_name,
                    'link'=> $item->teacher->depatrment->link,
                    'logo'=> $item->teacher->depatrment->logo,
                ];
            }else{
              $data['department']=[];
            }
            return $data;
      });
      return Utilities::wrap($dataItem[0] , 200);
    }elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['title'] = $item->ar_title;
            $data['magazine'] = $item->magazine;
            $data['link'] = $item->link;
            $data['publish_date'] = $item->publish_date;
            $data['teacher_id'] = $item->teacher_id;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            if(!empty($item->teacher)){
              $data['teacher'] = [
                  'id' => $item->teacher->id,
                 'name'=> $item->teacher->ar_name,
                 'description'=> $item->teacher->ar_description,
                 'email'=> $item->teacher->email,
                 'image'=> $item->teacher->image,
                 'graduation_degree'=> $item->teacher->ar_graduation_degree,
                 'general_specialty'=> $item->teacher->ar_general_specialty,
                 'accurate_specialty'=> $item->teacher->ar_accurate_specialty,
                 'file_cv'=> $item->teacher->file_cv,
                 'department_id'=> $item->teacher->department_id,
                ];
            }else{
              $data['teacher']=[];
            }
            if(!is_null($item->teacher->depatrment)){
              $data['department'] = [
                    'id' => $item->teacher->depatrment->id,
                    'name'=> $item->teacher->depatrment->ar_name,
                    'link'=> $item->teacher->depatrment->link,
                    'logo'=> $item->teacher->depatrment->logo,
                ];
            }else{
              $data['department']=[];
            }
            return $data;
        });
        return Utilities::wrap($dataItem[0] , 200);
    }
       //Response
       return Utilities::wrap($response[0], 200);
    }

    //add Research
    public function store(Request $request)
    {
        //validations 
        $Research = $request->validate([
            'ar_title' => 'required|string',
            'en_title' => 'required|string',
            'magazine' => 'string',
            'link' => 'string',
            'publish_date' => 'string',
            'teacher_id' => 'required|integer|exists:teachers,id',
        ]);

        //Processing
        $response = $this->ResearchRepository->create($Research);

        //Response
        return Utilities::wrap($response, 200);
    }

    //update Researchl
    public function update(Request $request, $id)
    {
        //validations 
        $Research = $request->validate([
            'ar_title' => 'string',
            'en_title' => 'string',
            'magazine' => 'string',
            'link' => 'string',
            'publish_date' => 'string',
            'teacher_id' => 'integer|exists:teachers,id',
        ]);
        
        //Processing
        $response = $this->ResearchRepository->update($id, $Research);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Research
    public function destroy($id)
    {
        $Research = Research::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->ResearchRepository->delete($Research);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
