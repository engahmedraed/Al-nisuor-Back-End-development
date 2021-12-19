<?php

namespace App\Http\Controllers;

use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Models\SinceDepartment;
use App\Models\TableDepartment;
use App\Repository\SinceDepartmentRepository;
use App\Repository\TableDepartmentRepository;

class TableDepartmentController extends Controller
{

    private $SinceDepartmentRepository;
    private $TableDepartmentRepository;
    public function __construct()
    {
        $this->SinceDepartmentRepository = new SinceDepartmentRepository(new SinceDepartment());
        $this->TableDepartmentRepository = new TableDepartmentRepository(new TableDepartment());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all table department data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['depatrment'];
        $filter = ['lesson_name','time','day'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->TableDepartmentRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get table department by Id
    public function show($id)
    {
        $relations = ['depatrment'];

       //Processing
       $response = $this->TableDepartmentRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }
     
    //get table  by department Id
    public function showBydepartmentId($id)
    {
        $relations = ['tables'];

       //Processing
       $response = $this->SinceDepartmentRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }
    //add TableDepartment
    public function store(Request $request)
    {
        //validations 
        $TableDepartment = $request->validate([
            'lesson_name' => 'required|string',
            'time' => 'required|string',
            'day' => 'required|string',
            'department_id' => 'required|integer|exists:since_departments,id',
        ]);

        //Processing
        $response = $this->TableDepartmentRepository->create($TableDepartment);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update table department
    public function update(Request $request, $id)
    {
        //validations 
        $TableDepartment = $request->validate([
            'lesson_name' => 'string',
            'time' => 'string',
            'day' => 'string',
            'department_id' => 'integer|exists:since_departments,id',
        ]);

        //Processing
        $response = $this->TableDepartmentRepository->update($id, $TableDepartment);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete table department
    public function destroy($id)
    {
        $TableDepartment = TableDepartment::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->TableDepartmentRepository->delete($TableDepartment);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
