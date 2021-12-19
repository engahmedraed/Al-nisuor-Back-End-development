<?php

namespace App\Http\Controllers;

use App\Models\Contacts;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\ContactsRepository;

class ContactsController extends Controller
{

    private $ContactsRepository;
    public function __construct()
    {
        $this->ContactsRepository = new ContactsRepository(new Contacts());
        $this->middleware('Rules:admin', ['only' => ['update', 'destroy']]);
    }

    //all Contacts data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = ['full_name','email', 'subject', 'message'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->ContactsRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get Contacts by Id
    public function show($id)
    {
        $relations = [];

       //Processing
       $response = $this->ContactsRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add Contacts
    public function store(Request $request)
    {
        //validations 
        $contacts = $request->validate([
            'full_name' => 'required|string',
            'email' => 'required|string|email',
            'subject' => 'required|string',
            'message' => 'required|string'
        ]);

        //Processing
        $response = $this->ContactsRepository->create($contacts);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update Contacts
    public function update(Request $request, $id)
    {
        //validations 
        $Contacts = $request->validate([
            'full_name' => 'string',
            'email' => 'string|email',
            'subject' => 'string',
            'message' => 'string'
        ]);
        
        //Processing
        $response = $this->ContactsRepository->update($id, $Contacts);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete Contacts
    public function destroy($id)
    {
        $contacts = Contacts::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->ContactsRepository->delete($contacts);

        //Response
        return Utilities::wrap($response, 200);
        
    } 
}