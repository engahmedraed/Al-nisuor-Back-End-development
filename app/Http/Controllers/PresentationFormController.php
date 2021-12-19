<?php

namespace App\Http\Controllers;

use App\Models\PresentationForm;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\PresentationFormRepository;

class PresentationFormController extends Controller
{

    private $PresentationFormRepository;
    public function __construct()
    {
        $this->PresentationFormRepository = new PresentationFormRepository(new PresentationForm());
        $this->middleware('Rules:admin', ['only' => ['update', 'destroy']]);
    }

    //all PresentationForm data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['job'];
        $filter = ['name','phone','email'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->PresentationFormRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get PresentationForm by Id
    public function show($id)
    {
        $relations = ['job'];

       //Processing
       $response = $this->PresentationFormRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add PresentationForm
    public function store(Request $request)
    {
        //validations 
        $PresentationForm = $request->validate([
            'name' => 'required|string',
            'phone' => 'required|string',
            'email' => 'required|string',
            'job_id' => 'integer|exists:jobs,id',
            'file_cv' => 'required|file'
        ]);
        //Processing
        if($request->hasFile('file_cv')){//check file
            $fileName = $request->file('file_cv');
            $new_nameCv = $fileName->store('userCv');
            $PresentationForm['file_cv'] = $new_nameCv;
        }
        $response = $this->PresentationFormRepository->create($PresentationForm);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update PresentationForm
    public function update(Request $request, $id)
    {
        //validations 
        $PresentationForm = $request->validate([
            'name' => 'string',
            'phone' => 'string',
            'email' => 'string',
            'job_id' => 'integer|exists:jobs,id',
            'file_cv' => 'file'
        ]);
        
        //Processing
        if($request->hasFile('file_cv')){//check file
            $fileName = $request->file('file_cv');
            $new_nameCv = $fileName->store('userCv');
            $PresentationForm['file_cv'] = $new_nameCv;
        }
        $response = $this->PresentationFormRepository->update($id, $PresentationForm);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete PresentationForm
    public function destroy($id)
    {
        $PresentationForm = PresentationForm::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->PresentationFormRepository->delete($PresentationForm);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
