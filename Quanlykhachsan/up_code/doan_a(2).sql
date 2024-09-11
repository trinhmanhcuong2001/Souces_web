-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2016 at 07:25 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan_a`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `id_nhanvien` int(11) NOT NULL,
  `admin_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`, `id_nhanvien`, `admin_group_id`) VALUES
(1, 'admin', '4297f44b13955235245b2497399d7a93', 1, 1),
(5, 'sonlone3', '4297f44b13955235245b2497399d7a93', 3, 2),
(6, 'anhlone3', '4297f44b13955235245b2497399d7a93', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `bangluong`
--

CREATE TABLE `bangluong` (
  `id_bangluong` int(11) NOT NULL,
  `id_nhanvien` int(11) NOT NULL,
  `ngaylamviec` varchar(25) NOT NULL,
  `ngaynhanluong` varchar(25) NOT NULL,
  `songaylam` int(11) NOT NULL,
  `luongcung` varchar(50) NOT NULL,
  `sotiennhanduoc` varchar(50) NOT NULL,
  `songaynghi` int(11) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `tinhtrang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bangluong`
--

INSERT INTO `bangluong` (`id_bangluong`, `id_nhanvien`, `ngaylamviec`, `ngaynhanluong`, `songaylam`, `luongcung`, `sotiennhanduoc`, `songaynghi`, `ghichu`, `tinhtrang`) VALUES
(5, 2, '10-12-2016', '', 0, '300,000', '', 0, '', 'Chưa xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `idphong_chothue` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `data` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`idphong_chothue`, `date`, `data`) VALUES
(2, '2016-11-30', 'KH 34 đang ở'),
(2, '2016-12-18', 'Dọn dẹp'),
(13, '2016-11-30', 'KH 32 đang ở'),
(13, '2016-12-22', 'KH 30 đặt'),
(13, '2016-12-23', 'KH 30 đặt');

-- --------------------------------------------------------

--
-- Table structure for table `datphong`
--

CREATE TABLE `datphong` (
  `iddatphong` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `idphong` int(11) NOT NULL,
  `ngayden` varchar(15) NOT NULL,
  `ngaydi` varchar(15) NOT NULL,
  `songuoi` varchar(10) NOT NULL,
  `sophong` varchar(10) NOT NULL,
  `ngaydatphong` varchar(20) NOT NULL,
  `tongngay` varchar(20) NOT NULL,
  `tongtien` varchar(255) NOT NULL,
  `tinhtrang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datphong`
--

INSERT INTO `datphong` (`iddatphong`, `idkhachhang`, `idphong`, `ngayden`, `ngaydi`, `songuoi`, `sophong`, `ngaydatphong`, `tongngay`, `tongtien`, `tinhtrang`) VALUES
(11, 34, 3, '13/12/2016', '1/1/2017', '2', '1', '01/12/2016 18:50:32', '19', '15,200,000', 'Chưa xử lý'),
(12, 30, 3, '19/12/2016', '20/12/2016', '1', '1', '18/12/2016 08:58:52', '1', '800,000', 'Đã xử lý'),
(16, 40, 3, '13/1/2017', '20/1/2017', '1', '1', '23/12/2016 12:35:42', '7', '2,100,000', 'Chưa xử lý'),
(20, 40, 1, '1/1/2017', '15/1/2017', '1', '1', '23/12/2016 13:13:50', '14', '4,200,000', 'Chưa xử lý'),
(21, 30, 4, '1/1/2017', '3/1/2017', '4', '2', '23/12/2016 13:17:16', '2', '4,800,000', 'Chưa xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `guiemail`
--

CREATE TABLE `guiemail` (
  `id` int(11) NOT NULL,
  `id_phanhoi` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `id_nhanvien` int(11) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guiemail`
--

INSERT INTO `guiemail` (`id`, `id_phanhoi`, `email`, `tieude`, `id_nhanvien`, `noidung`, `date`) VALUES
(4, 11, 'gia@gmail.com', 'Hỏi phòng', 1, 'sfdhdfhdfh', '21/12/2016 18:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon_nhanphong`
--

CREATE TABLE `hoadon_nhanphong` (
  `idhoadon_nhanphong` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `idphong_chothue` int(11) NOT NULL,
  `ngaynhanphong` varchar(25) NOT NULL,
  `songuoi` int(11) NOT NULL,
  `tinhtrang` varchar(35) NOT NULL,
  `id_nguoilap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon_nhanphong`
--

INSERT INTO `hoadon_nhanphong` (`idhoadon_nhanphong`, `idkhachhang`, `idphong_chothue`, `ngaynhanphong`, `songuoi`, `tinhtrang`, `id_nguoilap`) VALUES
(6, 30, 1, '10-12-2016 22:24:37', 2, 'Đã xử lý', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon_traphong`
--

CREATE TABLE `hoadon_traphong` (
  `idhoadon_traphong` int(11) NOT NULL,
  `idhoadon_nhanphong` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `idphong_chothue` int(11) NOT NULL,
  `ngaynhanphong` varchar(25) NOT NULL,
  `ngaytraphong` varchar(25) NOT NULL,
  `songayo` int(11) NOT NULL,
  `giaphong` varchar(50) NOT NULL,
  `tongtien` varchar(50) NOT NULL,
  `id_nguoilap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon_traphong`
--

INSERT INTO `hoadon_traphong` (`idhoadon_traphong`, `idhoadon_nhanphong`, `idkhachhang`, `idphong_chothue`, `ngaynhanphong`, `ngaytraphong`, `songayo`, `giaphong`, `tongtien`, `id_nguoilap`) VALUES
(20, 6, 30, 1, '10-12-2016 22:24:37', '21-12-2016 22:45:22', 12, '200,000', '2,400,000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotro`
--

CREATE TABLE `hotro` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `sdt` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotro`
--

INSERT INTO `hotro` (`id`, `facebook`, `sdt`) VALUES
(1, 'https://www.facebook.com/kum.nguyen.12', '0155937592'),
(2, 'https://www.facebook.com/huytam512', '01998537537');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `ngaysinh` varchar(15) NOT NULL,
  `gioitinh` varchar(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `cmnd` varchar(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `hoten`, `ngaysinh`, `gioitinh`, `email`, `sdt`, `cmnd`, `user`, `pass`) VALUES
(30, 'Nguyễn Trương Hoàng Anh', '23/2/1995', 'Nam', 'gia@gmail.com', '016695808333', '23452332523', 'anhlone3', '4297f44b13955235245b2497399d7a93'),
(34, 'Nguyễn phú trọng', '1/1/1960', 'Nam', '', '016695808333', '23452332523', '', ''),
(38, 'GIa Ma', '1/1/1977', 'Nữ', 'asdg@gmail.com', '46443674344', '234623478', '', ''),
(39, 'Cao Văn Cường', '1/1/1960', 'Nam', 'honglone3@gmail.com', '016695808333', '23452332523', 'anhlone33', '4297f44b13955235245b2497399d7a93'),
(40, 'Cao Văn Anh', '1/1/1960', 'Nam', 'anhlone1@gmail.com', '01668349233', '248592734', 'anhlone1', 'ef6f05463e9b7c1644a2a8a5dddf22c9');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id`, `diachi`, `hotline`, `email`) VALUES
(1, '08 Nguyễn Văn Tráng, phường Bến Thành, quận 1, Hồ Chí Minh, Việt Nam', '+84 (0) 932.126.086 ', 'luxuryhotelnamdinh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `hoten` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ngaysinh` varchar(25) CHARACTER SET utf8 NOT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sdt` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cmnd` varchar(20) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id_nhanvien`, `hoten`, `ngaysinh`, `gioitinh`, `email`, `sdt`, `cmnd`, `diachi`) VALUES
(1, 'Chủ', '', '', '', '', '', ''),
(2, 'Cao Thái Anh', '20/11/1993', 'Nam', 'anh@gmail.com', '05334563455', '436446732', 'Tây Thạnh, Hồ Chí Minh'),
(3, 'Huỳnh Thị Son', '12/6/1992', 'Nữ', 'son@gmail.com', '01238475933', '1564747342', 'Củ Chi, TP Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `id` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(25) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `date` varchar(25) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`id`, `hoten`, `email`, `sdt`, `tieude`, `noidung`, `date`, `tinhtrang`) VALUES
(11, 'Nguyễn Trương Hoàng Anh', 'gia@gmail.com', '016695808333', 'Hỏi phòng', 'Còn phòng không ad?', '21/12/2016 18:18:04', 'Đã xử lý'),
(12, '', 'honglone3@gmail.com', '', 'Quên mật khẩu', 'anhlone33', '22/12/2016 09:31:45', 'Chưa xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` int(11) NOT NULL,
  `tenloaiphong` varchar(255) NOT NULL,
  `giaphong` varchar(100) NOT NULL,
  `gp` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `thoigian` varchar(255) NOT NULL,
  `succhua` varchar(20) NOT NULL,
  `mota` varchar(500) NOT NULL,
  `chitiet` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `tenloaiphong`, `giaphong`, `gp`, `hinhanh`, `thoigian`, `succhua`, `mota`, `chitiet`) VALUES
(1, 'Phòng thường 1 giường đơn', '300,000', 300000, 'images/1.jpg', 'Ngày', '2', 'Căn phòng có diện tích 70m2 với một giường đôi rộng 2,2m...', 'Căn phòng có diện tích 40m2 với 1 giường đôi. Tất cả 10 phòng loại này đều có không gian rộng đủ để tiếp khách, ban công nhìn ra cánh đồng, bản làng của người dân tộc miền núi đó là khoảng không gian yên tĩnh lý tưởng.'),
(2, 'Phòng thường 1 giường đôi', '500,000', 500000, 'images/4.jpg', 'Ngày', '4', 'Căn phòng có diện tích 70m2 với một giường đôi rộng 2,2m...', 'Căn phòng có diện tích 40m2 với 1 giường đôi. Tất cả 10 phòng loại này đều có không gian rộng đủ để tiếp khách, ban công nhìn ra cánh đồng, bản làng của người dân tộc miền núi đó là khoảng không gian yên tĩnh lý tưởng.'),
(3, 'Phòng VIP 1 giường đơn', '800,000', 800000, 'images/1.jpg', 'Ngày', '2', 'Căn phòng có diện tích 70m2 với một giường đôi rộng 2,2m...', 'Căn phòng có diện tích 40m2 với 1 giường đôi. Tất cả 10 phòng loại này đều có không gian rộng đủ để tiếp khách, ban công nhìn ra cánh đồng, bản làng của người dân tộc miền núi đó là khoảng không gian yên tĩnh lý tưởng.'),
(4, 'Phòng VIP 1 giường đôi', '1,200,000', 1200000, 'images/4.jpg', 'Ngày', '4', 'Căn phòng có diện tích 70m2 với một giường đôi rộng 2,2m...', 'Căn phòng có diện tích 40m2 với 1 giường đôi. Tất cả 10 phòng loại này đều có không gian rộng đủ để tiếp khách, ban công nhìn ra cánh đồng, bản làng của người dân tộc miền núi đó là khoảng không gian yên tĩnh lý tưởng.');

-- --------------------------------------------------------

--
-- Table structure for table `phongchothue`
--

CREATE TABLE `phongchothue` (
  `idphong_chothue` int(11) NOT NULL,
  `id_loaiphong` int(11) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phongchothue`
--

INSERT INTO `phongchothue` (`idphong_chothue`, `id_loaiphong`, `tinhtrang`) VALUES
(1, 1, 'Đã đặt.'),
(2, 1, 'Sẵn sàng.'),
(3, 1, 'Sẵn sàng.'),
(4, 1, 'Chưa sẵn sàng.'),
(5, 1, 'Chưa sẵn sàng.'),
(6, 2, 'Dọn dẹp'),
(7, 2, 'Chưa sẵn sàng.'),
(8, 2, 'Dọn dẹp'),
(9, 2, 'Sẵn sàng.'),
(10, 2, 'Chưa sẵn sàng.'),
(11, 3, 'Đã đặt.'),
(12, 3, 'Đã có người.'),
(13, 3, 'Đã có người.'),
(14, 3, 'Sẵn sàng.'),
(15, 3, 'Sẵn sàng.'),
(16, 4, 'Sẵn sàng.'),
(17, 4, 'Sẵn sàng.'),
(18, 4, 'Đã có người.'),
(19, 4, 'Đã đặt'),
(20, 4, 'Sẵn sàng.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phanquyen` (`admin_group_id`),
  ADD KEY `fk_nhanvien` (`id_nhanvien`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bangluong`
--
ALTER TABLE `bangluong`
  ADD PRIMARY KEY (`id_bangluong`),
  ADD KEY `fk_bangluong` (`id_nhanvien`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`idphong_chothue`,`date`);

--
-- Indexes for table `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`iddatphong`),
  ADD KEY `fk_khachhang` (`idkhachhang`),
  ADD KEY `fk_phong` (`idphong`);

--
-- Indexes for table `guiemail`
--
ALTER TABLE `guiemail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phanhoi_id` (`id_phanhoi`),
  ADD KEY `fk_guimail_nhanvien` (`id_nhanvien`);

--
-- Indexes for table `hoadon_nhanphong`
--
ALTER TABLE `hoadon_nhanphong`
  ADD PRIMARY KEY (`idhoadon_nhanphong`),
  ADD KEY `fk_nhanphong_khachhang` (`idkhachhang`),
  ADD KEY `fk_nhanphong_phongchothue` (`idphong_chothue`),
  ADD KEY `fk_nhanphong` (`id_nguoilap`);

--
-- Indexes for table `hoadon_traphong`
--
ALTER TABLE `hoadon_traphong`
  ADD PRIMARY KEY (`idhoadon_traphong`),
  ADD KEY `fk_hdnhanphong` (`idhoadon_nhanphong`),
  ADD KEY `fk_idphongchothue` (`idphong_chothue`),
  ADD KEY `fk_idkhachhang` (`idkhachhang`);

--
-- Indexes for table `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phongchothue`
--
ALTER TABLE `phongchothue`
  ADD PRIMARY KEY (`idphong_chothue`),
  ADD KEY `fk_loaiphong` (`id_loaiphong`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bangluong`
--
ALTER TABLE `bangluong`
  MODIFY `id_bangluong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `datphong`
--
ALTER TABLE `datphong`
  MODIFY `iddatphong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `guiemail`
--
ALTER TABLE `guiemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hoadon_nhanphong`
--
ALTER TABLE `hoadon_nhanphong`
  MODIFY `idhoadon_nhanphong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hoadon_traphong`
--
ALTER TABLE `hoadon_traphong`
  MODIFY `idhoadon_traphong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `hotro`
--
ALTER TABLE `hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id_nhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `phongchothue`
--
ALTER TABLE `phongchothue`
  MODIFY `idphong_chothue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_nhanvien` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `fk_phanquyen` FOREIGN KEY (`admin_group_id`) REFERENCES `admin_group` (`id`);

--
-- Constraints for table `bangluong`
--
ALTER TABLE `bangluong`
  ADD CONSTRAINT `fk_bangluong` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`);

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `fk_phongchothue` FOREIGN KEY (`idphong_chothue`) REFERENCES `phongchothue` (`idphong_chothue`);

--
-- Constraints for table `datphong`
--
ALTER TABLE `datphong`
  ADD CONSTRAINT `fk_khachhang` FOREIGN KEY (`idkhachhang`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `fk_phong` FOREIGN KEY (`idphong`) REFERENCES `phong` (`id`);

--
-- Constraints for table `guiemail`
--
ALTER TABLE `guiemail`
  ADD CONSTRAINT `fk_guimail_nhanvien` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `fk_phanhoi_id` FOREIGN KEY (`id_phanhoi`) REFERENCES `phanhoi` (`id`);

--
-- Constraints for table `hoadon_nhanphong`
--
ALTER TABLE `hoadon_nhanphong`
  ADD CONSTRAINT `fk_nhanphong` FOREIGN KEY (`id_nguoilap`) REFERENCES `admin` (`id_nhanvien`),
  ADD CONSTRAINT `fk_nhanphong_khachhang` FOREIGN KEY (`idkhachhang`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `fk_nhanphong_phongchothue` FOREIGN KEY (`idphong_chothue`) REFERENCES `phongchothue` (`idphong_chothue`);

--
-- Constraints for table `hoadon_traphong`
--
ALTER TABLE `hoadon_traphong`
  ADD CONSTRAINT `fk_hdnhanphong` FOREIGN KEY (`idhoadon_nhanphong`) REFERENCES `hoadon_nhanphong` (`idhoadon_nhanphong`),
  ADD CONSTRAINT `fk_idkhachhang` FOREIGN KEY (`idkhachhang`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `fk_idphongchothue` FOREIGN KEY (`idphong_chothue`) REFERENCES `phongchothue` (`idphong_chothue`);

--
-- Constraints for table `phongchothue`
--
ALTER TABLE `phongchothue`
  ADD CONSTRAINT `fk_loaiphong` FOREIGN KEY (`id_loaiphong`) REFERENCES `phong` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
