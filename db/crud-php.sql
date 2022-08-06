-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 08:15 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `email`, `password`, `level`) VALUES
(1, 'Ilham Lutfi', 'admin', 'ilham@gmail.com', '$2y$10$dWlZGz7dRVAISidFmCanNuo20R2mK6anWNla88BcHybYlpGMc8oAu', '1'),
(2, 'Operator Barang', 'opmbarang', 'opmbarang@gmail.com', '$2y$10$EkUKRHbIEazXpxWiJ0pUrOUcNPgjny61lU.2AUzTNC5uEIvntLglG', '2'),
(3, 'Operator Mahasiswa', 'opmahasiswa', 'opmahasiswa@gmail.com', '$2y$10$tuxOq2cB86bpg8aBe/iSR.TQgccfu943g0a0x7U7FjK7l48IrquB2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `barcode` varchar(15) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `jumlah`, `harga`, `barcode`, `tanggal`) VALUES
(24, 'Laptop Acers', '50', '1500000', '307131', '2022-07-28 01:12:04'),
(25, 'Laptop Asus', '52', '2500000', '171366', '2022-07-28 02:40:24'),
(36, 'Meja', '5', '1500000', '123123', '2022-08-02 16:33:09'),
(37, 'Kursi 2', '10', '500000', '613482', '2022-08-06 13:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `prodi`, `jk`, `telepon`, `alamat`, `email`, `foto`) VALUES
(1, 'Muba Teknologi', 'Teknik Informatika', 'Laki-Laki', '0823767678', '', 'mubatekno@gmail.com', 'foto.jpg'),
(3, 'Putri', 'Teknik Listrik', 'Perempuan', '3123213123123', '<p><strong>Palembang</strong></p>', 'putri@gmail.com', '62c5acca7e018.jpg'),
(12, 'Ilham Zd', 'Teknik Informatika', 'Laki-Laki', '98192839', '<p><em>Musi Banyuasin, Sumatra Selatan</em> <em><strong>30711</strong></em></p>', 'ilham@gmail.com', '62d3fce90e10e.png'),
(14, 'Ilham Lutfi', 'Teknik Informatika', 'Laki-Laki', '219830921839008', '<p>Gambar Alamat</p>\r\n\r\n<p><a href=\"/ckfinder/userfiles/images/foto%20alamat/1102024.jpg\" target=\"_blank\"><img alt=\"gambar alamat ilham\" src=\"/ckfinder/userfiles/images/foto%20alamat/1102024.jpg\" style=\"width:100%\" /></a></p>\r\n', 'ilham@gmail.com', '62e8ded09f968.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
