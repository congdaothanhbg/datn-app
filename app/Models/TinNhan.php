<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TinNhan extends Model
{
    public $fillable = ['name', 'subject', 'email', 'photo', 'phone', 'message', 'read_at'];
}
