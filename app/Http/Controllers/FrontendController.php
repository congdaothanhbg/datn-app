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
        $dsBaiVietGanDay = BaiViet::where('trang_thai', 1)->orderBy('id', 'DESC')->limit(3)->get();
        $baiViets = BaiViet::orwhere('title', 'like', '%' . $request->search . '%')
            ->orwhere('noi_dung', 'like', '%' . $request->search . '%')
            ->orwhere('slug', 'like', '%' . $request->search . '%')
            ->orderBy('id', 'DESC')
            ->paginate(8);
        return view('frontend.pages.bai-viet')
            ->with('dsBaiViet', $baiViets)
            ->with('dsBaiVietGanDay', $dsBaiVietGanDay);
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

    public function chiTietBaiGiang($khoahocslug, $baigiangslug)
    {
        $khoaHoc = KhoaHoc::where('slug', $khoahocslug)->firstOrFail();
        $baiGiang = BaiGiang::where('slug', $baigiangslug)->firstOrFail();
        return view('frontend.khoa-hoc.chi-tiet-bai-giang')
            ->with('khoaHoc', $khoaHoc)
            ->with('baiGiang', $baiGiang);
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
        $deThi = DeThi::where('khoa_hoc_id', $khoaHoc->id)->where('slug', $dethislug)->firstOrFail();
        $dsCauHoi = $deThi->cau_hois;
        return view('frontend.khoa-hoc.lam-bai')
            ->with('khoaHoc', $khoaHoc)
            ->with('deThi', $deThi)
            ->with('dsCauHoi', $dsCauHoi);
    }

    public function nopBai(Request $request, $khoahocslug, $dethislug)
    {
        // Lấy thông tin khóa học và đề thi từ slug
        $khoaHoc = KhoaHoc::where('slug', $khoahocslug)->first();
        $deThi = DeThi::where('slug', $dethislug)->first();

        // Kiểm tra nếu không tìm thấy khóa học hoặc đề thi
        if (!$khoaHoc || !$deThi) {
            return redirect()->back()->with('error', 'Khóa học hoặc đề thi không tồn tại.');
        }

        // Lấy danh sách câu hỏi từ đề thi
        $dsCauHoi = $deThi->cau_hois;

        // Kiểm tra nếu không có câu hỏi nào
        if ($dsCauHoi->isEmpty()) {
            return redirect()->back()->with('error', 'Đề thi không có câu hỏi nào.');
        }

        // Lấy dữ liệu câu trả lời từ request
        $dapAnIds = $request->input('dap_an_id');

        // Khởi tạo biến để tính điểm và danh sách kết quả
        $diem = 0;
        $ketQua = [];

        // Duyệt qua từng câu hỏi và kiểm tra đáp án
        foreach ($dsCauHoi as $cauHoi) {
            // Lấy đáp án đúng của câu hỏi
            $dapAnDung = null;
            foreach ($cauHoi->phuong_ans as $phuongAn) {
                if ($phuongAn->la_phuong_an_dung) {
                    $dapAnDung = $phuongAn->id;
                    break;
                }
            }

            // Lấy đáp án người dùng đã chọn
            $dapAnNguoiDung = isset($dapAnIds[$cauHoi->id]) ? $dapAnIds[$cauHoi->id] : null;

            // So sánh đáp án đúng với đáp án người dùng chọn
            if ($dapAnDung && $dapAnDung == $dapAnNguoiDung) {
                $diem++;
            }

            // Lưu thông tin câu hỏi, đáp án đã chọn và đáp án đúng vào mảng kết quả
            $ketQua[] = [
                'cauHoi' => $cauHoi,
                'dapAnDung' => $dapAnDung,
                'dapAnNguoiDung' => $dapAnNguoiDung
            ];
        }

        // Trả kết quả về view
        return view('frontend.khoa-hoc.ket-qua', compact('khoaHoc', 'deThi', 'diem', 'ketQua'));
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
            request()->session()->flash('success', 'Đăng nhập thành công.');
            return redirect()->route('home');
        } else {
            request()->session()->flash('error', 'Email hoặc mật khẩu không hợp lệ.');
            return redirect()->back();
        }
    }

    public function logout()
    {
        Session::forget('user');
        Auth::logout();
        request()->session()->flash('success', 'Đăng xuất thành công.');
        return back();
    }

    public function register()
    {
        return view('frontend.pages.register');
    }

    public function registerSubmit(Request $request)
    {
        $this->validate($request, [
            'name' => 'string|required|min:2',
            'email' => 'string|required|unique:users,email',
            'password' => 'required|min:8|confirmed',
        ]);

        $data = $request->all();
        $check = $this->create($data);
        Session::put('user', $data['email']);

        if ($check) {
            request()->session()->flash('success', 'Đăng ký thành công.');
            return redirect()->route('home');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại.');
            return back();
        }
    }

    public function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'status' => 1
        ]);
    }

    public function showResetForm()
    {
        return view('auth.passwords.reset');
    }
}
