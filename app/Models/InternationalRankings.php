<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DateTimeInterface;

class InternationalRankings extends Model
{
    protected $guarded =[];
    protected $hidden = [
        'is_deleted'
    ];

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d h:i:s');
    }
}
