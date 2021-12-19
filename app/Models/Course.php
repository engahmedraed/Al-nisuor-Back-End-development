<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class Course extends Model
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
    //replaies
	// public function replaies()
	// {
	// 	return $this->hasMany(Comment::class, 'comment_id')->where('is_deleted', 0);
    // }

    // //news
	// public function news()
	// {
	// 	return $this->belongsTo(News::class, 'news_id')->where('is_deleted', 0);
    // }
    
    // //user
	// public function user()
	// {
	// 	return $this->belongsTo(User::class, 'user_id')->where('is_deleted', 0);
    // }
}
