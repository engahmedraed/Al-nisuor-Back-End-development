<?php

namespace App\Http\Controllers;

use App\Models\InternationalRankings;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\InternationalRankingsRepository;

class InternationalRankingsController extends Controller
{

    private $InternationalRankingsRepository;
    public function __construct()
    {
        $this->InternationalRankingsRepository = new InternationalRankingsRepository(new InternationalRankings());
        $this->middleware('Rules:admin', ['only' => ['update', 'destroy']]);
    }

    //all InternationalRankings data
    public function index(Request $request)
    {
      
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = ['ar_description', 'en_description','number'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->InternationalRankingsRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['description'] = $item->en_description;
                $data['image'] = $item->image;
                $data['link'] = $item->link;
                $data['number'] = $item->number;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
            }elseif($lang == 'ar'){
                $dataItem =  $response['items']->map(function($item){
                    $data['id'] = $item->id;
                    $data['description'] = $item->ar_description;
                    $data['image'] = $item->image;
                    $data['link'] = $item->link;
                    $data['number'] = $item->number;
                    $data['created_at'] = $item->created_at;
                    $data['updated_at'] = $item->updated_at;
                    
                    return $data;
                });
                return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
            }
        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get InternationalRankings by Id
    public function show(Request $request, $id)
    {
        $relations = [];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        InternationalRankings::where('id', $id)->where('is_deleted', 0)->firstOrFail();

       //Processing
       $response = $this->InternationalRankingsRepository->getByIdInternationalRankings($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['description'] = $item->en_description;
            $data['image'] = $item->image;
            $data['link'] = $item->link;
            $data['number'] = $item->number;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            
            return $data;
      });
      return Utilities::wrap($dataItem[0], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['description'] = $item->ar_description;
                $data['image'] = $item->image;
                $data['link'] = $item->link;
                $data['number'] = $item->number;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                
                return $data;
            });
            return Utilities::wrap($dataItem[0], 200);
        }
       //Response
       return Utilities::wrap($response[0], 200);
    }

    //add InternationalRankings
    public function store(Request $request)
    {
        //validations 
        $InternationalRankings = $request->validate([
            'ar_description' => 'required|string',
            'en_description' => 'required|string',
            'number' => 'required|integer',
            'link' => 'required|string',
            'image' => 'file'
        ]);
        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_nameCv = $fileName->store('InternationalRankingsImage');
            $InternationalRankings['image'] = $new_nameCv;
        }
        $response = $this->InternationalRankingsRepository->create($InternationalRankings);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update InternationalRankings
    public function update(Request $request, $id)
    {
        //validations 
        $InternationalRankings = $request->validate([
            'ar_description' => 'string',
            'en_description' => 'string',
            'number' => 'integer',
            'link' => 'string',
            'image' => 'file'
        ]);
        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_nameCv = $fileName->store('InternationalRankingsImage');
            $InternationalRankings['image'] = $new_nameCv;
        }
        $response = $this->InternationalRankingsRepository->update($id, $InternationalRankings);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete InternationalRankings
    public function destroy($id)
    {
        $InternationalRankings = InternationalRankings::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->InternationalRankingsRepository->delete($InternationalRankings);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}