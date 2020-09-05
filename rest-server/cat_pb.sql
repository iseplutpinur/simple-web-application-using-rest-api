-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2020 pada 05.23
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `123362`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahasa`
--

CREATE TABLE `bahasa` (
  `id` int(11) NOT NULL,
  `nama_bahasa` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bahasa`
--

INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(1, 'MySql', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(2, 'C++', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(3, 'Java', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(4, 'Python', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(5, 'Matlab', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(6, 'CSS', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(7, 'HTML', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(8, 'Javascript', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(9, 'PHP', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(10, 'Git', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(11, 'Other', 1);
INSERT INTO `bahasa` (`id`, `nama_bahasa`, `id_user`) VALUES(13, 'Kotlin', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id_data` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_bahasa` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `catatan` text NOT NULL,
  `total` int(11) NOT NULL,
  `selesai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(1, 3, 1, 1, 1, 'MySql MariaDB', 'Perlu memahami syntax lebih dalam', 27, 27);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(2, 1, 2, 2, 1, 'Struktur Data Computing labotary', '', 14, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(3, 1, 2, 2, 1, 'OOP Kelas terbuka', '', 7, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(4, 1, 2, 1, 1, 'Kelas terbuka Dasar', 'Harus mengajarkan kepadea ornang lain agar lebih bermanfaat', 88, 88);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(5, 1, 2, 1, 1, 'Kuliah online', '', 9, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(6, 1, 3, 2, 1, 'Java OOP', '', 5, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(7, 1, 3, 1, 1, 'Java Dasar', '', 75, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(8, 1, 4, 2, 1, 'Python OOP', '', 21, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(9, 1, 4, 1, 1, 'Python Dasar', '', 37, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(10, 1, 5, 1, 1, 'Matlab Dasar', '', 30, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(11, 2, 6, 2, 1, 'CSS3', '', 20, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(12, 2, 6, 2, 1, 'CSS Grid', '', 8, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(13, 2, 6, 2, 1, 'Other', '', 3, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(14, 2, 6, 2, 1, 'Css Flexbox', '', 3, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(15, 2, 6, 1, 1, 'CSS Dasar', '', 10, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(16, 2, 6, 1, 1, 'CSS Layouting', '', 4, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(17, 2, 7, 1, 1, 'HTML Dasar', '', 13, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(18, 2, 8, 2, 1, 'Javascript Lanjutan', '', 25, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(19, 2, 8, 2, 1, 'Javascript ES6', '', 9, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(20, 2, 8, 1, 1, 'Javascript Dasar', '', 44, 44);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(21, 2, 8, 1, 1, 'React js dasar', '', 17, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(22, 2, 8, 1, 1, 'Javascript Dasar DOM', '', 14, 14);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(23, 2, 8, 1, 1, 'Web Game Javascript', '', 3, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(24, 2, 9, 2, 1, 'Sistem Informasi Akademik', '', 32, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(25, 2, 9, 2, 1, 'Membuat toko online PHP', '', 28, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(26, 2, 9, 2, 1, 'Membangun aplikasi IT Helpdesk', '', 22, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(27, 2, 9, 2, 1, 'Tutorial Membuat Aplikasi Perpustakaan Dengan php mysqli dan Bootstrap', '', 21, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(28, 2, 9, 2, 1, 'Codeigniter 4', '', 16, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(29, 2, 9, 2, 1, 'Codeigniter Login', '', 14, 14);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(30, 2, 9, 2, 1, 'Membuat Aplikasi MVC dengan PHP', '', 13, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(31, 2, 9, 2, 1, 'Rest API', '', 9, 9);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(32, 2, 9, 2, 1, 'Membuat Aplikasi Pengelolaan Kas Dengan Php Mysqli dan Bootstrap', '', 9, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(33, 2, 9, 2, 1, 'Codeigniter Website Sederhana', '', 6, 6);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(34, 2, 9, 2, 1, 'Laravel 5.8', '', 5, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(35, 2, 9, 2, 1, 'Workshop Web', '', 1, 1);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(36, 2, 9, 1, 1, 'PHP Dasar', '', 25, 25);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(37, 2, 9, 1, 1, 'PHP OOP', '', 17, 17);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(38, 2, 10, 1, 1, 'Git & Github', '', 14, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(39, 2, 11, 2, 1, 'Ngobar WPU', '', 9, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(50, 2, 8, 2, 1, 'Belajar Javascript Async', 'Channel programer zaman now', 18, 1);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(54, 1, 13, 1, 0, 'Belajar Kotlin Dasar', 'Channel Programer Zaman Now', 42, 1);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(55, 1, 13, 2, 0, 'Belajar Kotlin OOP', 'Belajar Kotlin Dasar', 51, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(56, 1, 13, 2, 0, 'Belajar Kotlin Collection', '', 31, 0);
INSERT INTO `data` (`id_data`, `id_jenis`, `id_bahasa`, `id_tingkat`, `id_user`, `nama`, `catatan`, `total`, `selesai`) VALUES(57, 1, 13, 3, 0, 'Belajar Kotlin Generic', '', 16, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `id_user`) VALUES(1, 'Desktop', 1);
INSERT INTO `jenis` (`id`, `nama_jenis`, `id_user`) VALUES(2, 'Web', 1);
INSERT INTO `jenis` (`id`, `nama_jenis`, `id_user`) VALUES(3, 'Data', 1);
INSERT INTO `jenis` (`id`, `nama_jenis`, `id_user`) VALUES(4, 'Other', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES(1, 1, 'cat_pb_admin', 1, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `limits`
--

INSERT INTO `limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES(1, 'uri:api/Mahasiswa/index:get', 1, 1598667856, 'cat_pb_admin');
INSERT INTO `limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES(2, 'uri:api/example/users:get', 2, 1598703970, 'cat_pb_admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tingkat`
--

CREATE TABLE `tingkat` (
  `id` int(11) NOT NULL,
  `nama_tingkat` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tingkat`
--

INSERT INTO `tingkat` (`id`, `nama_tingkat`, `id_user`) VALUES(1, 'Dasar', 1);
INSERT INTO `tingkat` (`id`, `nama_tingkat`, `id_user`) VALUES(2, 'Menengah', 1);
INSERT INTO `tingkat` (`id`, `nama_tingkat`, `id_user`) VALUES(3, 'Tinggi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `is_active`, `date_create`) VALUES(1, 'Isep Lutpi Nur', 'iseplutpi1008@gmail.com', 'me_face.jpg', '1234', 1, 1589434654);
INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `is_active`, `date_create`) VALUES(9, 'Isep Lutpi Nur2', 'iseplutpi@gmail.com', 'IMG_9410.JPG', '1234', 1, 1589436920);
INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `is_active`, `date_create`) VALUES(10, 'dddddddddd', 'iseplutpi1@gmail.com', 'default.png', '1234', 1, 1589471022);
INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `is_active`, `date_create`) VALUES(11, 'Vakrun Nisah', 'vakrun@gmail.com', 'default.png', '1234', 0, 1590128048);
INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `is_active`, `date_create`) VALUES(12, 'Adistia Ramadhani', 'adistiaramadhani@gmail.com', 'default.png', '1234', 0, 1590129856);
INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `is_active`, `date_create`) VALUES(13, 'dara', 'dara@gmail.com', 'default.png', '1234', 0, 1590129913);
INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `is_active`, `date_create`) VALUES(16, 'Isep Lutpi Nur', 'iseplutpinur7@gmail.com', 'bg1.jpg', '1234', 1, 1590133891);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_data`),
  ADD UNIQUE KEY `id` (`id_data`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tingkat`
--
ALTER TABLE `tingkat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tingkat`
--
ALTER TABLE `tingkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
