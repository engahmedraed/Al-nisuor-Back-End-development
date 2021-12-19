<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\TagRepository;

class TagController extends Controller
{

    private $TagRepository;
    public function __construct()
    {
        $this->TagRepository = new TagRepository(new Tag());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all tag data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = ['name'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->TagRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get tag by Id
    public function show($id)
    {
        $relations = [];

       //Processing
       $response = $this->TagRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add tag
    public function store(Request $request)
    {
        //validations 
        $tag = $request->validate([
            'name' => 'required|string'
        ]);

        //Processing
        $response = $this->TagRepository->create($tag);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update tag
    public function update(Request $request, $id)
    {
        //validations 
        $tag = $request->validate([
            'name' => 'string',
        ]);

        //Processing
        $response = $this->TagRepository->update($id, $tag);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete tag
    public function destroy($id)
    {
        $tag = Tag::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->TagRepository->delete($tag);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
