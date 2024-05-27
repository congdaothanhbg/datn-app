<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BaiGiang extends Model
{
    use HasFactory;

    protected $table = 'bai_giang';

    public $timestamps = false;

    protected $fillable = [
        'khoa_hoc_id', 'thu_tu', 'ten_bai_giang', 'slug', 'noi_dung', 'hinh_anh', 'video', 'trang_thai'
    ];

    public function khoa_hoc()
    {
        return $this->belongsTo(KhoaHoc::class, 'khoa_hoc_id');
    }
}
