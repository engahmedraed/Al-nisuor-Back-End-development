<?php
namespace App\Repository;

use Spatie\QueryBuilder\QueryBuilder;
use Illuminate\Database\Eloquent\Model;

//                        <----------- Welcome To BaseRepository Page ----------->
abstract class BRepository {

    public $table;
    public function __construct(Model $model){
        $this->table = $model;
    }
    
    public function getLisData($skip, $take, $relations, $filter){
    $result = QueryBuilder::for($this->table)
                            ->allowedFilters($filter)
                            ->allowedSorts(['id']);
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

    //Base repo to get item by id
    public function getById($id, $relations){
        $model = $this->table->where('is_deleted', 0)->with($relations)->findOrFail($id);
        return  $model;
    }

    //Base repo to get item by id
    public function getModelById($id){
        $model = $this->table->where('is_deleted', 0)->findOrFail($id);
        return  $model;
    }

    //Base repo to create item
    public function create($data){
        
        $model = $this->table->create($data);
        return  $model;
    }

    //Base repo to update item 
    public function update($id, $values){
        $item = $this->table->where('is_deleted', 0)->where('id',$id)->firstOrFail();
        $item->update($values);
        return  $item;
    }

    //Base repo to delete item
    public function softDelete($model)
    {
        $model->update(['is_deleted' => 1]);
        return  $model;
    }
    //Base repo to delete item
    public function delete($model)
    {
        $model->delete();
        return  $model;
    }

}
