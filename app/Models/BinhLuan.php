<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BinhLuan extends Model
{
    protected $table = 'binh_luan';

    protected $fillable = [
        'bai_viet_id', 'user_id', 'noi_dung', 'binh_luan_id', 'noi_dung_phan_hoi', 'trang_thai'
    ];

    public function user_info()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public static function getAllComments()
    {
        return BinhLuan::with('user_info')->paginate(10);
    }

    public static function getAllUserComments()
    {
        return BinhLuan::where('user_id', auth()->user()->id)->with('user_info')->paginate(10);
    }

    public function post()
    {
        return $this->belongsTo(BaiViet::class, 'bai_viet_id', 'id');
    }

    public function replies()
    {
        return $this->hasMany(BinhLuan::class, 'binh_luan_id')->where('trang_thai', 1);
    }
}
