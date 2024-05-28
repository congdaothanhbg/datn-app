<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ThongBao extends Model
{
    protected $table = 'thong_bao';

    protected $fillable = ['data', 'type', 'notifiable', 'read_at'];
}
