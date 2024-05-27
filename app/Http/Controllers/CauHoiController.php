<?php

namespace App\Http\Controllers;

use App\Models\KhoaHoc;
use App\Models\CauHoi;
use Illuminate\Http\Request;

class CauHoiController extends Controller
{
    public function index(KhoaHoc $khoaHoc)
    {
        $dsCauHoi = $khoaHoc->cau_hois;
        return view('backend.khoa-hoc.cau-hoi.index')
            ->with('khoaHoc', $khoaHoc)
            ->with('dsCauHoi', $dsCauHoi);
    }

    public function create(KhoaHoc $khoaHoc)
    {
        return view('backend.khoa-hoc.cau-hoi.create')
            ->with('khoaHoc', $khoaHoc);
    }

    public function store(Request $request, KhoaHoc $khoaHoc)
    {
        $validated = $request->validate([
            'thu_tu' => 'required|numeric|min:1',
            'noi_dung' => 'required|string',
            'hinh_anh' => 'nullable|string',
            'la_cau_diem_liet' => 'boolean'
        ]);

        $cauHoi = new CauHoi($validated);
        $cauHoi->khoa_hoc_id = $khoaHoc->id;
        $cauHoi->save();

        return redirect(route('khoa-hoc.cau-hoi.index', $khoaHoc))
            ->with('success', 'Câu hỏi đã được thêm thành công.');
    }

    public function edit(KhoaHoc $khoaHoc, CauHoi $cauHoi)
    {
        return view('backend.khoa-hoc.cau-hoi.edit')
            ->with('khoaHoc', $khoaHoc)
            ->with('cauHoi', $cauHoi);
    }

    public function update(Request $request, KhoaHoc $khoaHoc, CauHoi $cauHoi)
    {
        $validated = $request->validate([
            'thu_tu' => 'required|numeric|min:1',
            'noi_dung' => 'required|string',
            'hinh_anh' => 'nullable|string',
            'la_cau_diem_liet' => 'boolean'
        ]);

        $cauHoi->update($validated);

        return redirect(route('khoa-hoc.cau-hoi.index', $khoaHoc))
            ->with('success', 'Câu hỏi đã được cập nhật thành công.');
    }

    public function destroy(KhoaHoc $khoaHoc, CauHoi $cauHoi)
    {
        $cauHoi->delete();

        return redirect(route('khoa-hoc.cau-hoi.index', $khoaHoc))
            ->with('success', 'Xoá câu hỏi thành công.');
    }
}
