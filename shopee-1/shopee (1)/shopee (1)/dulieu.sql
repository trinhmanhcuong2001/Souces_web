-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 04:16 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--Tạo table tbl_baiviet
CREATE TABLE `tbl_baiviet`(
    `ID` int(10) PRIMARY KEY auto_increment,`MaChuDe` int(10) NOT NULL,`TieuDe` varchar(300) COLLATE utf8_unicode_ci NOT NULL,`MinhHoa` varchar(300) NOT NULL,`TomTat` text COLLATE utf8_unicode_ci NOT NULl,
    `NoiDung` text COLLATE utf8_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--Insert dữ liệu cho table tbl_baiviet

INSERT INTO `tbl_baiviet`(`MaChuDe`,`TieuDe`,`MinhHoa`,`TomTat`,`NoiDung`) VALUES 
(1,'Sân chơi cho nhưng ý tưởng đột phá từ các bạn trẻ','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/2-20-533x300.jpg','Việt Nam hiện đang có khoảng 2,2 triệu sinh viên trên tổng dân số khoảng 90 triệu dân và trong con số 2,2 triệu sinh...','1234'),
(1,'Kể về chuyện tình giữa người và yêu, Ngọc Duyên đăng quang quán quân Kịch cùng Bolero mùa đầu tiên','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/tom1612-533x300.jpg','Sự cạnh tranh ngang tài ngang sức giữa đạo diễn Ngọc Duyên và đạo diễn Vũ Trần. Danh hiệu Quán quân đã thuộc về nữ...','1234'),
(1,'The Nut Job 2 : Siêu phẩm hoạt hình cực dễ thương trong dịp lễ 2.9','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/POSTER-691x1024-533x300.jpg','Ngày Quốc khánh 2.9 thường là dịp nghỉ lễ mà các thành viên trong gia đình có dịp đoàn tụ, quay quần bên mâm cơm...','1234'),
(1,'Hoa hậu Nam Em khai trương nhà hàng mang chính tên mình','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/6B2A0544-338x190.jpg','Trong tuần này, Hoa hậu Trái đất Việt Nam 2016 Nam Em sẽ chính thức khai trương nhà hàng ẩm thực với tên gọi N.E...','1234')

--Tạo table tbl_baiviet_hot
CREATE TABLE `tbl_baiviet_hot`(
    `ID` int(10) PRIMARY KEY auto_increment,`MaChuDe` int(10) NOT NULL,`TieuDe` varchar(300) COLLATE utf8_unicode_ci NOT NULL,`MinhHoa` varchar(300) NOT NULL,
    `NoiDung` text COLLATE utf8_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--Insert dữ liệu cho table tbl_baiviet_hot
INSERT INTO `tbl_baiviet_hot`(`MaChuDe`,`TieuDe`,`MinhHoa`,`NoiDung`) VALUES
(1,'Thẩm mỹ viện Xuân Trường khai trương chi nhánh số 6','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/IMG_3381-338x190.jpg','1234'),
(1,'“Bad boy” ngoại truyện Andy Quách ra mắt MV hải quân gắn mác 18+','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/Hinh-2-7-1-533x300.jpg','1234'),
(1,'Lan Khuê mạnh mẽ, bốc lửa ủng hộ tinh thần đội tuyển Việt Nam tại SEA Games 29+','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/DSJ_4882-1-533x300.jpg','1234'),
(1,'Ly Na Trang khoe nhan sắc *manh manh tựa mai* trong tà áo dài truyền thống','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/1LyNaTrang1-533x300.jpg','1234'),
(1,'Cô gái cover ca khúc Lạc Trôi gây ấn tượng với vẻ ngoài nhí nhảnh','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/nhuthuy1-533x300.jpg','1234')

--Tạo bảng tbl_baiviet_new
CREATE TABLE `tbl_baiviet_new`(
    `ID` int(10) PRIMARY KEY auto_increment,`MaChuDe` int(10) NOT NULL,`TieuDe` varchar(300) COLLATE utf8_unicode_ci NOT NULL,`MinhHoa` varchar(300) NOT NULL,
    `NoiDung` text COLLATE utf8_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--Insert dữ liệu cho table tbl_baiviet_new
INSERT INTO `tbl_baiviet_new`(`MaChuDe`,`TieuDe`,`MinhHoa`,`NoiDung`) VALUES
(1,'Thẩm mỹ viện Xuân Trường khai trương chi nhánh số 6','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/IMG_3381-338x190.jpg','1234'),
(1,'“Bad boy” ngoại truyện Andy Quách ra mắt MV hải quân gắn mác 18+','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/Hinh-2-7-1-533x300.jpg','1234'),
(1,'Lan Khuê mạnh mẽ, bốc lửa ủng hộ tinh thần đội tuyển Việt Nam tại SEA Games 29+','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/DSJ_4882-1-533x300.jpg','1234'),
(1,'Ly Na Trang khoe nhan sắc *manh manh tựa mai* trong tà áo dài truyền thống','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/1LyNaTrang1-533x300.jpg','1234'),
(1,'Cô gái cover ca khúc Lạc Trôi gây ấn tượng với vẻ ngoài nhí nhảnh','http://dev1.mypagevn.com/star1/wp-content/uploads/2017/08/nhuthuy1-533x300.jpg','1234')
