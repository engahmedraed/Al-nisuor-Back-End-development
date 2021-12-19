<?php

namespace App\Http\Controllers;

use App\Models\Conventions;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\SinceDepartment;
use App\Repository\ConventionsRepository;
use App\Repository\SinceDepartmentRepository;

class ConventionsController extends Controller
{

    private $ConventionsRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->ConventionsRepository = new ConventionsRepository(new Conventions());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all Conventions data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['depatrment'];
        $filter = ['ar_title','ar_description','en_title','en_description'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');

        //Processing
        $response = $this->ConventionsRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                  $data['id'] = $item->id;
                  $data['title'] = $item->ar_title;
                  $data['description'] = $item->ar_description;
                  $data['created_at'] = $item->created_at;
                  $data['updated_at'] = $item->updated_at;
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);

    }
     
    //get Conventions by Id
    public function show(Request $request, $id)
    {
        $relations = ['depatrment'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        Conventions::where('id', $id)->firstOrFail();

        //Processing
       $this->ConventionsRepository->getById($id, $relations);
       $response = $this->ConventionsRepository->getByIdConventions($id, $relations);
        if($lang == 'en'){
            $dataItem =  $response
            ->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
        });
        return Utilities::wrap($dataItem[0] , 200);
        }
        elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->ar_title;
                $data['description'] = $item->ar_description;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            return Utilities::wrap($dataItem[0], 200);
        }
        return Utilities::wrap($response[0], 200);

    }
     
    //add Conventions
    public function store(Request $request)
    {
        //validations 
        $Conventions = $request->validate([
            'ar_title' => 'required|string',
            'en_title' => 'required|string',
            'ar_description' => 'required|string',
            'en_description' => 'required|string',
        ]);

        //Processing
        $response = $this->ConventionsRepository->create($Conventions);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Conventions
    public function update(Request $request, $id)
    {
        //validations 
        $Conventions = $request->validate([
            'ar_title' => 'string',
            'en_title' => 'string',
            'ar_description' => 'string',
            'en_description' => 'string',
        ]);

        //Processing
        $response = $this->ConventionsRepository->update($id, $Conventions);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Conventions
    public function destroy($id)
    {
        $Conventions = Conventions::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->ConventionsRepository->delete($Conventions);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
