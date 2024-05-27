<?php

namespace App\Http\Controllers;

use App\Models\BaiGiang;
use App\Models\BaiViet;
use App\Models\DanhMuc;
use App\Models\DeThi;
use App\Models\KhoaHoc;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class FrontendController extends Controller
{

    public function index(Request $request)
    {
        return redirect()->route($request->user()->role);
    }

    public function trangChu()
    {
        $dsBaiViet = BaiViet::where('trang_thai', 1)->orderBy('id', 'DESC')->limit(3)->get();
        $dsKhoaHoc = KhoaHoc::all();
        return view('frontend.index')
            ->with('dsBaiViet', $dsBaiViet)
            ->with('dsKhoaHoc', $dsKhoaHoc);
    }

    public function baiViet()
    {
        $baiViet = BaiViet::query();

        if (!empty($_GET['category'])) {
            $slug = explode(',', $_GET['category']);
            $cat_ids = DanhMuc::select('id')->whereIn('slug', $slug)->pluck('id')->toArray();
            return $cat_ids;
        }

        if (!empty($_GET['show'])) {
            $baiViet = $baiViet->where('trang_thai', 1)->orderBy('id', 'DESC')->paginate($_GET['show']);
        } else {
            $baiViet = $baiViet->where('trang_thai', 1)->orderBy('id', 'DESC')->paginate(9);
        }
        $dsBaiVietGanDay = BaiViet::where('trang_thai', 1)->orderBy('id', 'DESC')->limit(3)->get();
        return view('frontend.pages.bai-viet')
            ->with('dsBaiViet', $baiViet)
            ->with('dsBaiVietGanDay', $dsBaiVietGanDay);
    }

    public function chiTietBaiViet($slug)
    {
        $baiViet = BaiViet::getPostBySlug($slug);
        $dsBaiVietGanDay = BaiViet::where('trang_thai', 1)->orderBy('id', 'DESC')->limit(3)->get();
        return view('frontend.pages.chi-tiet-bai-viet')
            ->with('baiViet', $baiViet)
            ->with('dsBaiVietGanDay', $dsBaiVietGanDay);
    }

    public function timKiemBaiViet(Request $request)
    {
        // return $request->all();
        $dsBaiVietGanDay = BaiViet::where('trang_thai', 1)->orderBy('id', 'DESC')->limit(3)->get();
        $baiViets = BaiViet::orwhere('title', 'like', '%' . $request->search . '%')
            ->orwhere('noi_dung', 'like', '%' . $request->search . '%')
            ->orwhere('slug', 'like', '%' . $request->search . '%')
            ->orderBy('id', 'DESC')
            ->paginate(8);
        return view('frontend.pages.bai-viet')->with('dsBaiViet', $baiViets)->with('dsBaiVietGanDay', $dsBaiVietGanDay);
    }

    public function boLocBaiViet(Request $request)
    {
        $data = $request->all();
        $catURL = "";
        if (!empty($data['category'])) {
            foreach ($data['category'] as $category) {
                if (empty($catURL)) {
                    $catURL .= '&category=' . $category;
                } else {
                    $catURL .= ',' . $category;
                }
            }
        }
        return redirect()->route('blog', $catURL);
    }

    public function baiVietTheoDanhMuc(Request $request)
    {
        $baiViet = DanhMuc::getBlogByCategory($request->slug);
        $dsBaiVietGanDay = BaiViet::where('trang_thai', 1)->orderBy('id', 'DESC')->limit(3)->get();
        return view('frontend.pages.bai-viet')->with('dsBaiViet', $baiViet->post)->with('dsBaiVietGanDay', $dsBaiVietGanDay);
    }

    // ===========================================================================
    // Khoá học
    public function khoaHoc()
    {
        $dsKhoaHoc = KhoaHoc::get();
        return view('frontend.pages.khoa-hoc')
            ->with('dsKhoaHoc', $dsKhoaHoc);
    }

    public function chiTietKhoaHoc($slug)
    {
        $khoaHoc = KhoaHoc::where('slug', $slug)->first();
        return view('frontend.pages.chi-tiet-khoa-hoc')
            ->with('khoaHoc', $khoaHoc);
    }

    public function cauHoi($khoahocslug)
    {
        $khoaHoc = KhoaHoc::where('slug', $khoahocslug)->firstOrFail();
        $dsCauHoi = $khoaHoc->cau_hois;
        return view('frontend.khoa-hoc.cau-hoi')
            ->with('khoaHoc', $khoaHoc)
            ->with('dsCauHoi', $dsCauHoi);
    }

    public function baiGiang($khoahocslug)
    {
        $khoaHoc = KhoaHoc::where('slug', $khoahocslug)->firstOrFail();
        $dsBaiGiang = $khoaHoc->bai_giangs;
        return view('frontend.khoa-hoc.bai-giang')
            ->with('khoaHoc', $khoaHoc)
            ->with('dsBaiGiang', $dsBaiGiang);
    }

    public function deThi($khoahocslug)
    {
        $khoaHoc = KhoaHoc::where('slug', $khoahocslug)->firstOrFail();
        $dsDeThi = $khoaHoc->de_this;
        return view('frontend.khoa-hoc.de-thi')
            ->with('khoaHoc', $khoaHoc)
            ->with('dsDeThi', $dsDeThi);
    }

    public function lamBai($khoahocslug, $dethislug)
    {
        $khoaHoc = KhoaHoc::where('slug', $khoahocslug)->firstOrFail();
        $deThi = DeThi::where('khoa_hoc_id',$khoaHoc->id)->where('slug', $dethislug)->firstOrFail();
        $dsCauHoi = $deThi->cau_hois;
        return view('frontend.khoa-hoc.lam-bai')
            ->with('khoaHoc', $khoaHoc)
            ->with('deThi', $deThi)
            ->with('dsCauHoi', $dsCauHoi);
    }

    public function nopBai($khoahocslug, $dethislug)
    {
        $khoaHoc = KhoaHoc::where('slug', $khoahocslug)->firstOrFail();
        $deThi = DeThi::where('khoa_hoc_id',$khoaHoc->id)->where('slug', $dethislug)->firstOrFail();
        $dsCauHoi = $deThi->cau_hois;
        return view('frontend.khoa-hoc.ket-qua')
            ->with('khoaHoc', $khoaHoc)
            ->with('deThi', $deThi)
            ->with('dsCauHoi', $dsCauHoi);
    }
    // ===========================================================================

    // Đăng nhập
    public function login()
    {
        return view('frontend.pages.login');
    }

    public function loginSubmit(Request $request)
    {
        $data = $request->all();
        if (Auth::attempt(['email' => $data['email'], 'password' => $data['password'], 'status' => 1])) {
            Session::put('user', $data['email']);
            request()->session()->flash('success', 'Successfully login');
            return redirect()->route('home');
        } else {
            request()->session()->flash('error', 'Invalid email and password pleas try again!');
            return redirect()->back();
        }
    }

    public function logout()
    {
        Session::forget('user');
        Auth::logout();
        request()->session()->flash('success', 'Logout successfully');
        return back();
    }

    public function register()
    {
        return view('frontend.pages.register');
    }
    public function registerSubmit(Request $request)
    {
        // return $request->all();
        $this->validate($request, [
            'name' => 'string|required|min:2',
            'email' => 'string|required|unique:users,email',
            'password' => 'required|min:6|confirmed',
        ]);
        $data = $request->all();
        // dd($data);
        $check = $this->create($data);
        Session::put('user', $data['email']);
        if ($check) {
            request()->session()->flash('success', 'Successfully registered');
            return redirect()->route('home');
        } else {
            request()->session()->flash('error', 'Please try again!');
            return back();
        }
    }
    public function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'status' => 'active'
        ]);
    }
    // Reset password
    public function showResetForm()
    {
        return view('authh.passwords.reset');
    }
}
