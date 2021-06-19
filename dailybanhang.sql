-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 05:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailybanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banhang`
--

CREATE TABLE `banhang` (
  `MaKhachHang` varchar(10) NOT NULL,
  `NgayBan` date DEFAULT NULL,
  `TongTienHoaDon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(10) NOT NULL,
  `MaSanPham` varchar(10) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachhang` varchar(10) NOT NULL,
  `TenKhachhang` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `SoDu` int(11) DEFAULT NULL,
  `CongNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachhang`, `TenKhachhang`, `DiaChi`, `SDT`, `SoDu`, `CongNo`) VALUES
('KH001', 'Nguyễn Thanh Tùng', 'Quận 3, TPHCM', '0937652351', 11900000, 0),
('KH00111', 'Nguyễn Thanh Tùng', 'Quận 3, TPHCM', '0937652351', 10000000, 0),
('KH002', 'Phạm Hoàng Sơn', 'Quận 4, TPHCM', '0923748317', 19000000, 0),
('KH003', 'Nguyễn Tú', 'Quận 5, TPHCM', '0376582135', 143000000, 0),
('KH004', 'Phạm Hoàng Huy', 'Quận 7, TPHCM', '0923487123', 29000000, 0),
('KH00433', 'nam0md', 'sdsdv', '012939129', 1200000, 0),
('KH0043323', 'nam0md', 'sdsdv', '012939129', 0, 0),
('KH005', 'Trần Xuân Đức', 'Quận 9, TPHCM', '0348291823', 23129000, 0),
('KH00992', 'nam0md', 'sdsdv', '012939129', 0, 0),
('KH009933', 'nam0md', 'sdsdv', '012939129', 0, 0),
('KH100', 'Trần Anh Duy', 'Quận 3, TPHCM', '0987654321', 28000000, 0),
('KH101', 'Trần Anh Duy', 'Quận 3, TPHCM', '0987654321', 28000000, 0),
('KH23', 'nam0md', 'sdsdv', '012939129', 0, 0),
('KH232', 'nam0md', 'sdsdv', '012939129', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phieuthu`
--

CREATE TABLE `phieuthu` (
  `MaPhieuThu` varchar(10) NOT NULL,
  `MaKhachHang` varchar(10) DEFAULT NULL,
  `SoTienThu` int(11) DEFAULT NULL,
  `NgayThu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieuthu`
--

INSERT INTO `phieuthu` (`MaPhieuThu`, `MaKhachHang`, `SoTienThu`, `NgayThu`) VALUES
('PT001', 'KH100', 12000000, '2021-04-28'),
('PT0010', 'KH00433', 1200000, '2021-05-07'),
('PT002', 'KH100', 15000000, '0000-00-00'),
('PT003', 'KH005', 120000, '2021-06-05'),
('PT004', 'KH005', 3000, '2021-06-05'),
('PT009', 'KH001', 1900000, '2021-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPhieuXuat` varchar(10) NOT NULL,
  `MaHoaDon` varchar(10) DEFAULT NULL,
  `MaKhachHang` varchar(10) DEFAULT NULL,
  `NgayXuatPhieu` date DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` varchar(10) NOT NULL,
  `TenSanPham` varchar(50) DEFAULT NULL,
  `QuyCach` int(11) DEFAULT NULL,
  `GiaGoc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `QuyCach`, `GiaGoc`) VALUES
('SP001', 'Phân Bón Loại A', 100, 500),
('SP002', 'Phân Bón Loại B', 200, 1000),
('SP003', 'Phân Bón Loại C', 500, 5000),
('SP005', 'Phân bón loại E', 120, 3999000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banhang`
--
ALTER TABLE `banhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`,`MaSanPham`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachhang`);

--
-- Indexes for table `phieuthu`
--
ALTER TABLE `phieuthu`
  ADD PRIMARY KEY (`MaPhieuThu`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPhieuXuat`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
