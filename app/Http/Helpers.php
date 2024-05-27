<?php

use App\Models\DanhMuc;

// use Auth;
class Helper
{
    public static function postCategoryList($option = "all")
    {
        if ($option = 'all') {
            return DanhMuc::orderBy('id', 'DESC')->get();
        }
        return DanhMuc::has('posts')->orderBy('id', 'DESC')->get();
    }
}
