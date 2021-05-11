-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 10:13 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peternakan_ayam`
--

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_kandang`
--

CREATE TABLE `kondisi_kandang` (
  `id` int(11) NOT NULL,
  `kd_peternak` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `suhu_1` smallint(6) NOT NULL,
  `kelembapan_1` smallint(6) NOT NULL,
  `suhu_2` smallint(6) NOT NULL,
  `kelembapan_2` smallint(6) NOT NULL,
  `suhu_3` smallint(6) NOT NULL,
  `kelembapan_3` smallint(6) NOT NULL,
  `jml_ayam` int(11) NOT NULL,
  `foto_ayam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kd_peternak` varchar(100) NOT NULL,
  `id_penjual` varchar(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `waktu_transaksi` time NOT NULL,
  `jml` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `id_grup` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `tlp` int(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL,
  `create_login` datetime NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `pass`, `id_grup`, `nama`, `alamat`, `kota`, `tlp`, `email`, `last_login`, `create_login`, `stok`, `harga`) VALUES
('anto', '01839822bfade9dd76dfeb165cd53e34', 'peternak', 'anto Ayam', 'Jl. Ayam Jago No.1', 'Semarang', 813246789, 'anto_ayam@gmail.com', '2016-01-23 08:05:00', '2015-12-10 19:10:23', 1200, 30000),
('diki', 'dffaa4c60a250f19dc4a79b1d05c8d53', 'sadsd', 'waefwf', 'awefawf', 'awefawe', 123123, 'adsadf', '2021-05-03 14:56:35', '2021-05-01 14:56:35', 123, 123123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kondisi_kandang`
--
ALTER TABLE `kondisi_kandang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kondisi_kandang`
--
ALTER TABLE `kondisi_kandang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
