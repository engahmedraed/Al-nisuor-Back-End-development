<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class SectionInstallments extends Model
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
	public function deparment()
	{
		return $this->belongsTo(SinceDepartment::class, 'department_id')->where('is_deleted', 0);
    }
}
