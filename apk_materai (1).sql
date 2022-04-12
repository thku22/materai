-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Apr 2022 pada 05.34
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apk_materai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `materai`
--

CREATE TABLE `materai` (
  `id` int(11) NOT NULL,
  `nilai` varchar(100) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(50) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materai`
--

INSERT INTO `materai` (`id`, `nilai`, `harga`, `stok`, `foto`) VALUES
(11, '10000', '11.000', 50, '100004.jpg'),
(12, '6000', '7.000', 50, '60001.jpg'),
(13, '3000', '4000', 50, '3000.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `username`, `nama`, `no_hp`, `password`, `level`) VALUES
(5, 'kantorpos', 'agung', '093624254', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(14, 'lita', 'LITA WAHYUNII', '089765879097', '49412fd636fd83443f647ac65665c1d8', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `tanggal` date NOT NULL,
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pegawai` varchar(40) NOT NULL,
  `jenis_materai` text NOT NULL,
  `banyaknya` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `foto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`tanggal`, `id`, `nama`, `pegawai`, `jenis_materai`, `banyaknya`, `jumlah`, `foto`) VALUES
('2021-11-01', 10, 'LITA WAHYUNII', 'nizar', '3000', '1', '4000', '30001.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `materai`
--
ALTER TABLE `materai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `materai`
--
ALTER TABLE `materai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
