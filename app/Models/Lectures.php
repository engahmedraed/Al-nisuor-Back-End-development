<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class Lectures extends Model
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
    //stages
	public function stage()
	{
		return $this->belongsTo(Stages::class, 'stage_id')->with('department')->where('is_deleted', 0);
    }
    //files
	public function files()
	{
		return $this->hasMany(LectureFiles::class, 'lecture_id')->where('is_deleted', 0);
    }
}
