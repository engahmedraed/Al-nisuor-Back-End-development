<?php

namespace App\Http\Controllers;

use App\Models\JobApplication;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\JobApplicationRepository;

class JobApplicationController extends Controller
{

    private $JobApplicationRepository;
    public function __construct()
    {
        $this->JobApplicationRepository = new JobApplicationRepository(new JobApplication());
        $this->middleware('Rules:admin', ['only' => ['update', 'destroy']]);
    }

    //all JobApplication data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = [];
        $filter = ['name','phone', 'graguation', 'general_specialty', 'accurate_specialty'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->JobApplicationRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get JobApplication by Id
    public function show($id)
    {
        $relations = [];

       //Processing
       $response = $this->JobApplicationRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add JobApplication
    public function store(Request $request)
    {
        //validations 
        $jobApplication = $request->validate([
            'name' => 'required|string',
            'phone' => 'required|integer',
            'graguation' => 'required|string',
            'general_specialty' => 'required|string',
            'accurate_specialty' => 'required|string',
            'file_cv' => 'file'
        ]);
        //Processing
        if($request->hasFile('file_cv')){//check file
            $fileName = $request->file('file_cv');
            $new_nameCv = $fileName->store('applicationCv');
            $jobApplication['file_cv'] = $new_nameCv;
        }
        $response = $this->JobApplicationRepository->create($jobApplication);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update JobApplication
    public function update(Request $request, $id)
    {
        //validations 
        $jobApplication = $request->validate([
            'name' => 'string',
            'phone' => 'integer',
            'graguation' => 'string',
            'general_specialty' => 'string',
            'accurate_specialty' => 'string',
            'file_cv' => 'file'
        ]);
        
        //Processing
        if($request->hasFile('file_cv')){//check file
            $fileName = $request->file('file_cv');
            $new_nameCv = $fileName->store('applicationCv');
            $jobApplication['file_cv'] = $new_nameCv;
        }
        $response = $this->JobApplicationRepository->update($id, $jobApplication);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete JobApplication
    public function destroy($id)
    {
        $jobApplication = JobApplication::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->JobApplicationRepository->delete($jobApplication);

        //Response
        return Utilities::wrap($response, 200);
        
    } 
}