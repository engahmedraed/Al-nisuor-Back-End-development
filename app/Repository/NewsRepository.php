<?php
namespace App\Repository;

use id;
use JWTAuth;
use App\Models\Jobs;
use App\Models\TagsNews;
use App\Repository\BRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class NewsRepository extends BRepository {
      
    public function getListVeiw($skip, $take, $relations, $filter){
        $result = QueryBuilder::for($this->table)
                                ->allowedFilters($filter);
                                if($relations != ''){
                                    $result = $result->with($relations);
                                }
        $result = $result->where('is_deleted', 0)
                        ->take($take)
                        ->withCount('comment')
                        ->skip($skip)
                        ->orderBy('views', 'desc');
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

    public function getListData($skip, $take, $relations, $filter){
        $result = QueryBuilder::for($this->table)
                                ->allowedFilters($filter)
                                ->allowedSorts(['id']);
                                if($relations != ''){
                                    $result = $result->with($relations);
                                }
        $result = $result->where('is_deleted', 0)
                        ->take($take)
                        ->withCount('comment')
                        ->skip($skip)
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

    public function getSlider($skip, $take, $relations, $filter){
        $result = QueryBuilder::for($this->table)
                                ->allowedFilters($filter)
                                ->allowedSorts(['id']);
                                if($relations != ''){
                                    $result = $result->with($relations);
                                }
        $result = $result->where('is_deleted', 0)
                        ->where('is_slider', 1)
                        ->take($take)
                        ->withCount('comment')
                        ->skip($skip)
                        ->orderBy('created_at', 'desc');
        
        $resp = [
            'totalCount' => $result->get()->count(),
            'items' => $result->get()
        ];
        return $resp;
    
    }
        
    //Base repo to get item by id
    public function getByIdNews($id, $relations){
        $model = $this->table->where('is_deleted', 0)->where('id', $id)->with($relations)->get();
        return  $model;
    }

    //Base repo to get item by id
    public function getModelByIdNews($id){
        $model = $this->table->where('id', $id)->where('is_deleted', 0)->get($id);
        return  $model;
    } 
}