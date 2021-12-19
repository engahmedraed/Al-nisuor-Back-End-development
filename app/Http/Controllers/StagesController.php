<?php

namespace App\Http\Controllers;

use App\Models\Stages;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\SinceDepartment;
use App\Repository\StagesRepository;
use App\Repository\SinceDepartmentRepository;
use SimpleXLSX;

class StagesController extends Controller
{

    private $StagesRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->StagesRepository = new StagesRepository(new Stages());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all Stages data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'search' => 'nullable|string',
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['department'];
        $filter = ['en_name','ar_name', 'department_id'];
        $search = $request->search;
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }

        //Processing
        $response = $this->StagesRepository->getListData($skip, $take, $relations, $filter, $search);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->department)){
                  $data['department'] = [
                    'id' => $item->department->id,
                    'name'=> $item->department->en_name,
                    'link'=> $item->department->link,
                    'logo' => $item->deparment->logo
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
                $data['name'] = $item->ar_name;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->department)){
                  $data['department'] = [
                      'id' => $item->department->id,
                     'name'=> $item->department->ar_name,
                     'link'=> $item->department->link,
                     'logo' => $item->deparment->logo
                    ];
                }else{
                  $data['department']=[];
                }
                return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);

    }
     
    //get Stages by Id
    public function show(Request $request, $id)
    {
        $relations = ['department'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        Stages::where('id', $id)->firstOrFail();

        //Processing
       $this->StagesRepository->getById($id, $relations);
       $response = $this->StagesRepository->getByIdStages($id, $relations);
        if($lang == 'en'){
            $dataItem =  $response
            ->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->department)){
                $data['department'] = [
                    'id' => $item->department->id,
                    'name'=> $item->department->en_name,
                    'link'=> $item->department->link,
                    'logo' => $item->deparment->logo
                ];
                }else{
                    $data['department']=[];
                }
                return $data;
        });
        return Utilities::wrap($dataItem[0] , 200);
        }
        elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->ar_name;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->department)){
                    $data['department'] = [
                        'id' => $item->department->id,
                        'name'=> $item->department->ar_name,
                        'link'=> $item->department->link,
                        'logo' => $item->department->logo
                    ];
                }else{
                    $data['department']=[];
                }
                return $data;
            });
            return Utilities::wrap($dataItem[0], 200);
        }
        return Utilities::wrap($response[0], 200);

    }
     
    //get Stages by department Id
    public function showBydepartmentId(Request $request, $id)
    {
        $relations = ['stages'];
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
            $data['link'] = $item->link;
            if(!empty($item->stages)){
                $data['stages'] =$item->stages
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['name'] = $item->en_name;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['stages']=[];
                }
            return $data;
        });
        return Utilities::wrap($dataItem[0] , 200);
        }
        elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['name'] = $item->ar_name;
            $data['link'] = $item->link;
            if(!empty($item->stages)){
                $data['stages'] =$item->stages
                ->map(function($item){
                    $data['id'] = $item->id;
                    $data['name'] = $item->ar_name;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    return $data;
                });
                }else{
                    $data['stages']=[];
                }
            return $data;
        });
        return Utilities::wrap($dataItem[0], 200);
      }
      return Utilities::wrap($response[0], 200);
    }

    //add Stages
    public function store(Request $request)
    {
        //validations 
        $Stages = $request->validate([
            'ar_name' => 'required|string',
            'en_name' => 'required|string',
            'department_id' => 'required|integer|exists:since_departments,id',
        ]);

        //Processing
        $response = $this->StagesRepository->create($Stages);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Stages
    public function update(Request $request, $id)
    {
        //validations 
        $Stages = $request->validate([
            'ar_name' => 'string',
            'en_name' => 'string',
            'department_id' => 'integer|exists:since_departments,id',
        ]);

        //Processing
        $response = $this->StagesRepository->update($id, $Stages);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Stages
    public function destroy($id)
    {
        $Stages = Stages::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->StagesRepository->delete($Stages);

        //Response
        return Utilities::wrap($response, 200);
    } 

}
