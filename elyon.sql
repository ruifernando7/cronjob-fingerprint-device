-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Apr 2019 pada 02.45
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elyon`
--
CREATE DATABASE IF NOT EXISTS `elyon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elyon`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fp_log`
--

DROP TABLE IF EXISTS `fp_log`;
CREATE TABLE `fp_log` (
  `log_id` int(11) NOT NULL,
  `sn_machine` varchar(20) NOT NULL,
  `scan_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nip` text NOT NULL,
  `verify_mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fp_log`
--

INSERT INTO `fp_log` (`log_id`, `sn_machine`, `scan_date`, `nip`, `verify_mode`) VALUES
(1, '', '2019-04-03 13:11:37', '1234567', 1),
(2, '', '2019-04-03 13:18:29', '1234567', 1),
(3, '', '2019-04-03 13:20:23', '1234567', 1),
(4, '', '2019-04-03 13:23:18', '1234567', 1),
(5, '', '2019-04-03 13:36:41', '1234567', 1),
(6, '', '2019-04-03 13:39:33', '1234567', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fp_log`
--
ALTER TABLE `fp_log`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fp_log`
--
ALTER TABLE `fp_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
