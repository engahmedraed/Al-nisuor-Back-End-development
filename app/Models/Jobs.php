<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class Jobs extends Model
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
    //presentation forms count
	public function presentationFormsCount()
	{
		return $this->hasMany(PresentationForm::class, 'job_id')->where('is_deleted', 0);
    }
  
     //presentation forms
	public function presentationForms()
	{
		return $this->hasMany(PresentationForm::class, 'job_id')->where('is_deleted', 0);
    }
    
    //user
	public function user()
	{
		return $this->belongsTo(User::class, 'user_id')->where('is_deleted', 0)->selectRaw('id,full_name,email,phone,image');
    }
}
