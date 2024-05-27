<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ThongBao extends Model
{
    protected $fillable = ['data', 'type', 'notifiable', 'read_at'];
}
