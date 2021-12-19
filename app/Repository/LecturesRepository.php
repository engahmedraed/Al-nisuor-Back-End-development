<?php
namespace App\Repository;

use id;
use JWTAuth;
use App\Models\Lectures;
use App\Repository\BRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class LecturesRepository extends BRepository {
    
    //Base repo to get item by id
    public function getByIdLectures($id, $relations){
        $model = $this->table->where('is_deleted', 0)->where('id', $id)->with($relations)->get();
        return  $model;
    }

    //Base repo to get item by id
    public function getModelByIdLectures($id){
        $model = $this->table->where('id', $id)->where('is_deleted', 0)->get($id);
        return  $model;
    }

    public function getListData($skip, $take, $relations, $filter, $search = null){
        $result = QueryBuilder::for($this->table)
                            ->allowedFilters($filter)

                            ->allowedSorts(['id']);
                            if($relations != ''){
                                $result = $result->with($relations);
                            }
                            if(!is_null($search)){
                                $result = $result->whereHas('stage', function($q) use($search){
                                    $q->where('ar_name', 'like', '%'. $search .'%')
                                    ->orwhere('en_name', 'like', '%'. $search .'%');
                                });
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