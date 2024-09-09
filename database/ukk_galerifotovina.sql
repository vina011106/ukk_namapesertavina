-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 05:37 AM
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
(3, 'otomotif', 'Foto seputar Otomotif', '0000-00-00', 2),
(4, 'teknologi', 'mobil', '0000-00-00', 2),
(5, 'aplikasi', '                                                    whatsapp                                                       ', '0000-00-00', 2);

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
(5, 'keyboard', 'keyboard', '2024-08-29', '932615971-keyboard', 4, 2),
(6, 'mobil', 'keren', '2024-09-09', '302545879-mobil', 3, 2),
(7, 'whatsapp', 'aplikasi', '2024-09-09', '151285521-whatsapp.jpeg', 5, 2);

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
(1, 3, 2, 'otomotif', '2024-09-03'),
(2, 3, 2, 'otomotif', '2024-09-03'),
(3, 3, 2, 'otomotif', '2024-09-03'),
(4, 3, 2, 'otomotif', '2024-09-03'),
(5, 3, 2, '', '2024-09-03'),
(6, 4, 2, '', '2024-09-03'),
(7, 3, 2, 'otomotif', '2024-09-03'),
(8, 3, 2, '', '2024-09-03'),
(9, 3, 2, 'otomotif', '2024-09-03'),
(10, 0, 2, '', '2024-09-03'),
(11, 0, 2, '', '2024-09-03'),
(12, 0, 2, '', '2024-09-03'),
(13, 0, 2, '', '2024-09-03'),
(14, 0, 2, '', '2024-09-03'),
(15, 0, 2, '', '2024-09-03'),
(16, 0, 2, '', '2024-09-03'),
(17, 0, 2, '', '2024-09-03'),
(18, 0, 2, '', '2024-09-03'),
(19, 0, 2, '', '2024-09-03'),
(20, 0, 2, '', '2024-09-03'),
(21, 0, 2, '', '2024-09-03'),
(22, 0, 2, '', '2024-09-03'),
(23, 0, 2, '', '2024-09-03'),
(24, 0, 2, '', '2024-09-03'),
(25, 0, 2, '', '2024-09-03'),
(26, 0, 2, '', '2024-09-03'),
(27, 0, 2, '', '2024-09-03'),
(28, 0, 2, '', '2024-09-03'),
(29, 0, 2, '', '2024-09-03'),
(30, 0, 2, '', '2024-09-03'),
(31, 0, 2, '', '2024-09-03'),
(32, 0, 2, '', '2024-09-03'),
(33, 0, 2, '', '2024-09-03'),
(34, 0, 2, '', '2024-09-03'),
(35, 0, 2, '', '2024-09-03'),
(36, 0, 2, '', '2024-09-03'),
(37, 0, 2, '', '2024-09-03'),
(38, 0, 2, '', '2024-09-03'),
(39, 0, 2, '', '2024-09-03'),
(40, 0, 2, '', '2024-09-03'),
(41, 0, 2, '', '2024-09-03'),
(42, 0, 2, '', '2024-09-03'),
(43, 0, 2, '', '2024-09-03'),
(44, 0, 2, '', '2024-09-03'),
(45, 0, 2, '', '2024-09-03'),
(46, 0, 2, '', '2024-09-03'),
(47, 0, 2, '', '2024-09-03'),
(48, 0, 2, '', '2024-09-03'),
(49, 0, 2, '', '2024-09-03'),
(50, 0, 2, '', '2024-09-03'),
(51, 0, 2, '', '2024-09-03'),
(52, 0, 2, '', '2024-09-03'),
(53, 0, 2, '', '2024-09-03'),
(54, 0, 2, '', '2024-09-03'),
(55, 0, 2, '', '2024-09-03'),
(56, 0, 2, '', '2024-09-03'),
(57, 0, 2, '', '2024-09-03'),
(58, 0, 2, '', '2024-09-03'),
(59, 0, 2, '', '2024-09-03'),
(60, 0, 2, '', '2024-09-03'),
(61, 0, 2, '', '2024-09-03'),
(62, 0, 2, '', '2024-09-03'),
(63, 0, 2, '', '2024-09-03'),
(64, 0, 2, '', '2024-09-03'),
(65, 0, 2, '', '2024-09-03'),
(66, 0, 2, '', '2024-09-03'),
(67, 0, 2, '', '2024-09-03'),
(68, 0, 2, '', '2024-09-03'),
(69, 0, 2, '', '2024-09-03'),
(70, 0, 2, '', '2024-09-03'),
(71, 0, 2, '', '2024-09-03'),
(72, 0, 2, '', '2024-09-03'),
(73, 0, 2, '', '2024-09-03'),
(74, 0, 2, '', '2024-09-03'),
(75, 0, 2, '', '2024-09-03'),
(76, 0, 2, '', '2024-09-03'),
(77, 0, 2, '', '2024-09-03'),
(78, 0, 2, '', '2024-09-03'),
(79, 0, 2, '', '2024-09-03'),
(80, 0, 2, '', '2024-09-03'),
(81, 0, 2, '', '2024-09-03'),
(82, 0, 2, '', '2024-09-03'),
(83, 0, 2, '', '2024-09-03'),
(84, 0, 2, '', '2024-09-03'),
(85, 0, 2, '', '2024-09-03'),
(86, 0, 2, '', '2024-09-03'),
(87, 0, 2, '', '2024-09-03'),
(88, 0, 2, '', '2024-09-03'),
(89, 0, 2, '', '2024-09-03'),
(90, 0, 2, '', '2024-09-03'),
(91, 0, 2, '', '2024-09-03'),
(92, 0, 2, '', '2024-09-03'),
(93, 0, 2, '', '2024-09-03'),
(94, 0, 2, '', '2024-09-03'),
(95, 0, 2, '', '2024-09-03'),
(96, 0, 2, '', '2024-09-03'),
(97, 0, 2, '', '2024-09-03'),
(98, 0, 2, '', '2024-09-03'),
(99, 0, 2, '', '2024-09-03'),
(100, 0, 2, '', '2024-09-03'),
(101, 0, 2, '', '2024-09-03'),
(102, 0, 2, '', '2024-09-03'),
(103, 0, 2, '', '2024-09-03'),
(104, 0, 2, '', '2024-09-03'),
(105, 0, 2, '', '2024-09-03'),
(106, 0, 2, '', '2024-09-03'),
(107, 0, 2, '', '2024-09-03'),
(108, 0, 2, '', '2024-09-03'),
(109, 0, 2, '', '2024-09-03'),
(110, 5, 2, '', '2024-09-04'),
(111, 3, 2, 'otomotif', '2024-09-04'),
(112, 0, 2, '', '2024-09-04'),
(113, 0, 2, '', '2024-09-04'),
(114, 0, 2, '', '2024-09-04'),
(115, 0, 2, '', '2024-09-04'),
(116, 0, 2, '', '2024-09-04'),
(117, 0, 2, '', '2024-09-04'),
(118, 0, 2, '', '2024-09-04'),
(119, 0, 2, '', '2024-09-04'),
(120, 0, 2, '', '2024-09-04'),
(121, 0, 2, '', '2024-09-04'),
(122, 0, 2, '', '2024-09-05'),
(123, 0, 2, '', '2024-09-05'),
(124, 0, 2, '', '2024-09-09'),
(125, 3, 2, 'keren', '2024-09-09');

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
(14, 5, 2, '2024-09-09'),
(15, 6, 2, '2024-09-09');

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
(1, 'admin', 'admin', '', '', 'indonesia'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', 'indonesia');

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
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `kometarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
