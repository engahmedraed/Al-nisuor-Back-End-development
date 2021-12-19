<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class Research extends Model
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
    // teacher
	public function teacher()
	{
		return $this->belongsTo(Teacher::class, 'teacher_id')->where('is_deleted', 0);
    }
    
}
