<?php

namespace App\Http\Controllers;

use App\Models\Rules;
use App\Models\User;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\RulesRepository;
use App\Repository\UserRepository;
use Maatwebsite\Excel\Facades\Excel;

class RulesController extends Controller
{

    private $RulesRepository;
    private $UserRepository;
    public function __construct()
    {
        $this->UserRepository = new UserRepository(new User());
        $this->RulesRepository = new RulesRepository(new Rules());
        $this->middleware('Rules:admin', ['only' => ['index', 'store', 'update', 'show', 'destroy']]);

    }

    //all Ruless data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

       //parameters
       $relations = '';
       $filter = ['name'];
       $take = $request->take;
       $skip = ($request->skip == null)? 0:$request->skip * $take;
       
      //Processing
      $response = $this->RulesRepository->getLisData($skip, $take, $relations, $filter);

       //Response
       return Utilities::wrap($response, 200);
    }
     
    //get Rules by Id
    public function show($id)
    {
       //Processing
       $response = $this->RulesRepository->getModelById($id);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add Rules
    public function store(Request $request)
    {
        //validations 
        $rules = $request->validate([
            'name' => 'required|string',
        ]);

        $response = $this->RulesRepository->create($rules);

        //Response
        return Utilities::wrap($response, 200);
    }
     
     //update Rules
     public function update(Request $request, $id)
     {
        //validations 
        $rules = $request->validate([
            'name' => 'string',
        ]);
        $response = $this->RulesRepository->update($id, $rules);
        
        //Response
        return Utilities::wrap($response, 200);
     }

    //delete Rules
    public function destroy($id)
    {
        //Find Rules
        $rulesModel = Rules::where('id', $id)->where('is_deleted', 0)->firstOrFail();

        //Processing
        $response = $this->RulesRepository->delete($rulesModel);

        //Response
        return Utilities::wrap($response, 200);
    } 
         
}
