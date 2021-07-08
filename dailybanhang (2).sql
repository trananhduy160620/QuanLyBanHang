-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 01:42 PM
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
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(10) NOT NULL,
  `MaSanPham` varchar(10) NOT NULL,
  `SoLuongBan` int(15) DEFAULT NULL,
  `DonGiaBan` int(11) NOT NULL,
  `KhuyenMai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaSanPham`, `SoLuongBan`, `DonGiaBan`, `KhuyenMai`) VALUES
('HD009', 'SP001', 5, 115, 0),
('HD009', 'SP005', 5, 100, 0),
('HD009', 'SP166', 5, 100, 0),
('HD010', 'SP001', 5, 115, 0),
('HD010', 'SP002', 5, 100, 0),
('HD010', 'SP166', 5, 100, 0),
('HD011', 'SP001', 4, 115, 0),
('HD011', 'SP166', 2, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachhang` varchar(10) NOT NULL,
  `TenKhachhang` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `SoDu` int(11) DEFAULT NULL,
  `CongNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachhang`, `TenKhachhang`, `DiaChi`, `SDT`, `SoDu`, `CongNo`) VALUES
('KH001', 'Nguyễn Thanh Tùng', 'Quận 3, TPHCM', '0937652351', 10425000, 0),
('KH002', 'Phạm Hoàng Sơn', 'Quận 4, TPHCM', '0923748317', 19000000, 0),
('KH003', 'Nguyễn Tú', 'Quận 5, TPHCM', '0376582135', 13000000, 0),
('KH004', 'Phạm Hoàng Huy', 'Quận 7, TPHCM', '0923487123', 15000000, 0),
('KH005', 'Trần Xuân Đức', 'Quận 9, TPHCM', '0348291823', 14000000, 0),
('KH006', 'Nguyễn Hoàng Hải', 'Quận 4, TPHCM', '0983526781', 500000, 0),
('KH007', 'Nguyễn Hoàng Minh', 'Quận 5, TPHCM', '0987654321', 0, 0),
('KH008', 'Nguyễn Thanh Xuân', 'Quận 5, TPHCM', '0988851234', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phieuthu`
--

CREATE TABLE `phieuthu` (
  `MaPhieuThu` varchar(10) NOT NULL,
  `MaKhachHang` varchar(10) DEFAULT NULL,
  `SoTienThu` int(11) DEFAULT NULL,
  `NgayThu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieuthu`
--

INSERT INTO `phieuthu` (`MaPhieuThu`, `MaKhachHang`, `SoTienThu`, `NgayThu`) VALUES
('PT001', 'KH100', 12000000, '2021-04-28'),
('PT0010', 'KH00433', 1200000, '2021-05-07'),
('PT002', 'KH100', 15000000, '0000-00-00'),
('PT003', 'KH005', 120000, '2021-06-05'),
('PT004', 'KH005', 3000, '2021-06-05'),
('PT009', 'KH001', 1900000, '2021-05-07'),
('PT009OLL', 'KH001', 100000, '03/07/2021'),
('PT009PLL', 'KH001', 300000, '03/07/2021');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPhieuXuat` varchar(10) NOT NULL,
  `MaKhachHang` varchar(10) DEFAULT NULL,
  `MaHoaDon` varchar(15) NOT NULL,
  `NgayXuat` varchar(50) DEFAULT NULL,
  `TongTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPhieuXuat`, `MaKhachHang`, `MaHoaDon`, `NgayXuat`, `TongTien`) VALUES
('PX001', 'KH001', 'HD009', '07/07/2021', 1575000),
('PX002', 'KH006', 'HD009', '07/07/2021', 1575000);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` varchar(10) NOT NULL,
  `TenSanPham` varchar(50) DEFAULT NULL,
  `QuyCach` int(11) DEFAULT NULL,
  `GiaGoc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `QuyCach`, `GiaGoc`) VALUES
('SP001', 'Phân bón vi sinh', 25, 115),
('SP002', 'Phân bón Kali', 25, 120),
('SP003', 'Phân urê', 25, 105),
('SP005', 'Phân bón NPK', 25, 100),
('SP099', 'Phân bón vô cơ', 20, 100),
('SP166', 'Phân bón hữu cơ', 25, 100);

--
-- Indexes for dumped tables
--

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
