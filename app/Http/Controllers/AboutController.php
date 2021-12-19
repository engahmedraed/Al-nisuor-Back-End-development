<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\SinceDepartment;
use App\Repository\AboutRepository;
use App\Repository\SinceDepartmentRepository;

class AboutController extends Controller
{

    private $AboutRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->AboutRepository = new AboutRepository(new About());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all about data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['depatrment'];
        $filter = ['ar_vision','ar_message','ar_goals','en_vision','en_message','en_goals'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }

        //Processing
        $response = $this->AboutRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['vision'] = $item->en_vision;
                $data['message'] = $item->en_message;
                $data['goals'] = $item->en_goals;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->depatrment)){
                  $data['depatrment'] = [
                    'id' => $item->depatrment->id,
                    'name'=> $item->depatrment->en_name,
                    'link'=> $item->deparment->link,
                    'logo' => $item->deparment->logo
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
                  $data['vision'] = $item->ar_vision;
                  $data['message'] = $item->ar_message;
                  $data['goals'] = $item->ar_goals;
                  $data['department_id'] = $item->department_id;
                  $data['created_at'] = $item->created_at;
                  $data['updated_at'] = $item->updated_at;
                  if(!empty($item->depatrment)){
                    $data['depatrment'] = [
                        'id' => $item->depatrment->id,
                        'name'=> $item->depatrment->ar_name,
                        'link'=> $item->deparment->link,
                        'logo' => $item->deparment->logo
                    ];
                  }else{
                    $data['depatrment']=[];
                  }
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);

    }
     
    //get about by Id
    public function show(Request $request, $id)
    {
        $relations = ['depatrment'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        About::where('id', $id)->firstOrFail();

        //Processing
       $this->AboutRepository->getById($id, $relations);
       $response = $this->AboutRepository->getByIdAbout($id, $relations);
        if($lang == 'en'){
            $dataItem =  $response
            ->map(function($item){
                $data['id'] = $item->id;
                $data['vision'] = $item->en_vision;
                $data['message'] = $item->en_message;
                $data['goals'] = $item->en_goals;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->depatrment)){
                $data['depatrment'] = [
                    'id' => $item->depatrment->id,
                    'name'=> $item->depatrment->en_name,
                    'link'=> $item->deparment->link,
                    'logo' => $item->deparment->logo
                    ];
                }else{
                    $data['depatrment']=[];
                }
                return $data;
        });
        return Utilities::wrap($dataItem[0] , 200);
        }
        elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['vision'] = $item->ar_vision;
                $data['message'] = $item->ar_message;
                $data['goals'] = $item->ar_goals;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->depatrment)){
                    $data['depatrment'] = [
                        'id' => $item->depatrment->id,
                        'name'=> $item->depatrment->ar_name,
                        'link'=> $item->deparment->link,
                        'logo' => $item->deparment->logo
                    ];
                }else{
                    $data['depatrment']=[];
                }
                return $data;
            });
            return Utilities::wrap($dataItem[0], 200);
        }
        return Utilities::wrap($response[0], 200);

    }
     
    //get about by department Id
    public function showBydepartmentId(Request $request, $id)
    {
        $relations = ['about'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        SinceDepartment::where('id', $id)->firstOrFail();
       //Processing
        $response = $this->SinceDepartmentRepository->getByIdSinceDepartment($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['name'] = $item->en_name;
            if(!empty($item->about)){
                $data['about'] = [
                    'vision' => $item->about->en_vision,
                    'message' => $item->about->en_message,
                    'goals' => $item->about->en_goals,
                    'department_id' => $item->about->department_id,
                    'created_at' => $item->about->created_at,
                    'updated_at' => $item->about->updated_at,
                ];
            }else{
                $data['about'] = [];
            }
            return $data;
        });
        return Utilities::wrap($dataItem[0] , 200);
        }
        elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['name'] = $item->ar_name;
            if(!empty($item->about)){
                $data['about'] = [
                    'vision' => $item->about->ar_vision,
                    'message' => $item->about->ar_message,
                    'goals' => $item->about->ar_goals,
                    'department_id' => $item->about->department_id,
                    'created_at' => $item->about->created_at,
                    'updated_at' => $item->about->updated_at,
                        
                ];
            }else{
                $data['about'] = [];
            }
            return $data;
        });
        return Utilities::wrap($dataItem[0], 200);
      }
      return Utilities::wrap($response[0], 200);
    }

    //add about
    public function store(Request $request)
    {
        //validations 
        $About = $request->validate([
            'ar_vision' => 'required|string',
            'en_vision' => 'required|string',
            'ar_goals' => 'required|string',
            'en_goals' => 'required|string',
            'ar_message' => 'required|string',
            'en_message' => 'required|string',
            'department_id' => 'required|integer|exists:since_departments,id',
        ]);

        //Processing
        $response = $this->AboutRepository->create($About);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update about
    public function update(Request $request, $id)
    {
        //validations 
        $About = $request->validate([
            'ar_vision' => 'string',
            'en_vision' => 'string',
            'ar_goals' => 'string',
            'en_goals' => 'string',
            'ar_message' => 'string',
            'en_message' => 'string',
            'department_id' => 'integer|exists:since_departments,id',
        ]);

        //Processing
        $response = $this->AboutRepository->update($id, $About);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete about
    public function destroy($id)
    {
        $About = About::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->AboutRepository->delete($About);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
