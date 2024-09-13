-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2024 at 03:26 AM
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
-- Database: `ukk_galerifotovina`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(14, 'instagram', '                                  keren                               ', '2024-09-11', 2),
(15, 'otomotif', '                                  mobil                                ', '2024-09-13', 2),
(16, 'aplikasi', 'instagram', '2024-09-13', 2),
(17, 'aplikasi', 'instagram', '2024-09-13', 14),
(18, 'otomotif', 'mobil', '2024-09-13', 14),
(19, 'keyboard', 'keyboard', '2024-09-13', 14);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(17, 'mobil', 'mobil', '2024-09-13', '1754959180-mobil', 15, 2),
(18, 'instagram', 'keren', '2024-09-13', '1580594722-instagram.jpeg', 14, 2),
(19, 'instagram', 'instagram', '2024-09-13', '1220526603-instagram.jpeg', 16, 14),
(20, 'mobil', 'mobil', '2024-09-13', '242769332-mobil', 15, 14),
(22, 'keyboard', 'keyboard', '2024-09-13', '1984436327-keyboard', 19, 14);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `kometarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`kometarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(131, 9, 2, 'folow ig saya', '2024-09-11'),
(143, 18, 2, 'folow ig saya', '2024-09-13'),
(144, 19, 14, 'folow ig saya', '2024-09-13'),
(145, 20, 14, 'mau mobil', '2024-09-13'),
(146, 22, 14, 'keyboard', '2024-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(11, 3, 2, '2024-09-09'),
(12, 4, 2, '2024-09-09'),
(13, 7, 2, '2024-09-09'),
(15, 6, 2, '2024-09-09'),
(16, 5, 2, '2024-09-11'),
(18, 9, 2, '2024-09-11'),
(19, 10, 2, '2024-09-11'),
(20, 11, 2, '2024-09-11'),
(21, 13, 2, '2024-09-11'),
(22, 14, 2, '2024-09-11'),
(23, 15, 2, '2024-09-11'),
(24, 16, 2, '2024-09-11'),
(26, 17, 2, '2024-09-13'),
(27, 19, 14, '2024-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(14, 'admin', '202cb962ac59075b964b07152d234b70', 'admin@gmail.com', 'admin', 'indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`kometarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `kometarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
