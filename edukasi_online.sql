-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 03:44 PM
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
-- Database: `edukasi_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`, `gambar`, `tanggal_dibuat`) VALUES
(1, 'Mengenal Machine Learning', 'Pelajari konsep dasar machine learning dan bagaimana penerapannya dalam kehidupan sehari-hari.', 'machine-learning.jpg', '2024-06-26 12:40:10'),
(2, 'Tren Terbaru dalam Pengembangan Web', 'Jelajahi tren terbaru dalam pengembangan web, mulai dari framework hingga desain responsif.', 'web-trends.jpg', '2024-06-26 12:40:10'),
(3, 'Pemrograman dengan Kotlin', 'Pelajari bagaimana bahasa pemrograman Kotlin dapat digunakan untuk pengembangan aplikasi Android.', 'kotlin.jpg', '2024-06-26 12:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`id`, `judul`, `deskripsi`, `gambar`, `tanggal_dibuat`) VALUES
(1, 'Pemrograman Python', 'Pelajari dasar-dasar pemrograman dengan Python, bahasa pemrograman yang sangat populer dan mudah dipelajari.', 'python.jpg', '2024-06-26 12:40:10'),
(2, 'Pengembangan Web', 'Pelajari cara membangun situs web yang responsif dan menarik menggunakan HTML, CSS, dan JavaScript.', 'web-development.jpg', '2024-06-26 12:40:10'),
(3, 'Data Science dengan R', 'Pelajari analisis data dan ilmu data menggunakan bahasa pemrograman R untuk mendapatkan wawasan dari data.', 'data-science.jpg', '2024-06-26 12:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `nama`, `isi`, `tanggal_dibuat`) VALUES
(1, 'Andi Wijaya', 'Materi kursus sangat bermanfaat dan mudah dipahami.', '2024-06-26 12:40:10'),
(2, 'Siti Nuraini', 'Saya sangat senang dengan kursus pengembangan web ini. Sekarang saya bisa membuat situs web sendiri dengan tampilan yang profesional.', '2024-06-26 12:40:10'),
(3, 'Budi Santoso', 'Edukasi IT Online benar-benar membantu saya dalam belajar ilmu data. Materinya lengkap dan praktis untuk diterapkan di dunia nyata.', '2024-06-26 12:40:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
