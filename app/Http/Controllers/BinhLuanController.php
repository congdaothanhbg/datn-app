<?php

namespace App\Http\Controllers;

use App\Models\BaiViet;

use Illuminate\Http\Request;
use App\Notifications\StatusNotification;
use App\Models\BinhLuan;
use App\Models\User;
use Illuminate\Support\Facades\Notification;

class BinhLuanController extends Controller
{
    public function index()
    {
        $dsBinhLuan = BinhLuan::getAllComments();
        return view('backend.binh-luan.index')
            ->with('dsBinhLuan', $dsBinhLuan);
    }

    public function store(Request $request)
    {
        $post_info = BaiViet::getPostBySlug($request->slug);
        $data = $request->all();
        $data['user_id'] = $request->user()->id;
        $data['trang_thai'] = 1;
        $status = BinhLuan::create($data);
        $user = User::where('role', 'admin')->get();
        $details = [
            'title' => "Có bình luận mới",
            'actionURL' => route('bai-viet.detail', $post_info->slug),
            'fas' => 'fas fa-comment'
        ];
        Notification::send($user, new StatusNotification($details));
        if ($status) {
            request()->session()->flash('success', 'Bình luận đã được đăng thành công.');
        } else {
            request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại');
        }
        return redirect()->back();
    }

    public function edit($id)
    {
        $comments = BinhLuan::find($id);
        if ($comments) {
            return view('backend.binh-luan.edit')->with('comment', $comments);
        } else {
            request()->session()->flash('error', 'Không tìm thấy bình luận.');
            return redirect()->back();
        }
    }

    public function update(Request $request, $id)
    {
        $comment = BinhLuan::find($id);
        if ($comment) {
            $data = $request->all();
            // return $data;
            $status = $comment->fill($data)->update();
            if ($status) {
                request()->session()->flash('success', 'Bình luận đã được chỉnh sửa thành công.');
            } else {
                request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại');
            }
            return redirect()->route('comment.index');
        } else {
            request()->session()->flash('error', 'Không tìm thấy bình luận.');
            return redirect()->back();
        }
    }

    public function destroy($id)
    {
        $comment = BinhLuan::find($id);
        if ($comment) {
            $status = $comment->delete();
            if ($status) {
                request()->session()->flash('success', 'Bình luận đã được xoá thành công.');
            } else {
                request()->session()->flash('error', 'Đã xảy ra lỗi! Vui lòng thử lại');
            }
            return back();
        } else {
            request()->session()->flash('error', 'Không tìm thấy bình luận.');
            return redirect()->back();
        }
    }
}
