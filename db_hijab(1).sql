-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2020 at 07:07 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_hijab`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE IF NOT EXISTS `t_barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `harga_barang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `kategori`, `harga_barang`) VALUES
('161', 'zoya', 'sif', 15000),
('162', 'meccanism', 'dia', 20000),
('163', 'ria miranda', 'kat', 25000),
('164', 'kami idea', 'org', 40000),
('165', 'jenahara', 'jer', 30000),
('166', 'rabbani', 'sa', 50000),
('167', 'flow idea', 'wo', 45000),
('168', 'elzatta', 'vo', 60000),
('169', 'dian pelangi', 'cor', 75000),
('170', 'shasmira', 'raj', 55000),
('171', 'hijab alila', 'hyc', 50000),
('172', 'syahida hijab', 'spa', 100000),
('173', 'shafira', 'ka', 120000),
('174', 'apple hijab brand', 'kas', 150000),
('175', 'flori design', 'sut', 90000),
('176', 'arniz collection', 'voa', 110000),
('177', 'such', 'par', 65000),
('178', 'mezora', 'poll', 80000),
('179', 'qalisya', 'cre', 35000),
('180', 'ukhti', 'vis', 200000),
('181', 'sayra hijab', 'cer', 150000),
('182', 'irna la perle', 'max', 95000),
('183', 'nuhijab', 'ray', 35000),
('184', 'tuneeca', 'tur', 98000),
('185', 'rani hatta', 'pas', 69000),
('186', 'ricis by khaira', 'mer', 23000),
('187', 'diaro', 'kun', 59000),
('188', 'jilbab arfa', 'hi', 30000),
('189', 'hijab princess', 'bir', 78000),
('190', 'rawis hijab', 'hit', 19000);

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori`
--

CREATE TABLE IF NOT EXISTS `t_kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `nama_kategori`) VALUES
('161', 'sifon'),
('162', 'diamon'),
('163', 'katun'),
('164', 'organdi'),
('165', 'jersey'),
('166', 'satin'),
('167', 'woolpeach'),
('168', 'voalstretch'),
('169', 'cornskin'),
('170', 'rajut'),
('171', 'hycon'),
('172', 'spandex'),
('173', 'kaos'),
('174', 'kasmir'),
('175', 'sutra'),
('176', 'voal'),
('177', 'paris'),
('178', 'polly'),
('179', 'crepe'),
('180', 'viscose'),
('181', 'ceruti'),
('182', 'maxmara'),
('183', 'rayon'),
('184', 'turki'),
('185', 'pashmina'),
('186', 'merah'),
('187', 'kuning'),
('188', 'hijau'),
('189', 'biru'),
('190', 'hitam');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi`
--

CREATE TABLE IF NOT EXISTS `t_transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `no_transaksi` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_barang` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_transaksi`
--

INSERT INTO `t_transaksi` (`id_transaksi`, `no_transaksi`, `id_user`, `tanggal_transaksi`, `id_barang`, `qty`, `total`) VALUES
('sif', 110, 1, '2020-01-01', 161, 1, 15000),
('dia', 111, 2, '2020-01-02', 162, 3, 20000),
('kat', 112, 3, '2020-01-03', 163, 3, 25000),
('org', 113, 4, '2020-01-04', 164, 2, 40000),
('jer', 114, 5, '2020-01-05', 165, 2, 30000),
('sa', 115, 6, '2020-01-06', 166, 5, 50000),
('wo', 116, 7, '2020-01-07', 167, 9, 45000),
('vo', 117, 8, '2020-01-08', 168, 6, 60000),
('cor', 118, 9, '2020-01-09', 169, 9, 75000),
('raj', 119, 10, '2020-01-10', 170, 3, 55000),
('hyc', 120, 11, '2020-01-11', 171, 2, 50000),
('spa', 121, 12, '2020-01-12', 172, 2, 100000),
('ka', 122, 13, '2020-01-13', 173, 1, 120000),
('kas', 122, 14, '2020-01-14', 174, 5, 150000),
('sut', 122, 15, '2020-01-15', 175, 5, 90000),
('voa', 122, 16, '2020-01-16', 176, 4, 110000),
('par', 122, 17, '2020-01-17', 177, 4, 65000),
('poll', 122, 18, '2020-01-18', 178, 6, 80000),
('cre', 128, 19, '2020-01-19', 179, 2, 35000),
('vis', 129, 20, '2020-01-20', 180, 2, 200000),
('cer', 130, 21, '2020-01-21', 181, 9, 150000),
('max', 131, 22, '2020-01-22', 182, 5, 95000),
('ray', 132, 23, '2020-01-23', 183, 4, 35000),
('tur', 133, 24, '2020-01-24', 184, 3, 98000),
('pas', 134, 25, '2020-01-25', 185, 1, 69000),
('mer', 135, 26, '2020-01-26', 186, 2, 23000),
('kun', 136, 27, '2020-01-27', 187, 7, 59000),
('hi', 137, 28, '2020-01-28', 188, 4, 30000),
('bir', 138, 29, '2020-01-29', 189, 2, 78000),
('hit', 139, 30, '2020-01-30', 190, 5, 19000),
('', 0, 0, '0000-00-00', 0, 0, 0),
('', 0, 0, '0000-00-00', 0, 0, 0),
('', 0, 0, '0000-00-00', 0, 0, 0),
('', 0, 0, '0000-00-00', 0, 0, 0),
('', 0, 0, '0000-00-00', 0, 0, 0),
('', 0, 0, '0000-00-00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id_user` varchar(20) NOT NULL,
  `nama_user` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`) VALUES
('1', 'sarah'),
('2', 'ai'),
('3', 'nur'),
('4', 'fitri'),
('5', 'sela'),
('6', 'nengsih'),
('7', 'yayah'),
('8', 'yesi'),
('9', 'fitri'),
('10', 'yuni'),
('11', 'sri'),
('12', 'aen hernih'),
('13', 'geta'),
('14', 'della'),
('15', 'samsul'),
('16', 'udin'),
('17', 'wiguna'),
('18', 'lukman'),
('19', 'anang'),
('20', 'mimin'),
('21', 'pahrul'),
('22', 'bayu'),
('23', 'vita'),
('24', 'ajay'),
('25', 'febi'),
('26', 'putri'),
('27', 'ihat'),
('28', 'fitriyani'),
('29', 'jangkung'),
('30', 'sahidin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
