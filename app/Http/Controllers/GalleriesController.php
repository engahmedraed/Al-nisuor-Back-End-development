<?php

namespace App\Http\Controllers;

use App\Models\Galleries;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\GalleriesRepository;

class GalleriesController extends Controller
{

    private $GalleriesRepository;
    public function __construct()
    {
        $this->GalleriesRepository = new GalleriesRepository(new Galleries());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all Galleries data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = [];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->GalleriesRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get Galleries by Id
    public function show($id)
    {
        $relations = [];

       //Processing
       $response = $this->GalleriesRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add Galleries
    public function store(Request $request)
    {
        //validations 
        $Galleries = $request->validate([
            'video_url' => 'string',
            'image' => 'file',
        ]);

        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_name = $fileName->store('galleries');
            $Galleries['image'] = $new_name;
        }
        $response = $this->GalleriesRepository->create($Galleries);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Galleries
    public function update(Request $request, $id)
    {
        //validations 
        $Galleries = $request->validate([
            'video_url' => 'string',
            'image' => 'file',
        ]);

        //Processing
        if($request->hasFile('image')){//check file
            $fileName = $request->file('image');
            $new_name = $fileName->store('galleries');
            $Course['image'] = $new_name;
        }
        $response = $this->GalleriesRepository->update($id, $Galleries);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Galleries
    public function destroy($id)
    {
        $Galleries = Galleries::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->GalleriesRepository->delete($Galleries);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
