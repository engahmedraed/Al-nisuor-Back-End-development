<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class News extends Model
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
    //social
	public function social()
	{
		return $this->hasOne(Social::class, 'news_id')->where('is_deleted', 0);
    }
    
    //Comment
	public function comment()
	{
		return $this->hasMany(Comment::class, 'news_id')->with('user', 'replaies')->where('is_deleted', 0);
    }
       
    //tags
	public function tags()
	{
		return $this->belongsToMany(Tag::class,'tags_news', 'news_id','tag_id');
    }
       
    //User
	public function user()
	{
		return $this->belongsTo(User::class,'user_id')->where('is_deleted', 0)->SelectRaw('id,full_name,email,phone');
    }
       
    //Department
	public function department()
	{
		return $this->belongsTo(SinceDepartment::class,'department_id')->where('is_deleted', 0);
    }
    //images
	public function images()
	{
		return $this->hasMany(Image::class, 'news_id')->where('is_deleted', 0);
    }
}
