-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2015 at 05:46 AM
-- Server version: 5.5.40
-- PHP Version: 5.5.19

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
  `tgl_transfer` date NOT NULL,
  `bukti_transfer` varchar(64) NOT NULL,
  `jml_transfer` int(8) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `bukti_kirim` varchar(64) NOT NULL,
  `nomor_resi` varchar(64) NOT NULL,
  `ongkir` int(8) NOT NULL,
  `tgl_transfer_supplier` date NOT NULL,
  `bukti_transfer_suplier` text NOT NULL,
  `jml_transfer_suplier` int(20) NOT NULL,
  `tgl_barang_sampai` date NOT NULL,
  `retur_tgl_kirim` date NOT NULL,
  `retur_bukti_kirim1` varchar(64) NOT NULL,
  `retur_nomor_resi1` varchar(64) NOT NULL,
  `retur_ongkir1` int(8) NOT NULL,
  `retur_tgl_kirim2` date NOT NULL,
  `retur_bukti_kirim2` varchar(64) NOT NULL,
  `retur_nomor_resi2` varchar(64) NOT NULL,
  `retur_ongkir2` int(8) NOT NULL,
  `testimoni` varchar(64) NOT NULL,
  `pembeli_id` int(11) NOT NULL,
  `flag` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `tgl_beli`, `tgl_transfer`, `bukti_transfer`, `jml_transfer`, `tgl_kirim`, `bukti_kirim`, `nomor_resi`, `ongkir`, `tgl_transfer_supplier`, `bukti_transfer_suplier`, `jml_transfer_suplier`, `tgl_barang_sampai`, `retur_tgl_kirim`, `retur_bukti_kirim1`, `retur_nomor_resi1`, `retur_ongkir1`, `retur_tgl_kirim2`, `retur_bukti_kirim2`, `retur_nomor_resi2`, `retur_ongkir2`, `testimoni`, `pembeli_id`, `flag`) VALUES
(1, '2015-10-03', '0000-00-00', '', 815000, '0000-00-00', '', '', 0, '0000-00-00', '', 0, '0000-00-00', '0000-00-00', '', '', 0, '0000-00-00', '', '', 0, '', 1, '0'),
(2, '2015-10-01', '0000-00-00', '', 845000, '0000-00-00', '', '', 0, '0000-00-00', '', 0, '0000-00-00', '0000-00-00', '', '', 0, '0000-00-00', '', '', 0, '', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE IF NOT EXISTS `invoice_items` (
`id` int(10) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `harga` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `harga`) VALUES
(1, 1, 12, 20000),
(2, 2, 12, 30000),
(3, 1, 13, 800000);

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
  `jml_beli` int(5) NOT NULL
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
  `tipe` varchar(10) NOT NULL
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
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(64) NOT NULL,
  `harga` int(20) NOT NULL,
  `jml_terjual` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `aktif`, `deskripsi`, `gambar`, `harga`, `jml_terjual`) VALUES
(12, 'Laptop Acer', 'Y', 'RAM 8GB, Intel CPU core I7, HDD 1TB', '', 9000000, 4),
(13, 'blackbrow', 'Y', '-busur blackbrow\r\n-armguard\r\n-fingertab\r\n-facetarget\r\n-tas/quiver\r\n-3 arrow bambu', '', 800000, 3);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_building`
--
ALTER TABLE `list_building`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
