<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhMuc;
use Illuminate\Support\Str;

class DanhMucController extends Controller
{
    public function index()
    {
        $dsDanhMuc = DanhMuc::orderBy('id', 'DESC')->paginate(10);

        return view('backend.danh-muc.index')
            ->with('dsDanhMuc', $dsDanhMuc);
    }

    public function create()
    {
        return view('backend.danh-muc.create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'ten_danh_muc' => 'required|string',
            'trang_thai' => 'required|in:0,1',
        ]);

        $slug = Str::slug($validated['ten_danh_muc']);
        $count = DanhMuc::where('slug', $slug)->count();

        if ($count > 0) {
            $date = date('dmY');
            $time = date('His');
            $random = rand(0, 999);
            $slug = $slug . '-' . $date . '-' . $time . '-' . $random;
        }

        $validated['slug'] = $slug;
        $ketQua = DanhMuc::create($validated);

        if ($ketQua) {
            request()->session()->flash('success', 'Danh mục bài viết mới đã được tạo thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }

        return redirect(route('danh-muc-bai-viet.index'));
    }

    public function edit($id)
    {
        $danhMuc = DanhMuc::findOrFail($id);
        return view('backend.danh-muc.edit')->with('danhMuc', $danhMuc);
    }

    public function update(Request $request, $id)
    {
        $danhMuc = DanhMuc::findOrFail($id);

        $this->validate($request, [
            'tieu_de' => 'required|string',
            'trang_thai' => 'required|boolean'
        ]);

        $slug = Str::slug($request->tieu_de);
        $count = DanhMuc::where('slug', $slug)->count();

        if ($count > 1) {
            $date = date('dmY');
            $time = date('His');
            $random = rand(0, 999);
            $slug = $slug . '-' . $date . '-' . $time . '-' . $random;
        }

        $data['slug'] = $slug;
        $data = $request->all();
        $result = $danhMuc->fill($data)->save();

        if ($result) {
            request()->session()->flash('success', 'Danh mục bài viết đã được chỉnh sửa thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }

        return redirect(route('danh-muc-bai-viet.index'));
    }

    public function destroy($id)
    {
        $danhMuc = DanhMuc::findOrFail($id);
        $result = $danhMuc->delete();

        if ($result) {
            request()->session()->flash('success', 'Danh mục bài viết đã được xóa bỏ thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }

        return redirect(route('danh-muc-bai-viet.index'));
    }
}
