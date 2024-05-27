<?php

namespace App\Http\Controllers;

use App\Models\BinhLuan;
use Illuminate\Http\Request;
use App\Models\ProductReview;
use App\Models\User;
use App\Rules\MatchOldPassword;
use Hash;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('user.index');
    }

    public function profile()
    {
        $profile = Auth()->user();
        // return $profile;
        return view('user.users.profile')->with('profile', $profile);
    }

    public function profileUpdate(Request $request, $id)
    {
        // return $request->all();
        $user = User::findOrFail($id);
        $data = $request->all();
        $status = $user->fill($data)->save();
        if ($status) {
            request()->session()->flash('success', 'Cập nhật hồ sơ thành công.');
        } else {
            request()->session()->flash('error', 'Vui lòng thử lại!');
        }
        return redirect()->back();
    }

    public function userComment()
    {
        $dsBinhLuan = BinhLuan::getAllUserComments();
        return view('user.comment.index')
            ->with('dsBinhLuan', $dsBinhLuan);
    }

    public function userCommentDelete($id)
    {
        $comment = BinhLuan::find($id);
        if ($comment) {
            $status = $comment->delete();
            if ($status) {
                request()->session()->flash('success', 'Xoá bình luận thành công.');
            } else {
                request()->session()->flash('error', 'Vui lòng thử lại.');
            }
            return back();
        } else {
            request()->session()->flash('error', 'Không tìm thấy bình luận.');
            return redirect()->back();
        }
    }

    public function userCommentEdit($id)
    {
        $comments = BinhLuan::find($id);
        if ($comments) {
            return view('user.comment.edit')->with('comment', $comments);
        } else {
            request()->session()->flash('error', 'Không tìm thấy bình luận.');
            return redirect()->back();
        }
    }

    public function userCommentUpdate(Request $request, $id)
    {
        $comment = BinhLuan::find($id);
        if ($comment) {
            $data = $request->all();
            // return $data;
            $status = $comment->fill($data)->update();
            if ($status) {
                request()->session()->flash('success', 'Cập nhật bình luận thành công.');
            } else {
                request()->session()->flash('error', 'Vui lòng thử lại.');
            }
            return redirect()->route('user.post-comment.index');
        } else {
            request()->session()->flash('error', 'Không tìm thấy bình luận.');
            return redirect()->back();
        }
    }

    public function changePassword()
    {
        return view('user.layouts.userPasswordChange');
    }

    public function changPasswordStore(Request $request)
    {
        $request->validate([
            'current_password' => ['required', new MatchOldPassword],
            'new_password' => ['required'],
            'new_confirm_password' => ['same:new_password'],
        ]);

        User::find(auth()->user()->id)->update(['password' => Hash::make($request->new_password)]);

        return redirect()->route('user')->with('success', 'Đổi mật khẩu thành công.');
    }
}
