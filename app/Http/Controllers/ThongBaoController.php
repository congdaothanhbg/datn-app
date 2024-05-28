<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ThongBao;

class ThongBaoController extends Controller
{
    public function index()
    {
        return view('backend.thong-bao.index');
    }

    public function show(Request $request)
    {
        $notification = Auth()->user()->notifications()->where('id', $request->id)->first();
        if ($notification) {
            $notification->markAsRead();
            return redirect($notification->data['actionURL']);
        }
    }

    public function delete($id)
    {
        $notification = ThongBao::find($id);
        if ($notification) {
            $status = $notification->delete();
            if ($status) {
                request()->session()->flash('success', 'Notification successfully deleted');
                return back();
            } else {
                request()->session()->flash('error', 'Error please try again');
                return back();
            }
        } else {
            request()->session()->flash('error', 'Notification not found');
            return back();
        }
    }
}
