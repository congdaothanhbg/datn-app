<?php

namespace App\Http\Controllers;

use App\Models\CauHoi;
use App\Models\KhoaHoc;
use App\Models\PhuongAn;
use Illuminate\Http\Request;

class PhuongAnController extends Controller
{
    public function index(KhoaHoc $khoaHoc, CauHoi $cauHoi)
    {
        $cauHoiDuocChon= $cauHoi->where('id', $cauHoi->id)->firstOrFail();
        $dsPhuongAn = $cauHoiDuocChon->phuong_ans;

        return view('backend.khoa-hoc.cau-hoi.phuong-an.index')
            ->with('khoaHoc', $khoaHoc)
            ->with('cauHoi', $cauHoiDuocChon)
            ->with('dsPhuongAn', $dsPhuongAn);
    }

    public function create(KhoaHoc $khoaHoc, CauHoi $cauHoi)
    {
        return view('backend.khoa-hoc.cau-hoi.phuong-an.create')
            ->with('khoaHoc', $khoaHoc)
            ->with('cauHoi', $cauHoi);
    }

    public function store(Request $request, KhoaHoc $khoaHoc, CauHoi $cauHoi)
    {
        $validated = $request->validate([
            'noi_dung' => 'required|string',
            'la_phuong_an_dung' => 'boolean'
        ]);

        $phuongAn = new PhuongAn($validated);
        $phuongAn->cau_hoi_id = $cauHoi->id;
        $phuongAn->save();

        return redirect(route('khoa-hoc.cau-hoi.phuong-an.index', [$khoaHoc, $cauHoi]))
            ->with('success', 'Đáp án đã được tạo thành công.');
    }

    public function edit(KhoaHoc $khoaHoc, CauHoi $cauHoi, PhuongAn $phuongAn)
    {
        return view('backend.khoa-hoc.cau-hoi.phuong-an.edit')
            ->with('khoaHoc', $khoaHoc)
            ->with('cauHoi', $cauHoi)
            ->with('phuongAn', $phuongAn);
    }

    public function update(Request $request, KhoaHoc $khoaHoc, CauHoi $cauHoi, PhuongAn $phuongAn)
    {
        $validated = $request->validate([
            'noi_dung' => 'required|string',
            'la_phuong_an_dung' => 'boolean'
        ]);
        $phuongAn->update($validated);
        return redirect(route('khoa-hoc.cau-hoi.phuong-an.index', [$khoaHoc, $cauHoi]))
            ->with('success', 'Đáp án đã được cập nhật thành công.');
    }

    public function destroy(KhoaHoc $khoaHoc, CauHoi $cauHoi, PhuongAn $phuongAn)
    {
        $phuongAn->delete();

        return redirect(route('khoa-hoc.cau-hoi.phuong-an.index', [$khoaHoc, $cauHoi]))
            ->with('success', 'Đáp án đã được xóa thành công.');
    }
}
