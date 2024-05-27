<?php

namespace App\Http\Controllers;

use App\Models\KhoaHoc;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class KhoaHocController extends Controller
{
    public function index()
    {
        $dsKhoaHoc = KhoaHoc::all();
        return view('backend.khoa-hoc.index')
            ->with('dsKhoaHoc', $dsKhoaHoc);
    }

    public function create()
    {
        return view('backend.khoa-hoc.create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'ten_khoa_hoc' => 'required|string',
            'mo_ta' => 'required|string',
        ]);

        $slug = Str::slug($validated['ten_khoa_hoc']);
        $count = KhoaHoc::where('slug', $slug)->count();

        if ($count > 0) {
            $date = date('dmY');
            $time = date('His');
            $random = rand(0, 999);
            $slug = $slug . '-' . $date . '-' . $time . '-' . $random;
        }

        $validated['slug'] = $slug;
        $ketQua = KhoaHoc::create($validated);

        if ($ketQua) {
            request()->session()->flash('success', 'Khoá học mới đã được tạo thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }

        return redirect(route('khoa-hoc.index'));
    }

    public function edit(KhoaHoc $khoaHoc)
    {
        return view('backend.khoa-hoc.edit')
            ->with('khoaHoc', $khoaHoc);
    }

    public function update(Request $request, KhoaHoc $khoaHoc)
    {
        $validated = $request->validate([
            'ten_khoa_hoc' => 'required|string',
            'mo_ta' => 'required|string',
        ]);

        $slug = Str::slug($validated['ten_khoa_hoc']);

        if ($khoaHoc->ten_khoa_hoc !== $validated['ten_khoa_hoc']) {
            $count = KhoaHoc::where('slug', $slug)->count();

            if ($count > 0) {
                $date = date('dmY');
                $time = date('His');
                $random = rand(0, 999);
                $slug = $slug . '-' . $date . '-' . $time . '-' . $random;
            }
        } else {
            $slug = $khoaHoc->slug;
        }

        $validated['slug'] = $slug;
        $ketQua = $khoaHoc->update($validated);

        if ($ketQua) {
            request()->session()->flash('success', 'Khoá học đã được cập nhật thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }

        return redirect(route('khoa-hoc.index'));
    }

    public function destroy(KhoaHoc $khoaHoc)
    {
        $ketQua = $khoaHoc->delete();

        if ($ketQua) {
            request()->session()->flash('success', 'Khoá học đã được xoá bỏ thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }

        return redirect(route('khoa-hoc.index'))
            ->with('success', 'Xoá khoá học thành công.');
    }
}
