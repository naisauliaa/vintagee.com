-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2024 pada 16.28
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vintagee`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `judul_blog` varchar(255) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `konten` varchar(1000) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id_blog`, `judul_blog`, `penulis`, `konten`, `gambar`, `created_at`) VALUES
(6, 'Judul Blog dengan Gambar', '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde illo tempore quo pariatur ad ea impedit provident, consequuntur at, et consectetur aperiam laudantium. Quos adipisci ut ipsam dolore! Magni, asperiores.', 'sakura-background-hd-8k-wallpaper-stock-photographic-image_890746-31908.jpg', '2024-12-30 13:00:26'),
(7, 'Judul blog bla bla bla', '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde illo tempore quo pariatur ad ea impedit provident, consequuntur at, et consectetur aperiam laudantium. Quos adipisci ut ipsam dolore! Magni, asperiores.', 'pink-flower-with-pink-background_832479-942.jpg', '2024-12-30 13:03:12'),
(9, 'Judul Blog dengan Gambar kedua', '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde illo tempore quo pariatur ad ea impedit provident, consequuntur at, et consectetur aperiam laudantium. Quos adipisci ut ipsam dolore! Magni, asperiores.', 'main_image.jpg', '2024-12-30 13:14:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi_kategori` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`, `gambar`, `status`, `created_at`) VALUES
(1, 'Gaun Vintage', 'Lengkapi penampilanmu dengan pakaian dan aksesoris vintage terbaik.', 'pakaian dan aksesoris.jpeg', 'Aktif', '2024-12-27 10:20:14'),
(2, 'Alat Musik', 'Lengkapi peralatan musik anda dengan koleksi-koleksi terbaik.', 'koleksi musik.jpeg', 'Aktif', '2024-12-27 10:20:14'),
(3, 'Perabotan', 'Percantik rumah anda dengan perabotan vintage berkualitas.', 'perabotan 2.jpeg', 'Aktif', '2024-12-28 20:07:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komunitas`
--

CREATE TABLE `komunitas` (
  `id_komunitas` int(11) NOT NULL,
  `nama_komunitas` varchar(50) NOT NULL,
  `pemilik` varchar(50) NOT NULL,
  `jumlah_anggota` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komunitas`
--

INSERT INTO `komunitas` (`id_komunitas`, `nama_komunitas`, `pemilik`, `jumlah_anggota`, `created_at`) VALUES
(1, 'komunitas 2', 'CHA EUN WOO', 5, '2024-12-29 03:03:21'),
(2, 'komunitas 1', 'eun woo', 689, '2024-12-29 03:03:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(225) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar_produk` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi_produk`, `id_kategori`, `ukuran`, `harga`, `stok`, `gambar_produk`, `created_at`) VALUES
(1, 'Produk kesatu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut orci tristique, auctor libero non, interdum dui. Integer placerat euismod urna, euismod ultricies lorem tempus nec.', 1, 'S', 200000, 100, 'dress.png', '2024-12-28 22:09:42'),
(2, 'Gaun 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut orci tristique, auctor libero non, interdum dui. Integer placerat euismod urna, euismod ultricies lorem tempus nec.', 1, 'M', 250000, 100, 'dress 40s.jpeg', '2024-12-28 22:41:20'),
(9, 'Gaun 222', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut orci tristique, auctor libero non, interdum dui. Integer placerat euismod urna, euismod ultricies lorem tempus nec.', 1, 'XL', 129000, 123, 'gaun_biru_1.png', '2024-12-30 19:28:25'),
(10, 'mesin ketik', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut orci tristique, auctor libero non, interdum dui. Integer placerat euismod urna, euismod ultricies lorem tempus nec.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut orci tristique, auctor libero non, interdum dui. Integer placerat euismod urna, euismod ultricies lorem tempus nec.\r\n', 3, '-', 999000, 4, 'koleksi_elektronik.png', '2024-12-30 19:41:18'),
(11, 'Telepon Genggam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut orci tristique, auctor libero non, interdum dui. Integer placerat euismod urna, euismod ultricies lorem tempus nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut orci tristique, auctor libero non, interdum dui. Integer placerat euismod urna, euismod ultricies lorem tempus nec.', 3, '-', 1000000, 12, 'telepon.png', '2024-12-30 20:06:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_produk`, `jumlah`, `id_user`, `created_at`) VALUES
(3, 9, 1, 4, '2024-12-30 21:35:43'),
(4, 11, 1, 4, '2024-12-30 21:41:19'),
(5, 2, 1, 5, '2024-12-30 21:54:51'),
(6, 1, 1, 4, '2024-12-30 22:24:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `created_at`, `role`) VALUES
(1, 'abc', 'abc@gmail.com', '$2y$10$PT6NkrWxFQKAsfvZVTHoEeqnRKMKN5wRfnO086bnH2c4D0/bqfAFO', '2024-12-29 19:52:51', 'user'),
(2, 'dba', 'dba@gmail.com', '$2y$10$cHxTvGq5NiCf8b3HLdSjJua7p7d1R5byuKUYNKhmQuo8L1GJDAwaK', '2024-12-29 23:07:30', 'admin'),
(3, 'Administrator', 'admin@gmail.com', '$2y$10$4J3XgJyDYcvtg786BCOaSOhxwa4j/KVLfvUiTNssnpXGMYgrimaWW', '2024-12-30 02:15:44', 'admin'),
(4, 'Maria', 'maria@gmail.com', '$2y$10$90fyXZfflBkD6aIDQZBNK.Y92FzauqxPWvsKR.3r0wrQLuKtDR6fC', '2024-12-30 13:35:33', 'user'),
(5, 'Bilqis H', 'bilqis@gmail.com', '$2y$10$JDknham0JBH1u65TWkcAIObTjhRd5If9dyT/mwGuNBTX7TvHMtx1m', '2024-12-30 14:54:36', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komunitas`
--
ALTER TABLE `komunitas`
  ADD PRIMARY KEY (`id_komunitas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `komunitas`
--
ALTER TABLE `komunitas`
  MODIFY `id_komunitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
