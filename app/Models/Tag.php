<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class Tag extends Model
{
    
    protected $guarded =[];
    protected $hidden = [
        'is_deleted', 'pivot'
    ];

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d h:i:s');
    } 
       
    //Relations
    //news
	public function news()
	{
		return $this->belongsToMany(News::class,'tags_news','tag_id', 'news_id');
    }
}
