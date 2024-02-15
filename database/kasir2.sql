-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 03:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir2`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(0, 1, 9, 2, '25000.00'),
(0, 2, 9, 2, '25000.00'),
(0, 3, 9, 2, '25000.00'),
(0, 4, 9, 2, '25000.00'),
(0, 5, 10, 2, '28000.00'),
(12, 6, 9, 2, '25000.00'),
(12, 7, 10, 8, '28000.00'),
(12, 8, 13, 2, '23000.00'),
(13, 9, 9, 8, '25000.00'),
(13, 10, 14, 5, '27000.00'),
(14, 12, 14, 5, '27000.00'),
(15, 13, 9, 1, '25000.00'),
(15, 14, 13, 5, '23000.00'),
(16, 15, 15, 4, '30000.00'),
(18, 17, 15, 3, '30000.00');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `NomorTelepon` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NoMeja`, `NomorTelepon`) VALUES
(1, '0', 1, 0),
(2, 'saskia wulandr', 1, 0),
(3, 'wulan', 3, 0),
(4, 'saski', 1, 0),
(5, 'tes', 1, 0),
(6, 'f', 5, 0),
(7, 'saskiaaa', 1, 0),
(8, 'saskiaaa', 1, 0),
(9, 'saskiaaa', 1, 0),
(10, 'saskiaaa', 1, 0),
(11, 'saskiaaaaaaaaaaaaaaaaaa', 2, 0),
(12, 'saskia wulandr', 90000, 0),
(13, 'hu', 7, 0),
(14, 'e', 3, 0),
(15, 'sayang', 12, 0),
(16, 'kia', 3, 0),
(17, 't', 7, 0),
(18, 'saskiaaa', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(1, '2024-02-05', '0.00', 0),
(2, '2024-02-05', '0.00', 0),
(3, '2024-02-05', '0.00', 0),
(4, '2024-02-05', '0.00', 0),
(5, '2024-02-05', '0.00', 0),
(6, '2024-02-06', '0.00', 0),
(7, '2024-02-06', '0.00', 0),
(8, '2024-02-06', '0.00', 0),
(9, '2024-02-06', '0.00', 0),
(10, '2024-02-06', '0.00', 0),
(11, '2024-02-07', '0.00', 0),
(12, '2024-02-07', '0.00', 0),
(13, '2024-02-07', '0.00', 0),
(14, '2024-02-07', '0.00', 0),
(15, '2024-02-12', '0.00', 0),
(16, '2024-02-12', '0.00', 0),
(17, '2024-02-13', '0.00', 0),
(18, '2024-02-13', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Terjual` int(50) NOT NULL,
  `Sisa-Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Foto`, `Harga`, `Stok`, `Terjual`, `Sisa-Stok`) VALUES
(9, 'Dalgona Coffe', '01022024075001.jpg', '25000.00', 78, 22, 0),
(10, 'Coffe Es Cream', '01022024075110.jpg', '28000.00', 86, 14, 0),
(11, 'Lemon Tea', '01022024075150.jpeg', '20000.00', 87, 13, 0),
(13, 'Roti Abon', '01022024075939.jpg', '23000.00', 75, 25, 0),
(14, 'cromboloni', '01022024080021.jpg', '27000.00', 39, 61, 0),
(15, ' Roti Garlik Cream', '07022024005245.jpg', '30000.00', 87, 13, 0),
(17, 'Croffle', '07022024005639.jpeg', '20000.00', 100, 0, 0),
(18, 'ayam', '12022024091112.jpg', '30000.00', 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Level`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin'),
(2, 'petugas', '202cb962ac59075b964b07152d234b70', 'Petugas'),
(3, 'wulandari', 'd41d8cd98f00b204e9800998ecf8427e', 'Petugas'),
(4, 'saskia', '202cb962ac59075b964b07152d234b70', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PenjualanID` (`PenjualanID`,`ProdukID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `DetailID` (`DetailID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `ProdukID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
