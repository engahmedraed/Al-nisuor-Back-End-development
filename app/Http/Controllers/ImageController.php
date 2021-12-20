<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\ImageRepository;

class ImageController extends Controller
{

    private $ImageRepository;
    public function __construct()
    {
        $this->ImageRepository = new ImageRepository(new Image());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all Image data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['deparment']; 
        $filter = ['deparment_id','first_batch','second_batch','third_batch','fourth_batch','ar_stage','en_stage'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->ImageRepository->getLisData($skip, $take, $relations, $filter);
        return response()->json($response);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
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
                if(!empty($item->deparment)){
                  $data['depatrment'] = [
                    'id' => $item->deparment->id,
                    'name'=> $item->deparment->en_name,
                    'link'=> $item->deparment->link,
                    'logo' => $item->deparment->logo
                ];
                }else{
                  $data['deparment']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
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
                  if(!empty($item->deparment)){
                    $data['deparment'] = [
                      'id' => $item->deparment->id,
                      'name'=> $item->deparment->ar_name,
                      'link'=> $item->deparment->link,
                      'logo' => $item->deparment->logo
                    ];
                  }else{
                    $data['deparment']=[];
                  }
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);

    }
     
    //get Image by Id
    public function show(Request $request, $id)
    {
        $relations = ['deparment'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }

       //Processing
       $Image = Image::where('id', $id)->with('deparment')->where('is_deleted', 0)->firstOrFail();
       $response = $this->ImageRepository->getByIdImage($id, $relations);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
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
            if(!empty($item->deparment)){
              $data['depatrment'] = [
                'id' => $item->deparment->id,
                'name'=> $item->deparment->en_name,
                'link'=> $item->deparment->link,
                'logo' => $item->deparment->logo
              ];
            }else{
              $data['deparment']=[];
            }
            return $data;
      });
      return Utilities::wrap($dataItem[0], 200);
    }elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
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
              if(!empty($item->deparment)){
                $data['deparment'] = [
                  'id' => $item->deparment->id,
                  'name'=> $item->deparment->ar_name,
                  'link'=> $item->deparment->link,
                  'logo' => $item->deparment->logo
                ];
              }else{
                $data['deparment']=[];
              }
              return $data;
        });
        return Utilities::wrap($dataItem[0], 200);
    }
    return Utilities::wrap($response[0], 200);
    
    }

    //get Image By Department Id
    public function getByDepartmentId(Request $request, $id)
    {
        $relations = ['deparment'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }

       //Processing
       Image::where('department_id', $id)->where('is_deleted', 0)->with('deparment')->get();
       $response = Image::where('department_id', $id)->where('is_deleted', 0)->with('deparment')->get();
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
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
            if(!empty($item->deparment)){
              $data['depatrment'] = [
                'id' => $item->deparment->id,
                'name'=> $item->deparment->en_name,
                'link'=> $item->deparment->link,
                'logo' => $item->deparment->logo
              ];
            }else{
              $data['deparment']=[];
            }
            return $data;
      });
      return Utilities::wrap($dataItem, 200);
    }elseif($lang == 'ar'){
        $dataItem =  $response->map(function($item){
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
              if(!empty($item->deparment)){
                $data['deparment'] = [
                  'id' => $item->deparment->id,
                  'name'=> $item->deparment->ar_name,
                  'link'=> $item->deparment->link,
                  'logo' => $item->deparment->logo
                ];
              }else{
                $data['deparment']=[];
              }
              return $data;
        });
        return Utilities::wrap($dataItem, 200);
    }
    return Utilities::wrap($response, 200);

    }

    //add Image
    public function store(Request $request)
    {
        //validations 
        $Image = $request->validate([
            'first_batch' => 'integer',
            'second_batch' => 'integer',
            'third_batch' => 'integer',
            'fourth_batch' => 'integer',
            'ar_stage' => 'string',
            'en_stage' => 'string',
            'department_id' => 'required|integer|exists:since_departments,id'
        ]);
        //Processing
        $response = $this->ImageRepository->create($Image);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Image
    public function update(Request $request, $id)
    {
        //validations 
        $Image = $request->validate([
            'first_batch' => 'integer',
            'second_batch' => 'integer',
            'third_batch' => 'integer',
            'fourth_batch' => 'integer',
            'ar_stage' => 'string',
            'en_stage' => 'string',
            'department_id' => 'required|integer|exists:since_departments,id'
        ]);

        //Processing
        $response = $this->ImageRepository->update($id, $Image);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Image
    public function destroy($id)
    {
        $Image = Image::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->ImageRepository->delete($Image);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
