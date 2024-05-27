<?php

namespace App\Http\Controllers;

use App\Models\KhoaHoc;
use App\Models\BaiGiang;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BaiGiangController extends Controller
{
    public function index(KhoaHoc $khoaHoc)
    {
        $dsBaiGiang = $khoaHoc->bai_giangs;
        return view('backend.khoa-hoc.bai-giang.index')
            ->with('khoaHoc', $khoaHoc)
            ->with('dsBaiGiang', $dsBaiGiang);
    }

    public function create(KhoaHoc $khoaHoc)
    {
        return view('backend.khoa-hoc.bai-giang.create', compact('khoaHoc'));
    }

    public function store(Request $request, KhoaHoc $khoaHoc)
    {
        $validated = $request->validate([
            'thu_tu' => 'required|numeric|min:1',
            'ten_bai_giang' => 'required|string',
            'noi_dung' => 'required|string',
            'hinh_anh' => 'string|nullable',
            'video' => 'string|nullable',
            'trang_thai' => 'boolean'
        ]);

        $slug = Str::slug($validated['ten_bai_giang']);
        $count = BaiGiang::where('slug', $slug)->count();

        if ($count > 0) {
            $date = date('dmY');
            $time = date('His');
            $random = rand(0, 999);
            $slug = $slug . '-' . $date . '-' . $time . '-' . $random;
        }

        $validated['slug'] = $slug;
        $ketQua = new BaiGiang($validated);
        $ketQua->khoa_hoc_id = $khoaHoc->id;
        $ketQua->save();

        if ($ketQua) {
            request()->session()->flash('success', 'Bài giảng mới đã được tạo thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
        }

        return redirect(route('khoa-hoc.bai-giang.index', $khoaHoc));
    }


    public function edit($course_id, $lesson_id)
    {
        $course = KhoaHoc::findOrFail($course_id);
        $lesson = BaiGiang::findOrFail($lesson_id);
        return view('backend.admin.courses.lessons.edit', compact('course', 'lesson'));
    }

    public function update(Request $request, $course_id, $lesson_id)
    {
        $request->validate([
            'lesson_number' => 'required|numeric',
            'lesson_title' => 'required',
            'lesson_content' => 'required',
        ]);

        $course = KhoaHoc::findOrFail($course_id);
        $lesson = BaiGiang::findOrFail($lesson_id);
        $lesson->update($request->all());

        return redirect()->route('backend.admin.courses.index')
            ->with('success', 'BaiGiang updated successfully');
    }

    public function destroy($course_id, $lesson_id)
    {
        $course = KhoaHoc::findOrFail($course_id);
        $lesson = BaiGiang::findOrFail($lesson_id);
        $lesson->delete();

        return redirect()->route('backend.admin.courses.lessons.index')
            ->with('success', 'BaiGiang deleted successfully');
    }
}
