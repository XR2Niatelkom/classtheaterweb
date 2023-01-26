-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 05:48 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time',
  `name` varchar(255) DEFAULT NULL,
  `harga` varchar(250) NOT NULL,
  `gambar` blob NOT NULL,
  `status` varchar(250) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `waktu` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `create_time`, `name`, `harga`, `gambar`, `status`, `deskripsi`, `waktu`) VALUES
(1, NULL, 'Xyringter Outdoor', '$125,00 ', 0x70656e79657761616e312e706e67, 'ready', 'bagus', '08:17:45'),
(2, NULL, 'thrall', '$326,00', 0x70656e79657761616e322e706e67, 'ready', 'memiliki banyak ruang vip, vasilitasnya yang begitu lengkap dan mewah ', '08:17:45'),
(3, NULL, 'skyess', ' $650,00', 0x70656e79657761616e342e6a7067, 'ready', 'outdoor tempatnya yang pas,dan memiliki pemandangan langit yang keren makanya harga tempat penyewaan disni begitu mahal jadi setara dengan vasilitas dan keindahan tempatnya', '08:17:45'),
(4, NULL, 'Uneque Veneus', '$250,00', 0x70656e79657761616e372e6a7067, 'ready', 'tempatnya indoor dan memiliki desaign yang begitu unik karna bersifat kejepangan', '08:17:45'),
(5, '2022-12-07 08:33:55', 'mikyuss', '$450.00', 0x70656e79657761616e332e706e67, 'ready', 'tempatnya yang bercorak unik', NULL),
(6, '2022-12-08 09:47:30', 'hghjhj', '$326,00', 0x6d656d6f7279342e706e67, 'ready', 'ghjhhj', NULL),
(7, '2022-12-08 09:47:56', 'hhj', '$450.00', 0x6d656d6f7279352e706e67, 'ready', 'ghhhj', NULL),
(9, '2022-12-08 10:08:09', 'ersa', '$326,00', 0x6d656d6f7279332e706e67, 'belum ready', 'bismillah', NULL),
(11, '2022-12-08 10:17:00', 'manda', '$450.00', 0x696e74616772616d2e706e67, 'belum ready', 'bismillah', NULL),
(12, '2022-12-08 10:18:58', 'luis', '$326,00', 0x67616d626172312e706e67, '', 'bismillah lulus', NULL),
(13, '2022-12-08 10:25:01', 'thrall', '$450.00', 0x696e74616772616d2e706e67, 'ready', 'bismiillah', NULL),
(14, '2022-12-08 10:29:00', 'nia', '$450.00', 0x696e74616772616d2e706e67, 'ready', 'nia', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembukuan`
--

CREATE TABLE `pembukuan` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time',
  `type` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `waktu` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembukuan`
--
ALTER TABLE `pembukuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pembukuan`
--
ALTER TABLE `pembukuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
