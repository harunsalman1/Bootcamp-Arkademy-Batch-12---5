-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jul 2017 pada 04.29
-- Versi Server: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_travel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `username`, `password`, `level`, `photo`) VALUES
(2, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '4200d2514abf45755943526b74474c16.jpg'),
(4, 'Mario Gotze', 'gotze', 'bb8db7d398f5e236f3b6f7f72b7c2f22', '2', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `idalbum` int(11) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(200) DEFAULT NULL,
  `cover` varchar(40) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  PRIMARY KEY (`idalbum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`idalbum`, `jdl_album`, `cover`, `jml`) VALUES

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `idberita` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `tglpost` datetime DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `tgl_last_update` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`idberita`),
  KEY `adminid` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES


INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES

INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `jdl_galeri` varchar(200) DEFAULT NULL,
  `gbr_galeri` varchar(40) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_galeri`),
  KEY `albumid` (`albumid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `jdl_galeri`, `gbr_galeri`, `albumid`) VALUES

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_paket`
--

CREATE TABLE IF NOT EXISTS `kategori_paket` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `kategori_paket`
--

INSERT INTO `kategori_paket` (`id_kategori`, `kategori`) VALUES
(1, 'Reguler'),
(2, 'Paket Khusus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_bayar`
--

CREATE TABLE IF NOT EXISTS `metode_bayar` (
  `id_metode` int(11) NOT NULL AUTO_INCREMENT,
  `metode` varchar(80) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `norek` varchar(50) DEFAULT NULL,
  `atasnama` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_metode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `metode_bayar`
--

INSERT INTO `metode_bayar` (`id_metode`, `metode`, `bank`, `norek`, `atasnama`) VALUES

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_order` varchar(15) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `jenkel` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `berangkat` date DEFAULT NULL,
  `kembali` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `paket_id_order` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `paket_id_order` (`paket_id_order`),
  KEY `metode_id` (`metode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_order`, `nama`, `jenkel`, `alamat`, `notelp`, `email`, `berangkat`, `kembali`, `adult`,`metode_id`, `paket_id_order`, `keterangan`, `tanggal`, `status`) VALUES


-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE IF NOT EXISTS `paket` (
  `idpaket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(100) DEFAULT NULL,
  `hrg_dewasa` double DEFAULT NULL,
  `hrg_anak` double DEFAULT NULL,
  `deskripsi` longtext,
  `kategori_id` int(11) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idpaket`),
  KEY `kategori_id` (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`idpaket`, `nama_paket`, `hrg_dewasa`, `hrg_anak`, `deskripsi`, `kategori_id`, `gambar`) VALUES

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_bayar` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_bayar` date DEFAULT NULL,
  `metode_id_bayar` int(11) DEFAULT NULL,
  `order_id` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `pengirim` varchar(70) DEFAULT NULL,
  `bukti_transfer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_bayar`),
  KEY `order_id` (`order_id`),
  KEY `metode_id_bayar` (`metode_id_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE IF NOT EXISTS `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE IF NOT EXISTS `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=908 ;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE IF NOT EXISTS `testimoni` (
  `idtestimoni` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `pesan` text,
  `status` varchar(2) DEFAULT NULL,
  `tgl_post` date DEFAULT NULL,
  PRIMARY KEY (`idtestimoni`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`idtestimoni`, `nama`, `email`, `pesan`, `status`, `tgl_post`) VALUES



-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE IF NOT EXISTS `wisata` (
  `idwisata` int(11) NOT NULL AUTO_INCREMENT,
  `nama_wisata` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idwisata`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`idwisata`, `nama_wisata`, `deskripsi`, `gambar`) VALUES

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`idalbum`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`paket_id_order`) REFERENCES `paket` (`idpaket`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_paket` (`id_kategori`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;