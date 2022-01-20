<?php
namespace App\Repository;

use id;
use JWTAuth;
use App\Models\Comment;
use App\Repository\BRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;
use Spatie\QueryBuilder\QueryBuilder;

class CourseRepository extends BRepository {
        
    //Base repo to get item by id
    public function getByIdCourse($id, $relations){
        $model = $this->table->where('is_deleted', 0)->where('id', $id)->with($relations)->get();
        return  $model;
    }

    //Base repo to get item by id
    public function getModelByIdCourse($id){
        $model = $this->table->where('id', $id)->where('is_deleted', 0)->get($id);
        return  $model;
    }

    public function showBySus($skip, $take, $relations, $filter){
        $result = QueryBuilder::for($this->table)
                                ->allowedFilters($filter)
                                ->allowedSorts(['id']);
                                if($relations != ''){
                                    $result = $result->with($relations);
                                }
        $result = $result->where('is_deleted', 0)
                        ->where('is_sustainabilty',1)
                        ->take($take)
                        ->skip($skip)
                        ->orderBy('created_at', 'desc');
        
        $resp = [
            'totalCount' => $result->get()->count(),
            'items' => $result->get()
        ];
        return $resp;
    
    }
}