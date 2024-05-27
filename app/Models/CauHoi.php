<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CauHoi extends Model
{
    use HasFactory;

    protected $table = 'cau_hoi';

    public $timestamps = false;

    protected $fillable = [
        'khoa_hoc_id', 'thu_tu',  'noi_dung',   'hinh_anh', 'la_cau_diem_liet'
    ];

    public function khoa_hoc()
    {
        return $this->belongsTo(KhoaHoc::class);
    }

    public function phuong_ans()
    {
        return $this->hasMany(PhuongAn::class);
    }

    public function de_thi()
    {
        return $this->belongsTo(DeThi::class);
    }
}
