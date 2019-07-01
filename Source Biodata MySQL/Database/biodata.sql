-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Jun 2019 pada 05.48
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE DATABASE /*!32312 IF NOT EXISTS*/`biodata` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `biodata`;
--
-- Database: `biodata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE IF NOT EXISTS `kontak` (
`id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tlp` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `tlp`, `email`) VALUES
(2, 'Andri Hermansah', '082176745476', 'andriherman@gmail.com'),
(3, 'Irfan Ardiyansah', '082187678976', 'irfan@gmail.com'),
(4, 'Galih Tomy', '081345676534', 'galihtomy@gmail.com'),
(5, 'Jenico Dwi Nur', '089567684512', 'jenicodns@yahoo.com'),
(6, 'Azhar Rivaldi', '089798787653', 'anjay@gmail.com'),
(7, 'Suhendra', '081256545464', 'hendra@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
