-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2015 at 03:36 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(10) NOT NULL,
  `tgl_beli` date NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_transfer` text NOT NULL,
  `jml_transfer` int(20) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `bukti_kirim` text NOT NULL,
  `nomor_resi` text NOT NULL,
  `ongkir` text NOT NULL,
  `tgl_bayar_supplier` date NOT NULL,
  `bukti_transfer_suplier` text NOT NULL,
  `jml_transfer_suplier` int(20) NOT NULL,
  `tgl_barang_sampai` date NOT NULL,
  `retur_tgl_kirim` date NOT NULL,
  `testimoni` text NOT NULL,
  `pembeli_id` text NOT NULL,
  `flag` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE IF NOT EXISTS `invoice_items` (
  `id` int(10) NOT NULL,
  `invoice_id` text NOT NULL,
  `produk_id` text NOT NULL,
  `harga` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_building`
--

CREATE TABLE IF NOT EXISTS `list_building` (
  `id` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(20) NOT NULL,
  `fb` text NOT NULL,
  `wa` text NOT NULL,
  `twitter` text NOT NULL,
  `bbm` text NOT NULL,
  `telp` text NOT NULL,
  `jml_beli` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_building`
--

INSERT INTO `list_building` (`id`, `nama`, `alamat`, `kota`, `fb`, `wa`, `twitter`, `bbm`, `telp`, `jml_beli`) VALUES
(1, 'Agus Tri Hendratno', 'Lampung timur', 'Sumatra Utara', 'fb.com/agus.hendratno', '082147483647', '@agushn', '798SA102', '082147483647', 4),
(3, 'Huda Bikhoir', 'Nganjuk', 'Jatim', 'fb.com/huda.bi', '08925157125', '@hudahuda', '8172DA13', '083287349812', 1),
(12, 'Andy Nur', 'Samarinda', 'Kaltim', 'fb.com/AndyID', '0899879712', '@andypakey', '9814F8S1', '081298519851', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) NOT NULL,
  `meta_key` varchar(32) NOT NULL,
  `meta_value` int(5) NOT NULL,
  `aktif` varchar(10) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `meta_key`, `meta_value`, `aktif`, `tipe`) VALUES
(0, 'jml_purchase', 3, 'Y', 'rekap_menu'),
(1, 'jml_new_order', 5, 'Y', 'rekap_menu'),
(2, 'jml_shipping_start', 2, 'Y', 'rekap_menu'),
(3, 'jml_shipping_finish', 4, 'Y', 'rekap_menu'),
(4, 'jml_transfer_supplier', 6, 'Y', 'rekap_menu'),
(5, 'jml_testimoni', 4, 'Y', 'rekap_menu'),
(6, 'jml_retur', 3, 'Y', 'rekap_menu'),
(7, 'target_bulan_ini', 500000, 'Y', 'spido'),
(8, 'pencapaian_bulan_ini', 250000, 'Y', 'spido');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `aktif` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `harga` int(20) NOT NULL,
  `jml_terjual` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `aktif`, `deskripsi`, `gambar`, `harga`, `jml_terjual`) VALUES
(12, 'Laptop Acer', 'Ada', 'RAM 8GB, Intel CPU core I7, HDD 1TB', '', 9000000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE IF NOT EXISTS `retur` (
  `retur_sampai_suplier` date NOT NULL,
  `retur_ongkir1` date NOT NULL,
  `retur_bukti_kirim1` text NOT NULL,
  `retur_tgl_kirim2` date NOT NULL,
  `retur_ongkir2` date NOT NULL,
  `retur_bukti_kirim2` text NOT NULL,
  `retur_sampai_pembeli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
