<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeThi extends Model
{
    use HasFactory;

    protected $table = 'de_thi';

    public $timestamps = false;

    protected $fillable = [
        'khoa_hoc_id', 'ten_de_thi', 'slug'
    ];

    public function khoahoc()
    {
        return $this->belongsTo(KhoaHoc::class);
    }

    public function cau_hois()
    {
        return $this->hasMany(CauHoi::class);
    }
}
