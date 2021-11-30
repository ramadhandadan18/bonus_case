-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 07:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_majoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_kategori`
--

CREATE TABLE `master_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_kode` varchar(100) DEFAULT NULL,
  `kategori_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_kategori`
--

INSERT INTO `master_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`) VALUES
(3, 'BAN', 'BAN'),
(4, 'OLI', 'oLI'),
(5, 'SERVIS', 'SERVIS');

-- --------------------------------------------------------

--
-- Table structure for table `master_pegawai`
--

CREATE TABLE `master_pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_no` int(255) DEFAULT NULL,
  `pegawai_nama` varchar(255) DEFAULT NULL,
  `pegawai_jk` char(255) DEFAULT NULL COMMENT 'L=laki-laki, P=perempuan ',
  `harga` float(126,0) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_pegawai`
--

INSERT INTO `master_pegawai` (`pegawai_id`, `pegawai_no`, `pegawai_nama`, `pegawai_jk`, `harga`, `kategori`, `gambar`) VALUES
(1, NULL, 'Coffee Latte', NULL, 15000, 'MINUMAN', '5a13784519e0582d38129b7e62feaeb5.jpg'),
(2, NULL, 'Nasi Goreng', NULL, 20000, 'MAKANAN', NULL),
(10, NULL, 'Nasi goreng 3', NULL, 12000, 'MAKANAN', '4f691d6be6748c3465fd1dbbd79e710a.jpeg'),
(11, NULL, 'TESTER', NULL, 100000, 'MINUMAN', ''),
(12, 0, 'tes', 'undefined', 12000, NULL, ''),
(13, 0, 'AAAABB', 'L', 123, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `pegawai_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `pegawai_id`) VALUES
(1, 'admin', '47bce5c74f589f4867dbd57e9ca9f808', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_kategori`
--
ALTER TABLE `master_kategori`
  ADD PRIMARY KEY (`kategori_id`) USING BTREE;

--
-- Indexes for table `master_pegawai`
--
ALTER TABLE `master_pegawai`
  ADD PRIMARY KEY (`pegawai_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_kategori`
--
ALTER TABLE `master_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_pegawai`
--
ALTER TABLE `master_pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
