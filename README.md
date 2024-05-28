## Cài đặt chương trình
1. Clone repo hoặc tải file zip và giải nén trong thư mục `htdocs` của XAMPP
2. cd vào thư mục dự án
3. Mở terminal và nhập `composer install`
4. Đổi tên file hoặc sao chép file `.env.example` thành `.env`
5. Nhập `php artisan key:generate` trong terminal
6. Set your database credentials in your ```.env``` file
7. Import file `database/datn.sql` vào cơ sở dữ liệu `mysql,sql`
8. Cấu hình tên cơ sở dữ liệu trong file `.env`: DB_DATABASE=
9. `npm install` -> `npm run dev`
10. Nhập trong terminal `php artisan storage:link` để sử dụng [laravel file manager]
11. Sửa file `.env`: xoá value của APP_URL
12. `php artisan serve`
13. Truy cậo `localhost:8000` trên trình duyệt
14. Đăng nhập: Admin Email/Password: `admin@email.com`/`11111111`. User Email/Password: `user@gmail.com`/`11111111`
15. Sau khi đăng nhập, nhấn vào dấu mũi tên ở họ tên, chọn `Dashboard` để truy cập admin hoặc `Hồ sơ` nếu là user
