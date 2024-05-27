<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BaiViet extends Model
{
    protected $table = 'bai_viet';

    protected $fillable = [
        'ten_bai_viet', 'slug', 'noi_dung', 'hinh_anh', 'danh_muc_id', 'user_id', 'trang_thai'
    ];


    public function cat_info()
    {
        return $this->hasOne(DanhMuc::class, 'id', 'danh_muc_id');
    }

    public function author_info()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public static function getAllPost()
    {
        return BaiViet::with(['cat_info', 'author_info'])->orderBy('id', 'DESC')->paginate(10);
    }

    public static function getPostBySlug($slug)
    {
        return BaiViet::with(['author_info'])->where('slug', $slug)->where('trang_thai', 1)->first();
    }

    public function comments()
    {
        return $this->hasMany(BinhLuan::class)->whereNull('binh_luan_id')->where('trang_thai', 1)->with('user_info')->orderBy('id', 'DESC');
    }
    public function allComments()
    {
        return $this->hasMany(BinhLuan::class)->where('trang_thai', 1);
    }

    public static function countActivePost()
    {
        $data = BaiViet::where('trang_thai', 1)->count();
        if ($data) {
            return $data;
        }
        return 0;
    }
}
