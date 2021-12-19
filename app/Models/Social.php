<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class Social extends Model
{
    protected $guarded =[];
    protected $hidden = [
        'is_deleted'
    ];

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d h:i:s');
    }
       
    //Relations
    //news
	public function news()
	{
		return $this->belongsTo(News::class, 'news_id')->where('is_deleted', 0);
    }
}
