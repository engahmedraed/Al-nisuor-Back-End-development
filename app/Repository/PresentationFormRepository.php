<?php
namespace App\Repository;

use id;
use JWTAuth;
use App\Models\PresentationForm;
use App\Repository\BRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;


class PresentationFormRepository extends BRepository {
                                           
    //Base repo to get item by id
    public function getByIdPresentationForm($id, $relations){
        $model = $this->table->where('is_deleted', 0)->where('id', $id)->with($relations)->get();
        return  $model;
    }

    //Base repo to get item by id
    public function getModelByIdPresentationForm($id){
        $model = $this->table->where('id', $id)->where('is_deleted', 0)->get($id);
        return  $model;
    } 
}