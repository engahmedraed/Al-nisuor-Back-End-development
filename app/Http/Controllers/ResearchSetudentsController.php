<?php

namespace App\Http\Controllers;

use App\Models\ResearchSetudents;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\SinceDepartment;
use App\Repository\ResearchSetudentsRepository;
use App\Repository\SinceDepartmentRepository;
use SimpleXLSX;

class ResearchSetudentsController extends Controller
{

    private $ResearchSetudentsRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->ResearchSetudentsRepository = new ResearchSetudentsRepository(new ResearchSetudents());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all ResearchSetudents data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['depatrment'];
        $filter = ['name','department_id','year','research_title'];
        $search = $request->search;
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');

        //Processing
        $response = $this->ResearchSetudentsRepository->getListData($skip, $take, $relations, $filter, $search);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->name;
                $data['year'] = $item->year;
                $data['research_title'] = $item->research_title;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->depatrment)){
                  $data['depatrment'] = [
                    'id' => $item->depatrment->id,
                    'name'=> $item->depatrment->en_name,
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
                $data['name'] = $item->name;
                $data['year'] = $item->year;
                $data['research_title'] = $item->research_title;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                  if(!empty($item->depatrment)){
                    $data['depatrment'] = [
                        'id' => $item->depatrment->id,
                        'name'=> $item->depatrment->ar_name,
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
     
    //get ResearchSetudents by Id
    public function show(Request $request, $id)
    {
        $relations = ['depatrment'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        ResearchSetudents::where('id', $id)->firstOrFail();

        //Processing
       $this->ResearchSetudentsRepository->getById($id, $relations);
       $response = $this->ResearchSetudentsRepository->getByIdResearchSetudents($id, $relations);
        if($lang == 'en'){
            $dataItem =  $response
            ->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->name;
                $data['year'] = $item->year;
                $data['research_title'] = $item->research_title;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->depatrment)){
                $data['depatrment'] = [
                    'id' => $item->depatrment->id,
                    'name'=> $item->depatrment->en_name,
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
                $data['name'] = $item->name;
                $data['year'] = $item->year;
                $data['research_title'] = $item->research_title;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->depatrment)){
                    $data['depatrment'] = [
                        'id' => $item->depatrment->id,
                        'name'=> $item->depatrment->ar_name,
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
  
    //add ResearchSetudents
    public function store(Request $request)
    {
    
        //validations 
        $Stages = $request->validate([
            'file' => 'file|mimes:xlsx',
        ]);
           
        //Processing
        if($request->hasFile('file')){//check file
            $fileName = $request->file('file');
            $new_nameCv = $fileName->store('researchStudent');
            $Stages['file'] = $new_nameCv;
        }
        if ( $xlsx = SimpleXLSX::parse($Stages['file']) ) {
            foreach ($xlsx->rows() as $elt) {
                if($elt[0] != 'name' && $elt[1] != 'department_id'){
                    $import = new ResearchSetudents();  
                    $import['name'] = $elt[0] ;    
                    $import['research_title'] = $elt[3] ; 
                    $import['year'] = $elt[2] ; 
                    $import['department_id'] = $elt[1] ;
                    $import->save();   
                }
            }
        } else {
        $response =  SimpleXLSX::parseError();
        return Utilities::wrap(['error' => $response], 400);
        }
;
        //Response
        return Utilities::wrap(['message' => 'import successfully'], 200);
    }
     
    //update ResearchSetudents
    public function update(Request $request, $id)
    {
        //validations 
        // $ResearchSetudents = $request->validate([
            // 'file' => 'file|mimes:xlsx',

        // ]);

        // //Processing
        // $response = $this->ResearchSetudentsRepository->update($id, $ResearchSetudents);

        // //Response
        // return Utilities::wrap($response, 200);
    }
        
    //delete ResearchSetudents
    public function destroy($id)
    {
        // $ResearchSetudents = ResearchSetudents::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        // //Processing
        // $response = $this->ResearchSetudentsRepository->delete($ResearchSetudents);

        // //Response
        // return Utilities::wrap($response, 200);
        
    } 

         
}
