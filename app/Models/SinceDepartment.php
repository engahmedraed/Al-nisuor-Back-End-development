<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class SinceDepartment extends Model
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
    //about
	public function about()
	{
		return $this->hasOne(About::class, 'department_id')->where('is_deleted', 0);
    }

    //stages
	public function stages()
	{
		return $this->hasMany(Stages::class, 'department_id')->where('is_deleted', 0);
    }

    //stages
	public function news()
	{
		return $this->hasMany(News::class, 'department_id')->where('is_deleted', 0);
    }
    
    //tables
	public function tables()
	{
		return $this->hasMany(TableDepartment::class, 'department_id')->where('is_deleted', 0);
    }
       
    //teachers
	public function teachers()
	{
		return $this->hasMany(Teacher::class, 'department_id')->where('is_deleted', 0);
    }

    //teachers
	public function installment()
	{
		return $this->hasMany(SectionInstallments::class, 'department_id')->where('is_deleted', 0);
    }
}
