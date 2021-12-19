<?php
namespace App\Repository;

use id;
use JWTAuth;
use App\Models\Service;
use App\Models\User;
use App\Repository\BRepository;
use Illuminate\Support\Facades\DB;
use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;

class ServicesRepository extends BRepository {
 
    public function getLisServices($skip, $take, $relations, $filter){
        $result = QueryBuilder::for($this->table)
                                ->allowedFilters($filter)
                                ->allowedSorts(['id']);
                                if($relations != ''){
                                    $result = $result->with($relations);
                                }
        $result = $result->where('is_deleted', 0)
                        ->where('status', 0)
                        ->take($take)
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
}

