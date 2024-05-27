<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DanhMuc extends Model
{
    protected $table = 'danh_muc';

    protected $fillable = [
        'ten_danh_muc', 'slug', 'trang_thai'
    ];

    public function post()
    {
        return $this->hasMany(BaiViet::class, 'danh_muc_id', 'id')->where('trang_thai', 1);
    }

    public static function getBlogByCategory($slug)
    {
        return DanhMuc::with('post')->where('slug', $slug)->first();
    }
}
