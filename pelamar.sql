-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2022 pada 10.52
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelamar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `nik` int(15) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `jk` enum('p','l') NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`nik`, `nama_karyawan`, `jabatan`, `jk`, `no_hp`, `alamat`) VALUES
(10, 'Wawan Gunawan', 'Staff resepsionis', 'l', '083827736561', 'Pasar Cikurubuk'),
(11, 'Nadia', 'Staff Gudang', 'p', '087896546', 'Paseh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelamar`
--

CREATE TABLE `tbl_pelamar` (
  `nip` int(4) NOT NULL,
  `nama_pelamar` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tl` date NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_interview` date NOT NULL,
  `tgl_mop` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pelamar`
--

INSERT INTO `tbl_pelamar` (`nip`, `nama_pelamar`, `tempat_lahir`, `tl`, `no_hp`, `alamat`, `tgl_masuk`, `tgl_interview`, `tgl_mop`) VALUES
(8, 'Laela Mukaromah', 'Bandung', '2021-10-01', '08975436356', 'Bantarsari', '2021-10-10', '2021-10-18', '2021-10-25'),
(10, 'Yayu', 'Tasikmalaya', '2002-06-20', '08987365463', 'Ciamis', '2021-11-08', '2021-12-13', '2021-11-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(8) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama_user`, `username`, `password`, `level`) VALUES
(7, 'risma', 'risma', '321', 'admin'),
(9, 'Admin', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tbl_pelamar`
--
ALTER TABLE `tbl_pelamar`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `nik` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelamar`
--
ALTER TABLE `tbl_pelamar`
  MODIFY `nip` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
