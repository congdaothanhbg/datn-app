<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KhoaHoc extends Model
{
    use HasFactory;

    protected $table = 'khoa_hoc';

    public $timestamps = false;

    protected $fillable = [
        'ten_khoa_hoc',
        'slug',
        'mo_ta',
    ];

    public function bai_giangs()
    {
        return $this->hasMany(BaiGiang::class);
    }

    public function de_this()
    {
        return $this->hasMany(DeThi::class);
    }

    public function cau_hois()
    {
        return $this->hasMany(CauHoi::class);
    }
}
