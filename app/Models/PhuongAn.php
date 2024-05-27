<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PhuongAn extends Model
{
    use HasFactory;

    protected $table = 'phuong_an';

    public $timestamps = false;

    protected $fillable = [
        'cau_hoi_id',
        'noi_dung',
        'la_phuong_an_dung'
    ];

    public function cau_hoi()
    {
        return $this->belongsTo(CauHoi::class);
    }
}
