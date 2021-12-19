<?php
namespace App\Repository;

use id;
use JWTAuth;
use App\Models\Jobs;
use App\Repository\BRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class JobsRepository extends BRepository {

    public function getListDatas($skip, $take, $relations, $filter){
        $result = QueryBuilder::for($this->table)
                                ->allowedFilters($filter)
                                ->allowedSorts(['id']);
                                if($relations != ''){
                                    $result = $result->with($relations);
                                }
        $result = $result->where('is_deleted', 0)
                        ->take($take)
                        ->skip($skip)
                        ->withCount('presentationForms')
                        ->orderBy('created_at', 'desc');
        $totalCount = QueryBuilder::for($this->table)
                                    ->allowedFilters($filter);
                                    if($relations != ''){
                                        $totalCount = $totalCount->with($relations);
                                    }
        $totalCount =  $totalCount->where('is_deleted', 0);
        $resp = [
            'totalCount' => $totalCount->get()->count(),
            'items' => $result->get()
        ];
        return $resp;
    
    } 
    public function getJobById2($id, $relations){
        $result = QueryBuilder::for($this->table)
                        ->withCount('presentationForms')
                        ->with($relations)
                        ->where('is_deleted', 0)
                        ->where('id' , $id)->get();
        
        
        return $result;
    
    }
                           
    //Base repo to get item by id
    public function getByIdJobs($id, $relations){
        $model = $this->table->where('is_deleted', 0)->where('id', $id)->with($relations)->get();
        return  $model;
    }

    //Base repo to get item by id
    public function getModelByIdJobs($id){
        $model = $this->table->where('id', $id)->where('is_deleted', 0)->get($id);
        return  $model;
    } 
}