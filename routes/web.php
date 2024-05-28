<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BaiGiangController;
use App\Http\Controllers\BaiVietController;
use App\Http\Controllers\BinhLuanController;
use App\Http\Controllers\CauHoiController;
use App\Http\Controllers\DanhMucController;
use App\Http\Controllers\DeThiController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KhoaHocController;
use App\Http\Controllers\PhuongAnController;
use App\Http\Controllers\ThongBaoController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use UniSharp\LaravelFilemanager\Lfm;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Xoá bộ nhớ đệm
Route::get('cache-clear', function () {
    Artisan::call('optimize:clear');
    request()->session()->flash('success', 'Xoá bộ nhớ đệm thành công.');
    return redirect()->back();
})->name('cache.clear');


// Liên kết kho lưu trữ
Route::get('storage-link', [AdminController::class, 'storageLink'])->name('storage.link');

Auth::routes(['register' => false/*, 'reset' => false*/]);

Route::get('user/login', [FrontendController::class, 'login'])->name('login.form');
Route::post('user/login', [FrontendController::class, 'loginSubmit'])->name('login.submit');
Route::get('user/logout', [FrontendController::class, 'logout'])->name('user.logout');

Route::get('user/register', [FrontendController::class, 'register'])->name('register.form');
Route::post('user/register', [FrontendController::class, 'registerSubmit'])->name('register.submit');
// Reset password
Route::get('password-reset', [FrontendController::class, 'showResetForm'])->name('password.reset');

/*
|--------------------------------------------------------------------------
| Guest Routes
|--------------------------------------------------------------------------
*/
Route::get('', [FrontendController::class, 'trangChu'])->name('home');
Route::get('trang-chu', [FrontendController::class, 'trangChu']);

Route::get('/bai-viet', [FrontendController::class, 'baiViet'])->name('bai-viet');
Route::get('/bai-viet/{slug}', [FrontendController::class, 'chiTietBaiViet'])->name('bai-viet.detail');
Route::get('/bai-viet/tim-kiem', [FrontendController::class, 'timKiemBaiViet'])->name('bai-viet.search');
Route::post('/bai-viet/bo-loc', [FrontendController::class, 'boLocBaiViet'])->name('bai-viet.filter');
Route::get('danh-muc-bai-viet/{slug}', [FrontendController::class, 'baiVietTheoDanhMuc'])->name('bai-viet.category');

Route::get('khoa-hoc', [FrontendController::class, 'khoaHoc'])
    ->name('khoa-hoc');
Route::get('khoa-hoc/{khoahocslug}', [FrontendController::class, 'chiTietKhoaHoc'])
    ->name('khoa-hoc.detail');
Route::get('khoa-hoc/{khoahocslug}/cau-hoi', [FrontendController::class, 'cauHoi'])
    ->name('cau-hoi');
Route::get('khoa-hoc/{khoahocslug}/bai-giang', [FrontendController::class, 'baiGiang'])
    ->name('bai-giang');
Route::get('khoa-hoc/{khoahocslug}/bai-giang/{baigiangslug}', [FrontendController::class, 'chiTietBaiGiang'])
    ->name('bai-giang.detail');
Route::get('khoa-hoc/{khoahocslug}/de-thi', [FrontendController::class, 'deThi'])
    ->name('de-thi');
Route::get('khoa-hoc/{khoahocslug}/de-thi/{dethislug}', [FrontendController::class, 'lamBai'])
    ->name('lam-bai');
Route::post('khoa-hoc/{khoahocslug}/de-thi/{dethislug}', [FrontendController::class, 'nopBai'])
    ->name('nop-bai');
Route::get('khoa-hoc/{khoahocslug}/de-thi/{dethislug}/ket-qua', [FrontendController::class, 'ketQua'])
    ->name('ket-qua');

Route::post('bai-viet/{slug}/binh-luan', [BinhLuanController::class, 'store'])->name('binh-luan.store');
Route::resource('/binh-luan', BinhLuanController::class);

/*
|--------------------------------------------------------------------------
| Quản trị viên
|--------------------------------------------------------------------------
*/
Route::group(['prefix' => 'quan-tri-vien', 'middleware' => ['auth', 'admin']], function () {
    Route::get('', [AdminController::class, 'index'])
        ->name('admin');

    Route::resource('danh-muc-bai-viet', DanhMucController::class);
    Route::resource('bai-viet', BaiVietController::class);
    Route::resource('khoa-hoc', KhoaHocController::class)->except(['create', 'show', 'destroy']);
    Route::resource('khoa-hoc.bai-giang', BaiGiangController::class);
    Route::resource('khoa-hoc.cau-hoi', CauHoiController::class);
    Route::resource('khoa-hoc.cau-hoi.phuong-an', PhuongAnController::class)->except('show');
    Route::resource('khoa-hoc.de-thi', DeThiController::class);

    Route::prefix('khoa-hoc/{khoa_hoc}')->group(function () {
        Route::get('de-thi/{de_thi}/cau-hoi', [DeThiController::class, 'cauHoi'])
            ->name('khoa-hoc.de-thi.cau-hoi.index');
        Route::get('de-thi/{de_thi}/cau-hoi/create', [DeThiController::class, 'themCauHoi'])
            ->name('khoa-hoc.de-thi.cau-hoi.create');
        Route::post('de-thi/{de_thi}/cau-hoi', [DeThiController::class, 'luuCauHoi'])
            ->name('khoa-hoc.de-thi.cau-hoi.store');
        Route::delete('de-thi/{de_thi}/cau-hoi/{cau_hoi}', [DeThiController::class, 'xoaCauHoi'])
            ->name('khoa-hoc.de-thi.cau-hoi.destroy');
    });

    Route::resource('nguoi-dung', UserController::class);
    Route::get('/ho-so', [AdminController::class, 'profile'])
        ->name('admin-profile');
    Route::post('/ho-so/{id}', [AdminController::class, 'profileUpdate'])
        ->name('profile-update');

    Route::get('/notification/{id}', [ThongBaoController::class, 'show'])->name('admin.notification');
    Route::get('/notifications', [ThongBaoController::class, 'index'])->name('all.notification');
    Route::delete('/notification/{id}', [ThongBaoController::class, 'delete'])->name('notification.delete');

    Route::get('doi-mat-khau', [AdminController::class, 'changePassword'])->name('change.password.form');
    Route::post('doi-mat-khau', [AdminController::class, 'changPasswordStore'])->name('change.password');
});
/*--------------------------------------------------------------------------*/

/*
|--------------------------------------------------------------------------
| Người dùng
|--------------------------------------------------------------------------
*/
Route::group(['prefix' => 'nguoi-dung', 'middleware' => ['user']], function () {
    Route::get('/', [HomeController::class, 'index'])
        ->name('user');

    Route::get('/ho-so', [HomeController::class, 'profile'])->name('user-profile');
    Route::post('/ho-so/{id}', [HomeController::class, 'profileUpdate'])->name('user-profile-update');

    Route::get('user-post/binh-luan', [HomeController::class, 'userComment'])->name('user.binh-luan.index');
    Route::delete('user-post/binh-luan/delete/{id}', [HomeController::class, 'userCommentDelete'])->name('user.binh-luan.delete');
    Route::get('user-post/binh-luan/edit/{id}', [HomeController::class, 'userCommentEdit'])->name('user.binh-luan.edit');
    Route::patch('user-post/binh-luan/udpate/{id}', [HomeController::class, 'userCommentUpdate'])->name('user.binh-luan.update');

    Route::get('doi-mat-khau', [HomeController::class, 'changePassword'])->name('user.change.password.form');
    Route::post('doi-mat-khau', [HomeController::class, 'changPasswordStore'])->name('change.password');
});
/*--------------------------------------------------------------------------*/

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    Lfm::routes();
});
