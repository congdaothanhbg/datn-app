<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\BaiViet;
use App\Models\DanhMuc;
use App\Models\User;

class BaiVietController extends Controller
{
    public function index()
    {
        $dsBaiViet = BaiViet::getAllPost();
        return view('backend.bai-viet.index')
            ->with('dsBaiViet', $dsBaiViet);
    }

    public function create()
    {
        $dsDanhMuc = DanhMuc::get();
        $users = User::get();
        return view('backend.bai-viet.create')
            ->with('users', $users)
            ->with('dsDanhMuc', $dsDanhMuc);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'ten_bai_viet' => 'string|required',
            'noi_dung' => 'required|string',
            'hinh_anh' => 'string|nullable',
            'danh_muc_id' => 'nullable',
            'tac_gia_id' => 'nullable',
            'trang_thai' => 'required|in:0,1'
        ]);

        $data = $request->all();

        $slug = Str::slug($request->ten_bai_viet);
        $count = BaiViet::where('slug', $slug)->count();
        if ($count > 0) {
            $slug = $slug . '-' . date('ymdis') . '-' . rand(0, 999);
        }
        $data['slug'] = $slug;
        $ketQua = BaiViet::create($data);
        if ($ketQua) {
            request()->session()->flash('success', 'Bài viết mới đã được tạo thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }
        return redirect(route('bai-viet.index'));
    }

    public function edit(BaiViet $baiViet)
    {
        $dsDanhMuc = DanhMuc::all();
        $users = User::get();
        return view('backend.bai-viet.edit')
            ->with('dsDanhMuc', $dsDanhMuc)
            ->with('users', $users)
            ->with('baiViet', $baiViet);
    }

    public function update(Request $request, $id)
    {
        $baiViet = BaiViet::findOrFail($id);
        if (!$baiViet) {
            abort(404);
        }
        $this->validate($request, [
            'ten_bai_viet' => 'required|string',
            'noi_dung' => 'required|string',
            'hinh_anh' => 'string|nullable',
            'tac_gia_id' => 'nullable',
            'danh_muc_id' => 'nullable',
            'video' => 'nullable',
            'trang_thai' => 'required|in:0,1'
        ]);
        $slug = Str::slug($request->ten_bai_viet);
        $data = $request->all();
        $count = BaiViet::where('slug', $slug)->count();
        if ($count > 0) {
            $slug = $slug . '-' . date('ymdis') . '-' . rand(0, 999);
        }
        $data['slug'] = $slug;
        $ketQua = $baiViet->fill($data)->save();
        if ($ketQua) {
            request()->session()->flash('success', 'Bài viết đã được cập nhật thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }
        return redirect()->route('bai-viet.index');
    }

    public function destroy($id)
    {
        $baiViet = BaiViet::findOrFail($id);
        if (!$baiViet) {
            abort(404);
        }
        $ketQua = $baiViet->delete();

        if ($ketQua) {
            request()->session()->flash('success', 'Bài viết đã được xoá bỏ thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }
        return redirect()->route('bai-viet.index');
    }
}
