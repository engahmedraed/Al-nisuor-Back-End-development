<?php

namespace App\Http\Controllers;

use App\Models\Lectures;
use App\Models\LectureFiles;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\Sincestage;
use App\Repository\LecturesRepository;
use App\Repository\LectureFilesRepository;

class LecturesController extends Controller
{

    private $LecturesRepository;
    public function __construct()
    {
        $this->LecturesRepository = new LecturesRepository(new Lectures());
        $this->LectureFilesRepository = new LectureFilesRepository(new LectureFiles());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all Lectures data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'search' => 'nullable|string',
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['stage', 'files'];
        $filter = ['en_name', 'ar_name', 'stage_id', 'stage.department_id' ];
        $search = $request->search;
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');

        //Processing
        $response = $this->LecturesRepository->getListData($skip, $take, $relations, $filter, $search);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['stage_id'] = $item->stage_id;
                $data['file_count'] = count($item->files);
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->stage)){
                $data['stage'] = [
                    'id' => $item->stage->id,
                    'name'=> $item->stage->en_name,
                    'link'=> $item->stage->link,
                ];
                }else{
                  $data['stage']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->ar_name;
                $data['stage_id'] = $item->stage_id;
                $data['file_count'] = count($item->files);
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->stage)){
                $data['stage'] = [
                    'id' => $item->stage->id,
                    'name'=> $item->stage->ar_name,
                    'link'=> $item->stage->link,
                ];
                }else{
                  $data['stage']=[];
                }
                return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        return Utilities::wrap($response, 200);

    }
     
    //get Lectures by Id
    public function show(Request $request, $id)
    {
        $relations = ['stage', 'files'];
        $lang = $request->header('Accept-Language');
        Lectures::where('id', $id)->firstOrFail();

        //Processing
        $this->LecturesRepository->getById($id, $relations);
        $response = $this->LecturesRepository->getByIdLectures($id, $relations);
        if($lang == 'en'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->en_name;
                $data['stage_id'] = $item->stage_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->stage)){
                $data['stage'] = [
                    'id' => $item->stage->id,
                    'name'=> $item->stage->en_name,
                    'link'=> $item->stage->link,
                ];
                }else{
                  $data['stage']=[];
                }
                $data['files'] = $item->files;
                return $data;
          });
          return Utilities::wrap($dataItem, 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['name'] = $item->ar_name;
                $data['stage_id'] = $item->stage_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->stage)){
                $data['stage'] = [
                    'id' => $item->stage->id,
                    'name'=> $item->stage->ar_name,
                    'link'=> $item->stage->link,
                ];
                }else{
                  $data['stage']=[];
                }
                $data['files'] = $item->files;
                return $data;
            });
            return Utilities::wrap($dataItem, 200);
        }
        return Utilities::wrap($response, 200);
    }
    
    //get Lectures by Id
    public function showBystageId(Request $request, $id)
    {
        $relations = [];
        Lectures::where('id', $id)->firstOrFail();

        //Processing
        $this->LecturesRepository->getById($id, $relations);
        $response = $this->StagesRepository->getByIdLectures($id, $relations);
        return Utilities::wrap($response, 200);
    }

    //add Lectures
    public function store(Request $request)
    {
        //validations 
        $Lectures = $request->validate([
            'en_name' => 'required|string',
            'ar_name' => 'required|string',
            'stage_id' => 'required|integer|exists:stages,id',
        ]);
        $extension =['docx','pptx','pptm','ppt', 'pdf'];
        $request->validate([
            'file' => 'required|array',
        ]);

        //Processing
        $response = $this->LecturesRepository->create($Lectures);
        if($request->hasfile('file'))
        {
            foreach($request->file('file') as $key=>$file)// check extention before create in database
            {
                $name=$file->getClientOriginalName();
                $ext = pathinfo($name, PATHINFO_EXTENSION); 
                if(!in_array($ext, $extension)){
                    return Utilities::wrap(['error' => 'Invalid Extension'], 400);
                }
            }

           foreach($request->file('file') as $key=>$file)
           {
                $name=$file->getClientOriginalName();
                $ext = pathinfo($name, PATHINFO_EXTENSION); 
                $fileName = pathinfo($name,PATHINFO_FILENAME);
                $path = $file->store('lecturesFile');      
                $data['name'] = $fileName;  
                $data['file'] = $path; 
                $data['lecture_id'] = $response['id']; 
                $this->LectureFilesRepository->create($data);

           }
        }

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Lectures
    public function update(Request $request, $id)
    {
        //validations 
        $Lectures = $request->validate([
            'en_name' => 'string',
            'ar_name' => 'string',
            'stage_id' => 'integer|exists:stages,id',
        ]);

        //Processing
        $response = $this->LecturesRepository->update($id, $Lectures);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Lectures
    public function destroy($id)
    {
        $Lectures = Lectures::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->LecturesRepository->delete($Lectures);

        //Response
        return Utilities::wrap($response, 200);
    } 
    
    //add Lectures files
    public function storeFiles(Request $request)
    {
        //validations 
        $Lectures = $request->validate([
            'file' => 'required|array',
            'lecture_id' => 'required|integer|exists:lectures,id',

        ]);

        if($request->hasfile('file'))
        {
           foreach($request->file('file') as $key=>$file)
           {
               $name=$file->getClientOriginalName();    
               $fileName = pathinfo($name,PATHINFO_FILENAME);
               $path = $file->store('lecturesFile');      
               $data['name'] = $fileName;  
               $data['file'] = $path; 
               $data['lecture_id'] = $Lectures['lecture_id']; 
               $this->LectureFilesRepository->create($data);

           }
        }

        //Response
        return Utilities::wrap(['message' => 'upload files successfully'], 200);
    }

      
    //delete Lectures files
    public function deleteFiles($id)
    { 
        $Lectures = LectureFiles::where('id', $id)->where('is_deleted', 0)->firstOrFail();
        $response = $this->LectureFilesRepository->delete($Lectures);

        //Response
        return Utilities::wrap($response , 200);
    }

     
}
