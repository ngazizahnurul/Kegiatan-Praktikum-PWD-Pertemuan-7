-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 03:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `NIM` varchar(20) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `daftar_kodeMK` varchar(20) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`NIM`, `nama_mahasiswa`, `daftar_kodeMK`, `nama_mk`, `nilai`) VALUES
('1900018367', 'Nurul Ngazizah', '	211850131', 'Keamanan Komputer', '90'),
('1900018275', 'Adnan Danesh', '	211851431', 'Sistem Pendukung Keputusan', '95'),
('1900018345', 'Trisha Kyra', '211850420', 'Teori Bahasa Otomata', '96'),
('1900018456', 'Adnan Danesh', '211851131', 'Pembelajaran Mesin', '87'),
('1900018266', 'Harzan Isyraf', '211850231', 'Pemrograman Mobile', '89');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
