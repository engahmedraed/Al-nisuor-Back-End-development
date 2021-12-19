<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class Teacher extends Model
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
    //depatrment
	public function depatrment()
	{
		return $this->belongsTo(SinceDepartment::class, 'department_id')->where('is_deleted', 0);
    }
     // research
	public function research()
	{
		return $this->hasMany(Research::class, 'teacher_id')->where('is_deleted', 0);
    }
}
