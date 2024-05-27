<?php

namespace App\Http\Controllers;

use App\Models\KhoaHoc;
use App\Models\DeThi;
use App\Models\CauHoi;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class DeThiController extends Controller
{
    public function index(KhoaHoc $khoaHoc)
    {
        $dsDeThi = $khoaHoc->de_this;

        return view('backend.khoa-hoc.de-thi.index')
            ->with('khoaHoc', $khoaHoc)
            ->with('dsDeThi', $dsDeThi);
    }

    public function create(KhoaHoc $khoaHoc)
    {
        return view('backend.khoa-hoc.de-thi.create')
            ->with('khoaHoc', $khoaHoc);
    }

    public function store(Request $request, KhoaHoc $khoaHoc)
    {
        $validated = $request->validate([
            'ten_de_thi' => 'required|string'
        ]);

        $slug = Str::slug($validated['ten_de_thi']);
        $count = DeThi::where('slug', $slug)->count();

        if ($count > 0) {
            $date = date('dmY');
            $time = date('His');
            $random = rand(0, 999);
            $slug = $slug . '-' . $date . '-' . $time . '-' . $random;
        }

        $validated['slug'] = $slug;
        $deThi = new DeThi($validated);
        $deThi->khoa_hoc_id = $khoaHoc->id;
        $deThi->save();

        return redirect(route('khoa-hoc.de-thi.index', $khoaHoc))
            ->with('success', 'Khoá học mới đã được thêm thành công.');
    }

    public function edit(KhoaHoc $khoaHoc, DeThi $deThi)
    {
        return view('backend.khoa-hoc.de-thi.edit')
            ->with('khoaHoc', $khoaHoc)
            ->with('deThi', $deThi);
    }

    public function update(Request $request, KhoaHoc $khoaHoc, DeThi $deThi)
    {
        $validated = $request->validate([
            'ten_de_thi' => 'required|string'
        ]);

        $slug = Str::slug($validated['ten_de_thi']);
        $count = DeThi::where('slug', $slug)->count();

        if ($count > 0) {
            $date = date('dmY');
            $time = date('His');
            $random = rand(0, 999);
            $slug = $slug . '-' . $date . '-' . $time . '-' . $random;
        }

        $validated['slug'] = $slug;
        $deThi->fill($validated);
        $deThi->khoa_hoc_id = $khoaHoc->id;
        $deThi->save();

        return redirect(route('khoa-hoc.de-thi.index', $khoaHoc))
            ->with('success', 'Khoá học mới đã được thêm thành công.');
    }

    public function destroy(KhoaHoc $khoaHoc, DeThi $deThi)
    {
        if ($deThi) {
            $deThi->delete();

            return redirect(route('khoa-hoc.de-thi.index', $khoaHoc))
                ->with('success', 'Xoá đề thi thử thành công.');
        } else {
            return redirect(route('khoa-hoc.de-thi.index', $khoaHoc))
                ->with('error', 'Không tìm thấy đề thi thử này.');
        }
    }

    public function cauHoi(KhoaHoc $khoaHoc, DeThi $deThi)
    {
        $dsCauHoi = $deThi->cau_hois;

        return view('backend.khoa-hoc.de-thi.cau-hoi.index')
            ->with('khoaHoc', $khoaHoc)
            ->with('deThi', $deThi)
            ->with('dsCauHoi', $dsCauHoi);
    }

    public function themCauHoi(KhoaHoc $khoaHoc, DeThi $deThi)
    {
        return view('backend.khoa-hoc.de-thi.cau-hoi.create')
            ->with('khoaHoc', $khoaHoc)
            ->with('deThi', $deThi);
    }

    public function luuCauHoi(Request $request, KhoaHoc $khoaHoc, DeThi $deThi)
    {
        $validated = $request->validate([
            'cau_hoi_id' => 'required|exists:cau_hoi,id'
        ]);

        $cauHoiId = $validated['cau_hoi_id'];
        $cauHoi = CauHoi::findOrFail($cauHoiId);
        $cauHoi->de_thi_id = $deThi->id;
        $cauHoi->save();

        return redirect(route('khoa-hoc.de-thi.cau-hoi.index', [$khoaHoc, $deThi]))
            ->with('success', 'Đã thêm câu hỏi vào đề thi thành công.');
    }

    public function xoaCauHoi(KhoaHoc $khoaHoc, DeThi $deThi, CauHoi $cauHoi)
    {
        $cauHoi->de_thi_id = null;
        $cauHoi->save();

        return redirect(route('khoa-hoc.de-thi.cau-hoi.index', [$khoaHoc, $deThi]))
            ->with('success', 'Đã xoá câu hỏi khỏi đề thi thành công.');
    }
}
