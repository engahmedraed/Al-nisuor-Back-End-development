<?php
namespace App\Repository;

use id;
use JWTAuth;
use App\Models\Stages;
use App\Repository\BRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class StagesRepository extends BRepository {
    
    //Base repo to get item by id
    public function getByIdStages($id, $relations){
        $model = $this->table->where('is_deleted', 0)->where('id', $id)->with($relations)->get();
        return  $model;
    }

    //Base repo to get item by id
    public function getModelByIdStages($id){
        $model = $this->table->where('id', $id)->where('is_deleted', 0)->get($id);
        return  $model;
    }  
    public function getListData($skip, $take, $relations, $filter, $search = null){
    $result = QueryBuilder::for($this->table)
                            ->allowedFilters($filter);
                            if(!is_null($search)){
                                $result ->where('ar_name', 'like', '%'. $search .'%')
                                ->orwhere('en_name', 'like', '%'. $search .'%');
                            }
                            $result->allowedSorts(['id']);
                            if($relations != ''){
                                $result = $result->with($relations);
                            }
    $totalCount = $result->get()->count();
    $result = $result->where('is_deleted', 0)
                    ->take($take)
                    ->skip($skip)
                    ->orderBy('created_at', 'desc');
    $resp = [
        'totalCount' => $totalCount,
        'items' => $result->get()
    ];
    return $resp;

    } 
}