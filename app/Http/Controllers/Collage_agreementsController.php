<?php

namespace App\Http\Controllers;

use App\Models\Collage_agreements;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\SinceDepartment;
use App\Repository\Collage_agreementsRepository;
use App\Repository\SinceDepartmentRepository;

class Collage_agreementsController extends Controller
{

    private $Collage_agreementsRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->Collage_agreementsRepository = new Collage_agreementsRepository(new Collage_agreements());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all Collage_agreements data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = ['ar_title','en_title','en_description','ar_description', 'ar_sub_description', 'en_sub_description'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }

        //Processing
        $response = $this->Collage_agreementsRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['sub_description'] = $item->en_sub_description;
                $data['image'] = $item->image;
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
                  $data['sub_description'] = $item->ar_sub_description;
                  $data['image'] = $item->image;
                  $data['created_at'] = $item->created_at;
                  $data['updated_at'] = $item->updated_at;
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);

    }
     
    //get Collage_agreements by Id
    public function show(Request $request, $id)
    {
        $relations = [];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        Collage_agreements::where('id', $id)->firstOrFail();

        //Processing
       $response = $this->Collage_agreementsRepository->getByIdCollageAgreements($id, $relations);
        if($lang == 'en'){
            $dataItem =  $response
            ->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['sub_description'] = $item->en_sub_description;
                $data['image'] = $item->image;
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
                $data['sub_description'] = $item->ar_sub_description;
                $data['image'] = $item->image;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                return $data;
            });
            return Utilities::wrap($dataItem[0], 200);
        }
        return Utilities::wrap($response[0], 200);

    }

    //add Collage_agreements
    public function store(Request $request)
    {
        //validations 
        $collage_agreements = $request->validate([
            'ar_title' => 'required|string',
            'en_title' => 'required|string',
            'ar_description' => 'required|string',
            'en_description' => 'required|string',
            'en_sub_description' => 'required|string',
            'ar_sub_description' => 'required|string',
            'image' => 'file',
        ]);
        if($request->hasFile('image')){//check file
            $request->validate([
                'image' => 'file|mimes:jpeg,bmp,png,jpg'
            ]);
            $fileName = $request->file('image');
            $new_name = $fileName->store('agreementImage');
            $collage_agreements['image'] = $new_name;
        }
        //Processing
        $response = $this->Collage_agreementsRepository->create($collage_agreements);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Collage_agreements
    public function update(Request $request, $id)
    {
        //validations 
        $collage_agreements = $request->validate([
            'ar_title' => 'string',
            'en_title' => 'string',
            'ar_description' => 'string',
            'en_description' => 'string',
            'en_sub_description' => 'string',
            'ar_sub_description' => 'string',
            'image' => 'file',
        ]);

        if($request->hasFile('image')){//check file
            $request->validate([
                'image' => 'file|mimes:jpeg,bmp,png,jpg'
            ]);
            $fileName = $request->file('image');
            $new_name = $fileName->store('agreementImage');
            $collage_agreements['image'] = $new_name;
        }
        //Processing
        $response = $this->Collage_agreementsRepository->update($id, $collage_agreements);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Collage_agreements
    public function destroy($id)
    {
        $collage_agreements = Collage_agreements::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->Collage_agreementsRepository->delete($collage_agreements);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
