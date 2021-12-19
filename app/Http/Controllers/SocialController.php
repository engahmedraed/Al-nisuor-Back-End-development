<?php

namespace App\Http\Controllers;

use App\Models\Social;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\SocialRepository;

class SocialController extends Controller
{

    private $SocialRepository;
    public function __construct()
    {
        $this->SocialRepository = new SocialRepository(new Social());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all social data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['news'];
        $filter = ['facebook_url','instagram_url','twitter_url','linkedin_url'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->SocialRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get social by Id
    public function show($id)
    {
        $relations = ['news'];

       //Processing
       $Social = Social::where('id', $id)->firstOrFail();
       $response = $this->SocialRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add social
    public function store(Request $request)
    {
        //validations 
        $Social = $request->validate([
            'facebook_url' => 'string',
            'instagram_url' => 'string',
            'twitter_url' => 'string',
            'linkedin_url' => 'string',
            'news_id' => 'required|integer|exists:news,id'
        ]);
        //Processing
        $response = $this->SocialRepository->create($Social);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update social
    public function update(Request $request, $id)
    {
        //validations 
        $social = $request->validate([
            'facebook_url' => 'string',
            'instagram_url' => 'string',
            'twitter_url' => 'string',
            'linkedin_url' => 'string',
            'news_id' => 'required|integer|exists:news,id'
        ]);
        
        //Processing
        $response = $this->SocialRepository->update($id, $social);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete social
    public function destroy($id)
    {
        $social = Social::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->SocialRepository->delete($social);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
