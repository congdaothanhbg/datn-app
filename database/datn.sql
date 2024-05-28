-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 02:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datn`
--

-- --------------------------------------------------------

--
-- Table structure for table `bai_giang`
--

CREATE TABLE `bai_giang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `khoa_hoc_id` bigint(20) UNSIGNED NOT NULL,
  `thu_tu` int(10) UNSIGNED NOT NULL,
  `ten_bai_giang` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `noi_dung` longtext NOT NULL,
  `hinh_anh` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bai_giang`
--

INSERT INTO `bai_giang` (`id`, `khoa_hoc_id`, `thu_tu`, `ten_bai_giang`, `slug`, `noi_dung`, `hinh_anh`, `video`, `trang_thai`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 'HỆ THỐNG BÁO HIỆU ĐƯỜNG BỘ', 'he-thong-bao-hieu-duong-bo', '<ol><li><b>Chấp hành báo hiệu đường bộ</b></li></ol><p>a. Khi có người điều khiển giao thông thì người tham gia giao thông phải chấp hành hiệu lệnh của người điều khiển giao thông.</p><p>b. Tại nơi có biển báo hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu tạm thời.</p><p><br></p>', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bai_nop`
--

CREATE TABLE `bai_nop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lich_su_id` bigint(20) UNSIGNED NOT NULL,
  `cau_hoi_id` bigint(20) UNSIGNED NOT NULL,
  `phuong_an_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bai_viet`
--

CREATE TABLE `bai_viet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_bai_viet` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `noi_dung` longtext NOT NULL,
  `hinh_anh` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `danh_muc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bai_viet`
--

INSERT INTO `bai_viet` (`id`, `ten_bai_viet`, `slug`, `noi_dung`, `hinh_anh`, `video`, `danh_muc_id`, `user_id`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 'Cách kiểm tra nhớt động cơ xe máy qua que thăm nhớt', 'cach-kiem-tra-nhot-dong-co-xe-may-qua-que-tham-nhot-2405261119-379', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: justify;\">Dưới đây là một số kinh nghiệm hay giúp bạn có thể&nbsp;</span><strong style=\"font-weight: bold; color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; text-align: justify;\">kiểm tra dầu&nbsp;</strong><strong style=\"font-weight: bold; color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; text-align: justify;\">nhớt&nbsp;động cơ</strong><span style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: justify;\">&nbsp;ngay tại nhà, và cách sử dụng</span><strong style=\"font-weight: bold; color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; text-align: justify;\">&nbsp;que thăm nhớt xe máy</strong><span style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: justify;\">. Điều này sẽ giúp bạn biết được khi nào xe cần thay hay thêm nhớt hoặc phát hiện ra trục trặc khi xe hao nhớt hơn bình thường.</span></h3><h2 id=\"nhung-buoc-kiem-tra-nhot-xe-may-bang-que-th\" style=\"font-family: Tahoma, Arial; font-weight: bold; line-height: 24px; color: rgb(34, 34, 34); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 19px; border: none; float: none; padding: 10px 0px; position: relative; z-index: 10; scroll-margin-top: 55px; text-align: justify;\">1. Những bước kiểm tra nhớt xe máy bằng que thăm:</h2><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><div style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: justify;\">- Đặt xe lên một mặt phẳng, sử dụng chân chống đứng&nbsp;<br>- Chờ khoảng 20p để nhiệt độ động cơ được làm nguội và dầu chảy vào bình hứng dầu.<br>- Tháo que thăm nhớt ra khỏi bình, dùng giẻ lau sạch sau đó đưa lại vào bình, chờ khoảng mấy giây rồi rút que thăm dầu ra.<br>- Kiểm tra que thăm, nếu lượng dầu nằm gần hoặc bằng mức \"<strong style=\"font-weight: bold;\">Min</strong>\", bạn nên thay nhớt mới cho xe mình. Nếu mức nhớt nằm ngay khoảng giữa \"<strong style=\"font-weight: bold;\">Min</strong>\" và \"<strong style=\"font-weight: bold;\">Max</strong>\" thì lượng nhớt đã đủ.<br>- Đặt que thăm nhớt vào vị trí cũ và vặn kỹ để tránh vật lạ rơi vào bình dầu nhớt của xe.</div><div style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: center;\"><br style=\"margin: 8px 0px; width: 580.5px; height: 1px; display: block; content: &quot;&quot;;\"><img class=\" lazyloaded\" src=\"https://shop2banh.vn/images/2020/05/20200518_3a522d37d4b11d8221ab41a40ad84ecb_1589775244.jpg\" data-src=\"https://shop2banh.vn/images/2020/05/20200518_3a522d37d4b11d8221ab41a40ad84ecb_1589775244.jpg\" alt=\"Cách kiểm tra nhớt động cơ xe máy qua que thăm nhớt - 2\" style=\"border: 0px; max-width: 100%;\"></div></h3><h2 id=\"cong-dung-cua-viec-kiem-tra-nhot-bang-que\" style=\"font-family: Tahoma, Arial; font-weight: bold; line-height: 24px; color: rgb(34, 34, 34); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 19px; border: none; float: none; padding: 10px 0px; position: relative; z-index: 10; scroll-margin-top: 55px; text-align: justify;\">2. Công dụng của việc kiểm tra nhớt bằng que thăm</h2><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><div style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: justify;\">- Việc&nbsp;<strong style=\"font-weight: bold;\">kiểm tra mức dầu nhớt</strong>&nbsp;thường xuyên rất quan trọng bởi vì nếu dầu nhớt ở dưới mức cần thiết, hoặc dưới mức “<strong style=\"font-weight: bold;\">Min</strong>” đồng nghĩa với việc xe sẽ bị tác hại nghiêm trọng khi thiếu nhớt.<br>- Giúp bạn xác định được thời gian&nbsp;<strong style=\"font-weight: bold;\">thay nhớt</strong>&nbsp;hợp lý cho xe của mình, vì nếu sử dụng nhớt quá lâu sẽ dẫn đến những hậu quả nặng nề khiến động cơ bị hư hỏng nghiêm trọng.</div><div style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: center;\"><br style=\"margin: 8px 0px; width: 580.5px; height: 1px; display: block; content: &quot;&quot;;\"><img class=\" lazyloaded\" src=\"https://shop2banh.vn/images/2020/05/20200518_ed36dd36e30232e2399c23c3304db7fd_1589774686.jpg\" data-src=\"https://shop2banh.vn/images/2020/05/20200518_ed36dd36e30232e2399c23c3304db7fd_1589774686.jpg\" alt=\"Cách kiểm tra nhớt động cơ xe máy qua que thăm nhớt - 3\" style=\"border: 0px; max-width: 100%;\">&nbsp;</div><div style=\"color: rgb(68, 68, 68); font-family: Tahoma, Arial; font-size: 16px; font-weight: 400; text-align: justify;\"><strong style=\"font-weight: bold;\">Như vậy qua bài viết trên, hi vọng những thông tin từ bài viết sẽ giúp các bạn phần nào cách để kiểm tra nhớt để xe luôn trong tình trạng tốt nhất.</strong></div></h3>', '/storage/photos/1/BaiViet/20200518_3404bb2b476d61b18c6be7283701a9e7_1589777794.jpg', NULL, 3, NULL, 1, '2024-04-13 19:59:33', '2024-05-26 05:11:19'),
(2, 'CHĂM SÓC XE MÁY THẾ NÀO CHO HIỆU QUẢ? 5 CÔNG VIỆC CẦN NHỚ', 'cham-soc-xe-may-the-nao-cho-hieu-qua-5-cong-viec-can-nho', '<p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\"><i>Chăm sóc xe máy</i></span><i>&nbsp;bao gồm những công việc như làm sạch, bảo dưỡng, dọn dẹp,… giúp xe của bạn trông như mới mà còn làm cho xe hoạt động êm ái, tránh các trường hợp hỏng hóc xảy ra. Dưới đây là bài viết tổng hợp kinh nghiệm về việc chăm sóc chiếc xe của bạn.</i></span></p><figure id=\"attachment_8322\" class=\"wp-caption aligncenter\" style=\"margin-right: auto; margin-bottom: 2em; margin-left: auto; clear: both; max-width: 100%; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium; width: 720px;\"><a href=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-6.jpg\" style=\"touch-action: manipulation; color: rgb(0, 0, 0); transition: all 0.15s ease-in-out 0s;\"><img class=\"size-full wp-image-8322\" src=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-6.jpg\" alt=\"Cham Soc Xe May 6\" width=\"720\" height=\"540\" srcset=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-6.jpg 720w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-6-600x450.jpg 600w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-6-510x383.jpg 510w\" sizes=\"(max-width: 720px) 100vw, 720px\" style=\"max-width: 100%; height: auto; display: inline-block; transition: opacity 1s ease 0s; opacity: 1;\"></a><figcaption class=\"wp-caption-text\" style=\"text-align: center; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;\"><span style=\"font-size: 17.28px; color: rgb(0, 0, 0);\">Chăm sóc xe máy là việc là rất cần thiết</span></figcaption></figure><h2 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-size: 23.04px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Hướng dẫn quy trình chăm sóc xe máy – Vỏ, yên, lốp</span></span></h2><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Để xe của bạn luôn như mới, êm ái và an toàn trong quá trình di chuyển, dưới đây chúng tôi gợi ý bạn một số việc làm chăm sóc xe tại nhà như sau.</span></p><h3 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Chăm sóc vỏ xe máy bằng cách rửa xe</span></span></h3><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Một trong những cách chăm sóc xe máy tại nhà chính là vệ sinh xe thường xuyên. Chiếc xe sạch sẽ, sáng bóng luôn đem lại một vẻ đẹp tuyệt vời, cũng như làm tăng sự tự tin cho người chủ. Để rửa xe tại nhà bạn cần có máy bơm nước hoặc&nbsp;<span style=\"color: rgb(0, 0, 255);\"><a href=\"https://dienmaylucky.com/may-rua-xe/\" style=\"touch-action: manipulation; color: rgb(0, 0, 255); transition: all 0.15s ease-in-out 0s;\">máy rửa xe chuyên dụng</a></span>&nbsp;– máy rửa xe chuyên dụng sẽ cho áp lực phun rửa mạnh, dễ dàng đánh rửa bùn đất nhanh chóng và rửa xe chuyên nghiệp hơn.</span></p><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Cách rửa xe máy tại nhà được thực hiện như sau:</span></p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium;\"><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 1:</span>&nbsp;Dùng vòi xịt toàn bộ xe máy để làm trôi đi các bụi bẩn, sình lầy.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 2:</span>&nbsp;Pha dung dịch rửa xe và phun dung dịch từ trên xuống đặc biệt chú ý đến các bộ phận máy.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 3:&nbsp;</span>Dùng bàn chải vệ sinh ở những vị trí có vết bẩn cứng đầu.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 4</span>: Rửa trôi dung dịch bằng vòi rửa.</span></li></ul><figure id=\"attachment_8323\" class=\"wp-caption aligncenter\" style=\"margin-right: auto; margin-bottom: 2em; margin-left: auto; clear: both; max-width: 100%; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium; width: 720px;\"><a href=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-5.jpg\" style=\"touch-action: manipulation; color: rgb(0, 0, 0); transition: all 0.15s ease-in-out 0s;\"><img class=\"size-full wp-image-8323\" src=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-5.jpg\" alt=\"Cham Soc Xe May 5\" width=\"720\" height=\"540\" srcset=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-5.jpg 720w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-5-600x450.jpg 600w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-5-510x383.jpg 510w\" sizes=\"(max-width: 720px) 100vw, 720px\" style=\"max-width: 100%; height: auto; display: inline-block; transition: opacity 1s ease 0s; opacity: 1;\"></a><figcaption class=\"wp-caption-text\" style=\"text-align: center; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;\"><span style=\"font-size: 17.28px; color: rgb(0, 0, 0);\">chăm sóc xe bằng cách rửa</span></figcaption></figure><h3 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Thường xuyên kiểm tra tình trạng lốp xe</span></span></h3><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Lốp xe là bộ phận duy nhất tiếp xúc với mặt đường trong quá trình di chuyển. Chính vì thế, việc chăm sóc lốp xe không những giúp xe của bạn trông mới hơn mà còn giúp bạn an toàn trong quá trình di chuyển.&nbsp;</span></p><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Bạn cần kiểm tra tình trạng của lốp xe bằng cách sau:</span></p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium;\"><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Búng ngón tay vào lốp:</span>&nbsp;Khi phát hiện ra những tiếng kêu trầm khi búng ngón tay vào. Điều này có nghĩa là xe của bạn đang bị non hơi. Bạn chăm sóc xe máy bằng cách bổ sung đủ áp suất cho lốp để đảm bảo an toàn trong quá trình di chuyển. Chúng tôi khuyên bạn nên sử dụng&nbsp;<span style=\"color: rgb(0, 0, 255);\"><a href=\"https://maynenkhikhongdaulucky.com/may-nen-khi-co-dau/\" style=\"touch-action: manipulation; color: rgb(0, 0, 255); transition: all 0.15s ease-in-out 0s;\">máy nén khí</a></span>&nbsp;kết hợp súng bơm hơi để bơm đúng và đủ áp suất cho xe.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Kiểm tra độ đàn hồi của lốp:</span>&nbsp; Dùng lực ấn mạnh liên tục vào lốp xe từ 2- 3 lần. Nếu lốp xe đã mất đi độ đàn hồi, bạn cần thay ngay lốp xe mới.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Kiểm tra độ mòn của lốp:</span>&nbsp;Bạn có thể kiểm tra độ mòn của lốp bằng cách kiểm tra độ dày van hoa. Nếu chỉ còn 1-3mm bạn cần tiến hành thay lốp mới.</span></li></ul><figure id=\"attachment_8326\" class=\"wp-caption aligncenter\" style=\"margin-right: auto; margin-bottom: 2em; margin-left: auto; clear: both; max-width: 100%; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium; width: 720px;\"><a href=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-2.jpg\" style=\"touch-action: manipulation; color: rgb(0, 0, 0); transition: all 0.15s ease-in-out 0s;\"><img class=\"size-full wp-image-8326\" src=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-2.jpg\" alt=\"Cham Soc Xe May 2\" width=\"720\" height=\"540\" srcset=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-2.jpg 720w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-2-600x450.jpg 600w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-2-510x383.jpg 510w\" sizes=\"(max-width: 720px) 100vw, 720px\" style=\"max-width: 100%; height: auto; display: inline-block; transition: opacity 1s ease 0s; opacity: 1;\"></a><figcaption class=\"wp-caption-text\" style=\"text-align: center; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;\"><span style=\"font-size: 17.28px; color: rgb(0, 0, 0);\">Bơm xe máy đúng và đủ áp suất là một cách chăm sóc xe</span></figcaption></figure><h3 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Chăm sóc yên xe</span></span></h3><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Một trong những cách&nbsp;<span style=\"color: rgb(0, 0, 255);\"><a href=\"https://maynenkhikhongdaulucky.com/cham-soc-xe-may/\" style=\"touch-action: manipulation; color: rgb(0, 0, 255); transition: all 0.15s ease-in-out 0s;\">chăm sóc xe máy</a></span>&nbsp;mà bạn có thể thực hiện ngay tại nhà là chăm sóc yên xe. Bạn có thể chăm sóc yên xe tại&nbsp; nhà bằng các cách như sau:</span></p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium;\"><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Sử dụng máy nén khí loại bỏ bụi bẩn trên bề mặt da.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Sử dụng xi đánh bóng có nguồn gốc từ dầu mỏ để giúp cho yên không bị bạc màu.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Khâu yên xe nếu bị bung chỉ.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Bọc, thay yên xe máy tại nhà.</span></li></ul><figure id=\"attachment_8327\" class=\"wp-caption aligncenter\" style=\"margin-right: auto; margin-bottom: 2em; margin-left: auto; clear: both; max-width: 100%; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium; width: 720px;\"><a href=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-1.jpg\" style=\"touch-action: manipulation; color: rgb(0, 0, 0); transition: all 0.15s ease-in-out 0s;\"><img class=\"size-full wp-image-8327\" src=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-1.jpg\" alt=\"Cham Soc Xe May 1\" width=\"720\" height=\"540\" srcset=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-1.jpg 720w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-1-600x450.jpg 600w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-1-510x383.jpg 510w\" sizes=\"(max-width: 720px) 100vw, 720px\" style=\"max-width: 100%; height: auto; display: inline-block; transition: opacity 1s ease 0s; opacity: 1;\"></a><figcaption class=\"wp-caption-text\" style=\"text-align: center; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;\"><span style=\"font-size: 17.28px; color: rgb(0, 0, 0);\">Chăm sóc yên xe</span></figcaption></figure><h2 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-size: 23.04px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Hướng dẫn quy trình chăm sóc xe máy – Chi tiết bên trong</span></span></h2><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Ngoài cách chăm sóc xe bởi vẻ bên ngoài, bạn cần chăm sóc các động cơ, máy móc xe giúp quá trình di chuyển an toàn, êm ái hơn.</span></p><h3 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Chăm sóc xe máy bằng cách thay dầu nhớt</span></span></h3><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Động cơ máy thường được cấu thành từ rất nhiều chi tiết máy như: xupap, piston, hay trục cam… Chính vì vậy mà khi hoạt động, các chi tiết máy khớp vào nhau để giúp truyền động, dầu nhớt lúc này đóng vai trò giúp bôi trơn cho piston có thể hoạt động nhịp nhàng, êm ái trong lòng xi-lanh.&nbsp;</span></p><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Các chuyên gia về xe khuyến cáo bạn nên chăm sóc xe máy bằng việc thay dầu nhớt định kỳ 2 – 3 tháng khi sử dụng xe.</span></p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium;\"><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 1:</span>&nbsp;Dựng xe bằng chống giữa trên nền bằng phẳng, xác định đúng vị trí của ốc nhớt và sử dụng cục típ phù hợp để mở.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 2:</span>&nbsp;Dùng lực để vặn ốc ra và dùng dụng cụ hứng nhớt cũ.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 3:</span>&nbsp;Bước tiếp theo của quy trình chăm sóc xe máy bằng việc thay dầu nhớt, bạn cần sử dụng kìm mở nắp châm nhớt và que thăm nhớt để dung dịch cũ được xả ra hết.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 4:</span>&nbsp;Sử dụng phễu để châm nhớt mới vào động cơ.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 5:</span>&nbsp;Tiến hành kiểm tra lượng nhớt bằng cách sử dụng que thăm nhớt chuyên dụng.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 6:</span>&nbsp;Khoá nắp châm nhớt và có thể tận dụng nhớt cũ để châm bản lề.</span></li></ul><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><em><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Đối với những dòng xe ga, bạn còn phải thay dầu láp. Mẹo nhớ: 3 lần thay dầu máy = 1 lần thay dầu láp.</span></em></p><figure id=\"attachment_8325\" class=\"wp-caption aligncenter\" style=\"margin-right: auto; margin-bottom: 2em; margin-left: auto; clear: both; max-width: 100%; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium; width: 720px;\"><a href=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-3.jpg\" style=\"touch-action: manipulation; color: rgb(0, 0, 0); transition: all 0.15s ease-in-out 0s;\"><img class=\"size-full wp-image-8325\" src=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-3.jpg\" alt=\"Cham Soc Xe May 3\" width=\"720\" height=\"540\" srcset=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-3.jpg 720w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-3-600x450.jpg 600w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-3-510x383.jpg 510w\" sizes=\"(max-width: 720px) 100vw, 720px\" style=\"max-width: 100%; height: auto; display: inline-block; transition: opacity 1s ease 0s; opacity: 1;\"></a><figcaption class=\"wp-caption-text\" style=\"text-align: center; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;\"><span style=\"font-size: 17.28px; color: rgb(0, 0, 0);\">Thay dầu nhớt thường xuyên cho xe</span></figcaption></figure><h3 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Chăm sóc xe máy bằng cách vệ sinh bộ phận lọc gió</span></span></h3><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Lọc gió chính là một trong những bộ phận giúp cung cấp lượng gió cần thiết cho bộ chế hòa khí. Bên cạnh đó, nó còn là “chiếc khẩu trang” giúp ngăn bụi bẩn và tạp chất từ môi trường bên ngoài lọt vào động cơ.&nbsp;</span></p><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Bạn nên vệ sinh bộ phận lọc gió 1 – 2 tháng 1 lần với các bước sau:</span></p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium;\"><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 1:</span>&nbsp;Dùng máy vặn vít cầm tay để mở nắp hộp chứa lọc gió.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 2:</span>&nbsp;Lấy lọc gió ra để vệ sinh.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 3:&nbsp;</span>Bước tiếp theo của quy trình chăm sóc xe máy bằng cách vệ sinh lọc gió là&nbsp;dùng súng xì hơi hoặc dùng xăng để loại bỏ bụi bẩn khỏi lọc gió.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 4:</span>&nbsp;Nếu sử dụng súng xì hơi thì sau khi làm sạch các bạn có thể lặp lại vào xe ngay. Tuy nhiên, nếu sử dụng xăng để giặt thì các bạn cần chờ lọc gió khô mới có thể lắp và sử dụng.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 5:</span>&nbsp;Vệ sinh nắp hộp vì sẽ có bụi bẩn bám vào.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Bước 6:</span>&nbsp;Lắp lại nắp hộp và dùng súng bắn vít để vít lại cho chắc chắn.</span></li></ul><figure id=\"attachment_8324\" class=\"wp-caption aligncenter\" style=\"margin-right: auto; margin-bottom: 2em; margin-left: auto; clear: both; max-width: 100%; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium; width: 720px;\"><a href=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-4.jpg\" style=\"touch-action: manipulation; color: rgb(0, 0, 0); transition: all 0.15s ease-in-out 0s;\"><img class=\"size-full wp-image-8324\" src=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-4.jpg\" alt=\"Cham Soc Xe May 4\" width=\"720\" height=\"540\" srcset=\"https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-4.jpg 720w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-4-600x450.jpg 600w, https://maynenkhikhongdaulucky.com/wp-content/uploads/2022/09/cham-soc-xe-may-4-510x383.jpg 510w\" sizes=\"(max-width: 720px) 100vw, 720px\" style=\"max-width: 100%; height: auto; display: inline-block; transition: opacity 1s ease 0s; opacity: 1;\"></a><figcaption class=\"wp-caption-text\" style=\"text-align: center; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;\"><span style=\"font-size: 17.28px; color: rgb(0, 0, 0);\">Thường xuyên vệ sinh bộ phận lọc gió</span></figcaption></figure><h2 style=\"color: rgb(85, 85, 85); width: 783.4px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-size: 23.04px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Một số lưu ý khi sử dụng xe giúp tăng tuổi thọ cho xe</span></span></h2><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Ngoài chăm sóc xe máy, cách sử dụng xe ảnh hưởng rất lớn đến tuổi thọ của xe. Để xe của bạn luôn chạy êm, chúng tôi khuyên bạn nên chú ý một số vấn đề sau:</span></p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: medium;\"><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Bạn nên nổ máy và cho máy chạy ở chế độ không tải (không chở người) trong khoảng từ 30 giây – 1 phút, để giúp cho dầu nhờn có thể bôi trơn được lên toàn bộ những chi tiết máy, rồi mới tiến hành cho xe chạy có tải.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Ngoài cách chăm sóc xe máy khi đi đến ngã ba, ngã tư, hoặc vòng xoay, hay lên dốc, cần lùi về số 1, 2 để giúp cho xe có khả năng vận hành một cách dễ dàng hơn và giúp cho xe không bị dốc máy.</span></li><li aria-level=\"1\" style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Cần bơm lốp xe đúng áp suất quy định để tránh gây ra các hiện tượng như: nứt ở hông lốp xe, thủng săm xe (lốp quá non), hoặc nứt bề mặt xe gây trượt bánh khi phanh gấp (lốp quá căng).</span></li></ul><p style=\"margin-bottom: 1.3em; color: rgb(68, 68, 68); font-size: medium; font-family: Roboto, sans-serif;\"><span style=\"font-size: 19.2px; color: rgb(0, 0, 0);\">Hy vọng bài viết trên mà chúng tôi đưa ra đã giúp bạn hiểu hơn về cách chăm sóc xe máy ngay tại nhà. Chúc xe của bạn luôn chạy êm, bền bỉ.</span></p>', '/storage/photos/1/BaiViet/bgsample_course_default.jpg', NULL, 2, 1, 1, '2024-05-25 08:17:37', '2024-05-25 08:17:37'),
(3, '8 BƯỚC CHĂM SÓC XE MÁY LUÔN BỀN ĐẸP', '8-buoc-cham-soc-xe-may-luon-ben-dep', '<h2 style=\"font-family: Montserrat, sans-serif; font-weight: 600; line-height: 22px; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\">Chăm sóc yên xe</h2><header style=\"position: relative; width: 808.812px; padding: 0px; margin: 0px; font-family: Montserrat, sans-serif; font-size: 15px;\"><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Dù bộ khung xe mới, nhưng sẽ không tốt nếu yên xe trông cũ và hư hại. Trước khi&nbsp;làm sạch, hãy dùng khí nén thổi sạch bụi bẩn. Nếu bỏ qua bước này, những hạt bụi sẽ cào xước bề mặt da. Sau khi thổi sạch, sử dụng chất tẩy rửa xe chuyên dụng. Chất tẩy chứa nhiều kiềm hoặc axit sẽ làm bề mặt da bạc màu, mục.Ngoài ra, phơi mưa nắng cũng khiến yên xe nhanh bạc màu và lão hóa. Sau đó làm sạch chất tẩy bằng nước và bọt biển, bước cuối cùng lau khô.</p><table cellpadding=\"0\" cellspacing=\"0\" style=\"border-spacing: 0px; background-color: transparent; width: 808.812px;\"><tbody><tr><td style=\"padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: center;\"><a href=\"http://media.doisongphapluat.com/thumb_x670x/127/2015/8/11/8-cach-don-gian-de-tu-bao-duong-xe-may-tai-nha.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 1\" style=\"color: rgb(51, 51, 51); transition: all 0.4s ease 0s;\"><img alt=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 1\" src=\"https://tailocnguyen.vn/uploads/news/2015_09/8-cach-don-gian-de-tu-bao-duong-xe-may-tai-nha.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 1\" style=\"border: 0px; max-width: 100%; height: auto; width: 485.288px;\"></a></p></td></tr></tbody></table><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Nếu bề mặt da có dấu hiệu bạc màu, biện pháp đơn giản là dùng xi đánh bóng có nguồn gốc từ dầu mỏ.</p><h2 style=\"font-family: inherit; font-weight: 600; line-height: 22px; color: inherit; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\">Cho xe “thở sạch”</h2><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Để ngăn khói bụi, chúng ta thường mang khẩu trang khi ra đường, đối với xe cũng cần như vậy. Lọc gió không chỉ cung cấp lượng gió cần thiết cho bộ chế hòa khí mà còn là “chiếc khẩu trang” ngăn bụi bẩn, tạp chất từ môi trường bên ngoài lọt vào động cơ. Nếu lọc gió quá dơ/bẩn và bị tắc, lượng khí nạp vào động cơ giảm, nhiên liệu không cháy hết khiến xe không đạt được công suất tối đa, hao xăng hơn. Nên lưu ý làm sạch lọc gió với tần suất khoảng từ 1-2 tháng/lần tùy vào việc xe sử dụng nhiều hay ít và điều kiện môi trường.</p><h2 style=\"font-family: inherit; font-weight: 600; line-height: 22px; color: inherit; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\">Làm sạch</h2><table cellpadding=\"0\" cellspacing=\"0\" style=\"border-spacing: 0px; background-color: transparent; width: 808.812px;\"><tbody><tr><td style=\"padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: center;\"><a href=\"http://media.doisongphapluat.com/thumb_x670x/127/2015/8/11/8-buoc-cham-soc-xe-may-luon-ben-dep.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 2\" style=\"color: rgb(51, 51, 51); transition: all 0.4s ease 0s;\"><img alt=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 2\" src=\"https://tailocnguyen.vn/uploads/news/2015_09/8-buoc-cham-soc-xe-may-luon-ben-dep.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 2\" style=\"border: 0px; max-width: 100%; height: auto; width: 485.288px;\"></a></p></td></tr></tbody></table><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Chiếc xe sáng bóng đem lại vẻ đẹp và tăng sự tự&nbsp;tin&nbsp;cho người chủ.Mỗi người có những cách làm sạch riêng. Nhưng công đoạn bắt đầu là dựng chân chống giữa trên nền cứng để có thể quay bánh, chuyển số và vặn ga. Phun chất tẩy lên xe và dùng giẻ sạch cọ. Nên làm sạch thường xuyên để giữ xe mới. Để giữ vẻ tươi mới ban đầu, hãy xem xét đầu tư cho chất tẩy rửa, nước sạch. Các chất tẩy rửa mạnh trong công nghiệp sẽ làm xe hoen gỉ, sơn nhanh xuống màu. Ngoài ra nên đánh bóng để giữ xe trông như vừa xuất xưởng.</p><h2 style=\"font-family: inherit; font-weight: 600; line-height: 22px; color: inherit; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\">Kiểm tra lốp xe</h2><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Bạn nên để ý tới lốp xe, bởi lốp mòn, quá căng hoặc quá non đều không tốt. Lốp mòn không đồng đều dễ khiến xe bị rung lắc khi di chuyển. Lốp quá căng dễ làm cho lốp bị nổ khi đi với tốc độ cao. Còn lốp quá non cũng sẽ làm giảm khả năng điền đầy những lồi lõm trên đường đi và do đó, lốp dễ bị thủng khi đi qua các vật nhọn, sỏi đá trên đường.</p><table cellpadding=\"0\" cellspacing=\"0\" style=\"border-spacing: 0px; background-color: transparent; width: 808.812px;\"><tbody><tr><td style=\"padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: center;\"><a href=\"http://media.doisongphapluat.com/thumb_x670x/127/2015/8/11/8-buoc-cham-soc-xe-may-luon-ben-dep1.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 3\" style=\"color: rgb(51, 51, 51); transition: all 0.4s ease 0s;\"><img alt=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 3\" src=\"https://tailocnguyen.vn/uploads/news/2015_09/8-buoc-cham-soc-xe-may-luon-ben-dep1.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 3\" style=\"border: 0px; max-width: 100%; height: auto; width: 485.288px;\"></a></p></td></tr></tbody></table><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Bước tiếp theo là kiểm tra những gân trên lốp xe để chắc rằng bạn được an toàn khi sử dụng chúng. Nên chọn loại lốp có gân trên bề mặt lốp sâu và rộng. Trên&nbsp;thị trường&nbsp;hiện có sẵn những lốp xe của nhiều hãng như Casumina, Honda...</p><h2 style=\"font-family: inherit; font-weight: 600; line-height: 22px; color: inherit; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\">Giảm ma sát tối đa</h2><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Bôi mỡ và bơm mỡ đầy đủ vào các vị trí cần thiết trong&nbsp;xe máy, đặc biệt là xích xe.Bánh xe luôn phải căng đầy hơi vì nếu bánh xe non hơi cũng gây tốn xăng.Phải cân chỉnh máy móc thật tốt, đặc biệt đối với bình xăng con, căn chỉnh điểm đánh lửa đúng, (nên nhờ thợ chuyên môn giúp đỡ).</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">- Khi xe đang chạy nhanh mà muốn giảm tốc độ hoặc những quãng đường phải thay đổi tốc độ liên tục thì nên cố gắng hạn chế để sự tang giảm tốc độ ở mức ít nhất.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">- Khi xe bắt đầu chạy, nên bắt đầu cho xe chạy ở số nhỏ (số 1 hoặc số 2), những số này tạo lực vọt đi lớn để xe chuyển bánh nhanh lúc mới mở ga, như vậy chỉ cần tốn một ít xăng đã làm cho xe chạy được.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Nếu xe đang chạy nhanh mà muốn đi chậm lại thì nên giảm ga từ từ, tránh sử dụng phanh liên tục vì dùng phanh nhiều sẽ rất tốn xăng.</p><h2 style=\"font-family: inherit; font-weight: 600; line-height: 22px; color: inherit; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\"><a href=\"http://tailocnguyen.vn/vi/shops/Dau-nhot/\" style=\"color: rgb(51, 51, 51); transition: all 0.4s ease 0s;\">Thay dầu nhớt</a>&nbsp;đúng định kỳ</h2><table cellpadding=\"0\" cellspacing=\"0\" style=\"border-spacing: 0px; background-color: transparent; width: 808.812px;\"><tbody><tr><td style=\"padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: center;\"><a href=\"http://media.doisongphapluat.com/thumb_x670x/127/2015/8/11/8-buoc-cham-soc-xe-may-luon-ben-dep2.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 4\" style=\"color: rgb(51, 51, 51); transition: all 0.4s ease 0s;\"><img alt=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 4\" src=\"https://tailocnguyen.vn/uploads/news/2015_09/8-buoc-cham-soc-xe-may-luon-ben-dep2.jpg\" title=\"8 bước chăm sóc xe máy luôn bền đẹp - Ảnh 4\" style=\"border: 0px; max-width: 100%; height: auto; width: 485.288px;\"></a></p></td></tr></tbody></table><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Nếu lọc gió được ví như lá phổi của xe thì dầu nhớt lại là máu huyết để xe hoạt động tốt. Động cơ máy được cấu thành từ nhiều chi tiết máy như: xu-pap, piston, trục cam… Khi hoạt động, các chi tiết máy khớp vào nhau để truyền động.&nbsp;<a href=\"http://tailocnguyen.vn/vi/shops/Dau-nhot/\" style=\"color: rgb(51, 51, 51); transition: all 0.4s ease 0s;\">Dầu nhớt</a>&nbsp;có tác dụng bôi trơn cho piston hoạt động nhịp nhàng, êm ái trong lòng xi-lanh. Hệ thống bơm giúp phun dầu nhớt vào các ngóc ngách bên trong động cơ để bôi trơn, làm lớp đệm giữa các chi tiết máy ma sát với nhau để hoạt động êm ái và hạn chế sự mài mòn sinh ra các mạt kim loại.</p><h2 style=\"font-family: inherit; font-weight: 600; line-height: 22px; color: inherit; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\">Bảo dưỡng ắc-quy</h2><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Ắc-quy không đòi hỏi bảo dưỡng thường xuyên ,tuy nhiên, định kỳ hàng tháng nên kiểm tra mức dung dịch trong bình. Nếu thiếu cần bổ sung nước cất hoặc đã khử ion. Các điện cực cũng cần được giữ sạch tới mức hoàn hảo để tránh bị mô-ve: làm sạch muôi, lớp trầm tích hoặc lớp oxi hóa bên ngoài. Nên kiểm tra ắc-quy bằng cả vôn kế và dụng cụ do tỷ trọng.</p><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Bất cứ lúc nào máy đề yếu hoặc vài tuần không chạy xe thì đó là lúc bạn cần nạp cho ắc-quy thay vì để nó tiếp tục phóng điện.</p><h2 style=\"font-family: inherit; font-weight: 600; line-height: 22px; color: inherit; margin-top: 18px; margin-bottom: 9px; font-size: 18px; text-align: justify;\">Chăm chút sự an toàn</h2><p style=\"margin-right: 0px; margin-bottom: 9px; margin-left: 0px; text-align: justify;\">Những bộ phận khác đảm nhiệm sự&nbsp;an toàn&nbsp;khi vận hành xe máy chính là thắng (phanh), nhông xích (đối với xe số) và dây curoa (đối với xe ga). Nếu đang chạy xe trên đường với tốc độ cao mà thắng, nhông xích hay dây curoa đứt sẽ gây ra tai nạn đáng tiếc. Vì thế, mỗi lần bảo dưỡng xe, hãy nhờ các kỹ thuật viên kiểm tra những bộ phận này thật kỹ. Lái xe an toàn, tránh va chạm cũng là cách để “xế cưng” ở lâu hơn với chúng ta.</p></header>', '/storage/photos/1/BaiViet/bgsample_course_default.jpg', NULL, 4, 1, 1, '2024-05-26 05:02:45', '2024-05-26 05:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bai_viet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `noi_dung` text NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `binh_luan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `noi_dung_phan_hoi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cau_hoi`
--

CREATE TABLE `cau_hoi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `khoa_hoc_id` bigint(20) UNSIGNED NOT NULL,
  `de_thi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thu_tu` smallint(3) UNSIGNED NOT NULL,
  `noi_dung` text NOT NULL,
  `hinh_anh` text DEFAULT NULL,
  `la_cau_diem_liet` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `khoa_hoc_id`, `de_thi_id`, `thu_tu`, `noi_dung`, `hinh_anh`, `la_cau_diem_liet`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì?', NULL, 0, NULL, NULL),
(2, 1, 2, 2, '\"Làn đường\" là gì?', NULL, 0, NULL, NULL),
(3, 1, 3, 3, 'Trong các khái niệm dưới đây, “dải phân cách” được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(4, 1, 4, 4, '\"Dải phân cách\" trên đường bộ gồm những loại nào?', NULL, 0, NULL, NULL),
(5, 1, 5, 5, 'Người lái xe được hiểu như thế nào trong các khái niệm dưới đây?', NULL, 0, NULL, NULL),
(6, 1, 6, 6, 'Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?', NULL, 0, NULL, NULL),
(7, 1, 7, 7, 'Khái niệm “phương tiện giao thông cơ giới đường bộ” được hiểu thế nào là đúng?', NULL, 0, NULL, NULL),
(8, 1, 8, 8, 'Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?', NULL, 0, NULL, NULL),
(9, 1, 1, 9, '“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?', NULL, 0, NULL, NULL),
(10, 1, 2, 10, '\"Người tham gia giao thông đường bộ\" gồm những đối tượng nào?', NULL, 0, NULL, NULL),
(11, 1, 3, 11, '\"Người điều khiển phương tiện tham gia giao thông đường bộ\" gồm những đối tượng nào dưới đây?', NULL, 0, NULL, NULL),
(12, 1, 4, 12, 'Khái niệm “người điều khiển giao thông” được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(13, 1, 5, 13, 'Trong các khái niệm dưới đây khái niệm “dừng xe” được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(14, 1, 6, 14, 'Khái niệm “đỗ xe” được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(15, 1, 7, 15, 'Cuộc đua xe chỉ được thực hiện khi nào?', NULL, 1, NULL, NULL),
(16, 1, 8, 16, 'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma tuý có bị nghiêm cấm hay không?', NULL, 1, NULL, NULL),
(17, 1, 1, 17, 'Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?', NULL, 1, NULL, NULL),
(18, 1, 2, 18, 'Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?', NULL, 1, NULL, NULL),
(19, 1, 3, 19, 'Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?', NULL, 1, NULL, NULL),
(20, 1, 4, 20, 'Khi lái xe trong khu đô thị và đông dân cư trừ các khu vực có biển cấm sử dụng còi, người lái xe được sử dụng còi như thế nào trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(21, 1, 5, 21, 'Người lái xe sử dụng đèn như thế nào khi lái xe trong khu đô thị và đông dân cư vào ban đêm?', NULL, 0, NULL, NULL),
(22, 1, 6, 22, 'Trong trường hợp đặc biệt, để được lắp đặt, sử dụng còi, đèn không đúng với thiết kế của nhà sản xuất đối với từng loại xe cơ giới bạn phải đảm bảo yêu cầu nào dưới đây?', NULL, 0, NULL, NULL),
(23, 1, 7, 23, 'Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt có được quay đầu xe hay không?', NULL, 1, NULL, NULL),
(24, 1, 8, 24, 'Bạn đang lái xe phía trước có một xe cảnh sát giao thông không phát tín hiệu ưu tiên bạn có được phép vượt hay không?', NULL, 0, NULL, NULL),
(25, 1, 1, 25, 'Bạn đang lái xe, phía trước có một xe cứu thương đang phát tín hiệu ưu tiên bạn có được phép vượt hay không?', NULL, 0, NULL, NULL),
(26, 1, 2, 26, 'Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?', NULL, 1, NULL, NULL),
(27, 1, 3, 27, 'Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác; sử dụng chân chống của xe quệt xuống đường khi xe đang chạy có được phép hay không?', NULL, 1, NULL, NULL),
(28, 1, 4, 28, 'Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi nào không được phép?', NULL, 1, NULL, NULL),
(29, 1, 5, 29, 'Người ngồi trên xe mô tô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?', NULL, 1, NULL, NULL),
(30, 1, 6, 30, 'Người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy khi tham gia giao thông có được bám, kéo hoặc đẩy các phương tiện khác không?', NULL, 1, NULL, NULL),
(31, 1, 7, 31, 'Người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy khi tham gia giao thông có được sử dụng ô khi trời mưa hay không?', NULL, 1, NULL, NULL),
(32, 1, 8, 32, 'Khi đang lên dốc người ngồi trên xe mô tô có được kéo theo người đang điều khiển xe đạp hay không?', NULL, 1, NULL, NULL),
(33, 1, 1, 33, 'Hành vi sử dụng xe mô tô để kéo, đẩy xe mô tô khác bị hết xăng đến trạm mua xăng có được phép hay không?', NULL, 1, NULL, NULL),
(34, 1, 2, 34, 'Hành vi vận chuyển đồ vật cồng kềnh bằng xe mô tô, xe gắn máy khi tham gia giao thông có được phép hay không?', NULL, 1, NULL, NULL),
(35, 1, 3, 35, 'Người đủ bao nhiêu tuổi trở lên thì được điều khiển xe mô tô hai bánh, xe mô tô ba bánh có dung tích xi lanh từ 50 cm3 trở lên và các loại xe có kết cấu tương tự; xe ô tô tải, máy kéo có trọng tải dưới 3,5 tấn; xe ô tô chở người đến 9 chỗ ngồi?', NULL, 0, NULL, NULL),
(36, 1, 4, 36, 'Người đủ 16 tuổi được điều khiển các loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(37, 1, 5, 37, 'Người có Giấy phép lái xe mô tô hạng A1 không được phép điều khiển loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(38, 1, 6, 38, 'Người có Giấy phép lái xe mô tô hạng A1 được phép điều khiển loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(39, 1, 7, 39, 'Biển báo hiệu có dạng hình tròn, viền đỏ, nền trắng, trên nền có hình vẽ hoặc chữ số, chữ viết màu đen là loại biển gì dưới đây?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-39.jpg', 0, NULL, NULL),
(40, 1, 8, 40, 'Biển báo hiệu có dạng tam giác đều, viền đỏ, viền màu vàng, trên có hình vẽ màu đen là loại biển gì dưới đây?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-40.jpg', 0, NULL, NULL),
(41, 1, 1, 41, 'Biển báo hiệu hình tròn có nền xanh lam có hình vẽ màu trắng là loại biển gì dưới đây?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-41.jpg', 0, NULL, NULL),
(42, 1, 2, 42, 'Biển báo hiệu hình chữ nhật hoặc hình vuông hoặc hình mũi tên nền xanh lam là loại biển gì dưới đây?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-42.jpg', 0, NULL, NULL),
(43, 1, 3, 43, 'Khi sử dụng giấy phép lái xe đã khai báo mất để điều khiển phương tiện cơ giới đường bộ, ngoài việc bị thu hồi giấy phép lái xe, chịu trách nhiệm trước pháp luật, người lái xe không được cấp giấy phép lái xe trong thời gian bao nhiêu năm?', NULL, 0, NULL, NULL),
(44, 1, 4, 44, 'Khi gặp hiệu lệnh như dưới đây của cảnh sát giao thông thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-44.jpg', 0, NULL, NULL),
(45, 1, 5, 45, 'Khi gặp hiệu lệnh như dưới đây của cảnh sát giao thông thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-45.jpg', 0, NULL, NULL),
(46, 1, 6, 46, 'Tại nơi có biển báo hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu nào?', NULL, 0, NULL, NULL),
(47, 1, 7, 47, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi như thế nào?', NULL, 0, NULL, NULL),
(48, 1, 8, 48, 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ và xe cơ giới phải đi như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(49, 1, 1, 49, 'Bạn đang lái xe trong khu vực đô thị từ 22 giờ đến 5 giờ sáng hôm sau và cần vượt một xe khác, bạn cần báo hiệu như thế nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(50, 1, 2, 50, 'Khi điều khiển xe chạy trên đường biết có xe sau xin vượt nếu đủ điều kiện an toàn người lái xe phải làm gì?', NULL, 0, NULL, NULL),
(51, 1, 3, 51, 'Khi muốn chuyển hướng, người lái xe phải thực hiện như thế nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(52, 1, 4, 52, 'Khi tránh xe đi ngược chiều, các xe phải nhường đường như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(53, 1, 5, 53, 'Bạn đang lái xe trên đường hẹp, xuống dốc và gặp một xe đang đi lên dốc, bạn cần làm gì?', NULL, 0, NULL, NULL),
(54, 1, 6, 54, 'Tại nơi đường giao nhau, người lái xe đang đi trên đường không ưu tiên phải nhường đường như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(55, 1, 7, 55, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(56, 1, 8, 56, 'Tại nơi đường bộ giao nhau cùng mức với đường sắt chỉ có đèn tín hiệu hoặc chuông báo hiệu, khi đèn tín hiệu màu đỏ đã bật sáng hoặc có tiếng chuông báo hiệu, người tham gia giao thông phải dừng lại ngay và giữ khoảng cách tối thiểu bao nhiêu mét tính từ ray gần nhất?', NULL, 0, NULL, NULL),
(57, 1, 1, 57, 'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?', NULL, 0, NULL, NULL),
(58, 1, 2, 58, 'Người ngồi trên xe mô tô 2 bánh, xe gắn máy phải đội mũ bảo hiểm có cài quai đúng quy cách khi nào?', NULL, 1, NULL, NULL),
(59, 1, 3, 59, 'Người điều khiển xe mô tô hai bánh, xe gắn máy được phép chở tối đa 2 người trong những trường hợp nào?', NULL, 0, NULL, NULL),
(60, 1, 4, 60, 'Người điều khiển xe mô tô hai bánh, xe gắn máy không được thực hiện những hành vi nào dưới đây?', NULL, 0, NULL, NULL),
(61, 1, 5, 61, 'Người điều khiển xe mô tô hai bánh, xe gắn máy có được đi xe dàn hàng ngang; đi xe vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính) hay không?', NULL, 1, NULL, NULL),
(62, 1, 6, 62, 'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép (có thể dừng lại một cách an toàn) trong trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(63, 1, 7, 63, 'Tại ngã ba hoặc ngã tư không có đảo an toàn, người lái xe phải nhường đường như thế nào là đúng trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(64, 1, 8, 64, 'Khi điều khiển xe cơ giới, người lái xe phải bật đèn tín hiệu báo rẽ trong trường hợp nào sau đây?', NULL, 0, NULL, NULL),
(65, 1, 1, 65, 'Trên đoạn đường hai chiều không có giải phân cách giữa, người lái xe không được vượt xe khác trong các trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(66, 1, 2, 66, 'Người lái xe mô tô xử lý như thế nào khi cho xe mô tô phía sau vượt?', NULL, 0, NULL, NULL),
(67, 1, 3, 67, 'Trong các trường hợp dưới đây, để đảm bảo an toàn khi tham gia giao thông, người lái xe mô tô cần thực hiện như thế nào?', NULL, 0, NULL, NULL),
(68, 1, 4, 68, 'Đường bộ trong khu vực đông dân cư gồm những đoạn đường nào dưới đây?', NULL, 0, NULL, NULL),
(69, 1, 5, 69, 'Tốc độ tối đa cho phép đối với xe máy chuyên dùng, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự trên đường bộ (trừ đường cao tốc) không được vượt quá bao nhiêu km/h?', NULL, 0, NULL, NULL),
(70, 1, 6, 70, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường đôi có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', NULL, 0, NULL, NULL),
(71, 1, 7, 71, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều không có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', NULL, 0, NULL, NULL),
(72, 1, 8, 72, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều hoặc đường một chiều có một làn xe cơ giới, loại xe nào dưới đây được tham gia giao thông với tốc độ tối đa cho phép là 50 km/h?', NULL, 0, NULL, NULL),
(73, 1, 1, 73, 'Khi điều khiển xe chạy với tốc độ dưới 60 km/h, để đảm bảo khoảng cách an toàn giữa hai xe, người lái xe phải điều khiển xe như thế nào?', NULL, 0, NULL, NULL),
(74, 1, 2, 74, 'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép đến mức cần thiết, chú ý quan sát và chuẩn bị sẵn sàng những tình huống có thể xảy ra để phòng ngừa tai nạn trong các trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(75, 1, 3, 75, 'Các phương tiện tham gia giao thông đường bộ (kể cả những xe có quyền ưu tiên) đều phải dừng lại bên phải đường của mình và trước vạch “dừng xe” tại các điểm giao cắt giữa đường bộ và đường sắt khi có báo hiệu dừng nào dưới đây?', NULL, 0, NULL, NULL),
(76, 1, 4, 76, 'Tác dụng của mũ bảo hiểm đối với người ngồi trên xe mô tô hai bánh trong trường hợp xảy ra tai nạn giao thông là gì?', NULL, 0, NULL, NULL),
(77, 1, 5, 77, 'Tại nơi đường giao nhau, người lái xe đang đi trên đường không ưu tiên phải xử lý như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(78, 1, 6, 78, 'Người lái xe phải xử lý như thế nào khi quan sát phía trước thấy người đi bộ đang sang đường tại nơi có vạch đường dành cho người đi bộ để đảm bảo an toàn?', NULL, 1, NULL, NULL),
(79, 1, 7, 79, 'Theo Luật Giao thông đường bộ, tín hiệu đèn giao thông gồm 3 màu nào dưới đây?', NULL, 0, NULL, NULL),
(80, 1, 8, 80, 'Tại nơi giao nhau, khi đèn điều khiển giao thông có tín hiệu màu vàng, người điều khiển giao thông phải chấp hành như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(81, 1, 1, 81, 'Để báo hiệu cho xe phía trước biết xe mô tô của bạn muốn vượt, bạn phải có tín hiệu như thế nào dưới đây?', NULL, 0, NULL, NULL),
(82, 1, 2, 82, 'Người điều khiển xe mô tô phải giảm tốc độ và hết sức thận trọng khi qua những đoạn đường nào dưới đây?', NULL, 0, NULL, NULL),
(83, 1, 3, 83, 'Khi gặp xe buýt đang đang dừng đón, trả khách, người điều khiển xe mô tô phải xử lý như thế nào dưới đây để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(84, 1, 4, 84, 'Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(85, 1, 5, 85, 'Trong các hành vi dưới đây, người lái xe mô tô có văn hóa giao thông phải ứng xử như thế nào?', NULL, 0, NULL, NULL),
(86, 1, 6, 86, 'Trong các hành vi dưới đây, người lái xe ô tô, mô tô có văn hóa giao thông phải ứng xử như thế nào?', NULL, 0, NULL, NULL),
(87, 1, 7, 87, 'Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?', NULL, 0, NULL, NULL),
(88, 1, 8, 88, 'Trên đường đang xảy ra ùn tắc những hành vi nào sau đây là thiếu văn hóa khi tham gia giao thông?', NULL, 0, NULL, NULL),
(89, 1, 1, 89, 'Khi điều khiển xe mô tô tay ga xuống đường dốc dài, độ dốc cao, người lái xe cần thực hiện các thao tác nào dưới đây để đảm bảo an toàn?', NULL, 1, NULL, NULL),
(90, 1, 2, 90, 'Khi quay đầu xe, người lái xe cần phải quan sát và thực hiện các thao tác nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(91, 1, 3, 91, 'Khi tránh nhau trên đường hẹp, người lái xe cần phải chú ý những điểm nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(92, 1, 4, 92, 'Khi điều khiển xe trên đường vòng người lái xe cần phải làm gì để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(93, 1, 5, 93, 'Để đạt được hiệu quả phanh cao nhất, người lái xe mô tô phải sử dụng các kỹ năng như thế nào dưới đây?', NULL, 0, NULL, NULL),
(94, 1, 6, 94, 'Khi đang lái xe mô tô và ô tô, nếu có nhu cầu sử dụng điện thoại để nhắn tin hoặc gọi điện, người lái xe phải thực hiện như thế nào trong các tình huống nêu dưới đây?', NULL, 1, NULL, NULL),
(95, 1, 7, 95, 'Những thói quen nào dưới đây khi điều khiển xe mô tô tay ga tham gia giao thông dễ gây tai nạn nguy hiểm?', NULL, 0, NULL, NULL),
(96, 1, 8, 96, 'Khi điều khiển xe mô tô quay đầu người lái xe cần thực hiện như thế nào để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(97, 1, 1, 97, 'Tay ga trên xe mô tô hai bánh có tác dụng gì trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(98, 1, 2, 98, 'Gương chiếu hậu của xe mô tô hai bánh, có tác dụng gì trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(99, 1, 3, 99, 'Để đảm bảo an toàn khi tham gia giao thông, người lái xe lái xe mô tô hai bánh cần điều khiển tay ga như thế nào trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(100, 1, 4, 100, 'Kỹ thuật cơ bản để giữ thăng bằng khi điều khiển xe mô tô đi trên đường gồ ghề như thế nào trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(101, 1, 5, 101, 'Biển nào dưới đây xe gắn máy được phép đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-101.jpg', 0, NULL, NULL),
(102, 1, 6, 102, 'Biển nào báo hiệu cấm xe mô tô hai bánh đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-102.jpg', 0, NULL, NULL),
(103, 1, 7, 103, 'Khi gặp biển nào thì xe mô tô hai bánh được đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-103.jpg', 0, NULL, NULL),
(104, 1, 8, 104, 'Biển nào cấm quay đầu xe?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-104.jpg', 0, NULL, NULL),
(105, 1, 1, 105, 'Biển nào cấm xe rẽ trái?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-105.jpg', 0, NULL, NULL),
(106, 1, 2, 106, 'Khi gặp biển nào xe được rẽ trái?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-106.jpg', 0, NULL, NULL),
(107, 1, 3, 107, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ phải?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-107.jpg', 0, NULL, NULL),
(108, 1, 4, 108, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ trái?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-108.jpg', 0, NULL, NULL),
(109, 1, 5, 109, 'Biển nào cho phép xe rẽ trái?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-109.jpg', 0, NULL, NULL),
(110, 1, 6, 110, 'Biển nào xe quay đầu không bị cấm?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-110.jpg', 0, NULL, NULL),
(111, 1, 7, 111, 'Biển nào xe được phép quay đầu nhưng không được rẽ trái?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-111.jpg', 0, NULL, NULL),
(112, 1, 8, 112, 'Biển nào là biển \"Cấm đi ngược chiều\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-112.jpg', 0, NULL, NULL),
(113, 1, 1, 113, 'Biển nào dưới đây các phương tiện không được phép đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-113.jpg', 0, NULL, NULL),
(114, 1, 2, 114, 'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dừng lại?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-114.jpg', 0, NULL, NULL),
(115, 1, 3, 115, 'Biển nào cấm tất cả các loại xe cơ giới và thô sơ đi lại trên đường, trừ xe ưu tiên theo luật định (nếu đường vẫn cho xe chạy được)?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-115.jpg', 0, NULL, NULL),
(116, 1, 4, 116, 'Gặp biển nào xe xích lô được phép đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-116.jpg', 0, NULL, NULL),
(117, 1, 5, 117, 'Gặp biển nào xe lam, xe xích lô máy được phép đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-117.jpg', 0, NULL, NULL),
(118, 1, 6, 118, 'Biển báo này có ý nghĩa như thế nào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-118.jpg', 0, NULL, NULL),
(119, 1, 7, 119, 'Chiều dài đoạn đường 500 m từ nơi đặt biển này, người lái xe có được phép bấm còi không?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-119.jpg', 0, NULL, NULL),
(120, 1, 8, 120, 'Biển nào xe mô tô hai bánh được đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-120.jpg', 0, NULL, NULL),
(121, 1, 1, 121, 'Biển nào xe mô tô hai bánh không được đi vào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-121.jpg', 0, NULL, NULL),
(122, 1, 2, 122, 'Biển báo nào báo hiệu bắt đầu đoạn đường vào phạm vi khu vực dân cư, các phương tiện tham gia giao thông phải tuân theo các quy định đi đường được áp dụng ở khu đông dân cư?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-122.jpg', 0, NULL, NULL),
(123, 1, 3, 123, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-123.jpg', 0, NULL, NULL),
(124, 1, 4, 124, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-124.jpg', 0, NULL, NULL),
(125, 1, 5, 125, 'Biển nào báo hiệu \"Đường dành cho xe thô sơ\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-125.jpg', 0, NULL, NULL),
(126, 1, 6, 126, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-126.jpg', 0, NULL, NULL),
(127, 1, 7, 127, 'Biển nào báo hiệu \"Giao nhau với đường sắt có rào chắn\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-127.jpg', 0, NULL, NULL),
(128, 1, 8, 128, 'Biển nào báo hiệu \"Giao nhau có tín hiệu đèn\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-128.jpg', 0, NULL, NULL),
(129, 1, 1, 129, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-129.jpg', 0, NULL, NULL),
(130, 1, 2, 130, 'Biển nào báo hiệu đường sắt giao nhau với đường bộ không có rào chắn?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-130.jpg', 0, NULL, NULL),
(131, 1, 3, 131, 'Biển nào báo hiệu sắp đến chỗ giao nhau giữa đường bộ và đường sắt?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-131.jpg', 0, NULL, NULL),
(132, 1, 4, 132, 'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên qua nơi giao nhau?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-132.jpg', 0, NULL, NULL),
(133, 1, 5, 133, 'Biển nào báo hiệu \"Giao nhau với đường không ưu tiên\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-133.jpg', 0, NULL, NULL),
(134, 1, 6, 134, 'Biển nào báo hiệu \"Giao nhau với đường ưu tiên\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-134.jpg', 0, NULL, NULL),
(135, 1, 7, 135, 'Biển nào báo hiệu \"Đường bị thu hẹp\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-135.jpg', 0, NULL, NULL),
(136, 1, 8, 136, 'Khi gặp biển nào, người lái xe phải giảm tốc độ, chú ý xe đi ngược chiều, xe đi ở phía đường bị hẹp phải nhường đường cho xe đi ngược chiều?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-136.jpg', 0, NULL, NULL),
(137, 1, 1, 137, 'Biển nào báo hiệu \"Đường giao nhau\" của các tuyến đường cùng cấp?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-137.jpg', 0, NULL, NULL),
(138, 1, 2, 138, 'Biển nào báo hiệu \"Đường đôi\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-138.jpg', 0, NULL, NULL),
(139, 1, 3, 139, 'Biển nào báo hiệu \"Đường đôi\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-139.jpg', 0, NULL, NULL),
(140, 1, 4, 140, 'Biển nào báo hiệu \"Giao nhau với đường hai chiều\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-140.jpg', 0, NULL, NULL),
(141, 1, 5, 141, 'Biển nào báo hiệu \"Đường hai chiều\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-141.jpg', 0, NULL, NULL),
(142, 1, 6, 142, 'Biển nào báo hiệu \"Giao nhau với đường hai chiều\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-142.jpg', 0, NULL, NULL),
(143, 1, 7, 143, 'Biển nào báo hiệu \"Chú ý chướng ngại vật\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-143.jpg', 0, NULL, NULL),
(144, 1, 8, 144, 'Gặp biển nào người tham gia giao thông phải đi chậm và thận trọng đề phòng khả năng xuất hiện và di chuyển bất ngờ của trẻ em trên mặt đường?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-144.jpg', 0, NULL, NULL),
(145, 1, 1, 145, 'Biển nào chỉ dẫn nơi bắt đầu đoạn đường dành cho người đi bộ?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-145.jpg', 0, NULL, NULL),
(146, 1, 2, 146, 'Biển báo này có ý nghĩa gì?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-146.jpg', 0, NULL, NULL),
(147, 1, 3, 147, 'Biển nào (đặt trước ngã ba, ngã tư) cho phép xe được rẽ sang hướng khác?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-147.jpg', 0, NULL, NULL),
(148, 1, 4, 148, 'Biển nào báo hiệu \"Hướng đi thẳng phải theo\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-148.jpg', 0, NULL, NULL),
(149, 1, 5, 149, 'Biển nào báo hiệu \"Đường 1 chiều\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-149.jpg', 0, NULL, NULL),
(150, 1, 6, 150, 'Trong các biển dưới đây biển nào là biển \"Hết tốc độ tối đa cho phép\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-150.jpg', 0, NULL, NULL),
(151, 1, 7, 151, 'Hiệu lực của biển \"Tốc độ tối đa cho phép\" hết tác dụng khi gặp biển nào dưới đây?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-151.jpg', 0, NULL, NULL),
(152, 1, 8, 152, 'Trong các biển dưới đây biển nào là biển \"Hết tốc độ tối thiểu\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-152.jpg', 0, NULL, NULL),
(153, 1, 1, 153, 'Biển nào dưới đây báo hiệu hết cấm vượt?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-153.jpg', 0, NULL, NULL),
(154, 1, 2, 154, 'Trong các biển dưới đây biển nào là biển \"Hết mọi lệnh cấm\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-154.jpg', 0, NULL, NULL),
(155, 1, 3, 155, 'Biển nào chỉ dẫn cho người đi bộ sử dụng cầu vượt qua đường?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-155.jpg', 0, NULL, NULL),
(156, 1, 4, 156, 'Biển nào chỉ dẫn cho người đi bộ sử dụng hầm chui qua đường?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-156.jpg', 0, NULL, NULL),
(157, 1, 5, 157, 'Biển nào báo hiệu \"Nơi đỗ xe dành cho người khuyết tật\"?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-157.jpg', 0, NULL, NULL),
(158, 1, 6, 158, 'Gặp biển báo này, người tham gia giao thông phải xử lý như thế nào?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-158.jpg', 0, NULL, NULL),
(159, 1, 7, 159, 'Biển số 1 có ý nghĩa gì?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-159.jpg', 0, NULL, NULL),
(160, 1, 8, 160, 'Vạch kẻ đường nào dưới đây là vạch phân chia các làn xe cùng chiều?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-160.jpg', 0, NULL, NULL),
(161, 1, 1, 161, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường), xe không được lấn làn, không được đè lên vạch?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-161.jpg', 0, NULL, NULL),
(162, 1, 2, 162, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường)?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-162.jpg', 0, NULL, NULL),
(163, 1, 3, 163, 'Các vạch dưới đây có tác dụng gì?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-163.jpg', 0, NULL, NULL),
(164, 1, 4, 164, 'Khi gặp vạch kẻ đường nào các xe được phép đè vạch?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-164.jpg', 0, NULL, NULL),
(165, 1, 5, 165, 'Vạch dưới đây có ý nghĩa gì?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-165.jpg', 0, NULL, NULL),
(166, 1, 6, 166, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-166.jpg', 0, NULL, NULL),
(167, 1, 7, 167, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-167.jpg', 0, NULL, NULL),
(168, 1, 8, 168, 'Trường hợp này xe nào được quyền đi trước?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-168.jpg', 0, NULL, NULL),
(169, 1, 1, 169, 'Xe nào được quyền đi trước trong trường hợp này?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-169.jpg', 0, NULL, NULL),
(170, 1, 2, 170, 'Theo tín hiệu đèn, xe nào được phép đi?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-170.jpg', 0, NULL, NULL),
(171, 1, 3, 171, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-171.jpg', 0, NULL, NULL),
(172, 1, 4, 172, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-172.jpg', 0, NULL, NULL),
(173, 1, 5, 173, 'Trong trường hợp này xe nào đỗ vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-173.jpg', 0, NULL, NULL),
(174, 1, 6, 174, 'Theo hướng mũi tên, những hướng nào xe gắn máy đi được?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-174.jpg', 0, NULL, NULL),
(175, 1, 7, 175, 'Xe nào đỗ vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-175.jpg', 0, NULL, NULL),
(176, 1, 8, 176, 'Xe nào đỗ vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-176.jpg', 0, NULL, NULL),
(177, 1, 1, 177, 'Xe tải kéo mô tô ba bánh như hình này có đúng quy tắc giao thông không?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-177.jpg', 0, NULL, NULL),
(178, 1, 2, 178, 'Xe nào được quyền đi trước trong trường hợp này?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-178.jpg', 0, NULL, NULL),
(179, 1, 3, 179, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-179.jpg', 0, NULL, NULL),
(180, 1, 4, 180, 'Xe nào được quyền đi trước trong trường hợp này?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-180.jpg', 0, NULL, NULL),
(181, 1, 5, 181, 'Xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-181.png', 0, NULL, NULL),
(182, 1, 6, 182, 'Các xe đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-182.jpg', 0, NULL, NULL),
(183, 1, 7, 183, 'Theo hướng mũi tên, xe nào được phép đi?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-183.jpg', 0, NULL, NULL),
(184, 1, 8, 184, 'Trong hình dưới đây, xe nào chấp hành đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-184.jpg', 0, NULL, NULL),
(185, 1, 1, 185, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-185.jpg', 0, NULL, NULL),
(186, 1, 2, 186, 'Trong trường hợp này, thứ tự xe đi như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-186.jpg', 0, NULL, NULL),
(187, 1, 3, 187, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-187.jpg', 0, NULL, NULL),
(188, 1, 4, 188, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-188.jpg', 0, NULL, NULL),
(189, 1, 5, 189, 'Bạn có được phép vượt xe mô tô phía trước không?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-189.jpg', 0, NULL, NULL),
(190, 1, 6, 190, 'Theo tín hiệu đèn của xe cơ giới, xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-190.jpg', 0, NULL, NULL),
(191, 1, 7, 191, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-191.jpg', 0, NULL, NULL),
(192, 1, 8, 192, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-192.jpg', 0, NULL, NULL),
(193, 1, 1, 193, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-193.jpg', 0, NULL, NULL),
(194, 1, 2, 194, 'Các xe đi theo hướng mũi tên, xe nào chấp hành đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-194.jpg', 0, NULL, NULL),
(195, 1, 3, 195, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-195.jpg', 0, NULL, NULL),
(196, 1, 4, 196, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-196.jpg', 0, NULL, NULL),
(197, 1, 5, 197, 'Bạn xử lý như thế nào trong trường hợp này?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-197.jpg', 0, NULL, NULL),
(198, 1, 6, 198, 'Xe nào dừng đúng theo quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-198.jpg', 0, NULL, NULL),
(199, 1, 7, 199, 'Xe của bạn đang di chuyển gần đến khu vực giao cắt với đường sắt, khi rào chắn đang dịch chuyển, bạn điều khiển xe như thế nào là đúng quy tắc giao thông?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-199.jpg', 0, NULL, NULL),
(200, 1, 8, 200, 'Trong tình huống dưới đây, xe đầu kéo kéo rơ moóc (xe container) đang rẽ phải, xe con màu xanh và xe máy phía sau xe container đi như thế nào để đảm bảo an toàn?', '/storage/photos/1/KhoaHoc/A1/CauHoi/A1-200.jpg', 0, NULL, NULL),
(201, 2, NULL, 1, 'Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì?', NULL, 0, NULL, NULL),
(202, 2, NULL, 2, '\"Làn đường\" là gì?', NULL, 0, NULL, NULL),
(203, 2, NULL, 3, 'Khái niệm \"khổ giới hạn của đường bộ\" được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(204, 2, NULL, 4, 'Trong các khái niệm dưới đây, \"dải phân cách\" được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(205, 2, NULL, 5, 'Dải phân cách trên đường bộ gồm những loại nào?', NULL, 0, NULL, NULL),
(206, 2, NULL, 6, 'Người lái xe được hiểu như thế nào trong các khái niệm dưới đây?', NULL, 0, NULL, NULL),
(207, 2, NULL, 7, 'Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?', NULL, 0, NULL, NULL),
(208, 2, NULL, 8, 'Khái niệm \"phương tiện giao thông cơ giới đường bộ\" được hiểu thế nào là đúng?', NULL, 0, NULL, NULL),
(209, 2, NULL, 9, 'Khái niệm \"phương tiện giao thông thô sơ đường bộ\" được hiểu thế nào là đúng?', NULL, 0, NULL, NULL),
(210, 2, NULL, 10, '\"Phương tiện tham gia giao thông đường bộ\" gồm những loại nào?', NULL, 0, NULL, NULL),
(211, 2, NULL, 11, '\"Người tham gia giao thông đường bộ\" gồm những đối tượng nào?', NULL, 0, NULL, NULL),
(212, 2, NULL, 12, '\"Người điều khiển phương tiện tham gia giao thông đường bộ\" gồm những đối tượng nào dưới đây?', NULL, 0, NULL, NULL),
(213, 2, NULL, 13, 'Khái niệm \"người điều khiển giao thông\" được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(214, 2, NULL, 14, 'Trong các khái niệm dưới đây khái niệm \"dùng xe\" được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(215, 2, NULL, 15, 'Khái niệm \"đỗ xe\" được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(216, 2, NULL, 16, 'Khái niệm \"đường cao tốc\" được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(217, 2, NULL, 17, 'Hành vi nào dưới đây bị nghiêm cấm?', NULL, 0, NULL, NULL),
(218, 2, NULL, 18, 'Hành vi đua xe cơ giới, xe máy chuyên dùng không bảo đảm tiêu chuẩn an toàn kỹ thuật và bảo vệ môi trường vào tham gia giao thông đường bộ có bị nghiêm cấm hay không?', NULL, 0, NULL, NULL),
(219, 2, NULL, 19, 'Cuộc đua xe chỉ được thực hiện khi nào?', NULL, 0, NULL, NULL),
(220, 2, NULL, 20, 'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma tuý có bị nghiêm cấm hay không?', NULL, 0, NULL, NULL),
(221, 2, NULL, 21, 'Việc lái xe mô tô, ô tô, máy kéo ngay sau khi uống rượu, bia có được phép hay không?', NULL, 0, NULL, NULL),
(222, 2, NULL, 22, 'Người điều khiển xe môtô, ô tô, máy kéo trên đường mà trong máu hoặc hơi thở có nồng độ cồn có bị nghiêm cấm không?', NULL, 0, NULL, NULL),
(223, 2, NULL, 23, 'Sử dụng rượu, bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?', NULL, 0, NULL, NULL),
(224, 2, NULL, 24, 'Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu, bia khi tham gia giao thông?', NULL, 0, NULL, NULL),
(225, 2, NULL, 25, 'Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có được phép hay không?', NULL, 0, NULL, NULL),
(226, 2, NULL, 26, 'Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?', NULL, 0, NULL, NULL),
(227, 2, NULL, 27, 'Khi lái xe trên đường, người lái xe cần quan sát và bảo đảm tốc độ phương tiện như thế nào?', NULL, 0, NULL, NULL),
(228, 2, NULL, 28, 'Phương tiện giao thông đường bộ di chuyển với tốc độ thấp hơn phải đi như thế nào?', NULL, 0, NULL, NULL),
(229, 2, NULL, 29, 'Trên đường có nhiều làn đường, khi điều khiển phương tiện ở tốc độ chậm bạn phải đi ở làn đường nào?', NULL, 0, NULL, NULL),
(230, 2, NULL, 30, 'Hành vi vượt xe tại các vị trí có tầm nhìn hạn chế, đường vòng, đầu dốc có bị nghiêm cấm hay không?', NULL, 0, NULL, NULL),
(231, 2, NULL, 31, 'Khi lái xe trong khu đô thị và đồng dân cư trừ các khu vực có biển cấm sử dụng còi, người lái xe được sử dụng còi như thế nào trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(232, 2, NULL, 32, 'Người lái xe sử dụng đèn như thế nào khi lái xe trong khu đô thị và đông dân cư vào ban đêm?', NULL, 0, NULL, NULL),
(233, 2, NULL, 33, 'Hành vi lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới có được phép hay không?', NULL, 0, NULL, NULL),
(234, 2, NULL, 34, 'Trong trường hợp đặc biệt, để được lắp đặt, sử dụng còi, đèn không đúng với thiết kế của nhà sản xuất đối với từng loại xe cơ giới bạn phải đảm bảo yêu cầu nào dưới đây?', NULL, 0, NULL, NULL),
(235, 2, NULL, 35, 'Việc sản xuất, mua bán, sử dụng biển số xe cơ giới, xe máy chuyên dùng được quy định như thế nào trong Luật Giao thông đường bộ?', NULL, 0, NULL, NULL),
(236, 2, NULL, 36, 'Người lái xe không được vượt xe khác khi gặp trường hợp nào ghi ở dưới đây?', NULL, 0, NULL, NULL),
(237, 2, NULL, 37, 'Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt có được quay đầu xe hay không?', NULL, 0, NULL, NULL),
(238, 2, NULL, 38, 'Bạn đang lái xe, phía trước có một xe cảnh sát giao thông không phát tín hiệu ưu tiên bạn có được phép vượt hay không?', NULL, 0, NULL, NULL),
(239, 2, NULL, 39, 'Bạn đang lái xe, phía trước có một xe cứu thương đang phát tín hiệu ưu tiên bạn có được phép vượt hay không?', NULL, 0, NULL, NULL),
(240, 2, NULL, 40, 'Người lái xe không được quay đầu xe trong các trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(241, 2, NULL, 41, 'Bạn đang lái xe trong khu dân cư, có đông xe qua lại, nếu muốn quay đầu bạn cần làm gì để tránh ùn tắc và đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(242, 2, NULL, 42, 'Người lái xe không được lùi xe ở những khu vực nào dưới đây?', NULL, 0, NULL, NULL),
(243, 2, NULL, 43, 'Người điều khiển phương tiện giao thông trên đường phố có được dùng xe, đỗ xe trên miệng cống thoát nước, miệng hâm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?', NULL, 0, NULL, NULL),
(244, 2, NULL, 44, 'Khi xe đã kéo 1 xe hoặc xe đã kéo 1 rơ moóc, bạn có được phép kéo thêm xe (kể cả xe thô sơ) hoặc rơ moóc thứ hai hay không?', NULL, 0, NULL, NULL),
(245, 2, NULL, 45, 'Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?', NULL, 0, NULL, NULL),
(246, 2, NULL, 46, 'Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác, sử dụng chân chống của xe quệt xuống đường khi xe đang chạy có được phép hay không?', NULL, 0, NULL, NULL),
(247, 2, NULL, 47, 'Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi nào không được phép?', NULL, 0, NULL, NULL),
(248, 2, NULL, 48, 'Người ngồi trên xe mô tô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?', NULL, 0, NULL, NULL),
(249, 2, NULL, 49, 'Người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy khi tham gia giao thông có được bám, kéo hoặc đẩy các phương tiện khác không?', NULL, 0, NULL, NULL),
(250, 2, NULL, 50, 'Người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy khi tham gia giao thông có được sử dụng ô khi trời mưa hay không ?', NULL, 0, NULL, NULL),
(251, 2, NULL, 51, 'Người có giấy phép lái xe mô tô hạng A1 không được phép điều khiển loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(252, 2, NULL, 52, 'Hành vi sử dụng xe mô tô để kéo, đẩy xe mô tô khác bị hết xăng đến trạm mua xăng có được phép hay không?', NULL, 0, NULL, NULL),
(253, 2, NULL, 53, 'Hành vi vận chuyển đồ vật cồng kềnh bằng xe mô tô, xe gắn máy khi tham gia giao thông có được phép hay không?', NULL, 0, NULL, NULL),
(254, 2, NULL, 54, 'Người đủ 16 tuổi được điều khiển các loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(255, 2, NULL, 55, 'Người có giấy phép lái xe mô tô hạng A1 không được phép điều khiển loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(256, 2, NULL, 56, 'Người có giấy phép lái xe mô tô hạng A1 được phép điều khiển loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(257, 2, NULL, 57, 'Người có giấy phép lái xe mô tô hạng A2 được phép điều khiển loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(258, 2, NULL, 58, 'Người có giấy phép lái xe mô tô hạng A3 được phép điều khiển loại xe nào dưới đây?', NULL, 0, NULL, NULL),
(259, 2, NULL, 59, 'Biển báo hiệu có dạng hình tròn, viền đỏ, nền trắng, trên nền có hình vẽ hoặc chữ số, chữ viết màu đen loại biển gì dưới đây?', '/storage/photos/1/KhoaHoc/A2/59.jpg', 0, NULL, NULL),
(260, 2, NULL, 60, 'Biển báo hiệu có dạng tam giác đều, viền đỏ, nền màu vàng, trên có hình vẽ màu đen là loại biển gì dưới đây?', '/storage/photos/1/KhoaHoc/A2/60.jpg', 0, NULL, NULL),
(261, 2, NULL, 61, 'Biển báo hiệu hình tròn có nền xanh lam có hình vẽ màu trắng là loại biển gì dưới đây?', '/storage/photos/1/KhoaHoc/A2/61.jpg', 0, NULL, NULL),
(262, 2, NULL, 62, 'Biển báo hiệu hình chữ nhật hoặc hình vuông hoặc hình mũi tên nền xanh lam là loại biển gì dưới đây?', NULL, 0, NULL, NULL),
(263, 2, NULL, 63, 'Việc sát hạch cấp giấy phép lái xe ô tô phải thực hiện ở đâu và như thế nào?', NULL, 0, NULL, NULL),
(264, 2, NULL, 64, 'Khi điều khiển xe chạy trên đường, người lái xe phải mang theo các loại giấy tờ gì?', NULL, 0, NULL, NULL),
(265, 2, NULL, 65, 'Khi sử dụng giấy phép lái xe đã khai báo mất để điều khiển phương tiện cơ giới đường bộ, ngoài việc bị thu hồi giấy phép lái xe, chịu trách nhiệm trước pháp luật, người lái xe không được cấp giấy phép lái xe trong thời gian bao nhiêu năm?', NULL, 0, NULL, NULL),
(266, 2, NULL, 66, 'Khi gặp hiệu lệnh như dưới đây của cảnh sát giao thông thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(267, 2, NULL, 67, 'Khi gặp hiệu lệnh như dưới đây của cảnh sát giao thông thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(268, 2, NULL, 68, 'Trên đường giao thông, khi hiệu lệnh của người điều khiển giao thông trái với hiệu lệnh của đèn hoặc biển báo hiệu thì người tham gia giao thông phải chấp hành theo hiệu lệnh nào?', NULL, 0, NULL, NULL),
(269, 2, NULL, 69, 'Tại nơi có biển báo hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu nào?', NULL, 0, NULL, NULL),
(270, 2, NULL, 70, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi như thế nào?', NULL, 0, NULL, NULL),
(271, 2, NULL, 71, 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ và xe cơ giới phải đi như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(272, 2, NULL, 72, 'Bạn đang lái xe trong khu vực đô thị từ 22 giờ đến 5 giờ sáng hôm sau và cần vượt một xe khác, bạn cần báo hiệu như thế nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(273, 2, NULL, 73, 'Khi điều khiển xe chạy trên đường biết có xe sau xin vượt nêu đủ điều kiện an toàn người lái xe phải làm gì?', NULL, 0, NULL, NULL),
(274, 2, NULL, 74, 'Trong khu dân cư, ở nơi nào cho phép người lái xe, người điều khiển xe máy chuyên dùng được quay đầu xe?', NULL, 0, NULL, NULL),
(275, 2, NULL, 75, 'Người lái xe phải làm gì khi quay đầu xe trên cầu, đường ngâm hay khu vực đường bộ giao nhau cùng mức với đường sắt?', NULL, 0, NULL, NULL),
(276, 2, NULL, 76, 'Khi muốn chuyển hướng, người lái xe phải thực hiện như thế nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(277, 2, NULL, 77, 'Khi lùi xe người lái xe phải làm gì để bảo đảm an toàn?', NULL, 0, NULL, NULL),
(278, 2, NULL, 78, 'Khi tránh xe đi ngược chiều, các xe phải nhường đường như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(279, 2, NULL, 79, 'Bạn đang lái xe trên đường hẹp, xuống dốc và gặp một xe đang đi lên dốc, bạn cần làm gì?', NULL, 0, NULL, NULL),
(280, 2, NULL, 80, 'Tại nơi đường giao nhau, người lái xe đang đi trên đường không ưu tiên phải nhường đường như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(281, 2, NULL, 81, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(282, 2, NULL, 82, 'Trên đoạn đường bộ giao nhau cùng lúc với đường sắt, cầu đường bộ đi chung với đường sắt thì loại phương tiện nào được quyền ưu tiên đi trước?', NULL, 0, NULL, NULL),
(283, 2, NULL, 83, 'Tại nơi đường bộ giao nhau cùng lúc với đường sắt chỉ có đèn tín hiệu hoặc chuông báo hiệu, khi đèn tín hiệu màu đỏ đã bật sáng hoặc có tiếng chuông báo hiệu, người tham gia giao thông phải dừng lại ngay và giữ khoảng cách tối thiểu bao nhiêu mét tính từ ray gần nhất?', NULL, 0, NULL, NULL),
(284, 2, NULL, 84, 'Những trường hợp nào ghi ở dưới đây không được đi vào đường cao tốc trừ người, phương tiện, thiết bị phục vụ cho việc quản lý, bảo trì đường cao tốc?', NULL, 0, NULL, NULL),
(285, 2, NULL, 85, 'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?', NULL, 0, NULL, NULL),
(286, 2, NULL, 86, 'Xe quá tải trọng, quá khổ giới hạn tham gia giao thông cần tuân thủ quy định nào ghi ở dưới đây?', NULL, 0, NULL, NULL),
(287, 2, NULL, 87, 'Việc nối giữa xe kéo với xe được kéo trong trường hợp hệ thống hãm của xe được kéo không còn hiệu lực thì phải dùng cách nào?', NULL, 0, NULL, NULL),
(288, 2, NULL, 88, 'Người ngồi trên xe mô tô 2 bánh, xe gắn máy phải đội mũ bảo hiểm có cài quai đúng quy cách khi nào?', NULL, 0, NULL, NULL),
(289, 2, NULL, 89, 'Người điều khiển xe mô tô hai bánh, xe gắn máy được phép chở tối đa 2 người trong những trường hợp nào?', NULL, 0, NULL, NULL),
(290, 2, NULL, 90, 'Người điều khiển xe mô tô hai bánh, xe gắn máy không được thực hiện những hành vi nào dưới đây?', NULL, 0, NULL, NULL),
(291, 2, NULL, 91, 'Người điều khiển xe mô tô hai bánh, xe gắn máy có được đi xe dàn hàng ngang; đi xe vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính) hay không?', NULL, 0, NULL, NULL),
(292, 2, NULL, 92, 'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép (có thể dùng lại một cách an toàn) trong trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(293, 2, NULL, 93, 'Khi gặp một đoàn xe, một đoàn xe tăng hay gặp một đoàn người có tổ chức theo đội ngũ, người lái xe phải xử lý như thế nào?', NULL, 0, NULL, NULL),
(294, 2, NULL, 94, 'Tại ngã ba hoặc ngã tư không có đảo an toàn, người lái xe phải nhường đường như thế nào là đúng trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(295, 2, NULL, 95, 'Khi điều khiển xe cơ giới, người lái xe phải bật đèn tín hiệu báo rẽ trong trường hợp nào sau đây?', NULL, 0, NULL, NULL),
(296, 2, NULL, 96, 'Trên đoạn đường hai chiều không có giải phân cách giữa, người lái xe không được vượt xe khác trong các trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(297, 2, NULL, 97, 'Khi lái xe trên đường vắng mà cảm thấy buồn ngủ, người lái xe nên chọn cách xử lý như thế nào cho phù hợp?', NULL, 0, NULL, NULL),
(298, 2, NULL, 98, 'Người lái xe mô tô xử lý như thế nào khi cho xe mô tô phía sau vượt?', NULL, 0, NULL, NULL),
(299, 2, NULL, 99, 'Trong các trường hợp dưới đây, để đảm bảo an toàn khi tham gia giao thông, người lái xe mô tô cần thực hiện như thế nào?', NULL, 0, NULL, NULL),
(300, 2, NULL, 100, 'Đường bộ trong khu vực đông dân cư gồm những đoạn đường nào dưới đây?', NULL, 0, NULL, NULL),
(301, 2, NULL, 101, 'Tốc độ tối đa cho phép đối với xe máy chuyên dùng, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự trên đường bộ (trừ đường cao tốc) không được vượt quá bao nhiêu km/h?', NULL, 0, NULL, NULL),
(302, 2, NULL, 102, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường đôi có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', NULL, 0, NULL, NULL),
(303, 2, NULL, 103, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều không có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', NULL, 0, NULL, NULL),
(304, 2, NULL, 104, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều hoặc đường một chiều có một làn xe cơ giới, loại xe nào dưới đây được tham gia giao thông với tốc độ tối đa cho phép là 50 km/h?', NULL, 0, NULL, NULL),
(305, 2, NULL, 105, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều hoặc đường một chiều có một làn xe cơ giới, loại xe nào dưới đây được tham gia giao thông với tốc độ tối đa cho phép là 50 km/h?', NULL, 0, NULL, NULL),
(306, 2, NULL, 106, 'Trên đường bộ (trừ đường cao tốc) ngoài khu vực đông dân cư, đường đôi có dải phân cách giữa, loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 90 km/h?', NULL, 0, NULL, NULL),
(307, 2, NULL, 107, 'Trên đường bộ ngoài khu vực đông dân cư, đường đôi có dải phân cách giữa (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 80 km/h?', NULL, 0, NULL, NULL),
(308, 2, NULL, 108, 'Trên đường bộ ngoài khu vực đông dân cư, đường đôi có dải phân cách giữa (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 70 km/h?', NULL, 0, NULL, NULL),
(309, 2, NULL, 109, 'Trên đường bộ ngoài khu vực đông dân cư, đường đôi có dải phân cách giữa (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 60 km/h?', NULL, 0, NULL, NULL),
(310, 2, NULL, 110, 'Trên đường bộ ngoài khu vực đông dân cư, đường hai chiều không có dải phân cách giữa; đường một chiều có một làn xe cơ giới (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 80 km/h?', NULL, 0, NULL, NULL),
(311, 2, NULL, 111, 'Trên đường bộ ngoài khu vực đông dân cư, đường hai chiều không có dải phân cách giữa đường một chiều có 01 làn xe cơ giới (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 70 km/h?', NULL, 0, NULL, NULL),
(312, 2, NULL, 112, 'Trên đường bộ ngoài khu vực đông dân cư, đường hai chiều không có dải phân cách giữa đường một chiều có 01 làn xe cơ giới (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 60 km/h?', NULL, 0, NULL, NULL),
(313, 2, NULL, 113, 'Trên đường bộ ngoài khu vực đông dân cư, đường hai chiều không có dải phân cách giữa đường một chiều có 01 làn xe cơ giới (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 50 km/h?', NULL, 0, NULL, NULL),
(314, 2, NULL, 114, 'Khi tham gia giao thông trên đoạn đường không có biển báo \"Cự ly tối thiểu giữa hai xe\", với điều kiện mặt đường khô ráo, xe cơ giới đang chạy với tốc độ từ trên 60 km/h đến 80 km/h, người lái xe phải giữ khoảng cách an toàn với xe đang chạy liền trước tối thiểu là bao nhiêu?', NULL, 0, NULL, NULL),
(315, 2, NULL, 115, 'Khi tham gia giao thông trên đoạn đường không có biển báo \"Cự ly tối thiểu giữa hai xe\", với điều kiện mặt đường khô ráo, xe cơ giới đang chạy với tốc độ từ trên 80 km/h đến 100 km/h, người lái xe phải giữ khoảng cách an toàn với xe đang chạy liền trước tối thiểu là bao nhiêu?', NULL, 0, NULL, NULL);
INSERT INTO `cau_hoi` (`id`, `khoa_hoc_id`, `de_thi_id`, `thu_tu`, `noi_dung`, `hinh_anh`, `la_cau_diem_liet`, `created_at`, `updated_at`) VALUES
(316, 2, NULL, 116, 'Khi tham gia giao thông trên đoạn đường không có biển báo \"Cự ly tối thiểu giữa hai xe\", với điều kiện mặt đường khô ráo, xe cơ giới đang chạy với tốc độ từ trên 100 km/h đến 120 km/h, người lái xe phải giữ khoảng cách an toàn với xe đang chạy liền trước tối thiểu là bao nhiêu?', NULL, 0, NULL, NULL),
(317, 2, NULL, 117, 'Khi điều khiển xe chạy với tốc độ dưới 60 km/h, để đảm bảo khoảng cách an toàn giữa hai xe, người lái xe phải điều khiển xe như thế nào?', NULL, 0, NULL, NULL),
(318, 2, NULL, 118, 'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép đến mức cần thiết, chú ý quan sát và chuẩn bị sẵn sàng những tình huống có thể xảy ra để phòng ngừa tai nạn trong các trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(319, 2, NULL, 119, 'Người lái xe phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy trong các trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(320, 2, NULL, 120, 'Tại các điểm giao cắt giữa đường bộ và đường sắt quyền ưu tiên thuộc về loại phương tiện nào dưới đây?', NULL, 0, NULL, NULL),
(321, 2, NULL, 121, 'Các phương tiện tham gia giao thông đường bộ (kể cả những xe có quyền ưu tiên) đều phải dừng lại bên phải đường của mình và trước vạch \"dừng xe\" tại các điểm giao cắt giữa đường bộ và đường sắt khi có báo hiệu dừng nào dưới đây?', NULL, 0, NULL, NULL),
(322, 2, NULL, 122, 'Trên đoạn đường bộ giao nhau đồng mức với đường sắt, người không có nhiệm vụ có được tự ý mở chắn đường ngang khi chắn đã đóng hay không?', NULL, 0, NULL, NULL),
(323, 2, NULL, 123, 'Tác dụng của mũ bảo hiểm đối với người ngồi trên xe mô tô hai bánh trong trường hợp xảy ra tai nạn giao thông là gì?', NULL, 0, NULL, NULL),
(324, 2, NULL, 124, 'Khi điều khiển phương tiện tham gia giao thông, những hành vi nào dưới đây bị nghiêm cấm?', NULL, 0, NULL, NULL),
(325, 2, NULL, 125, 'Người lái xe phải nhanh chóng giảm tốc độ, tránh hoặc dùng lại sát lề đường bên phải để nhường đường cho các xe nào nếu dưới đây?', NULL, 0, NULL, NULL),
(326, 2, NULL, 126, 'Tại nơi đường giao nhau, người lái xe đang đi trên đường không ưu tiên phải xử lý như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(327, 2, NULL, 127, 'Khi xe ô tô, mô tô đến gần vị trí giao nhau giữa đường bộ và đường sắt không có rào chắn, khi đèn tín hiệu màu đỏ đã bật sáng hoặc khi có tiếng chuông báo hiệu, người lái xe xử lý như thế nào?', NULL, 0, NULL, NULL),
(328, 2, NULL, 128, 'Khi điều khiển xe trên đường vòng, khuất tầm nhìn người lái xe cần phải làm gì để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(329, 2, NULL, 129, 'Người lái xe phải xử lý như thế nào khi quan sát phía trước thấy người đi bộ đang sang đường tại nơi có vạch đường dành cho người đi bộ để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(330, 2, NULL, 130, 'Người điều khiển phương tiện tham gia giao thông đường bộ phải giảm tốc độ để có thể dùng lại một cách an toàn trong các trường hợp nào dưới đây?', NULL, 0, NULL, NULL),
(331, 2, NULL, 131, 'Tại những đoạn đường không bố trí biển báo hạn chế tốc độ, không bố trí biển báo khoảng cách an toàn tối thiểu giữa hai xe, người điều khiển phương tiện tham gia giao thông phải thực hiện quy định nào dưới đây để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(332, 2, NULL, 132, 'Theo Luật Giao thông đường bộ, tín hiệu đèn giao thông gồm 3 màu nào dưới đây?', NULL, 0, NULL, NULL),
(333, 2, NULL, 133, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu màu vàng, người điều khiển giao thông phải chấp hành như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(334, 2, NULL, 134, 'Để báo hiệu cho xe phía trước biết xe mô tô của bạn muốn vượt, bạn phải có tín hiệu như thế nào dưới đây?', NULL, 0, NULL, NULL),
(335, 2, NULL, 135, 'Khi người lái xe ô tô dừng, đỗ sát theo lề đường, hè phố phía bên phải theo chiều đi của mình, bánh xe gần nhất không được cách xa lề đường, hè phố quá bao nhiêu mét trong các trường hợp dưới đây và không gây cản trở, nguy hiểm cho giao thông?', NULL, 0, NULL, NULL),
(336, 2, NULL, 136, 'Khi dừng, đỗ xe trên đường phố hẹp, người lái xe ô tô phải dừng, đỗ xe ở vị trí cách xe ô tô đang đỗ bên kia đường khoảng cách tối thiểu là bao nhiêu mét trong các trường hợp dưới đây để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(337, 2, NULL, 137, 'Trên đường bộ, người lái xe ô tô có được phép dùng xe, đỗ xe song song với một xe khác đang dừng, đỗ hay không?', NULL, 0, NULL, NULL),
(338, 2, NULL, 138, 'Người điều khiển xe mô tô phải giảm tốc độ và hết sức thận trọng khi qua những đoạn đường nào dưới đây?', NULL, 0, NULL, NULL),
(339, 2, NULL, 139, 'Khi gặp xe buýt đang dùng đón, trả khách, người điều khiển xe mô tô phải xử lý như thế nào dưới đây để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(340, 2, NULL, 140, 'Người hành nghề lái xe khi thực hiện tốt việc rèn luyện, nâng cao trách nhiệm, đạo đức nghề nghiệp sẽ thu được kết quả như thế nào dưới đây?', NULL, 0, NULL, NULL),
(341, 2, NULL, 141, 'Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?', NULL, 0, NULL, NULL),
(342, 2, NULL, 142, 'Người lái xe kinh doanh vận tải cần thực hiện những công việc gì ghi ở dưới đây để thường xuyên rèn luyện nâng cao đạo đức nghề nghiệp?', NULL, 0, NULL, NULL),
(343, 2, NULL, 143, 'Người lái xe và nhân viên phục vụ trên xe ô tô vận tải hành khách phải có những trách nhiệm gì theo quy định dưới đây?', NULL, 0, NULL, NULL),
(344, 2, NULL, 144, 'Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?', NULL, 0, NULL, NULL),
(345, 2, NULL, 145, 'Trên làn đường dành cho ô tô có vũng nước lớn, có nhiều người đi xe mô tô trên làn đường bên cạnh, người lái xe ô tô xử lý như thế nào là có văn hóa giao thông?', NULL, 0, NULL, NULL),
(346, 2, NULL, 146, 'Người lái xe cố tình không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi dưới đây?', NULL, 0, NULL, NULL),
(347, 2, NULL, 147, 'Khi sơ cứu người bị tai nạn giao thông đường bộ, có vết thương chảy máu ngoài, màu đỏ tươi phun thành tia và phun mạnh khi mạch đập, bạn phải làm gì dưới đây?', NULL, 0, NULL, NULL),
(348, 2, NULL, 148, 'Người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào dưới đây?', NULL, 0, NULL, NULL),
(349, 2, NULL, 149, 'Trong các hành vi dưới đây, người lái xe mô tô có văn hóa giao thông phải ứng xử như thế nào?', NULL, 0, NULL, NULL),
(350, 2, NULL, 150, 'Trong các hành vi dưới đây, người lái xe mô tô có văn hóa giao thông phải ứng xử như thế nào?', NULL, 0, NULL, NULL),
(351, 2, NULL, 151, 'Trong các hành vi dưới đây, người lái xe ô tô, mô tô có văn hóa giao thông phải ứng xử như thế nào?', NULL, 0, NULL, NULL),
(352, 2, NULL, 152, 'Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì dưới đây?', NULL, 0, NULL, NULL),
(353, 2, NULL, 153, 'Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?', NULL, 0, NULL, NULL),
(354, 2, NULL, 154, 'Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?', NULL, 0, NULL, NULL),
(355, 2, NULL, 155, 'Khi sơ cứu ban đầu cho người bị tai nạn giao thông đường bộ không còn hô hấp, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?', NULL, 0, NULL, NULL),
(356, 2, NULL, 156, 'Hành vi bỏ trốn sau khi gây tai nạn để trốn tránh trách nhiệm hoặc khi có điều kiện mà cố ý không cứu giúp người bị tai nạn giao thông có bị nghiêm cấm hay không?', NULL, 0, NULL, NULL),
(357, 2, NULL, 157, 'Khi xảy ra tai nạn giao thông, những hành vi nào dưới đây bị nghiêm cấm?', NULL, 0, NULL, NULL),
(358, 2, NULL, 158, 'Khi xảy ra tai nạn giao thông, những hành vi nào dưới đây bị nghiêm cấm?', NULL, 0, NULL, NULL),
(359, 2, NULL, 159, 'Trong đoạn đường hai chiều tại khu đông dân cư đang ùn tắc, người điều khiển xe mô tô hai bánh có văn hóa giao thông sẽ lựa chọn xử lý tình huống nào dưới đây?', NULL, 0, NULL, NULL),
(360, 2, NULL, 160, 'Trên đường đang xảy ra ùn tắc những hành vi nào sau đây là thiếu văn hóa khi tham gia giao thông?', NULL, 0, NULL, NULL),
(361, 2, NULL, 161, 'Khi điều khiển xe mô tô tay ga xuống đường dốc dài, độ dốc cao, người lái xe cần thực hiện các thao tác nào dưới đây để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(362, 2, NULL, 162, 'Khi quay đầu xe, người lái xe cần phải quan sát và thực hiện các thao tác nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(363, 2, NULL, 163, 'Khi tránh nhau trên đường hẹp, người lái xe cần phải chú ý những điểm nào để đảm bảo an toàn giao thông?', NULL, 0, NULL, NULL),
(364, 2, NULL, 164, 'Khi điều khiển xe trên đường vòng người lái xe cần phải làm gì để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(365, 2, NULL, 165, 'Khi điều khiển xe qua đường sắt, người lái xe cần phải thực hiện các thao tác nào dưới đây để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(366, 2, NULL, 166, 'Các biện pháp tiết kiệm nhiên liệu khi chạy xe?', NULL, 0, NULL, NULL),
(367, 2, NULL, 167, 'Khi tầm nhìn bị hạn chế bởi sương mù hoặc mưa to, người lái xe phải thực hiện các thao tác nào?', NULL, 0, NULL, NULL),
(368, 2, NULL, 168, 'Khi đèn pha của xe đi ngược chiều gây chói mắt, làm giảm khả năng quan sát trên đường, người lái xe xử lý như thế nào để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(369, 2, NULL, 169, 'Để đạt được hiệu quả phanh cao nhất, người lái xe mô tô phải sử dụng các kỹ năng như thế nào dưới đây?', NULL, 0, NULL, NULL),
(370, 2, NULL, 170, 'Khi lái xe ô tô trên mặt đường có nhiều \"ổ gà\", người lái xe phải thực hiện thao tác như thế nào để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(371, 2, NULL, 171, 'Khi đi từ đường nhánh ra đường chính, người lái xe phải xử lý như nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(372, 2, NULL, 172, 'Khi đang lái xe mô tô và ô tô, nếu có nhu cầu sử dụng điện thoại để nhắn tin hoặc gọi điện, người lái xe phải thực hiện như thế nào trong các tình huống nêu dưới đây?', NULL, 0, NULL, NULL),
(373, 2, NULL, 173, 'Những thói quen nào dưới đây khi điều khiển xe mô tô tay ga tham gia giao thông dễ gây tai nạn nguy hiểm?', NULL, 0, NULL, NULL),
(374, 2, NULL, 174, 'Khi điều khiển xe mô tô quay đầu người lái xe cần thực hiện như thế nào để đảm bảo an toàn?', NULL, 0, NULL, NULL),
(375, 2, NULL, 175, 'Tay ga trên xe mô tô hai bánh có tác dụng gì trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(376, 2, NULL, 176, 'Gương chiếu hậu của xe mô tô hai bánh, có tác dụng gì trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(377, 2, NULL, 177, 'Để đảm bảo an toàn khi tham gia giao thông, người lái xe lái xe mô tô hai bánh cần điều khiển tay ga như thế nào trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(378, 2, NULL, 178, 'Kỹ thuật cơ bản để giữ thăng bằng khi điều khiển xe mô tô đi trên đường gồ ghề như thế nào trong các trường hợp dưới đây?', NULL, 0, NULL, NULL),
(379, 2, NULL, 179, 'Chủ phương tiện cơ giới đường bộ có được tự ý thay đổi màu son, nhãn hiệu hoặc các đặc tính kỹ thuật của phương tiện so với chứng nhận đăng ký xe hay không?', NULL, 0, NULL, NULL),
(380, 2, NULL, 180, 'Xe mô tô và xe ô tô tham gia giao thông trên đường bộ phải bắt buộc có đủ bộ phận giảm thanh không?', NULL, 0, NULL, NULL),
(381, 2, NULL, 181, 'Thế nào là động cơ 4 kỳ?', NULL, 0, NULL, NULL),
(382, 2, NULL, 182, 'Đèn phanh trên xe ô tô có tác dụng gì?', NULL, 0, NULL, NULL),
(383, 2, NULL, 183, 'Trên xe ô tô có trang bị thiết bị như hình vẽ có tác dụng gì dưới đây?', '/storage/photos/1/KhoaHoc/A2/a2-183.jpg', 0, NULL, NULL),
(384, 2, NULL, 184, 'Trên xe ô tô có trang bị thiết bị như hình vẽ, dùng để làm gì?', '/storage/photos/1/KhoaHoc/A2/a2-184.jpg', 0, NULL, NULL),
(385, 2, NULL, 185, 'Trên xe ô tô có trang bị thiết bị như hình vẽ, dùng để làm gì?', '/storage/photos/1/KhoaHoc/A2/a2-185.jpg', 0, NULL, NULL),
(386, 2, NULL, 186, 'Biển nào cấm các loại xe cơ giới đi vào, trừ xe gắn máy, mô tô hai bánh và các loại xe ưu tiên theo luật định?', NULL, 0, NULL, NULL),
(387, 2, NULL, 187, 'Biển nào cấm ô tô tải?', '/storage/photos/1/KhoaHoc/A2/a2-187.jpg', 0, NULL, NULL),
(388, 2, NULL, 188, 'Biển nào cấm máy kéo?', NULL, 0, NULL, NULL),
(389, 2, NULL, 189, 'Biển nào báo hiệu cấm xe mô tô ba bánh đi vào?', NULL, 0, NULL, NULL),
(390, 2, NULL, 190, 'Biển nào dưới đây xe gắn máy được phép đi vào?', NULL, 0, NULL, NULL),
(391, 2, NULL, 191, 'Biển nào báo hiệu cấm xe mô tô hai bánh đi vào?', NULL, 0, NULL, NULL),
(392, 2, NULL, 192, 'Khi gặp biển nào thì xe mô tô hai bánh được đi vào?', NULL, 0, NULL, NULL),
(393, 2, NULL, 193, 'Biển nào cho phép ô tô con được vượt?', NULL, 0, NULL, NULL),
(394, 2, NULL, 194, 'Biển nào không cho phép ô tô con vượt?', NULL, 0, NULL, NULL),
(395, 2, NULL, 195, 'Biển nào cấm ô tô tải vượt?', NULL, 0, NULL, NULL),
(396, 2, NULL, 196, 'Biển nào cấm xe tải vượt?', NULL, 0, NULL, NULL),
(397, 2, NULL, 197, 'Biển nào xe ô tô con được phép vượt?', NULL, 0, NULL, NULL),
(398, 2, NULL, 198, 'Biển nào cấm quay đầu xe?', NULL, 0, NULL, NULL),
(399, 2, NULL, 199, 'Biển nào cấm xe rẽ trái?', NULL, 0, NULL, NULL),
(400, 2, NULL, 200, 'Khi gặp biển nào xe được rẽ trái?', NULL, 0, NULL, NULL),
(401, 2, NULL, 201, 'Biển nào cấm ô tô rẽ trái?', NULL, 0, NULL, NULL),
(402, 2, NULL, 202, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ phải?', NULL, 0, NULL, NULL),
(403, 2, NULL, 203, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ trái?', NULL, 0, NULL, NULL),
(404, 2, NULL, 204, 'Biển nào dưới đây cấm ô tô quay đầu?', NULL, 0, NULL, NULL),
(405, 2, NULL, 205, 'Biển nào dưới đây cấm ô tô quay đầu và rẽ phải?', NULL, 0, NULL, NULL),
(406, 2, NULL, 206, 'Biển nào cấm xe taxi mà không cấm các phương tiện khác?', NULL, 0, NULL, NULL),
(407, 2, NULL, 207, 'Biển nào cho phép xe rẽ trái?', NULL, 0, NULL, NULL),
(408, 2, NULL, 208, 'Biển nào xe quay đầu không bị cấm?', NULL, 0, NULL, NULL),
(409, 2, NULL, 209, 'Biển nào xe được phép quay đầu nhưng không được rẽ trái?', NULL, 0, NULL, NULL),
(410, 2, NULL, 210, 'Biển nào là biển “Cấm đi ngược chiều”?', NULL, 0, NULL, NULL),
(411, 2, NULL, 211, 'Biển nào dưới đây các phương tiện không được phép đi vào?', NULL, 0, NULL, NULL),
(412, 2, NULL, 212, 'Gặp biển nào người lái xe không được đỗ xe vào ngày chắn?', NULL, 0, NULL, NULL),
(413, 2, NULL, 213, 'Gặp biển nào người lái xe không được đỗ xe vào ngày le?', NULL, 0, NULL, NULL),
(414, 2, NULL, 214, 'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dùng lại?', NULL, 0, NULL, NULL),
(415, 2, NULL, 215, 'Biển nào cấm tất cả các loại xe cơ giới và thô sơ đi lại trên đường, trừ xe ưu tiên theo luật định (nếu đường vẫn cho xe chạy được)?', NULL, 0, NULL, NULL),
(416, 2, NULL, 216, 'Biển nào là biển \"Cấm xe chở hàng nguy hiểm\"?', NULL, 0, NULL, NULL),
(417, 2, NULL, 217, 'Gặp biển nào xe xích lô được phép đi vào?', NULL, 0, NULL, NULL),
(418, 2, NULL, 218, 'Gặp biển nào xe lam, xe xích lô máy được phép đi vào?', NULL, 0, NULL, NULL),
(419, 2, NULL, 219, 'Biển báo này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(420, 2, NULL, 220, 'Biển báo này có ý nghĩa như thế nào?', NULL, 0, NULL, NULL),
(421, 2, NULL, 221, 'Khi gặp các biển này xe ưu tiên theo luật định (có tải trọng hay chiều cao toàn bộ vượt quá chỉ số ghi trên biển) có được phép đi qua hay không?', NULL, 0, NULL, NULL),
(422, 2, NULL, 222, 'Biển nào hạn chế chiều cao của xe và hàng?', NULL, 0, NULL, NULL),
(423, 2, NULL, 223, 'Biển số 2 có ý nghĩa như thế nào?', NULL, 0, NULL, NULL),
(424, 2, NULL, 224, 'Biển số 3 có ý nghĩa như thế nào?', NULL, 0, NULL, NULL),
(425, 2, NULL, 225, 'Biển nào cấm máy kéo kéo theo rơ moóc?', NULL, 0, NULL, NULL),
(426, 2, NULL, 226, 'Khi gặp biển số 1, xe ô tô tải có được đi vào không?', NULL, 0, NULL, NULL),
(427, 2, NULL, 227, 'Biển nào không có hiệu lực đối với ô tô tải không kéo moóc?', NULL, 0, NULL, NULL),
(428, 2, NULL, 228, 'Biển nào cấm máy kéo?', NULL, 0, NULL, NULL),
(429, 2, NULL, 229, 'Khi gặp biển này, xe mô tô ba bánh có được phép rẽ trái hoặc rẽ phải hay không?', NULL, 0, NULL, NULL),
(430, 2, NULL, 230, 'Biển này có hiệu lực đối với xe mô tô hai, ba bánh không?', NULL, 0, NULL, NULL),
(431, 2, NULL, 231, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(432, 2, NULL, 232, 'Biển phụ đặt dưới biển cấm bóp còi có ý nghĩa gì?', NULL, 0, NULL, NULL),
(433, 2, NULL, 233, 'Chiều dài đoạn đường 500 m từ nơi đặt biển này, người lái xe có được phép bấm còi không?', NULL, 0, NULL, NULL),
(434, 2, NULL, 234, 'Biển nào xe mô tô hai bánh được đi vào?', NULL, 0, NULL, NULL),
(435, 2, NULL, 235, 'Biển nào xe mô tô hai bánh không được đi vào?', NULL, 0, NULL, NULL),
(436, 2, NULL, 236, 'Ba biển này có hiệu lực như thế nào?', NULL, 0, NULL, NULL),
(437, 2, NULL, 237, 'Biển nào báo hiệu chiều dài đoạn đường phải giữ cự ly tôi thiếu giữa hai xe?', NULL, 0, NULL, NULL),
(438, 2, NULL, 238, 'Biển nào báo hiệu khoảng cách thực tế từ nơi đặt biển đến nơi cần cự ly tối thiểu giữa hai xe?', NULL, 0, NULL, NULL),
(439, 2, NULL, 239, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(440, 2, NULL, 240, 'Theo hướng bên phải có được phép đỗ xe, dừng xe không?', NULL, 0, NULL, NULL),
(441, 2, NULL, 241, 'Gặp biển này, xe ô tô sơ mi rơ moóc có chiều dài toàn bộ kể cả xe, moóc và hàng lớn hơn trị số ghi trên biển có được phép đi vào không?', NULL, 0, NULL, NULL),
(442, 2, NULL, 242, 'Xe ô tô chở hàng vượt quá phía trước và sau thùng xe, mỗi phía quá 10% chiều dài toàn bộ thân xe, tổng chiều dài xe (cả hàng) từ trước đến sau nhỏ hơn trị số ghi trên biển thì có được phép đi vào không?', NULL, 0, NULL, NULL),
(443, 2, NULL, 243, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(444, 2, NULL, 244, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(445, 2, NULL, 245, 'Biển nào là biển \"Tốc độ tối đa cho phép về ban đêm\"?', NULL, 0, NULL, NULL),
(446, 2, NULL, 246, 'Biển báo nào báo hiệu bắt đầu đoạn đường vào phạm vi khu dân cư, các phương tiện tham gia giao thông phải tuân theo các quy định đi đường được áp dụng ở khu đông dân cư?', NULL, 0, NULL, NULL),
(447, 2, NULL, 247, 'Biển nào báo hiệu hạn chế tốc độ của phương tiện không vượt quá trị số ghi trên biển?', NULL, 0, NULL, NULL),
(448, 2, NULL, 248, 'Trong các biển báo dưới đây biển nào báo hiệu \"Hết đường cao tốc\"?', NULL, 0, NULL, NULL),
(449, 2, NULL, 249, 'Số 50 ghi trên biển báo dưới đây có ý nghĩa gì?', NULL, 0, NULL, NULL),
(450, 2, NULL, 250, 'Trong các biển dưới đây biển nào chỉ dẫn bắt đầu đường cao tốc?', NULL, 0, NULL, NULL),
(451, 2, NULL, 251, 'Biển báo dưới đây có ý nghĩa gì?', NULL, 0, NULL, NULL),
(452, 2, NULL, 252, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?', NULL, 0, NULL, NULL),
(453, 2, NULL, 253, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này?', NULL, 0, NULL, NULL),
(454, 2, NULL, 254, 'Biển nào báo hiệu \"Đường dành cho xe thô sơ\"?', NULL, 0, NULL, NULL),
(455, 2, NULL, 255, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm?', NULL, 0, NULL, NULL),
(456, 2, NULL, 256, 'Biển nào báo hiệu \"Giao nhau với đường sắt có rào chắn\"?', NULL, 0, NULL, NULL),
(457, 2, NULL, 257, 'Biển nào báo hiệu \"Giao nhau có tín hiệu đèn\"?', NULL, 0, NULL, NULL),
(458, 2, NULL, 258, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt?', NULL, 0, NULL, NULL),
(459, 2, NULL, 259, 'Biển nào báo hiệu đường sắt giao nhau với đường bộ không có rào chắn?', NULL, 0, NULL, NULL),
(460, 2, NULL, 260, 'Biển nào báo hiệu sắp đến chỗ giao nhau giữa đường bộ và đường sắt?', NULL, 0, NULL, NULL),
(461, 2, NULL, 261, 'Biển nào báo hiệu \"Cửa chui\"?', NULL, 0, NULL, NULL),
(462, 2, NULL, 262, 'Hai biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(463, 2, NULL, 263, 'Biển nào báo hiệu \"Nơi đường sắt giao vuông góc với đường bộ\"?', NULL, 0, NULL, NULL),
(464, 2, NULL, 264, 'Các biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(465, 2, NULL, 265, 'Biển nào báo hiệu \"Hết đoạn đường ưu tiên\"?', NULL, 0, NULL, NULL),
(466, 2, NULL, 266, 'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên qua nơi giao nhau?', NULL, 0, NULL, NULL),
(467, 2, NULL, 267, 'Biển nào báo hiệu \"Giao nhau với đường không ưu tiên\"?', NULL, 0, NULL, NULL),
(468, 2, NULL, 268, 'Biển nào báo hiệu \"Giao nhau với đường ưu tiên\"?', NULL, 0, NULL, NULL),
(469, 2, NULL, 269, 'Biển nào báo hiệu \"Đường bị thu hẹp\"?', NULL, 0, NULL, NULL),
(470, 2, NULL, 270, 'Khi gặp biển nào, người lái xe phải giảm tốc độ, chú ý xe đi ngược chiều, xe đi ở phía đường bị hẹp phải nhường đường cho xe đi ngược chiều?', NULL, 0, NULL, NULL),
(471, 2, NULL, 271, 'Biển nào báo hiệu \"Giao nhau với đường ưu tiên\"?', NULL, 0, NULL, NULL),
(472, 2, NULL, 272, 'Biển nào báo hiệu \"Đường giao nhau\" của các tuyến đường cùng cấp?', NULL, 0, NULL, NULL),
(473, 2, NULL, 273, 'Biển nào báo hiệu \"Giao nhau với đường không ưu tiên\"?', NULL, 0, NULL, NULL),
(474, 2, NULL, 274, 'Biển nào báo hiệu \"Đường hai chiều\"?', NULL, 0, NULL, NULL),
(475, 2, NULL, 275, 'Biển nào báo hiệu phải giảm tốc độ, nhường đường cho xe cơ giới đi ngược chiều qua đường hẹp?', NULL, 0, NULL, NULL),
(476, 2, NULL, 276, 'Biển nào chỉ dẫn \"Được ưu tiên qua đường hẹp\"?', NULL, 0, NULL, NULL),
(477, 2, NULL, 277, 'Biển nào báo hiệu \"Đường đôi\"?', NULL, 0, NULL, NULL),
(478, 2, NULL, 278, 'Biển nào báo hiệu \"Đường đôi\"?', NULL, 0, NULL, NULL),
(479, 2, NULL, 279, 'Biển nào báo hiệu \"Kết thúc đường đôi\"?', NULL, 0, NULL, NULL),
(480, 2, NULL, 280, 'Biển nào báo hiệu \"Giao nhau với đường hai chiều\"?', NULL, 0, NULL, NULL),
(481, 2, NULL, 281, 'Biển nào báo hiệu \"Đường hai chiều\"?', NULL, 0, NULL, NULL),
(482, 2, NULL, 282, 'Biển nào báo hiệu \"Giao nhau với đường hai chiều\"?', NULL, 0, NULL, NULL),
(483, 2, NULL, 283, 'Biển nào báo hiệu \"Chú ý chướng ngại vật\"?', NULL, 0, NULL, NULL),
(484, 2, NULL, 284, 'Biển nào chỉ dẫn cho người tham gia giao thông biết vị trí và khoảng cách có làn đường cứu nạn hay làn thoát xe khẩn cấp?', NULL, 0, NULL, NULL),
(485, 2, NULL, 285, 'Biển nào chỉ dẫn cho người tham gia giao thông biết vị trí và khoảng cách có làn đường cứu nạn hay làn thoát xe khẩn cấp?', NULL, 0, NULL, NULL),
(486, 2, NULL, 286, 'Biển nào dưới đây là biển \"Cầu hẹp\"?', NULL, 0, NULL, NULL),
(487, 2, NULL, 287, 'Biển nào dưới đây là biển \"Cầu quay – cầu cất\"?', NULL, 0, NULL, NULL),
(488, 2, NULL, 288, 'Biển nào dưới đây là biển \"Kè, vực sâu phía trước\"?', NULL, 0, NULL, NULL),
(489, 2, NULL, 289, 'Biển nào sau đây là biển \"Kè, vực sâu bên đường phía bên trái\"?', NULL, 0, NULL, NULL),
(490, 2, NULL, 290, 'Biển nào sau đây là biển \"Kè, vực sâu bên đường phía bên phải\"?', NULL, 0, NULL, NULL),
(491, 2, NULL, 291, 'Biển nào sau đây là biển \"Đường trơn\"?', NULL, 0, NULL, NULL),
(492, 2, NULL, 292, 'Biển nào sau đây là biển \"Lề đường nguy hiểm\"?', NULL, 0, NULL, NULL),
(493, 2, NULL, 293, 'Biển nào sau đây báo trước gần tới đoạn đường đang tiến hành thi công?', NULL, 0, NULL, NULL),
(494, 2, NULL, 294, 'Biển nào sau đây cảnh báo nguy hiểm đoạn đường thường xảy ra tai nạn?', NULL, 0, NULL, NULL),
(495, 2, NULL, 295, 'Biển nào dưới đây báo hiệu đoạn đường hay xảy ra ùn tắc giao thông?', NULL, 0, NULL, NULL),
(496, 2, NULL, 296, 'Gặp biển nào người tham gia giao thông phải đi chậm và thận trọng đề phòng khả năng xuất hiện và di chuyển bất ngờ của trẻ em trên mặt đường?', NULL, 0, NULL, NULL),
(497, 2, NULL, 297, 'Biển nào chỉ dẫn nơi bắt đầu đoạn đường dành cho người đi bộ?', NULL, 0, NULL, NULL),
(498, 2, NULL, 298, 'Biển nào dưới đây báo hiệu gần đến đoạn đường thường có trẻ em đi ngang qua?', NULL, 0, NULL, NULL),
(499, 2, NULL, 299, 'Gặp biển nào dưới đây người tham gia giao thông cần phải điều chỉnh tốc độ xe chạy cho thích hợp, đề phòng gió ngang thổi mạnh gây lật xe?', '/storage/photos/1/KhoaHoc/A2/a2-299.jpg', 0, NULL, NULL),
(500, 2, NULL, 300, 'Biển nào sau đây là biển \"Dốc xuống nguy hiểm\"?', '/storage/photos/1/KhoaHoc/A2/a2-300.jpg', 0, NULL, NULL),
(501, 2, NULL, 301, 'Biển nào sau đây là biển \"Dốc lên nguy hiểm\"?', NULL, 0, NULL, NULL),
(502, 2, NULL, 302, 'Biển báo này có ý nghĩa gì?', '/storage/photos/1/KhoaHoc/A2/a2-302.jpg', 0, NULL, NULL),
(503, 2, NULL, 303, 'Biển báo này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(504, 2, NULL, 304, 'Biển báo này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(505, 2, NULL, 305, 'Biển báo này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(506, 2, NULL, 306, 'Biển báo dưới đây có ý nghĩa gì?', NULL, 0, NULL, NULL),
(507, 2, NULL, 307, 'Các biển báo này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(508, 2, NULL, 308, 'Biển báo này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(509, 2, NULL, 309, 'Gặp biển báo này người lái xe phải xử lý thế nào?', NULL, 0, NULL, NULL),
(510, 2, NULL, 310, 'Biển báo này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(511, 2, NULL, 311, 'Biển nào báo hiệu các phương tiện phải đi đúng làn đường quy định và tuân thủ tốc độ tối đa cho phép?', NULL, 0, NULL, NULL),
(512, 2, NULL, 312, 'Biển nào báo hiệu các phương tiện phải tuân thủ tốc độ tối đa cho phép trên từng làn đường?', NULL, 0, NULL, NULL),
(513, 2, NULL, 313, 'Biển nào báo hiệu \"Đường dành cho xe ô tô\"?', NULL, 0, NULL, NULL),
(514, 2, NULL, 314, 'Biển nào báo hiệu \"Hết đoạn đường dành cho xe ô tô\"?', NULL, 0, NULL, NULL),
(515, 2, NULL, 315, 'Khi gặp biển nào thì các phương tiện không được đi vào, trừ ô tô và mô tô?', NULL, 0, NULL, NULL),
(516, 2, NULL, 316, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(517, 2, NULL, 317, 'Biển nào (đặt trước ngã ba, ngã tư) cho phép xe được rẽ sang hướng khác?', NULL, 0, NULL, NULL),
(518, 2, NULL, 318, 'Biển nào báo hiệu \"Hướng đi thẳng phải theo\" ?', NULL, 0, NULL, NULL),
(519, 2, NULL, 319, 'Biển nào báo hiệu \"Đường một chiều\"?', NULL, 0, NULL, NULL),
(520, 2, NULL, 320, 'Trong các biển dưới đây biển nào là biển \"Hết tốc độ tối đa cho phép\"?', NULL, 0, NULL, NULL),
(521, 2, NULL, 321, 'Hiệu lực của biển “Tốc độ tối đa cho phép” hết tác dụng khi gặp biển nào dưới đây?', NULL, 0, NULL, NULL),
(522, 2, NULL, 322, 'Trong các biển dưới đây biển nào là biển \"Hết tốc độ tối thiểu\"?', NULL, 0, NULL, NULL),
(523, 2, NULL, 323, 'Biển nào dưới đây báo hiệu hết cấm vượt?', NULL, 0, NULL, NULL),
(524, 2, NULL, 324, 'Trong các biển dưới đây biển nào là biển \"Hết mọi lệnh cấm\"?', NULL, 0, NULL, NULL),
(525, 2, NULL, 325, 'Biển nào cho phép được quay đầu xe đi theo hướng ngược lại khi đặt biển trước ngã ba, ngã tư?', NULL, 0, NULL, NULL),
(526, 2, NULL, 326, 'Biển nào không cho phép rẽ phải?', NULL, 0, NULL, NULL),
(527, 2, NULL, 327, 'Khi đến chỗ giao nhau, gặp biển nào thì người lái xe không được cho xe đi thẳng, phải rẽ sang hướng khác?', NULL, 0, NULL, NULL),
(528, 2, NULL, 328, 'Biển nào cho phép quay đầu xe?', NULL, 0, NULL, NULL),
(529, 2, NULL, 329, 'Biển nào chỉ dẫn tên đường trên các tuyến đường đối ngoại?', NULL, 0, NULL, NULL),
(530, 2, NULL, 330, 'Biển số 1 có ý nghĩa gì?', NULL, 0, NULL, NULL),
(531, 2, NULL, 331, 'Biển số 3 có ý nghĩa gì?', NULL, 0, NULL, NULL),
(532, 2, NULL, 332, 'Biển nào báo hiệu \"Đường phía trước có làn đường dành cho ô tô khách\"?', NULL, 0, NULL, NULL),
(533, 2, NULL, 333, 'Biển nào báo hiệu \"Rẽ ra đường có làn đường dành cho ô tô khách\"?', NULL, 0, NULL, NULL),
(534, 2, NULL, 334, 'Biển nào đặt trên đường chính trước khi đến nơi đường giao nhau để rẽ vào đường cụt?', NULL, 0, NULL, NULL),
(535, 2, NULL, 335, 'Biển nào chỉ dẫn cho người đi bộ sử dụng cầu vượt qua đường?', NULL, 0, NULL, NULL),
(536, 2, NULL, 336, 'Biển nào chỉ dẫn cho người đi bộ sử dụng hầm chui qua đường?', NULL, 0, NULL, NULL),
(537, 2, NULL, 337, 'Biển nào báo hiệu \"Nơi đỗ xe dành cho người khuyết tật\"?', NULL, 0, NULL, NULL),
(538, 2, NULL, 338, 'Gặp biển báo này, người lái xe phải đỗ xe như thế nào?', NULL, 0, NULL, NULL),
(539, 2, NULL, 339, 'Gặp biển báo này, người tham gia giao thông phải xử lý như thế nào?', NULL, 0, NULL, NULL),
(540, 2, NULL, 340, 'Gặp biển báo dưới đây, người lái xe có bắt buộc phải chạy vòng theo đảo an toàn theo hướng mũi tên khi muốn chuyển hướng hay không?', NULL, 0, NULL, NULL),
(541, 2, NULL, 341, 'Biển nào dưới đây chỉ dẫn địa giới hành chính giữa các thành phố, tỉnh, huyện?', NULL, 0, NULL, NULL),
(542, 2, NULL, 342, 'Biển nào báo hiệu \"Cầu vượt liên thông\"?', NULL, 0, NULL, NULL),
(543, 2, NULL, 343, 'Biển số 1 có ý nghĩa gì?', NULL, 0, NULL, NULL),
(544, 2, NULL, 344, 'Biển nào báo hiệu \"Tuyến đường cầu vượt cắt qua\"?', NULL, 0, NULL, NULL),
(545, 2, NULL, 345, 'Biển báo dưới đây có ý nghĩa gì?', NULL, 0, NULL, NULL),
(546, 2, NULL, 346, 'Tại đoạn đường có biển \"Làn đường dành riêng cho từng loại xe\" dưới đây, các phương tiện có được phép chuyển sang làn khác để đi theo hành trình mong muốn khi đến gần nơi đường bộ giao nhau hay không?', NULL, 0, NULL, NULL),
(547, 2, NULL, 347, 'Tại đoạn đường có cắm biển dưới đây, xe tải và xe khách có được phép đi vào không?', NULL, 0, NULL, NULL),
(548, 2, NULL, 348, 'Tại đoạn đường có cắm biển dưới đây, xe tải và xe khách có được phép đi vào không?', NULL, 0, NULL, NULL),
(549, 2, NULL, 349, 'Biển nào báo hiệu kết thúc đường cao tốc?', NULL, 0, NULL, NULL),
(550, 2, NULL, 350, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(551, 2, NULL, 351, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(552, 2, NULL, 352, 'Ý nghĩa các biểu tượng ghi trên biển chỉ dẫn là gì?', NULL, 0, NULL, NULL),
(553, 2, NULL, 353, 'Biển này có ý nghĩa gì?', NULL, 0, NULL, NULL),
(554, 2, NULL, 354, 'Trên đường cao tốc, gặp biển nào thì người lái xe đi theo hướng bên trái để tránh chướng ngại?', NULL, 0, NULL, NULL),
(555, 2, NULL, 355, 'Trên đường cao tốc, gặp biển nào thì người lái xe đi theo hướng bên phải để tránh chướng ngại', NULL, 0, NULL, NULL),
(556, 2, NULL, 356, 'Trên đường cao tốc, gặp biển nào thì người lái xe đi được cả hai hướng (bên trái hoặc bên phải) để tránh chướng ngại vật?', NULL, 0, NULL, NULL),
(557, 2, NULL, 357, 'Trên đường cao tốc, gặp biển nào người lái xe phải chú ý đổi hướng đi khi sắp vào đường cong nguy hiểm?', NULL, 0, NULL, NULL),
(558, 2, NULL, 358, 'Vạch mũi tên chỉ hướng trên mặt đường nào dưới đây cho phép xe chỉ được đi thẳng và rẽ phải?', NULL, 0, NULL, NULL),
(559, 2, NULL, 359, 'Vạch kẻ đường nào dưới đây là vạch phân chia các làn xe cùng chiều?', NULL, 0, NULL, NULL),
(560, 2, NULL, 360, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường), xe không được lấn làn, không được đè lên vạch?', NULL, 0, NULL, NULL),
(561, 2, NULL, 361, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường)?', NULL, 0, NULL, NULL),
(562, 2, NULL, 362, 'Các vạch dưới đây có tác dụng gì?', NULL, 0, NULL, NULL),
(563, 2, NULL, 363, 'Các vạch dưới đây có tác dụng gì?', NULL, 0, NULL, NULL),
(564, 2, NULL, 364, 'Khi gặp vạch kẻ đường nào các xe được phép đè vạch?', NULL, 0, NULL, NULL),
(565, 2, NULL, 365, 'Vạch dưới đây có tác dụng gì?', NULL, 0, NULL, NULL),
(566, 2, NULL, 366, 'Vạch dưới đây có ý nghĩa gì?', NULL, 0, NULL, NULL),
(567, 2, NULL, 367, 'Vạch dưới đây có ý nghĩa gì?', NULL, 0, NULL, NULL),
(568, 2, NULL, 368, 'Thứ tự đi như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(569, 2, NULL, 369, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', NULL, 0, NULL, NULL),
(570, 2, NULL, 370, 'Trường hợp này xe nào được quyền đi trước?', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_danh_muc`, `slug`, `trang_thai`, `created_at`, `updated_at`) VALUES
(2, 'Vệ sinh và làm sạch', 've-sinh-va-lam-sach', 1, '2024-05-26 04:59:15', '2024-05-26 04:59:15'),
(3, 'Bảo dưỡng định kỳ', 'bao-duong-dinh-ky', 1, '2024-05-26 05:00:25', '2024-05-26 05:00:25'),
(4, 'Lái xe an toàn', 'lai-xe-an-toan', 1, '2024-05-26 05:01:12', '2024-05-26 05:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `de_thi`
--

CREATE TABLE `de_thi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `khoa_hoc_id` bigint(20) UNSIGNED NOT NULL,
  `ten_de_thi` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `de_thi`
--

INSERT INTO `de_thi` (`id`, `khoa_hoc_id`, `ten_de_thi`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Đề số 1', 'de-so-1', NULL, NULL),
(2, 1, 'Đề số 2', 'de-so-2', NULL, NULL),
(3, 1, 'Đề số 3', 'de-so-3', NULL, NULL),
(4, 1, 'Đề số 4', 'de-so-4', NULL, NULL),
(5, 1, 'Đề số 5', 'de-so-5', NULL, NULL),
(6, 1, 'Đề số 6', 'de-so-6', NULL, NULL),
(7, 1, 'Đề số 7', 'de-so-7', NULL, NULL),
(8, 1, 'Đề số 8', 'de-so-8', NULL, NULL),
(9, 2, 'Đề số 1', 'de-so-1-26052024-130331-595', NULL, NULL),
(10, 2, 'Đề số 2', 'de-so-2-26052024-130344-401', NULL, NULL),
(11, 2, 'Đề số 3', 'de-so-3-26052024-130349-853', NULL, NULL),
(12, 2, 'Đề số 4', 'de-so-4-26052024-130355-975', NULL, NULL),
(13, 2, 'Đề số 5', 'de-so-5-26052024-130400-586', NULL, NULL),
(14, 2, 'Đề số 6', 'de-so-6-26052024-130405-176', NULL, NULL),
(15, 2, 'Đề số 7', 'de-so-7-26052024-130411-576', NULL, NULL),
(16, 2, 'Đề số 8', 'de-so-8-26052024-130417-130', NULL, NULL),
(17, 2, 'Đề số 9', 'de-so-9', NULL, NULL),
(18, 2, 'Đề số 10', 'de-so-10', NULL, NULL),
(19, 2, 'Đề số 11', 'de-so-11', NULL, NULL),
(20, 2, 'Đề số 12', 'de-so-12', NULL, NULL),
(21, 2, 'Đề số 13', 'de-so-13', NULL, NULL),
(22, 2, 'Đề số 14', 'de-so-14', NULL, NULL),
(23, 2, 'Đề số 15', 'de-so-15', NULL, NULL),
(24, 2, 'Đề số 16', 'de-so-16', NULL, NULL),
(25, 2, 'Đề số 17', 'de-so-17', NULL, NULL),
(26, 2, 'Đề số 18', 'de-so-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoa_hoc`
--

CREATE TABLE `khoa_hoc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_khoa_hoc` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `mo_ta` text NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khoa_hoc`
--

INSERT INTO `khoa_hoc` (`id`, `ten_khoa_hoc`, `slug`, `mo_ta`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 'Bằng lái xe máy hạng A1', 'bang-lai-xe-may-hang-a1', 'Đối tượng được cấp: Người điều khiển xe mô tô, xe gắn máy có dung tích xi lanh từ 50cm3 - 175cm3 và người khuyết tật điều khiển xe mô tô 3 bánh đặc thù. Thời hạn sử dụng: Vô thời hạn.', 1, NULL, NULL),
(2, 'Bằng lái xe máy hạng A2', 'bang-lai-xe-may-hang-a2', 'Đối tượng được cấp: Người điều khiển xe mô tô 2 bánh có dung tích xi lanh từ 175cm3 trở lên và các loại xe quy định cho giấy phép hạng A1.\\r\\nThời hạn sử dụng: Vô thời hạn.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lich_su`
--

CREATE TABLE `lich_su` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `de_thi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bat_dau` datetime DEFAULT NULL,
  `ket_thuc` datetime DEFAULT NULL,
  `diem` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_04_000000_create_danh_muc_table', 1),
(7, '2024_04_04_000001_create_bai_viet_table', 1),
(9, '2024_04_04_000003_create_khoa_hoc_table', 1),
(10, '2024_04_04_000004_create_bai_giang_table', 1),
(11, '2024_04_04_000005_create_de_thi_table', 1),
(12, '2024_04_04_000006_create_cau_hoi_table', 1),
(13, '2024_04_04_000007_create_phuong_an_table', 1),
(14, '2024_04_04_000008_create_lich_su_table', 1),
(15, '2024_04_04_000009_create_bai_nop_table', 1),
(16, '2024_04_04_000010_create_thong_bao_table', 1),
(17, '2024_04_04_000011_create_tin_nhan_table', 1),
(18, '2024_04_04_000002_create_binh_luan_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phuong_an`
--

CREATE TABLE `phuong_an` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cau_hoi_id` bigint(20) UNSIGNED NOT NULL,
  `noi_dung` text NOT NULL,
  `la_phuong_an_dung` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phuong_an`
--

INSERT INTO `phuong_an` (`id`, `cau_hoi_id`, `noi_dung`, `la_phuong_an_dung`, `created_at`, `updated_at`) VALUES
(1, 1, 'Phần mặt đường và lề đường.', 0, NULL, NULL),
(2, 1, 'Phần đường xe chạy.', 1, NULL, NULL),
(3, 1, 'Phần đường xe cơ giới.', 0, NULL, NULL),
(4, 2, 'Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho xe chạy.', 0, NULL, NULL),
(5, 2, 'Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.', 1, NULL, NULL),
(6, 2, 'Là đường cho xe ô tô chạy, dừng, đỗ an toàn.', 0, NULL, NULL),
(7, 3, 'Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.', 0, NULL, NULL),
(8, 3, 'Là bộ phận của đường để phân tách phần đường xe chạy và hành lang an toàn giao thông.', 0, NULL, NULL),
(9, 3, 'Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.', 1, NULL, NULL),
(10, 4, 'Dải phân cách gồm loại cố định và loại di động.', 1, NULL, NULL),
(11, 4, 'Dải phân cách gồm tường chống ồn, hộ lan cứng và hộ lan mềm', 0, NULL, NULL),
(12, 4, 'Dải phân cách gồm giá long môn và biển báo hiệu đường bộ.', 0, NULL, NULL),
(13, 5, 'Là người điều khiển xe cơ giới.', 1, NULL, NULL),
(14, 5, 'Là người điều khiển xe thô sơ.', 0, NULL, NULL),
(15, 5, 'Là người điều khiển xe có súc vật kéo.', 0, NULL, NULL),
(16, 6, 'Đường không ưu tiên.', 0, NULL, NULL),
(17, 6, 'Đường tỉnh lộ.', 0, NULL, NULL),
(18, 6, 'Đường quốc lộ.', 0, NULL, NULL),
(19, 6, 'Đường ưu tiên.', 1, NULL, NULL),
(20, 7, 'Gồm xe ô tô; máy kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe gắn máy; xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.', 0, NULL, NULL),
(21, 7, 'Gồm xe ô tô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo; xe mô tô hai bánh; xe mô tô ba bánh, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự.', 1, NULL, NULL),
(22, 8, 'Gồm xe đạp (kể cả xe đạp máy, xe đạp điện), xe xích lô, xe lăn dùng cho người khuyết tật, xe súc vật kéo và các loại xe tương tự.', 1, NULL, NULL),
(23, 8, 'Gồm xe đạp (kể cả xe đạp máy, xe đạp điện), xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.', 0, NULL, NULL),
(24, 8, 'Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.', 0, NULL, NULL),
(25, 9, 'Phương tiện giao thông cơ giới đường bộ.', 0, NULL, NULL),
(26, 9, 'Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.', 0, NULL, NULL),
(27, 9, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(28, 10, 'Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.', 0, NULL, NULL),
(29, 10, 'Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.', 0, NULL, NULL),
(30, 10, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(31, 11, 'Người điều khiển xe cơ giới, người điều khiển xe thô sơ.', 0, NULL, NULL),
(32, 11, 'Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.', 0, NULL, NULL),
(33, 11, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(34, 12, 'Là người điều khiển phương tiện tham gia giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.', 0, NULL, NULL),
(35, 12, 'Là cảnh sát giao thông, người được giao nhiệm vụ hướng dẫn giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.', 1, NULL, NULL),
(36, 12, 'Là người tham gia giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.', 0, NULL, NULL),
(37, 13, 'Là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian để cho người lên, xuống phương tiện, xếp dỡ hàng hóa hoặc thực hiện công việc khác.', 0, NULL, NULL),
(38, 13, 'Là trạng thái đứng yên tạm thời của phương tiện giao thông trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện, xếp dỡ hàng hóa hoặc thực hiện công việc khác.', 1, NULL, NULL),
(39, 13, 'Là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian giữa 02 lần vận chuyển hàng hoá hoặc hành khách.', 0, NULL, NULL),
(40, 14, 'Là trạng thái đứng yên của phương tiện giao thông có giới hạn trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện đó, xếp dỡ hàng hóa hoặc thực hiện công việc khác.', 0, NULL, NULL),
(41, 14, 'Là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian.', 1, NULL, NULL),
(42, 15, 'Diễn ra trên đường phố không có người qua lại.', 0, NULL, NULL),
(43, 15, 'Được người dân ủng hộ.', 0, NULL, NULL),
(44, 15, 'Được cơ quan có thẩm quyền cấp phép.', 1, NULL, NULL),
(45, 16, 'Bị nghiêm cấm.', 1, NULL, NULL),
(46, 16, 'Không bị nghiêm cấm.', 0, NULL, NULL),
(47, 16, 'Không bị nghiêm cấm, nếu có chất ma tuý ở mức nhẹ, có thể điều khiển phương tiện tham gia giao thông.', 0, NULL, NULL),
(48, 17, 'Chỉ bị nhắc nhở.', 0, NULL, NULL),
(49, 17, 'Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.', 1, NULL, NULL),
(50, 17, 'Không bị xử lý hình sự.', 0, NULL, NULL),
(51, 18, 'Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.', 1, NULL, NULL),
(52, 18, 'Người ngồi phía sau người điều khiển xe cơ giới.', 0, NULL, NULL),
(53, 18, 'Người đi bộ.', 0, NULL, NULL),
(54, 18, 'Cả ý 1 và ý 2.', 0, NULL, NULL),
(55, 19, 'Bị nghiêm cấm tuỳ từng trường hợp.', 0, NULL, NULL),
(56, 19, 'Không bị nghiêm cấm', 0, NULL, NULL),
(57, 19, 'Bị nghiêm cấm.', 1, NULL, NULL),
(58, 20, 'Từ 22 giờ đêm đến 5 giờ sáng.', 0, NULL, NULL),
(59, 20, 'Từ 5 giờ sáng đến 22 giờ tối.', 1, NULL, NULL),
(60, 20, 'Từ 23 giờ đêm đến 5 giờ sáng hôm sau.', 0, NULL, NULL),
(61, 21, 'Bất cứ đèn nào miễn là mắt nhìn rõ phía trước.', 0, NULL, NULL),
(62, 21, 'Chỉ bật đèn chiếu xa (đèn pha) khi không nhìn rõ đường.', 0, NULL, NULL),
(63, 21, 'Đèn chiếu xa (đèn pha) khi đường vắng, đèn pha chiếu gần (đèn cốt) khi có xe đi ngược chiều.', 0, NULL, NULL),
(64, 21, 'Đèn chiếu gần (đèn cốt).', 1, NULL, NULL),
(65, 22, 'Phải đảm bảo phụ tùng do đúng nhà sản xuất đó cung cấp.', 0, NULL, NULL),
(66, 22, 'Phải được chấp thuận của cơ quan có thẩm quyền.', 1, NULL, NULL),
(67, 22, 'Phải là xe đăng ký và hoạt động tại các khu vực có địa hình phức tạp.', 0, NULL, NULL),
(68, 23, 'Được phép.', 0, NULL, NULL),
(69, 23, 'Không được phép.', 1, NULL, NULL),
(70, 23, 'Tùy từng trường hợp.', 0, NULL, NULL),
(71, 24, 'Không được vượt.', 0, NULL, NULL),
(72, 24, 'Được vượt khi đang đi trên cầu.', 0, NULL, NULL),
(73, 24, 'Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.', 0, NULL, NULL),
(74, 24, 'Được vượt khi đảm bảo an toàn.', 1, NULL, NULL),
(75, 25, 'Không được vượt.', 1, NULL, NULL),
(76, 25, 'Được vượt khi đang đi trên cầu.', 0, NULL, NULL),
(77, 25, 'Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia  giao thông.', 0, NULL, NULL),
(78, 25, 'Được vượt khi đảm bảo an toàn.', 0, NULL, NULL),
(79, 26, 'Được phép.', 0, NULL, NULL),
(80, 26, 'Nếu phương tiện được kéo, đẩy có khối lượng nhỏ hơn phương tiện của mình.', 0, NULL, NULL),
(81, 26, 'Tuỳ trường hợp.', 0, NULL, NULL),
(82, 26, 'Không được phép.', 1, NULL, NULL),
(83, 27, 'Được phép.', 0, NULL, NULL),
(84, 27, 'Tuỳ trường hợp.', 0, NULL, NULL),
(85, 27, 'Không được phép.', 1, NULL, NULL),
(86, 28, 'Buông cả hai tay; sử dụng xe để kéo, đẩy xe khác, vật khác; sử dụng chân chống của xe quệt xuống đường khi xe đang chạy.', 1, NULL, NULL),
(87, 28, 'Buông một tay; sử dụng xe để chở người hoặc hàng hoá; để chân chạm xuống đất khi khởi hành.', 0, NULL, NULL),
(88, 28, 'Đội mũ bảo hiểm; chạy xe đúng tốc độ quy định và chấp hành đúng quy tắc giao thông đường bộ.', 0, NULL, NULL),
(89, 28, 'Chở người ngồi sau dưới 16 tuổi.', 0, NULL, NULL),
(94, 29, 'Được mang, vác tuỳ trường hợp cụ thể.', 0, NULL, NULL),
(95, 29, 'Không được mang, vác.', 1, NULL, NULL),
(96, 29, 'Được mang, vác nhưng phải đảm bảo an toàn.', 0, NULL, NULL),
(97, 29, 'Được mang, vác tùy theo sức khỏe của bản thân.', 0, NULL, NULL),
(98, 30, 'Được phép.', 0, NULL, NULL),
(99, 30, 'Được bám trong trường hợp phương tiện của mình bị hỏng.', 0, NULL, NULL),
(100, 30, 'Được kéo, đẩy trong trường hợp phương tiện khác bị hỏng.', 0, NULL, NULL),
(101, 30, 'Không được phép.', 1, NULL, NULL),
(102, 31, 'Được sử dụng.', 0, NULL, NULL),
(103, 31, 'Chỉ người ngồi sau được sử dụng.', 0, NULL, NULL),
(104, 31, 'Không được sử dụng.', 1, NULL, NULL),
(105, 31, 'Được sử dụng nếu không có áo mưa.', 0, NULL, NULL),
(106, 32, 'Chỉ được phép nếu cả hai đội mũ bảo hiểm.', 0, NULL, NULL),
(107, 32, 'Không được phép.', 1, NULL, NULL),
(108, 32, 'Chỉ được thực hiện trên đường thật vắng.', 0, NULL, NULL),
(109, 32, 'Chỉ được phép khi người đi xe đạp đã quá mệt.', 0, NULL, NULL),
(110, 33, 'Chỉ được kéo nếu đã nhìn thấy trạm xăng.', 0, NULL, NULL),
(111, 33, 'Chỉ được thực hiện trên đường vắng phương tiện cùng tham gia giao thông.', 0, NULL, NULL),
(112, 33, 'Không được phép.', 1, NULL, NULL),
(113, 34, 'Không được vận chuyển.', 1, NULL, NULL),
(114, 34, 'Chỉ được vận chuyển khi đã chằng buộc cẩn thận.', 0, NULL, NULL),
(115, 34, 'Chỉ được vận chuyển vật cồng kềnh trên xe máy nếu khoảng cách về nhà ngắn hơn 2 km.', 0, NULL, NULL),
(116, 35, '16 tuổi.', 0, NULL, NULL),
(117, 35, '18 tuổi.', 1, NULL, NULL),
(118, 35, '17 tuổi.', 0, NULL, NULL),
(119, 36, 'Xe mô tô 2 bánh có dung tích xi-lanh từ 50 cm3 trở lên.', 0, NULL, NULL),
(120, 36, 'Xe gắn máy có dung tích xi-lanh dưới 50 cm3.', 1, NULL, NULL),
(121, 36, 'Xe ô tô tải dưới 3,5 tấn; xe chở người đến 9 chỗ ngồi.', 0, NULL, NULL),
(122, 36, 'Tất cả các ý nêu trên.', 0, NULL, NULL),
(123, 37, 'Xe mô tô có dung tích xi-lanh 125 cm3.', 0, NULL, NULL),
(124, 37, 'Xe mô tô có dung tích xi-lanh từ 175 cm3 trở lên.', 1, NULL, NULL),
(125, 37, 'Xe mô tô có dung tích xi-lanh 100 cm3.', 0, NULL, NULL),
(126, 38, 'Xe mô tô hai bánh có dung tích xi-lanh từ 50 cm3 đến dưới 175 cm3.', 0, NULL, NULL),
(127, 38, 'Xe mô tô ba bánh dùng cho người khuyết tật.', 0, NULL, NULL),
(128, 38, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(129, 39, 'Biển báo nguy hiểm.', 0, NULL, NULL),
(130, 39, 'Biển báo cấm.', 1, NULL, NULL),
(131, 39, 'Biển báo hiệu lệnh.', 0, NULL, NULL),
(132, 39, 'Biển báo chỉ dẫn.', 0, NULL, NULL),
(133, 40, 'Biển báo nguy hiểm.', 1, NULL, NULL),
(134, 40, 'Biển báo cấm.', 0, NULL, NULL),
(135, 40, 'Biển báo hiệu lệnh.', 0, NULL, NULL),
(136, 40, 'Biển báo chỉ dẫn.', 0, NULL, NULL),
(137, 41, 'Biển báo nguy hiểm.', 0, NULL, NULL),
(138, 41, 'Biển báo cấm.', 0, NULL, NULL),
(139, 41, 'Biển báo hiệu lệnh phải thi hành.', 1, NULL, NULL),
(140, 41, 'Biển báo chỉ dẫn.', 0, NULL, NULL),
(141, 42, 'Biển báo nguy hiểm.', 0, NULL, NULL),
(142, 42, 'Biển báo cấm.', 0, NULL, NULL),
(143, 42, 'Biển báo hiệu lệnh phải thi hành.', 0, NULL, NULL),
(144, 42, 'Biển báo chỉ dẫn.', 1, NULL, NULL),
(145, 43, '02 năm.', 0, NULL, NULL),
(146, 43, '03 năm.', 0, NULL, NULL),
(147, 43, '05 năm.', 1, NULL, NULL),
(148, 43, '04 năm.', 0, NULL, NULL),
(149, 44, 'Người tham gia giao thông ở các hướng phải dừng lại.', 0, NULL, NULL),
(150, 44, 'Người tham gia giao thông ở các hướng được đi theo chiều gậy chỉ của cảnh sát giao thông.', 0, NULL, NULL),
(151, 44, 'Người tham gia giao thông ở phía trước và phía sau người điều khiển được đi tất cả các hướng; người tham gia giao thông ở phía bên phải và phía bên trái người điều khiển phải dừng lại.', 0, NULL, NULL),
(152, 44, 'Người tham gia giao thông ở phía trước và phía sau người điều khiển phải dừng lại; người tham giao thông ở phía bên phải và bên trái người điều khiển được đi tất cả các hướng.', 1, NULL, NULL),
(153, 45, 'Người tham gia giao thông ở hướng đối diện cảnh sát giao thông được đi, các hướng khác cần phải dừng lại.', 0, NULL, NULL),
(154, 45, 'Người tham gia giao thông được rẽ phải theo chiều mũi tên màu xanh ở bục cảnh sát giao thông.', 0, NULL, NULL),
(155, 45, 'Người tham gia giao thông ở các hướng đều phải dừng lại trừ các xe đã ở trong khu vực giao nhau.', 1, NULL, NULL),
(156, 45, 'Người ở hướng đối diện cảnh sát giao thông phải dừng lại, các hướng khác được đi trong đó có bạn.', 0, NULL, NULL),
(157, 46, 'Biển báo hiệu cố định.', 0, NULL, NULL),
(158, 46, 'Báo hiệu tạm thời.', 1, NULL, NULL),
(159, 47, 'Cho xe đi trên bất kỳ làn đường nào hoặc giữa 02 làn đường nếu không có xe phía trước; khi cần thiết phải chuyển làn đường, người lái xe phải quan sát xe phía trước để bảo đảm an toàn.', 0, NULL, NULL),
(160, 47, 'Phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn phải có tín hiệu báo trước và phải bảo đảm an toàn.', 1, NULL, NULL),
(161, 47, 'Phải cho xe đi trong một làn đường, khi cần thiết phải chuyển làn đường, người lái xe phải quan sát xe phía trước để bảo đảm an toàn.', 0, NULL, NULL),
(162, 48, 'Xe thô sơ phải đi trên làn đường bên trái trong cùng, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.', 0, NULL, NULL),
(165, 48, 'Xe thô sơ phải đi trên làn đường bên phải trong cùng; xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái.', 1, NULL, NULL),
(166, 48, 'Xe thô sơ đi trên làn đường phù hợp không gây cản trở giao thông, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.', 0, NULL, NULL),
(167, 49, 'Phải báo hiệu bằng đèn hoặc còi.', 0, NULL, NULL),
(168, 49, 'Chỉ được báo hiệu bằng còi.', 0, NULL, NULL),
(169, 49, 'Phải báo hiệu bằng cả còi và đèn.', 0, NULL, NULL),
(170, 49, 'Chỉ được báo hiệu bằng đèn.', 1, NULL, NULL),
(171, 50, 'Tăng tốc độ và ra hiệu cho xe sau vượt, không được gây trở ngại cho xe sau vượt.', 0, NULL, NULL),
(172, 50, 'Người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại cho xe sau vượt.', 1, NULL, NULL),
(173, 50, 'Cho xe tránh về bên trái mình và ra hiệu cho xe sau vượt; nếu có chướng ngại vật phía trước hoặc thiếu điều kiện an toàn chưa cho vượt được phải ra hiệu cho xe sau biết; cấm gây trở ngại cho xe xin vượt.', 0, NULL, NULL),
(174, 51, 'Quan sát gương, ra tín hiệu, quan sát an toàn và chuyển hướng.', 0, NULL, NULL),
(175, 51, 'Quan sát gương, giảm tốc độ, ra tín hiệu chuyển hướng, quan sát an toàn và chuyển hướng.', 1, NULL, NULL),
(176, 51, 'Quan sát gương, tăng tốc độ, ra tín hiệu và chuyển hướng.', 0, NULL, NULL),
(177, 52, 'Nơi đường hẹp chỉ đủ cho một xe chạy và có chỗ tránh xe thì xe nào ở gần chỗ tránh hơn phải vào vị trí tránh, nhường đường cho xe kia đi.', 0, NULL, NULL),
(178, 52, 'Nơi đường hẹp chỉ đủ cho một xe chạy và có chỗ tránh xe thì xe nào ở gần chỗ tránh hơn phải vào vị trí tránh, nhường đường cho xe kia đi.', 0, NULL, NULL),
(179, 52, 'Xe xuống dốc phải nhường đường cho xe đang lên dốc; xe nào có chướng ngại vật phía trước phải nhường đường cho xe không có chướng ngại vật đi trước.', 0, NULL, NULL),
(180, 52, 'Xe lên dốc phải nhường đường cho xe xuống dốc; xe nào không có chướng ngại vật phía trước phải nhường đường cho xe có chướng ngại vật đi trước.', 0, NULL, NULL),
(181, 52, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(182, 53, 'Tiếp tục đi vì xe lên dốc phải nhường đường cho mình.', 0, NULL, NULL),
(183, 53, 'Nhường đường cho xe lên dốc.', 1, NULL, NULL),
(184, 53, 'Chỉ nhường đường khi xe lên dốc nháy đèn.', 0, NULL, NULL),
(185, 54, 'Nhường đường cho xe đi ở bên phải mình tới.', 0, NULL, NULL),
(186, 54, 'Nhường đường cho xe đi ở bên trái mình tới.', 0, NULL, NULL),
(187, 54, 'Nhường đường cho xe đi trên đường ưu tiên hoặc đường chính từ bất kỳ hướng nào tới.', 1, NULL, NULL),
(188, 55, 'Phải nhường đường cho xe đi đến từ bên phải.', 1, NULL, NULL),
(189, 55, 'Xe báo hiệu xin đường trước xe đó được đi trước.', 0, NULL, NULL),
(190, 55, 'Phải nhường đường cho xe đi đến từ bên trái.', 0, NULL, NULL),
(191, 56, '5 mét.', 1, NULL, NULL),
(192, 56, '3 mét.', 0, NULL, NULL),
(193, 56, '4 mét.', 0, NULL, NULL),
(194, 57, 'Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định.', 1, NULL, NULL),
(195, 57, 'Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', 0, NULL, NULL),
(196, 57, 'Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', 0, NULL, NULL),
(197, 58, 'Khi tham gia giao thông đường bộ.', 1, NULL, NULL),
(198, 58, 'Chỉ khi đi trên đường chuyên dùng; đường cao tốc.', 0, NULL, NULL),
(199, 58, 'Khi tham gia giao thông trên đường tỉnh lộ hoặc quốc lộ.', 0, NULL, NULL),
(200, 59, 'Chở người bệnh đi cấp cứu; trẻ em dưới 14 tuổi.', 0, NULL, NULL),
(201, 59, 'Áp giải người có hành vi vi phạm pháp luật.', 0, NULL, NULL),
(202, 59, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(203, 60, 'Đi vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính), đi xe dàn hàng ngang.', 1, NULL, NULL),
(204, 60, 'Chở 02 người; trong đó, có người bệnh đi cấp cứu hoặc trẻ em dưới 14 tuổi hoặc áp giải người có hành vi vi phạm pháp luật.', 0, NULL, NULL),
(205, 60, 'Điều khiển phương tiện tham gia giao thông trên đường tỉnh lộ hoặc quốc lộ.', 0, NULL, NULL),
(206, 61, 'Được phép nhưng phải đảm bảo an toàn.', 0, NULL, NULL),
(207, 61, 'Không được phép.', 1, NULL, NULL),
(208, 61, 'Được phép tùy từng hoàn cảnh, điều kiện cụ thể.', 0, NULL, NULL),
(209, 62, 'Khi có báo hiệu cảnh báo nguy hiểm hoặc có chướng ngại vật trên đường; khi chuyển hướng xe chạy hoặc tầm nhìn bị hạn chế; khi qua nơi đường giao nhau, nơi đường bộ giao nhau với đường sắt; đường vòng; đường có địa hình quanh co, đèo dốc.', 0, NULL, NULL),
(210, 62, 'Khi qua cầu, cống hẹp; khi lên gần đỉnh dốc, khi xuống dốc, khi qua trường học, khu đông dân cư, khu vực đang thi công trên đường bộ; hiện trường xảy ra tai nạn giao thông.', 0, NULL, NULL),
(211, 62, 'Khi điều khiển xe vượt xe khác trên quốc lộ, đường cao tốc.', 0, NULL, NULL),
(212, 62, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(213, 63, 'Nhường đường cho người đi bộ đang đi trên phần đường dành cho người đi bộ sang đường; nhường đường cho xe đi trên đường ưu tiên, đường chính từ bất kỳ hướng nào tới; nhường đường cho xe ưu tiên, xe đi từ bên phải đến.', 1, NULL, NULL),
(214, 63, 'Nhường đường cho người đi bộ đang đứng chờ đi qua phần đường dành cho người đi bộ sang đường; nhường đường cho xe đi trên đường ngược chiều, đường nhánh từ bất kỳ hướng nào tới; nhường đường cho xe đi từ bên trái đến.', 0, NULL, NULL),
(215, 63, 'Không phải nhường đường.', 0, NULL, NULL),
(216, 64, 'Khi cho xe chạy thẳng.', 0, NULL, NULL),
(217, 64, 'Trước khi thay đổi làn đường.', 1, NULL, NULL),
(218, 64, 'Sau khi thay đổi làn đường.', 0, NULL, NULL),
(219, 65, 'Xe bị vượt bất ngờ tăng tốc độ và cố tình không nhường đường.', 0, NULL, NULL),
(220, 65, 'Xe bị vượt giảm tốc độ và nhường đường.', 0, NULL, NULL),
(221, 65, 'Phát hiện có xe đi ngược chiều.', 0, NULL, NULL),
(222, 65, 'Cả ý 1 và ý 3.', 1, NULL, NULL),
(223, 66, 'Nếu đủ điều kiện an toàn, người lái xe phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại đối với xe xin vượt.', 1, NULL, NULL),
(224, 66, 'Lái xe vào lề đường bên trái và giảm tốc độ để xe phía sau vượt qua, không được gây trở ngại đối với xe xin vượt.', 0, NULL, NULL),
(225, 66, 'Nếu đủ điều kiện an toàn, người lái xe phải tăng tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua.', 0, NULL, NULL),
(226, 67, 'Phải đội mũ bảo hiểm đạt chuẩn, có cài quai đúng quy cách, mặc quần áo gọn gàng; không sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính).', 1, NULL, NULL),
(227, 67, 'Phải đội mũ bảo hiểm khi trời mưa gió hoặc trời quá nắng; có thể sử dụng ô, điện thoại di động, thiết bị âm thanh nhưng phải đảm bảo an toàn.', 0, NULL, NULL),
(228, 67, 'Phải đội mũ bảo hiểm khi cảm thấy mất an toàn giao thông hoặc khi chuẩn bị di chuyển quãng đường xa.', 0, NULL, NULL),
(229, 68, 'Là đoạn đường nằm trong khu công nghiệp có đông người và phương tiện tham gia giao thông và được xác định cụ thể bằng biển chỉ dẫn địa giới.', 0, NULL, NULL),
(230, 68, 'Là đoạn đường bộ nằm trong khu vực nội thành phố, nội thị xã, nội thị trấn và những đoạn đường có đông dân cư sinh sống sát dọc theo đường, có các hoạt động ảnh hưởng đến an toàn giao thông; được xác định bằng biển báo hiệu là đường khu đông dân cư.', 1, NULL, NULL),
(231, 68, 'Là đoạn đường nằm ngoài khu vực nội thành phố, nội thị xã có đông người và phương tiện tham gia giao thông và được xác định cụ thể bằng biển chỉ dẫn địa giới.', 0, NULL, NULL),
(232, 69, '50 km/h.', 0, NULL, NULL),
(233, 69, '40 km/h.', 1, NULL, NULL),
(234, 69, '60 km/h.', 0, NULL, NULL),
(235, 70, '60 km/h.', 1, NULL, NULL),
(236, 70, '50 km/h.', 0, NULL, NULL),
(237, 70, '40 km/h.', 0, NULL, NULL),
(238, 71, '60 km/h.', 0, NULL, NULL),
(239, 71, '50 km/h.', 1, NULL, NULL),
(240, 71, '40 km/h.', 0, NULL, NULL),
(241, 72, 'Ô tô con, ô tô tải, ô tô chở người trên 30 chỗ.', 1, NULL, NULL),
(242, 72, 'Xe gắn máy, xe máy chuyên dùng.', 0, NULL, NULL),
(243, 72, 'Cả ý 1 và ý 2.', 0, NULL, NULL),
(244, 73, 'Chủ động giữ khoảng cách an toàn phù hợp với xe chạy liền trước xe của mình.', 0, NULL, NULL),
(245, 73, 'Đảm bảo khoảng cách an toàn theo mật độ phương tiện, tình hình giao thông thực tế.', 0, NULL, NULL),
(246, 73, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(247, 74, 'Gặp biển báo nguy hiểm trên đường.', 1, NULL, NULL),
(248, 74, 'Gặp biển chỉ dẫn trên đường.', 0, NULL, NULL),
(249, 74, 'Gặp biển báo hết mọi lệnh cấm', 0, NULL, NULL),
(250, 74, 'Gặp biển báo hết hạn chế tốc độ tối đa cho phép.', 0, NULL, NULL),
(251, 75, 'Hiệu lệnh của nhân viên gác chắn.', 0, NULL, NULL),
(252, 75, 'Đèn đỏ sáng nháy, cờ đỏ, biển đỏ.', 0, NULL, NULL),
(253, 75, 'Còi, chuông kêu, chắn đã đóng.', 0, NULL, NULL),
(254, 75, 'Tất cả các ý trên.', 1, NULL, NULL),
(255, 76, 'Để làm đẹp.', 0, NULL, NULL),
(256, 76, 'Để tránh mưa nắng.', 0, NULL, NULL),
(257, 76, 'Để giảm thiểu chấn thương vùng đầu.', 1, NULL, NULL),
(258, 76, 'Để các loại phương tiện khác dễ quan sát.', 0, NULL, NULL),
(259, 77, 'Tăng tốc độ qua đường giao nhau để đi trước xe đi trên đường ưu tiên.', 0, NULL, NULL),
(260, 77, 'Giảm tốc độ qua đường giao nhau để đi trước xe đi trên đường ưu tiên.', 0, NULL, NULL),
(261, 77, 'Nhường đường cho xe đi trên đường ưu tiên từ bất kỳ hướng nào tới.', 1, NULL, NULL),
(262, 78, 'Giảm tốc độ, đi từ từ để vượt qua trước người đi bộ.', 0, NULL, NULL),
(263, 78, 'Giảm tốc độ, có thể dừng lại nếu cần thiết trước vạch dừng xe để nhường đường cho người đi bộ qua đường.', 1, NULL, NULL),
(264, 78, 'Tăng tốc độ để vượt qua trước người đi bộ.', 0, NULL, NULL),
(265, 79, 'Đỏ – Vàng – Xanh.', 1, NULL, NULL),
(266, 79, 'Cam – Vàng – Xanh.', 0, NULL, NULL),
(267, 79, 'Vàng – Xanh dương – Xanh lá.', 0, NULL, NULL),
(268, 79, 'Đỏ – Cam – Xanh.', 0, NULL, NULL),
(269, 80, 'Phải cho xe dừng lại trước vạch dừng, trường hợp đã đi quá vạch dừng hoặc đã quá gần vạch dừng nếu dừng lại thấy nguy hiểm thì được đi tiếp.', 0, NULL, NULL),
(270, 80, 'Trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ chú ý quan sát nhường đường cho người đi bộ qua đường.', 0, NULL, NULL),
(271, 80, 'Nhanh chóng tăng tốc độ, vượt qua nút giao và chú ý đảm bảo an toàn.', 0, NULL, NULL),
(272, 80, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(273, 81, 'Ra tín hiệu bằng tay rồi cho xe vượt qua.', 0, NULL, NULL),
(274, 81, 'Tăng ga mạnh để gây sự chú ý rồi cho xe vượt qua.', 0, NULL, NULL),
(275, 81, 'Bạn phải có tín hiệu bằng đèn hoặc còi.', 1, NULL, NULL),
(276, 82, 'Đường ướt, đường có sỏi cát trên nền đường.', 0, NULL, NULL),
(277, 82, 'Đường hẹp có nhiều điểm giao cắt từ hai phía.', 0, NULL, NULL),
(278, 82, 'Đường đèo dốc, vòng liên tục.', 0, NULL, NULL),
(279, 82, 'Tất cả các ý nêu trên.', 1, NULL, NULL),
(280, 83, 'Tăng tốc độ để nhanh chóng vượt qua bến đỗ.', 0, NULL, NULL),
(281, 83, 'Giảm tốc độ đến mức an toàn có thể và quan sát người qua đường và từ từ vượt qua xe buýt.', 1, NULL, NULL),
(282, 83, 'Yêu cầu phải dừng lại phía sau xe buýt chờ xe rời bến mới đi tiếp.', 0, NULL, NULL),
(283, 84, 'Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.', 0, NULL, NULL),
(284, 84, 'Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.', 0, NULL, NULL),
(285, 84, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(286, 85, 'Điều khiển xe đi bên phải theo chiều đi của mình; đi đúng phần đường, làn đường quy định; đội mũ bảo hiểm đạt chuẩn, cài quai đúng quy cách.', 1, NULL, NULL),
(287, 85, 'Điều khiển xe đi trên phần đường, làn đường có ít phương tiện tham gia giao thông.', 0, NULL, NULL),
(288, 85, 'Điều khiển xe và đội mũ bảo hiểm ở nơi có biển báo bắt buộc đội mũ bảo hiểm.', 0, NULL, NULL),
(289, 86, 'Điều khiển xe đi bên phải theo chiều đi của mình; đi đúng phần đường, làn đường quy định; dừng, đỗ xe đúng nơi quy định; đã uống rượu, bia thì không lái xe.', 1, NULL, NULL),
(290, 86, 'Điều khiển xe đi trên phần đường, làn đường có ít phương tiện giao thông; dừng xe, đỗ xe ở nơi thuận tiện hoặc theo yêu cầu của hành khách, của người thân.', 0, NULL, NULL),
(291, 86, 'Dừng và đỗ xe ở nơi thuận tiện cho việc chuyên chở hành khách và giao nhận hàng hóa; sử dụng ít rượu, bia thì có thể lái xe.', 0, NULL, NULL),
(292, 87, 'Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.', 1, NULL, NULL),
(293, 87, 'Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.', 0, NULL, NULL),
(294, 87, 'Cả ý 1 và ý 2.', 0, NULL, NULL),
(295, 88, 'Bấm còi liên tục thúc giục các phương tiện phía trước nhường đường.', 0, NULL, NULL),
(296, 88, 'Đi lên vỉa hè, tận dùng mọi khoảng trống để nhanh chóng thoát khỏi nơi ùn tắc.', 0, NULL, NULL),
(297, 88, 'Lấn sang trái đường cố gắng vượt lên xe khác.', 0, NULL, NULL),
(298, 88, 'Tất cả các ý nêu trên.', 1, NULL, NULL),
(299, 89, 'Giữ tay ga ở mức độ phù hợp, sử dụng phanh trước và phanh sau để giảm tốc độ.', 1, NULL, NULL),
(300, 89, 'Nhả hết tay ga, tắt động cơ, sử dụng phanh trước và phanh sau để giảm tốc độ.', 0, NULL, NULL),
(301, 89, 'Sử dụng phanh trước để giảm tốc độ kết hợp với tắt chìa khóa điện của xe.', 0, NULL, NULL),
(302, 90, 'Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe cho thích hợp; quay đầu xe với tốc độ thấp; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đầu xe về phía nguy hiểm đưa đuôi xe về phía an toàn.', 1, NULL, NULL),
(303, 90, 'Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe; quay đầu xe với tốc độ tối đa; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đuôi xe về phía nguy hiểm và đầu xe về phía an toàn.', 0, NULL, NULL),
(304, 91, 'Không nên đi cố vào đường hẹp; xe đi ở sườn núi nên dừng lại trước để nhường đường; khi dừng xe nhường đường phải đỗ ngay ngắn.', 0, NULL, NULL),
(305, 91, 'Trong khi tránh nhau không nên đổi số; khi tránh nhau ban đêm, phải tắt đèn pha bật đèn cốt.', 0, NULL, NULL),
(306, 91, 'Khi tránh nhau ban đêm, phải thường xuyên bật đèn pha tắt đèn cốt.', 0, NULL, NULL),
(307, 91, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(308, 92, 'Quan sát cẩn thận các chướng ngại vật và báo hiệu bằng còi, đèn; giảm tốc độ tới mức cần thiết, về số thấp và thực hiện quay vòng với tốc độ phù hợp với bán kính cong của đường vòng.', 1, NULL, NULL),
(309, 92, 'Quan sát cẩn thận các chướng ngại vật và báo hiệu bằng còi, đèn; tăng tốc để nhanh chóng qua đường vòng, đạp ly hợp (côn) và giảm tốc độ sau khi qua đường vòng.', 0, NULL, NULL),
(310, 93, 'Sử dụng phanh trước.', 0, NULL, NULL),
(311, 93, 'Sử dụng phanh sau.', 0, NULL, NULL),
(312, 93, 'Giảm hết ga; sử dụng đồng thời cả phanh sau và phanh trước.', 1, NULL, NULL),
(313, 94, 'Giảm tốc độ để đảm bảo an toàn với xe phía trước và sử dụng điện thoại để liên lạc.', 0, NULL, NULL),
(314, 94, 'Giảm tốc độ để dừng xe ở nơi cho phép dừng xe sau đó sử dụng điện thoại để liên lạc.', 1, NULL, NULL),
(315, 94, 'Tăng tốc độ để cách xa xe phía sau và sử dụng điện thoại để liên lạc.', 0, NULL, NULL),
(316, 95, 'Sử dụng còi.', 0, NULL, NULL),
(317, 95, 'Phanh đồng thời cả phanh trước và phanh sau.', 0, NULL, NULL),
(318, 95, 'Chỉ sử dụng phanh trước.', 1, NULL, NULL),
(319, 96, 'Bật tín hiệu báo rẽ trước khi quay đầu, từ từ giảm tốc độ đến mức có thể dừng lại.', 0, NULL, NULL),
(320, 96, 'Chỉ quay đầu xe tại những nơi được phép quay đầu.', 0, NULL, NULL),
(321, 96, 'Quan sát an toàn các phương tiện tới từ phía trước, phía sau, hai bên đồng thời nhường đường cho xe từ bên phải và phía trước đi tới.', 0, NULL, NULL),
(322, 96, 'Tất cả các ý nêu trên.', 1, NULL, NULL),
(323, 97, 'Để điều khiển xe chạy về phía trước.', 0, NULL, NULL),
(324, 97, 'Để điều tiết công suất động cơ qua đó điều khiển tốc độ của xe.', 0, NULL, NULL),
(325, 97, 'Để điều khiển xe chạy lùi.', 0, NULL, NULL),
(326, 97, 'Cả ý 1 và ý 2.', 1, NULL, NULL),
(327, 98, 'Để quan sát an toàn phía bên trái khi chuẩn bị rẽ trái.', 0, NULL, NULL),
(328, 98, 'Để quan sát an toàn phía bên phải khi chuẩn bị rẽ phải.', 0, NULL, NULL),
(329, 98, 'Để quan sát an toàn phía sau cả bên trái và bên phải trước khi chuyển hướng.', 1, NULL, NULL),
(330, 98, 'Để quan sát an toàn phía trước cả bên trái và bên phải trước khi chuyển hướng.', 0, NULL, NULL),
(331, 99, 'Tăng ga thật nhanh, giảm ga từ từ.', 0, NULL, NULL),
(332, 99, 'Tăng ga thật nhanh, giảm ga thật nhanh.', 0, NULL, NULL),
(333, 99, 'Tăng ga từ từ, giảm ga thật nhanh.', 1, NULL, NULL),
(334, 99, 'Tăng ga từ từ, giảm ga từ từ.', 0, NULL, NULL),
(335, 100, 'Đứng thẳng trên giá gác chân lái sau đó hơi gập đầu gối và khuỷu tay, đi chậm để không nẩy quá mạnh.', 1, NULL, NULL),
(336, 100, 'Ngồi lùi lại phía sau, tăng ga vượt nhanh qua đoạn đường xóc.', 0, NULL, NULL),
(337, 100, 'Ngồi lệch sang bên trái hoặc bên phải để lấy thăng bằng qua đoạn đường gồ ghề.', 0, NULL, NULL),
(338, 101, 'Biển 1.', 0, NULL, NULL),
(339, 101, 'Biển 2.', 0, NULL, NULL),
(340, 101, 'Cả 2 biển.', 1, NULL, NULL),
(341, 102, 'Biển 1.', 1, NULL, NULL),
(342, 102, 'Biển 2.', 0, NULL, NULL),
(343, 102, 'Biển 3.', 0, NULL, NULL),
(344, 103, 'Không biển nào.', 0, NULL, NULL),
(345, 103, 'Biển 1 và 2.', 0, NULL, NULL),
(346, 103, 'Biển 2 và 3.', 1, NULL, NULL),
(347, 103, 'Cả 3 biển.', 0, NULL, NULL),
(348, 104, 'Biển 1.', 0, NULL, NULL),
(349, 104, 'Biển 2.', 1, NULL, NULL),
(350, 104, 'Không biển nào.', 0, NULL, NULL),
(351, 104, 'Cả 2 biển.', 0, NULL, NULL),
(352, 105, 'Biển 1.', 1, NULL, NULL),
(353, 105, 'Biển 2.', 0, NULL, NULL),
(354, 105, 'Cả hai biển.', 0, NULL, NULL),
(355, 106, 'Biển 1.', 0, NULL, NULL),
(356, 106, 'Biển 2.', 1, NULL, NULL),
(357, 106, 'Không biển nào.', 0, NULL, NULL),
(358, 107, 'Biển 1 và 2.', 1, NULL, NULL),
(359, 107, 'Biển 1 và 3.', 0, NULL, NULL),
(360, 107, 'Biển 2 và 3.', 0, NULL, NULL),
(361, 107, 'Cả ba biển.', 0, NULL, NULL),
(362, 108, 'Biển 1 và 2.', 1, NULL, NULL),
(363, 108, 'Biển 1 và 3.', 0, NULL, NULL),
(364, 108, 'Biển 2 và 3.', 0, NULL, NULL),
(365, 108, 'Cả ba biển.', 0, NULL, NULL),
(366, 109, 'Biển 1.', 0, NULL, NULL),
(367, 109, 'Biển 2.', 1, NULL, NULL),
(368, 109, 'Không biển nào.', 0, NULL, NULL),
(369, 110, 'Biển 1.', 0, NULL, NULL),
(370, 110, 'Biển 2.', 0, NULL, NULL),
(371, 110, 'Cả hai biển.', 1, NULL, NULL),
(372, 111, 'Biển 1.', 1, NULL, NULL),
(373, 111, 'Biển 2.', 0, NULL, NULL),
(374, 111, 'Cả hai biển.', 0, NULL, NULL),
(375, 112, 'Biển 1.', 0, NULL, NULL),
(376, 112, 'Biển 2.', 1, NULL, NULL),
(377, 112, 'Cả ba biển.', 0, NULL, NULL),
(378, 113, 'Biển 1.', 0, NULL, NULL),
(379, 113, 'Biển 2.', 0, NULL, NULL),
(380, 113, 'Biển 1 và 2.', 1, NULL, NULL),
(381, 114, 'Biển 1.', 0, NULL, NULL),
(382, 114, 'Biển 2.', 1, NULL, NULL),
(383, 114, 'Cả ba biển.', 0, NULL, NULL),
(384, 115, 'Biển 1.', 1, NULL, NULL),
(385, 115, 'Biển 2.', 0, NULL, NULL),
(386, 115, 'Cả hai biển.', 0, NULL, NULL),
(387, 116, 'Biển 1.', 0, NULL, NULL),
(388, 116, 'Biển 2.', 0, NULL, NULL),
(389, 116, 'Biển 3.', 0, NULL, NULL),
(390, 116, 'Biển 1 và biển 2.', 1, NULL, NULL),
(391, 117, 'Biển 1.', 0, NULL, NULL),
(392, 117, 'Biển 2.', 0, NULL, NULL),
(393, 117, 'Biển 3.', 1, NULL, NULL),
(394, 118, 'Tốc độ tối đa cho phép về ban đêm cho các phương tiện là 70 km/h.', 1, NULL, NULL),
(395, 118, 'Tốc độ tối thiểu cho phép về ban đêm cho các phương tiện là 70 km/h.', 0, NULL, NULL),
(396, 119, 'Được phép.', 0, NULL, NULL),
(397, 119, 'Không được phép.', 1, NULL, NULL),
(398, 120, 'Biển 1 và 2.', 0, NULL, NULL),
(399, 120, 'Biển 1 và 3.', 1, NULL, NULL),
(400, 120, 'Biển 2 và 3.', 0, NULL, NULL),
(401, 121, 'Biển 1.', 0, NULL, NULL),
(402, 121, 'Biển 2.', 1, NULL, NULL),
(403, 121, 'Biển 3.', 0, NULL, NULL),
(404, 122, 'Biển 1.', 1, NULL, NULL),
(405, 122, 'Biển 2.', 0, NULL, NULL),
(406, 123, 'Biển 1.', 1, NULL, NULL),
(407, 123, 'Biển 2.', 0, NULL, NULL),
(408, 123, 'Biển 3.', 0, NULL, NULL),
(409, 123, 'Biển 1 và 3.', 0, NULL, NULL),
(410, 124, 'Biển 1.', 0, NULL, NULL),
(411, 124, 'Biển 1 và 3.', 0, NULL, NULL),
(412, 124, 'Biển 3.', 1, NULL, NULL),
(413, 124, 'Cả ba biển.', 0, NULL, NULL),
(414, 125, 'Biển 1.', 1, NULL, NULL),
(415, 125, 'Biển 2.', 0, NULL, NULL),
(416, 125, 'Biển 3.', 0, NULL, NULL),
(417, 126, 'Biển 1.', 0, NULL, NULL),
(418, 126, 'Biển 1 và 2.', 0, NULL, NULL),
(419, 126, 'Biển 2 và 3.', 0, NULL, NULL),
(420, 126, 'Cả ba biển.', 1, NULL, NULL),
(421, 127, 'Biển 1.', 1, NULL, NULL),
(422, 127, 'Biển 2 và 3.', 0, NULL, NULL),
(423, 127, 'Biển 3.', 0, NULL, NULL),
(424, 128, 'Biển 1 và 2.', 0, NULL, NULL),
(425, 128, 'Biển 1 và 3.', 1, NULL, NULL),
(426, 128, 'Biển 2 và 3.', 0, NULL, NULL),
(427, 128, 'Cả ba biển.', 0, NULL, NULL),
(428, 129, 'Biển 1.', 0, NULL, NULL),
(429, 129, 'Biển 2.', 0, NULL, NULL),
(430, 129, 'Biển 3.', 1, NULL, NULL),
(431, 129, 'Cả ba biển.', 0, NULL, NULL),
(432, 130, 'Biển 1 và 2.', 0, NULL, NULL),
(433, 130, 'Biển 1 và 3.', 0, NULL, NULL),
(434, 130, 'Biển 2 và 3.', 1, NULL, NULL),
(435, 130, 'Cả ba biển.', 0, NULL, NULL),
(436, 131, 'Biển 1.', 1, NULL, NULL),
(437, 131, 'Biển 2.', 0, NULL, NULL),
(438, 131, 'Biển 3.', 0, NULL, NULL),
(439, 131, 'Biển 1 và 3.', 0, NULL, NULL),
(440, 132, 'Biển 1 và 2.', 0, NULL, NULL),
(441, 132, 'Biển 1 và 3.', 1, NULL, NULL),
(442, 132, 'Biển 2 và 3.', 0, NULL, NULL),
(443, 132, 'Cả ba biển.', 0, NULL, NULL),
(444, 133, 'Biển 1.', 1, NULL, NULL),
(445, 133, 'Biển 2.', 0, NULL, NULL),
(446, 133, 'Biển 3.', 0, NULL, NULL),
(447, 133, 'Biển 2 và 3.', 0, NULL, NULL),
(448, 134, 'Biển 1 và 3.', 0, NULL, NULL),
(449, 134, 'Biển 2.', 1, NULL, NULL),
(450, 134, 'Biển 3.', 0, NULL, NULL),
(451, 135, 'Biển 1 và 2.', 1, NULL, NULL),
(452, 135, 'Biển 1 và 3.', 0, NULL, NULL),
(453, 135, 'Biển 2 và 3.', 0, NULL, NULL),
(454, 135, 'Cả ba biển.', 0, NULL, NULL),
(455, 136, 'Biển 1.', 0, NULL, NULL),
(456, 136, 'Biển 1 và 3.', 0, NULL, NULL),
(457, 136, 'Biển 2 và 3.', 1, NULL, NULL),
(458, 136, 'Cả ba biển.', 0, NULL, NULL),
(459, 137, 'Biển 1.', 1, NULL, NULL),
(460, 137, 'Biển 2.', 0, NULL, NULL),
(461, 137, 'Biển 3.', 0, NULL, NULL),
(462, 138, 'Biển 1.', 0, NULL, NULL),
(463, 138, 'Biển 2.', 1, NULL, NULL),
(464, 138, 'Biển 3.', 0, NULL, NULL),
(465, 139, 'Biển 1.', 0, NULL, NULL),
(466, 139, 'Biển 2.', 0, NULL, NULL),
(467, 139, 'Biển 3.', 1, NULL, NULL),
(468, 140, 'Biển 1.', 1, NULL, NULL),
(469, 140, 'Biển 2.', 0, NULL, NULL),
(470, 140, 'Biển 3.', 0, NULL, NULL),
(471, 141, 'Biển 1.', 0, NULL, NULL),
(472, 141, 'Biển 2.', 1, NULL, NULL),
(473, 141, 'Biển 3.', 0, NULL, NULL),
(474, 142, 'Biển 1.', 0, NULL, NULL),
(475, 142, 'Biển 2.', 1, NULL, NULL),
(476, 142, 'Biển 3.', 0, NULL, NULL),
(477, 143, 'Biển 1.', 0, NULL, NULL),
(478, 143, 'Biển 2 và 3.', 1, NULL, NULL),
(479, 143, 'Cả ba biển.', 0, NULL, NULL),
(480, 144, 'Biển 1.', 0, NULL, NULL),
(481, 144, 'Biển 2.', 1, NULL, NULL),
(482, 145, 'Biển 1.', 0, NULL, NULL),
(483, 145, 'Biển 2.', 1, NULL, NULL),
(484, 145, 'Biển 3.', 0, NULL, NULL),
(485, 146, 'Báo hiệu đường có ổ gà, lồi lõm.', 0, NULL, NULL),
(486, 146, 'Báo hiệu đường có gồ giảm tốc phía trước.', 1, NULL, NULL),
(487, 147, 'Biển 1.', 0, NULL, NULL),
(488, 147, 'Biển 2.', 0, NULL, NULL),
(489, 147, 'Không biển nào.', 1, NULL, NULL),
(490, 148, 'Biển 1.', 1, NULL, NULL),
(491, 148, 'Biển 2.', 0, NULL, NULL),
(492, 149, 'Biển 1.', 0, NULL, NULL),
(493, 149, 'Biển 2.', 1, NULL, NULL),
(494, 149, 'Cả hai biển.', 0, NULL, NULL),
(495, 150, 'Biển 1.', 1, NULL, NULL),
(496, 150, 'Biển 2.', 0, NULL, NULL),
(497, 150, 'Biển 3.', 0, NULL, NULL),
(498, 151, 'Biển 1.', 0, NULL, NULL),
(499, 151, 'Biển 2.', 0, NULL, NULL),
(500, 151, 'Biển 3.', 0, NULL, NULL),
(501, 151, 'Biển 1 và 2.', 1, NULL, NULL),
(502, 152, 'Biển 1.', 0, NULL, NULL),
(503, 152, 'Biển 2.', 0, NULL, NULL),
(504, 152, 'Biển 3.', 1, NULL, NULL),
(505, 152, 'Cả ba biển.', 0, NULL, NULL),
(506, 153, 'Biển 1.', 0, NULL, NULL),
(507, 153, 'Biển 2.', 0, NULL, NULL),
(508, 153, 'Biển 3.', 0, NULL, NULL),
(509, 153, 'Biển 2 và 3.', 1, NULL, NULL),
(510, 154, 'Biển 1.', 0, NULL, NULL),
(511, 154, 'Biển 2.', 1, NULL, NULL),
(512, 154, 'Biển 3.', 0, NULL, NULL),
(513, 154, 'Cả ba biển.', 0, NULL, NULL),
(514, 155, 'Biển 1.', 1, NULL, NULL),
(515, 155, 'Biển 2.', 0, NULL, NULL),
(516, 155, 'Cả hai biển.', 0, NULL, NULL),
(517, 155, 'Không biển nào.', 0, NULL, NULL),
(518, 156, 'Biển 1.', 0, NULL, NULL),
(519, 156, 'Biển 2.', 1, NULL, NULL),
(520, 156, 'Cả hai biển.', 0, NULL, NULL),
(521, 156, 'Không biển nào.', 0, NULL, NULL),
(522, 157, 'Biển 1.', 0, NULL, NULL),
(523, 157, 'Biển 2.', 1, NULL, NULL),
(524, 157, 'Biển 3.', 0, NULL, NULL),
(525, 158, 'Dừng xe tại khu vực có trạm Cảnh sát giao thông.', 0, NULL, NULL),
(526, 158, 'Tiếp tục lưu thông với tốc độ bình thường.', 0, NULL, NULL),
(527, 158, 'Phải giảm tốc độ đến mức an toàn và không được vượt khi đi qua khu vực này.', 1, NULL, NULL),
(528, 159, 'Đi thẳng hoặc rẽ trái trên cầu vượt.', 0, NULL, NULL),
(529, 159, 'Đi thẳng hoặc rẽ phải trên cầu vượt.', 0, NULL, NULL),
(530, 159, 'Báo hiệu cầu vượt liên thông.', 1, NULL, NULL),
(531, 160, 'Vạch 1.', 0, NULL, NULL),
(532, 160, 'Vạch 2.', 0, NULL, NULL),
(533, 160, 'Vạch 3.', 0, NULL, NULL),
(534, 160, 'Vạch 1 và 2.', 1, NULL, NULL),
(535, 161, 'Vạch 1.', 0, NULL, NULL),
(536, 161, 'Vạch 2.', 1, NULL, NULL),
(537, 161, 'Vạch 3.', 0, NULL, NULL),
(538, 161, 'Cả 3 vạch.', 0, NULL, NULL),
(539, 162, 'Vạch 1.', 0, NULL, NULL),
(540, 162, 'Vạch 2.', 0, NULL, NULL),
(541, 162, 'Vạch 3.', 0, NULL, NULL),
(542, 162, 'Vạch 1 và 3.', 1, NULL, NULL),
(543, 163, 'Phân chia hai chiều xe chạy ngược chiều nhau.', 1, NULL, NULL),
(544, 163, 'Phân chia các làn xe chạy cùng chiều nhau.', 0, NULL, NULL),
(545, 164, 'Vạch 1.', 0, NULL, NULL),
(546, 164, 'Vạch 2.', 0, NULL, NULL),
(547, 164, 'Vạch 3.', 0, NULL, NULL),
(548, 164, 'Vạch 1 và vạch 3.', 1, NULL, NULL),
(549, 165, 'Vị trí dừng xe của các phương tiện vận tải hành khách công cộng.', 1, NULL, NULL),
(550, 165, 'Báo cho người điều khiển được dừng phương tiện trong phạm vi phần mặt đường có bố trí vạch để tránh ùn tắc giao thông.', 0, NULL, NULL),
(551, 165, 'Dùng để xác định vị trí giữa các phương tiện trên đường.', 0, NULL, NULL),
(552, 166, 'Xe tải, xe khách, xe con, mô tô.', 0, NULL, NULL),
(553, 166, 'Xe tải, mô tô, xe khách, xe con.', 1, NULL, NULL),
(554, 166, 'Xe khách, xe tải, xe con, mô tô.', 0, NULL, NULL),
(555, 166, 'Mô tô, xe khách, xe tải, xe con.', 0, NULL, NULL),
(556, 167, 'Xe tải, xe con, mô tô.', 0, NULL, NULL),
(557, 167, 'Xe con, xe tải, mô tô.', 0, NULL, NULL),
(558, 167, 'Mô tô, xe con, xe tải.', 1, NULL, NULL),
(559, 167, 'Xe con, mô tô, xe tải.', 0, NULL, NULL),
(560, 168, 'Mô tô.', 0, NULL, NULL),
(561, 168, 'Xe con.', 1, NULL, NULL),
(562, 169, 'Mô tô.', 0, NULL, NULL),
(563, 169, 'Xe cứu thương.', 1, NULL, NULL),
(564, 170, 'Xe con và xe khách.', 1, NULL, NULL),
(565, 170, 'Mô tô.', 0, NULL, NULL),
(566, 171, 'Xe khách, xe tải, mô tô.', 1, NULL, NULL),
(567, 171, 'Xe tải, xe con, mô tô.', 0, NULL, NULL),
(568, 171, 'Xe khách, xe con, mô tô.', 0, NULL, NULL),
(569, 172, 'Xe khách, xe tải, mô tô, xe con.', 0, NULL, NULL),
(570, 172, 'Xe con, xe khách, xe tải, mô tô.', 0, NULL, NULL),
(571, 172, 'Mô tô, xe tải, xe khách, xe con.', 1, NULL, NULL),
(572, 172, 'Mô tô, xe tải, xe con, xe khách.', 0, NULL, NULL),
(573, 173, 'Xe tải.', 1, NULL, NULL),
(574, 173, 'Xe con và mô tô.', 0, NULL, NULL),
(575, 173, 'Cả ba xe.', 0, NULL, NULL),
(576, 173, 'Xe con và xe tải.', 0, NULL, NULL),
(577, 174, 'Cả ba hướng.', 1, NULL, NULL),
(578, 174, 'Chỉ hướng 1 và 3.', 0, NULL, NULL),
(579, 174, 'Chỉ hướng 1.', 0, NULL, NULL),
(580, 175, 'Cả hai xe.', 1, NULL, NULL),
(581, 175, 'Không xe nào vi phạm.', 0, NULL, NULL),
(582, 175, 'Chỉ xe mô tô vi phạm.', 0, NULL, NULL),
(583, 175, 'Chỉ xe tải vi phạm.', 0, NULL, NULL),
(584, 176, 'Chỉ mô tô.', 0, NULL, NULL),
(585, 176, 'Chỉ xe tải.', 0, NULL, NULL),
(586, 176, 'Cả ba xe.', 1, NULL, NULL),
(587, 176, 'Chỉ mô tô và xe tải.', 0, NULL, NULL),
(588, 177, 'Đúng.', 0, NULL, NULL),
(589, 177, 'Không đúng.', 1, NULL, NULL),
(590, 178, 'Xe con.', 0, NULL, NULL),
(591, 178, 'Xe mô tô.', 1, NULL, NULL),
(592, 179, 'Xe con (A), mô tô, xe con (B), xe đạp.', 0, NULL, NULL),
(593, 179, 'Xe con (B), xe đạp, mô tô, xe con (A).', 0, NULL, NULL),
(594, 179, 'Xe con (A), xe con (B), mô tô + xe đạp.', 0, NULL, NULL),
(595, 179, 'Mô tô + xe đạp, xe con (A), xe con (B).', 1, NULL, NULL),
(596, 180, 'Mô tô.', 1, NULL, NULL),
(597, 180, 'Xe con.', 0, NULL, NULL),
(598, 181, 'Xe khách.', 0, NULL, NULL),
(599, 181, 'Mô tô.', 0, NULL, NULL),
(600, 181, 'Xe con.', 1, NULL, NULL),
(601, 181, 'Xe con và mô tô.', 0, NULL, NULL),
(602, 182, 'Các xe ở phía tay phải và tay trái của người điều khiển được phép đi thẳng.', 0, NULL, NULL),
(603, 182, 'Cho phép các xe ở mọi hướng được rẽ phải.', 0, NULL, NULL),
(604, 182, 'Tất cả các xe phải dừng lại trước ngã tư, trừ những xe đã ở trong ngã tư được phép tiếp tục đi.', 1, NULL, NULL),
(605, 183, 'Mô tô, xe con.', 0, NULL, NULL),
(606, 183, 'Xe con, xe tải.', 0, NULL, NULL),
(607, 183, 'Mô tô, xe tải.', 1, NULL, NULL),
(608, 184, 'Chỉ xe khách, mô tô.', 0, NULL, NULL),
(609, 184, 'Tất cả các loại xe trên.', 1, NULL, NULL),
(610, 184, 'Không xe nào chấp hành đúng quy tắc giao thông.', 0, NULL, NULL),
(611, 185, 'Cả ba hướng.', 0, NULL, NULL),
(612, 185, 'Hướng 1 và 2.', 0, NULL, NULL),
(613, 185, 'Hướng 1 và 3.', 1, NULL, NULL),
(614, 185, 'Hướng 2 và 3.', 0, NULL, NULL),
(615, 186, 'Xe công an, xe quân sự, xe con + mô tô.', 0, NULL, NULL),
(616, 186, 'Xe quân sự, xe công an, xe con + mô tô.', 1, NULL, NULL),
(617, 186, 'Xe mô tô + xe con, xe quân sự, xe công an.', 0, NULL, NULL),
(618, 187, 'Xe con (E), mô tô (C).', 1, NULL, NULL),
(619, 187, 'Xe tải (A), mô tô (D).', 0, NULL, NULL),
(620, 187, 'Xe khách (B), mô tô (C).', 0, NULL, NULL),
(621, 187, 'Xe khách (B), mô tô (D).', 0, NULL, NULL),
(622, 188, 'Xe con (B), mô tô (C).', 0, NULL, NULL),
(623, 188, 'Xe con (A), mô tô (C).', 0, NULL, NULL),
(624, 188, 'Xe con (E), mô tô (D).', 1, NULL, NULL),
(625, 188, 'Tất cả các loại xe trên.', 0, NULL, NULL),
(626, 189, 'Cho phép.', 0, NULL, NULL),
(627, 189, 'Không được vượt.', 1, NULL, NULL),
(628, 190, 'Xe mô tô.', 0, NULL, NULL),
(629, 190, 'Xe ô tô con.', 0, NULL, NULL),
(630, 190, 'Không xe nào vi phạm.', 0, NULL, NULL),
(631, 190, 'Cả 2 xe.', 1, NULL, NULL),
(632, 191, 'Xe con.', 0, NULL, NULL),
(633, 191, 'Xe tải.', 1, NULL, NULL),
(634, 191, 'Xe con, xe tải.', 0, NULL, NULL),
(635, 192, 'Xe tải, xe con.', 0, NULL, NULL),
(636, 192, 'Xe khách, xe con.', 0, NULL, NULL),
(637, 192, 'Xe khách, xe tải.', 1, NULL, NULL),
(638, 193, 'Xe con, xe tải, xe khách.', 0, NULL, NULL),
(639, 193, 'Xe tải, xe khách, xe mô tô.', 1, NULL, NULL),
(640, 193, 'Xe khách, xe mô tô, xe con.', 0, NULL, NULL),
(641, 193, 'Cả bốn xe.', 0, NULL, NULL),
(642, 194, 'Xe tải, mô tô.', 0, NULL, NULL),
(643, 194, 'Xe khách, mô tô.', 1, NULL, NULL),
(644, 194, 'Xe tải, xe con.', 0, NULL, NULL),
(645, 194, 'Mô tô, xe con.', 0, NULL, NULL),
(646, 195, 'Xe của bạn, mô tô, xe con.', 0, NULL, NULL),
(647, 195, 'Xe con, xe của bạn, mô tô.', 0, NULL, NULL),
(648, 195, 'Mô tô, xe con, xe của bạn.', 1, NULL, NULL),
(649, 196, 'Xe của bạn, mô tô, xe con.', 0, NULL, NULL),
(650, 196, 'Xe con, xe của bạn, mô tô.', 1, NULL, NULL),
(651, 196, 'Mô tô, xe con, xe của bạn.', 0, NULL, NULL),
(652, 197, 'Tăng tốc độ, rẽ phải trước xe tải và xe đạp.', 0, NULL, NULL),
(653, 197, 'Giảm tốc độ, rẽ phải sau xe tải và xe đạp.', 1, NULL, NULL),
(654, 197, 'Tăng tốc độ, rẽ phải trước xe đạp.', 0, NULL, NULL),
(655, 198, 'Xe con.', 1, NULL, NULL),
(656, 198, 'Xe mô tô.', 0, NULL, NULL),
(657, 198, 'Cả 2 xe đều đúng.', 0, NULL, NULL),
(658, 199, 'Quan sát nếu thấy không có tàu thì tăng tốc cho xe vượt qua đường sắt.', 0, NULL, NULL),
(659, 199, 'Dừng lại trước rào chắn một khoảng cách an toàn.', 1, NULL, NULL),
(660, 199, 'Ra tín hiệu, yêu cầu người gác chắn tàu kéo chậm Barie để xe bạn qua.', 0, NULL, NULL),
(661, 200, 'Vượt về phía bên phải để đi tiếp.', 0, NULL, NULL),
(662, 200, 'Giảm tốc độ chờ xe container rẽ xong rồi tiếp tục đi.', 1, NULL, NULL),
(663, 200, 'Vượt về phía bên trái để đi tiếp.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thong_bao`
--

CREATE TABLE `thong_bao` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thong_bao`
--

INSERT INTO `thong_bao` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0656cd15-8b4b-4d64-b53e-13615f9ba62c', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 1, '{\"title\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/bai-viet\\/8-buoc-cham-soc-xe-may-luon-ben-dep\",\"fas\":\"fas fa-comment\"}', '2024-05-27 20:37:55', '2024-05-27 20:26:05', '2024-05-27 20:37:55'),
('4856bc77-bed9-45f5-aa45-7bb3b5ca257a', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 1, '{\"title\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/bai-viet\\/8-buoc-cham-soc-xe-may-luon-ben-dep\",\"fas\":\"fas fa-comment\"}', NULL, '2024-05-27 11:00:41', '2024-05-27 11:00:41'),
('571fdd38-0f61-4ea4-9f2e-50925a17a952', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 1, '{\"title\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/bai-viet\\/cham-soc-xe-may-the-nao-cho-hieu-qua-5-cong-viec-can-nho\",\"fas\":\"fas fa-comment\"}', NULL, '2024-05-27 10:58:09', '2024-05-27 10:58:09'),
('661b03ea-2ecf-43be-8886-cfdb93cace70', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 1, '{\"title\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/bai-viet\\/8-buoc-cham-soc-xe-may-luon-ben-dep\",\"fas\":\"fas fa-comment\"}', NULL, '2024-05-27 12:15:51', '2024-05-27 12:15:51'),
('7d79ce15-c28a-4da3-a3fe-d787b71322a9', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 1, '{\"title\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/bai-viet\\/8-buoc-cham-soc-xe-may-luon-ben-dep\",\"fas\":\"fas fa-comment\"}', NULL, '2024-05-27 12:17:25', '2024-05-27 12:17:25'),
('d94fd7a0-4aba-4fde-9f4e-0fd050512a92', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 1, '{\"title\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/bai-viet\\/8-buoc-cham-soc-xe-may-luon-ben-dep\",\"fas\":\"fas fa-comment\"}', '2024-05-26 10:23:44', '2024-05-26 06:15:20', '2024-05-26 10:23:44'),
('e4261f0a-c7a0-43d8-80d2-687b72e77f39', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 1, '{\"title\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/bai-viet\\/8-buoc-cham-soc-xe-may-luon-ben-dep\",\"fas\":\"fas fa-comment\"}', NULL, '2024-05-27 12:17:45', '2024-05-27 12:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `tin_nhan`
--

CREATE TABLE `tin_nhan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `photo`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đào Thành Công', 'admin@email.com', NULL, 'admin', '$2y$10$LILnR34J3qB1yRTIAwWyzuKmD/18LUsHmbjlFC2/MGfelRsDy8KLm', '/storage/photos/1/users/5a1de433aac4fe620d532763add1de2c.jpg', 'admin', 1, NULL, '2024-04-03 17:00:00', '2024-05-27 11:31:58'),
(2, 'Nguyễn Văn An', 'nguyenvanan@email.com', NULL, 'nguyenvanan', '$2y$10$e2XCGiDieoNeJDiNZyaotOYS5z/2TYfSLnTqSP1qu6U3tOitbNuIC', NULL, 'user', 1, NULL, '2024-04-03 17:00:00', NULL),
(3, 'Trần Thị Bích', 'user@gmail.com', NULL, NULL, '$2y$10$UpEjmZ126rQNAmDSmZ4XZ.mM7sY7XZsAVywP/UAm0R.r4fktdceSu', '/storage/photos/3/defqon1_2018_mainstage.jpg', 'user', 1, NULL, '2024-05-27 12:22:54', '2024-05-27 20:31:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bai_giang`
--
ALTER TABLE `bai_giang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bai_giang_slug_unique` (`slug`),
  ADD KEY `khoa_hoc_id` (`khoa_hoc_id`);

--
-- Indexes for table `bai_nop`
--
ALTER TABLE `bai_nop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bai_nop_lich_su_id_foreign` (`lich_su_id`),
  ADD KEY `bai_nop_cau_hoi_id_foreign` (`cau_hoi_id`),
  ADD KEY `bai_nop_phuong_an_id_foreign` (`phuong_an_id`);

--
-- Indexes for table `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bai_viet_slug_unique` (`slug`),
  ADD KEY `bai_viet_danh_muc_id_foreign` (`danh_muc_id`),
  ADD KEY `bai_viet_user_id_foreign` (`user_id`);

--
-- Indexes for table `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binh_luan_bai_viet_id_foreign` (`bai_viet_id`),
  ADD KEY `binh_luan_user_id_foreign` (`user_id`),
  ADD KEY `binh_luan_binh_luan_id_foreign` (`binh_luan_id`);

--
-- Indexes for table `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cau_hoi_khoa_hoc_id_foreign` (`khoa_hoc_id`),
  ADD KEY `cau_hoi_de_thi_id_foreign` (`de_thi_id`);

--
-- Indexes for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `danh_muc_slug_unique` (`slug`);

--
-- Indexes for table `de_thi`
--
ALTER TABLE `de_thi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `de_thi_slug_unique` (`slug`),
  ADD KEY `de_thi_khoa_hoc_id_foreign` (`khoa_hoc_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `khoa_hoc_slug_unique` (`slug`);

--
-- Indexes for table `lich_su`
--
ALTER TABLE `lich_su`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lich_su_user_id_foreign` (`user_id`),
  ADD KEY `lich_su_de_thi_id_foreign` (`de_thi_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phuong_an`
--
ALTER TABLE `phuong_an`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phuong_an_cau_hoi_id_foreign` (`cau_hoi_id`);

--
-- Indexes for table `thong_bao`
--
ALTER TABLE `thong_bao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thong_bao_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `tin_nhan`
--
ALTER TABLE `tin_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bai_giang`
--
ALTER TABLE `bai_giang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bai_nop`
--
ALTER TABLE `bai_nop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bai_viet`
--
ALTER TABLE `bai_viet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cau_hoi`
--
ALTER TABLE `cau_hoi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;

--
-- AUTO_INCREMENT for table `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `de_thi`
--
ALTER TABLE `de_thi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lich_su`
--
ALTER TABLE `lich_su`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phuong_an`
--
ALTER TABLE `phuong_an`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT for table `tin_nhan`
--
ALTER TABLE `tin_nhan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bai_giang`
--
ALTER TABLE `bai_giang`
  ADD CONSTRAINT `bai_giang_ibfk_1` FOREIGN KEY (`khoa_hoc_id`) REFERENCES `khoa_hoc` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `bai_nop`
--
ALTER TABLE `bai_nop`
  ADD CONSTRAINT `bai_nop_cau_hoi_id_foreign` FOREIGN KEY (`cau_hoi_id`) REFERENCES `cau_hoi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bai_nop_lich_su_id_foreign` FOREIGN KEY (`lich_su_id`) REFERENCES `lich_su` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bai_nop_phuong_an_id_foreign` FOREIGN KEY (`phuong_an_id`) REFERENCES `phuong_an` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD CONSTRAINT `bai_viet_danh_muc_id_foreign` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_muc` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bai_viet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_bai_viet_id_foreign` FOREIGN KEY (`bai_viet_id`) REFERENCES `bai_viet` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `binh_luan_binh_luan_id_foreign` FOREIGN KEY (`binh_luan_id`) REFERENCES `binh_luan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `binh_luan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD CONSTRAINT `cau_hoi_de_thi_id_foreign` FOREIGN KEY (`de_thi_id`) REFERENCES `de_thi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `cau_hoi_khoa_hoc_id_foreign` FOREIGN KEY (`khoa_hoc_id`) REFERENCES `khoa_hoc` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `de_thi`
--
ALTER TABLE `de_thi`
  ADD CONSTRAINT `de_thi_khoa_hoc_id_foreign` FOREIGN KEY (`khoa_hoc_id`) REFERENCES `khoa_hoc` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `lich_su`
--
ALTER TABLE `lich_su`
  ADD CONSTRAINT `lich_su_de_thi_id_foreign` FOREIGN KEY (`de_thi_id`) REFERENCES `de_thi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lich_su_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phuong_an`
--
ALTER TABLE `phuong_an`
  ADD CONSTRAINT `phuong_an_cau_hoi_id_foreign` FOREIGN KEY (`cau_hoi_id`) REFERENCES `cau_hoi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
