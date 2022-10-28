-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 03:05 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dokter`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbdokter`
--

CREATE TABLE `tbdokter` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `nip` int(18) NOT NULL,
  `spesialis` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `foto` text NOT NULL,
  `tanggal` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbdokter`
--

INSERT INTO `tbdokter` (`id`, `nama`, `nip`, `spesialis`, `alamat`, `foto`, `tanggal`) VALUES
(11, 'Nur Yahya', 2109106073, 'Penyakit Dalam', 'Jl. Panjaitan', 'Nur Yahya.jpg', '28/10/22'),
(12, 'Hamidah', 2109106069, 'Kulit dan Kelamin', 'Jl Mangkuraja', 'Hamidah.jpg', '28/10/22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbdokter`
--
ALTER TABLE `tbdokter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbdokter`
--
ALTER TABLE `tbdokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
