<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class PresentationForm extends Model
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
    //Jobs
	public function job()
	{
		return $this->belongsTo(Jobs::class, 'job_id');
    }
}
