-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 02:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_uppd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_instansi`
--

CREATE TABLE `tb_instansi` (
  `id_instansi` int(3) NOT NULL,
  `nama_instansi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_instansi`
--

INSERT INTO `tb_instansi` (`id_instansi`, `nama_instansi`) VALUES
(1, 'Badan Keuangan Daerah Prov. Kalimantan Selatan'),
(2, 'Sekretariat Daerah Kab. Tanah Laut');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventaris`
--

CREATE TABLE `tb_inventaris` (
  `id_barang` varchar(5) NOT NULL,
  `kode_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(70) DEFAULT NULL,
  `merk` varchar(50) NOT NULL,
  `nomor_registrasi` varchar(4) DEFAULT NULL,
  `ukuran` varchar(10) NOT NULL,
  `bahan` varchar(30) NOT NULL,
  `tahun_pembelian` varchar(4) DEFAULT NULL,
  `asal_usul` varchar(15) NOT NULL,
  `kondisi` varchar(15) DEFAULT NULL,
  `harga` int(15) DEFAULT NULL,
  `keterangan` varchar(30) NOT NULL,
  `id_ruangan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_inventaris`
--

INSERT INTO `tb_inventaris` (`id_barang`, `kode_barang`, `nama_barang`, `merk`, `nomor_registrasi`, `ukuran`, `bahan`, `tahun_pembelian`, `asal_usul`, `kondisi`, `harga`, `keterangan`, `id_ruangan`) VALUES
('00001', '06.01.02.12', 'Mesin penghitung uang', 'SUPER COUNTER / SC-7', '0011', '', '', '2010', 'Pembelian', 'Baik', 33825000, '', 17),
('00002', '06.01.04.01', 'Almari Besi/Metal', 'BROTHER', '0012', '', '', '2008', 'Pembelian', 'Baik', 1400000, '', 4),
('00003', '06.01.04.01', 'Almari Besi/Metal', '', '0013', '', '', '2009', 'Pembelian', 'Baik', 3825000, '', 7),
('00004', '06.01.04.01', 'Almari Besi/Metal', 'BROTHER / B-203', '0014', '', '', '2010', 'Pembelian', 'Baik', 2400000, '', 5),
('00005', '06.01.04.01', 'Almari Besi/Metal', 'SECURE LINE / IAE05-SLM26-001', '0015', '', '', '2012', 'Pembelian', 'Baik', 112375900, '', 8),
('00006', '06.01.04.01', 'Almari Besi/Metal', 'SECURE LINE / IAE05-SLM26-001', '0016', '', '', '2012', 'Pembelian', 'Baik', 112375900, '', 8),
('00007', '06.01.04.01', 'Almari Besi/Metal', 'SECURE LINE / IAE05-SLM26-001', '0017', '', '', '2012', 'Pembelian', 'Baik', 112375900, '', 8),
('00008', '06.01.04.01', 'Almari Besi/Metal', 'SECURE LINE / IAE05-SLM26-001', '0018', '', '', '2012', 'Pembelian', 'Baik', 112375900, '', 8),
('00009', '06.01.04.01', 'Almari Besi/Metal', 'SECURE LINA / OPTIMA', '0019', '', '', '2013', 'Pembelian', 'Baik', 3162500, '', 14),
('00010', '06.01.04.01', 'Almari Besi/Metal', '', '0020', '', '', '2013', 'Pembelian', 'Baik', 4807000, '', 17),
('00011', '06.01.04.02', 'Rak Besi/Metal', '', '0021', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 5),
('00012', '06.01.04.02', 'Rak Besi/Metal', '', '0022', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00013', '06.01.04.02', 'Rak Besi/Metal', '', '0023', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00014', '06.01.04.02', 'Rak Besi/Metal', '', '0024', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00015', '06.01.04.02', 'Rak Besi/Metal', '', '0025', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00016', '06.01.04.02', 'Rak Besi/Metal', '', '0026', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00017', '06.01.04.02', 'Rak Besi/Metal', '', '0027', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00018', '06.01.04.02', 'Rak Besi/Metal', '', '0028', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00019', '06.01.04.02', 'Rak Besi/Metal', '', '0029', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00020', '06.01.04.02', 'Rak Besi/Metal', '', '0030', '', '', '2011', 'Pembelian', 'Baik', 2202250, '', 8),
('00021', '06.01.04.02', 'Rak Besi/Metal', 'SECURE LINA/ IAE05-SLM-26-001', '0031', '', '', '2013', 'Pembelian', 'Baik', 133588333, '', 8),
('00022', '06.01.04.02', 'Rak Besi/Metal', 'SECURE LINA/ IAE05-SLM-26-001', '0032', '', '', '2013', 'Pembelian', 'Baik', 133588333, '', 8),
('00023', '06.01.04.02', 'Rak Besi/Metal', 'SECURE LINA/ IAE05-SLM-26-001', '0033', '', '', '2013', 'Pembelian', 'Baik', 133588333, '', 8),
('00024', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0001', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 3),
('00025', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0002', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 18),
('00026', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0003', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 36),
('00027', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0004', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 8),
('00028', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0005', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 8),
('00029', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0006', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 8),
('00030', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0007', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 8),
('00031', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0008', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 8),
('00032', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0009', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 8),
('00033', '06.01.04.02', 'Rak Besi/Metal', 'PREMIUM KM H08', '0010', 'MIUM KM', 'Besi dan Metal', '2020', 'APBD', 'Baik', 2497000, 'Unit Pelayanan Pendapatan Daer', 8),
('00034', '06.01.04.04', 'Filling Besi/Metal', 'BROTHER / B-104', '0034', '', '', '2010', 'Pembelian', 'Baik', 2050000, '', 6),
('00035', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0035', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 5),
('00036', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0036', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 2),
('00037', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0037', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 4),
('00038', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0038', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 7),
('00039', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0039', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 17),
('00040', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0040', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 19),
('00041', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0041', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 19),
('00042', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0042', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 19),
('00043', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0043', '', '', '2012', 'Pembelian', 'Baik', 1945235, '', 14),
('00044', '06.01.04.04', 'Filling Besi/Metal', 'ROYAL / 4 LACI', '0044', '', '', '2012', 'Pembelian', 'Baik', 1945236, '', 5),
('00045', '06.01.04.04', 'Filling Besi/Metal', 'SECURE LINE / PRIMA 4 DRAWER', '0045', '', '', '2013', 'Pembelian', 'Baik', 3850000, '', 17),
('00046', '06.01.04.04', 'Filling Besi/Metal', 'SECURE LINE / 4 DRAWER', '0046', '', '', '2014', 'Pembelian', 'Baik', 3848684, '', 5),
('00047', '06.01.04.04', 'Filling Besi/Metal', 'SECURE LINE / 4 DRAWER', '0047', '', '', '2014', 'Pembelian', 'Baik', 3848684, '', 7),
('00048', '06.01.04.04', 'Filling Besi/Metal', 'SECURE LINE / 4 DRAWER', '0048', '', '', '2014', 'Pembelian', 'Baik', 3848684, '', 19),
('00049', '06.01.04.04', 'Filling Besi/Metal', 'SAN / 4 LACI', '0049', '', '', '2018', 'Pembelian', 'Baik', 3190000, '', 3),
('00050', '06.01.04.04', 'Filling Besi/Metal', 'SAN / 4 LACI', '0050', '', '', '2018', 'Pembelian', 'Baik', 3190000, '', 5),
('00051', '06.01.04.04', 'Filling Besi/Metal', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 3197700, 'Unit Pelayanan Pendapatan Daer', 13),
('00052', '06.01.04.04', 'Filling Besi/Metal', '', '0002', '', '', '2019', 'Pembelian', 'Baik', 3197700, 'Unit Pelayanan Pendapatan Daer', 13),
('00053', '06.01.04.04', 'Filling Besi/Metal', 'SAN DENALI', '0001', '4 LACI', 'Besi dan Metal', '2020', 'APBD', 'Baik', 3197692, 'Unit Pelayanan Pendapatan Daer', 12),
('00054', '06.01.04.04', 'Filling Besi/Metal', 'SAN DENALI', '0002', '4 LACI', 'Besi dan Metal', '2020', 'APBD', 'Baik', 3197692, 'Unit Pelayanan Pendapatan Daer', 14),
('00055', '06.01.04.06', 'Brandkas', 'SECURE LINE / OVAL B SERI B.53', '0051', '', '', '2016', 'Pembelian', 'Baik', 9394000, '', 3),
('00056', '06.01.04.14', 'Alat Penyimpanan Lainnya', 'INDO RACK / STANDING CLOSE RACK', '0052', '', '', '2014', 'Pembelian', 'Baik', 12532857, '', 15),
('00057', '06.01.05.17', 'Mesin Absensi', 'FINGER PLUS / ZT7200i', '0053', '', '', '2012', 'Pembelian', 'Baik', 15974357, '', 5),
('00058', '06.01.05.40', 'Alat Kantor Lainnya', 'Midia', '0001', '1 PK', 'Campuran', '2012', 'APBD', 'Baik', 3750000, 'AC Mobil', 17),
('00059', '06.01.05.40', 'Alat Kantor Lainnya', 'ASUS-EPSON / ET1612-TMU-220', '0054', '', '', '2015', 'Pembelian', 'Baik', 28352500, '', 15),
('00060', '06.01.05.40', 'Alat Kantor Lainnya', 'Mesin Antrian', '0001', '', '', '2019', 'Pembelian', 'Baik', 22300000, 'Unit Pelayanan Pendapatan Daer', 22),
('00061', '06.02.01.04', 'Meja Kayu/ Rotan', 'Lokal Meja Kerja', '0001', 'Besar', 'Kayu Partikel', '2012', 'APBD', 'Baik', 2200000, 'Meja Kayu Kerja', 4),
('00062', '06.02.01.10', 'Meja Rapat', 'IDACHI / BCT-106', '0055', '', '', '2010', 'Pembelian', 'Baik', 2393207, '', 9),
('00063', '06.02.01.10', 'Meja Rapat', 'IDACHI / DMT113PF', '0056', '', '', '2013', 'Pembelian', 'Baik', 3635500, '', 9),
('00064', '06.02.01.19', 'Meja Panjang', 'Siantano', '0057', '', '', '2017', 'Pembelian', 'Baik', 2254666, 'Meja 1 Biro', 13),
('00065', '06.02.01.19', 'Meja Panjang', 'Pro Design VMP-160', '0058', '', '', '2017', 'Pembelian', 'Baik', 1544290, 'Meja 1 Biro', 5),
('00066', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0059', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 16),
('00067', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0060', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 16),
('00068', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0061', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 9),
('00069', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0062', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 9),
('00070', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0063', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 17),
('00071', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0064', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 15),
('00072', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0065', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 16),
('00073', '06.02.01.27', 'Kursi Rapat', 'USHINTO / KH 3033 TLPP', '0066', '', '', '2013', 'Pembelian', 'Baik', 792000, '', 16),
('00074', '06.02.01.28', 'Kursi Tamu', 'SIRO / LILY', '0067', '', '', '2011', 'Pembelian', 'Baik', 4290000, '', 20),
('00075', '06.02.01.28', 'Kursi Tamu', 'JAGUAR / 211', '0068', '', '', '2012', 'Pembelian', 'Baik', 7755000, '', 2),
('00076', '06.02.01.31', 'Kursi Biasa', 'CHITOSE / HADAP', '0069', '', '', '2014', 'Pembelian', 'Baik', 816200, '', 5),
('00077', '06.02.01.31', 'Kursi Biasa', 'CHITOSE / HADAP', '0070', '', '', '2014', 'Pembelian', 'Baik', 816200, '', 16),
('00078', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0071', '', '', '2008', 'Pembelian', 'Baik', 4300000, '', 22),
('00079', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0072', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00080', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0073', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00081', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0074', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00082', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0075', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00083', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0076', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00084', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0077', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00085', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0078', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00086', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0079', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00087', '06.02.01.33', 'Bangku Tunggu', 'BROTHER / TS 4004', '0080', '', '', '2010', 'Pembelian', 'Baik', 4753000, '', 22),
('00088', '06.02.01.33', 'Bangku Tunggu', 'INDACHI / PS 54 SF', '0081', '', '', '2013', 'Pembelian', 'Baik', 4186111, '', 22),
('00089', '06.02.01.33', 'Bangku Tunggu', 'INDACHI / PS 54 SF', '0082', '', '', '2013', 'Pembelian', 'Baik', 4186111, '', 22),
('00090', '06.02.01.33', 'Bangku Tunggu', 'INDACHI / PS 54 SF', '0083', '', '', '2013', 'Pembelian', 'Baik', 4186111, '', 22),
('00091', '06.02.01.33', 'Bangku Tunggu', 'INDACHI / PS 54 SF', '0084', '', '', '2013', 'Pembelian', 'Baik', 4186111, '', 22),
('00092', '06.02.01.33', 'Bangku Tunggu', 'INDACHI / PS 54 SF', '0085', '', '', '2013', 'Pembelian', 'Baik', 4186111, '', 22),
('00093', '06.02.01.33', 'Bangku Tunggu', 'INDACHI / PS 54 SF', '0086', '', '', '2013', 'Pembelian', 'Baik', 4186111, '', 22),
('00094', '06.02.01.33', 'Bangku Tunggu', 'INDACHI / PS 54 SF', '0087', '', '', '2013', 'Pembelian', 'Baik', 4186111, '', 22),
('00095', '06.02.01.33', 'Bangku Tunggu', 'INDACHI/D305', '0088', '', '', '2016', 'Pembelian', 'Baik', 9862133, 'BARANG DARI BAKEUDA', 22),
('00096', '06.02.01.33', 'Bangku Tunggu', 'INDACHI/D305', '0089', '', '', '2016', 'Pembelian', 'Baik', 9862133, 'BARANG DARI BAKEUDA', 22),
('00097', '06.02.01.33', 'Bangku Tunggu', '4 Seater (Ins 7036 C4)', '0001', '', '', '2019', 'Pembelian', 'Baik', 5034650, 'Unit Pelayanan Pendapatan Daer', 22),
('00098', '06.02.01.33', 'Bangku Tunggu', '4 Seater (Ins 7036 C4)', '0002', '', '', '2019', 'Pembelian', 'Baik', 5034650, 'Unit Pelayanan Pendapatan Daer', 22),
('00099', '06.02.01.33', 'Bangku Tunggu', '4 Seater (Ins 7036 C4)', '0003', '', '', '2019', 'Pembelian', 'Baik', 5034650, 'Unit Pelayanan Pendapatan Daer', 37),
('00100', '06.02.01.33', 'Bangku Tunggu', '4 Seater (Ins 7036 C4)', '0004', '', '', '2019', 'Pembelian', 'Baik', 5034650, 'Unit Pelayanan Pendapatan Daer', 37),
('00101', '06.02.01.33', 'Bangku Tunggu', '4 Seater (Ins 7036 C4)', '0005', '', '', '2019', 'Pembelian', 'Baik', 5034650, 'Unit Pelayanan Pendapatan Daer', 37),
('00102', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0090', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 7),
('00103', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0091', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 7),
('00104', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0092', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 7),
('00105', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0093', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 17),
('00106', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0094', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 17),
('00107', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0095', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 17),
('00108', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0096', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 15),
('00109', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0097', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 15),
('00110', '06.02.01.48', 'Meja 1/2 Biro', 'ORBITREND / OST-1061', '0098', '', '', '2013', 'Pembelian', 'Baik', 1235929, '', 13),
('00111', '06.02.01.48', 'Meja 1/2 Biro', 'SIANTANO', '0099', '', '', '2018', 'Pembelian', 'Baik', 2097693, '', 5),
('00112', '06.02.01.48', 'Meja 1/2 Biro', 'SIANTANO', '0100', '', '', '2018', 'Pembelian', 'Baik', 2097693, '', 5),
('00113', '06.02.01.48', 'Meja 1/2 Biro', 'SIANTANO', '0101', '', '', '2018', 'Pembelian', 'Baik', 2097693, '', 5),
('00114', '06.02.01.48', 'Meja 1/2 Biro', 'SIANTANO', '0102', '', '', '2018', 'Pembelian', 'Baik', 2097693, '', 2),
('00115', '06.02.01.48', 'Meja 1/2 Biro', 'SIANTANO', '0103', '', '', '2018', 'Pembelian', 'Baik', 2097693, '', 14),
('00116', '06.02.01.48', 'Meja 1/2 Biro', 'SIANTANO', '0104', '', '', '2018', 'Pembelian', 'Baik', 2097693, '', 14),
('00117', '06.02.01.48', 'Meja 1/2 Biro', 'SIANTANO', '0105', '', '', '2018', 'Pembelian', 'Baik', 2097693, '', 16),
('00118', '06.02.01.48', 'Meja 1/2 Biro', 'DC', '0106', '', '', '2018', 'Pembelian', 'Baik', 3190000, '', 16),
('00119', '06.02.01.48', 'Meja 1/2 Biro', 'DC', '0107', '', '', '2018', 'Pembelian', 'Baik', 3190000, '', 16),
('00120', '06.02.01.49', 'Sofa', 'OSCAR / KEMBANG', '0108', '', '', '2009', 'Pembelian', 'Baik', 5800000, '', 1),
('00121', '06.02.01.49', 'Sofa', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 14987500, 'Unit Pelayanan Pendapatan Daer', 1),
('00122', '06.02.01.61', 'Meubelair Lainnya', 'MEJA COUNTER SAMSAT PELAIHARI', '0109', '', '', '2011', 'Pembelian', 'Baik', 92499000, '', 16),
('00123', '06.02.01.61', 'Meubelair Lainnya', 'GORDEN / VERTIKAL BLINDS', '0110', '', '', '2012', 'Pembelian', 'Baik', 66791000, '', 1),
('00124', '06.02.01.61', 'Meubelair Lainnya', 'TERALIS', '0111', '', '', '2012', 'Pembelian', 'Baik', 56375000, '', 16),
('00125', '06.02.01.61', 'Meubelair Lainnya', '', '0112', '', '', '2013', 'Pembelian', 'Baik', 35640000, '', 22),
('00126', '06.02.01.61', 'Meubelair Lainnya', '', '0113', '', '', '2013', 'Pembelian', 'Baik', 46695000, '', 22),
('00127', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 JKJ', '0114', '', '', '2011', 'Pembelian', 'Baik', 4164571, '', 4),
('00128', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0115', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 3),
('00129', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0116', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 4),
('00130', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0117', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 6),
('00131', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0118', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 9),
('00132', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0119', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 19),
('00133', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0120', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 8),
('00134', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0121', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 18),
('00135', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0122', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 16),
('00136', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC9 PKJ', '0123', '', '', '2012', 'Pembelian', 'Baik', 4104474, '', 12),
('00137', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC18 NKJ', '0124', '', '', '2012', 'Pembelian', 'Baik', 6500348, '', 5),
('00138', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC18 NKJ', '0125', '', '', '2012', 'Pembelian', 'Baik', 6500348, '', 1),
('00139', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC18 NKJ', '0126', '', '', '2012', 'Pembelian', 'Baik', 6500348, '', 15),
('00140', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CS-PC18 NKJ', '0127', '', '', '2012', 'Pembelian', 'Baik', 6500348, '', 16),
('00141', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CU-PC18 PKP', '0128', '', '', '2014', 'Pembelian', 'Baik', 7505036, '', 16),
('00142', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CU-PC9 QKJ', '0129', '', '', '2014', 'Pembelian', 'Baik', 4974986, '', 2),
('00143', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CU-PC9 QKJ', '0130', '', '', '2014', 'Pembelian', 'Baik', 4974986, '', 13),
('00144', '06.02.04.04', 'Ac. SPlit', 'PANASONIC / CU-PC9 QKJ', '0131', '', '', '2014', 'Pembelian', 'Baik', 4974986, '', 20),
('00145', '06.02.04.04', 'Ac. SPlit', 'MIDEA', '0001', '2 PK', '', '2020', 'APBD', 'Baik', 7934167, 'Unit Pelayanan Pendapatan Daer', 14),
('00146', '06.02.04.04', 'Ac. SPlit', 'MIDEA', '0002', '2 PK', '', '2020', 'APBD', 'Baik', 7934167, 'Unit Pelayanan Pendapatan Daer', 16),
('00147', '06.02.04.04', 'Ac. SPlit', 'MIDEA', '0003', '2 PK', '', '2020', 'APBD', 'Baik', 7934167, 'Unit Pelayanan Pendapatan Daer', 39),
('00148', '06.02.04.04', 'Ac. SPlit', 'MIDEA', '0004', '2 PK', '', '2020', 'APBD', 'Baik', 7934167, 'Unit Pelayanan Pendapatan Daer', 34),
('00149', '06.02.04.06', 'Kipas Angin', 'MASPION / PW-501 W', '0132', '', '', '2013', 'Pembelian', 'Baik', 758983, '', 22),
('00150', '06.02.04.06', 'Kipas Angin', 'MASPION / PW-602', '0133', '', '', '2016', 'Pembelian', 'Baik', 3575000, '', 22),
('00151', '06.02.04.06', 'Kipas Angin', 'MASPION / PW-602', '0134', '', '', '2016', 'Pembelian', 'Baik', 3575000, '', 22),
('00152', '06.02.04.06', 'Kipas Angin', 'MASPION / PW-602', '0135', '', '', '2016', 'Pembelian', 'Baik', 3575000, '', 35),
('00153', '06.02.04.06', 'Kipas Angin', 'Air Cooler', '0001', '', '', '2019', 'Pembelian', 'Baik', 1200000, 'Unit Pelayanan Pendapatan Daer', 40),
('00154', '06.02.04.06', 'Kipas Angin', 'VANCO/Misty Embun Fan Cool', '0001', 'as Tangki', '', '2020', 'APBD', 'Baik', 6737500, 'Unit Pelayanan Pendapatan Daer', 22),
('00155', '06.02.04.07', 'Exhauster Fan', 'PANASONIC / FV-40FU', '0136', '', '', '2009', 'Pembelian', 'Baik', 850000, '', 22),
('00156', '06.02.04.07', 'Exhauster Fan', 'PANASONIC / FV-40FU', '0137', '', '', '2009', 'Pembelian', 'Baik', 850000, '', 22),
('00157', '06.02.06.03', 'Televisi', 'SAMSUNG', '0001', '43 INCH', '', '2020', 'APBD', 'Baik', 8000000, 'Unit Pelayanan Pendapatan Daer', 1),
('00158', '06.02.06.08', 'Sound System', 'TOA / ZA 2120', '0138', '', '', '2009', 'Pembelian', 'Baik', 6297500, '', 17),
('00159', '06.02.06.18', 'Unit Power Supply', 'ICA / CE1200', '0139', '', '', '2013', 'Pembelian', 'Baik', 1463000, '', 14),
('00160', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0223', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 5),
('00161', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0224', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 5),
('00162', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0225', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 5),
('00163', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0226', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 7),
('00164', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0227', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 17),
('00165', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0228', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 17),
('00166', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0229', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 15),
('00167', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0230', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 15),
('00168', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0231', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 40),
('00169', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0232', '', '', '2018', 'Pembelian', 'Baik', 1528324, '', 41),
('00170', '06.02.06.18', 'Unit Power Supply', 'UPS INFORCE 1200 VA', '0233', '', '', '2018', 'Pembelian', 'Baik', 3465000, '', 16),
('00171', '06.02.06.18', 'Unit Power Supply', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 2996612, 'Unit Pelayanan Pendapatan Daer', 5),
('00172', '06.02.06.18', 'Unit Power Supply', '', '0002', '', '', '2019', 'Pembelian', 'Baik', 2641762, 'Unit Pelayanan Pendapatan Daer', 4),
('00173', '06.02.06.37', 'Tangga Almunium', 'TOYO / ST-5', '0140', '', '', '2010', 'Pembelian', 'Baik', 1082000, '', 4),
('00174', '06.02.06.50', 'Alat Rumah Tangga Lainnya', '', '0001', '', '', '2020', 'APBD', 'Baik', 4499000, 'Unit Pelayanan Pendapatan Daer', 37),
('00175', '06.02.06.50', 'Alat Rumah Tangga Lainnya', 'SHIMIZU', '0002', '', '', '2020', 'APBD', 'Baik', 3500000, 'Unit Pelayanan Pendapatan Daer', 4),
('00176', '06.02.07.01', 'Alat Pemadam Portable', 'GUNNEBO / 20A:100B/C', '0141', '', '', '2013', 'Pembelian', 'Baik', 8745000, '', 16),
('00177', '06.02.07.01', 'Alat Pemadam Portable', 'One Fire', '0001', 'Pemadam A', '', '2020', 'APBD', 'Baik', 5000000, 'Unit Pelayanan Pendapatan Daer', 4),
('00178', '06.02.07.01', 'Alat Pemadam Portable', 'One Fire', '0002', 'Pemadam A', '', '2020', 'APBD', 'Baik', 5000000, 'Unit Pelayanan Pendapatan Daer', 37),
('00179', '06.03.02.01', 'P.C Unit', 'Acer Aspire M-3985', '0001', 'GB Mon.', 'Campuran', '2012', 'APBD', 'Baik', 7000000, 'PC Unit/Komputer PC', 41),
('00180', '06.03.02.01', 'P.C Unit', 'Acer', '0142', '', '', '2012', 'Pembelian', 'Baik', 8547336, '', 13),
('00181', '06.03.02.01', 'P.C Unit', 'DELL/ INSPIRON ONE 2330', '0143', '', '', '2013', 'Pembelian', 'Baik', 17539500, '', 5),
('00182', '06.03.02.01', 'P.C Unit', 'DELL/ INSPIRON ONE 2330', '0144', '', '', '2013', 'Pembelian', 'Baik', 17539500, '', 4),
('00183', '06.03.02.01', 'P.C Unit', '', '0145', '', '', '2013', 'Pembelian', 'Baik', 11275000, '', 17),
('00184', '06.03.02.01', 'P.C Unit', '', '0146', '', '', '2013', 'Pembelian', 'Baik', 11275000, '', 13),
('00185', '06.03.02.01', 'P.C Unit', 'LENOVO M800-91APC0BJ8 L5,VK284670', '0147', '', '', '2016', 'Pembelian', 'Baik', 19681843, 'BARANG DARI BAKEUDA', 15),
('00186', '06.03.02.01', 'P.C Unit', 'LENOVO', '0148', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 5),
('00187', '06.03.02.01', 'P.C Unit', 'LENOVO', '0149', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 4),
('00188', '06.03.02.01', 'P.C Unit', 'LENOVO', '0150', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 4),
('00189', '06.03.02.01', 'P.C Unit', 'LENOVO', '0151', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 4),
('00190', '06.03.02.01', 'P.C Unit', 'LENOVO', '0152', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 3),
('00191', '06.03.02.01', 'P.C Unit', 'LENOVO', '0153', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 13),
('00192', '06.03.02.01', 'P.C Unit', 'LENOVO', '0154', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 16),
('00193', '06.03.02.01', 'P.C Unit', 'LENOVO', '0155', '', '', '2018', 'Pembelian', 'Baik', 13282467, 'BARANG DARI BAKEUDA', 15),
('00194', '06.03.02.01', 'P.C Unit', 'LENOVO', '0156', '', '', '2018', 'Pembelian', 'Baik', 15315257, '', 13),
('00195', '06.03.02.01', 'P.C Unit', 'LENOVO', '0157', '', '', '2018', 'Pembelian', 'Baik', 15315257, '', 16),
('00196', '06.03.02.01', 'P.C Unit', 'LENOVO', '0158', '', '', '2018', 'Pembelian', 'Baik', 14486630, '', 14),
('00197', '06.03.02.01', 'P.C Unit', 'LENOVO/ M710S-0LIA SFF', '0159', '', '', '2018', 'Pembelian', 'Baik', 14027000, 'Unit Pelayanan Pendapatan Daer', 13),
('00198', '06.03.02.01', 'P.C Unit', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 16500000, 'Unit Pelayanan Pendapatan Daer', 5),
('00199', '06.03.02.01', 'P.C Unit', 'HP All In One', '0001', '52l.Ai0 i5', '8', '2020', 'APBD', 'Baik', 14766658, 'Unit Pelayanan Pendapatan Daer', 4),
('00200', '06.03.02.01', 'P.C Unit', 'LENOVO M720S Small Form Factor', '0002', 'Processor', '', '2020', 'APBD', 'Baik', 15172420, 'Unit Pelayanan Pendapatan Daer', 33),
('00201', '06.03.02.01', 'P.C Unit', 'LENOVO M720S Small Form Factor', '0003', 'Processor', '', '2020', 'APBD', 'Baik', 15172420, 'Unit Pelayanan Pendapatan Daer', 40),
('00202', '06.03.02.01', 'P.C Unit', 'LENOVO M720S Small Form Factor', '0004', 'Processor', '', '2020', 'APBD', 'Baik', 15172420, 'Unit Pelayanan Pendapatan Daer', 34),
('00203', '06.03.02.01', 'P.C Unit', 'LENOVO M720S Small Form Factor', '0005', 'Processor', '', '2020', 'APBD', 'Baik', 15172420, 'Unit Pelayanan Pendapatan Daer', 34),
('00204', '06.03.02.01', 'P.C Unit', 'LENOVO M720S Small Form Factor', '0006', 'Processor', '', '2020', 'APBD', 'Baik', 15172420, 'Unit Pelayanan Pendapatan Daer', 34),
('00205', '06.03.02.01', 'P.C Unit', 'LENOVO M720S Small Form Factor', '0007', 'Processor', '', '2020', 'APBD', 'Baik', 15172420, 'Unit Pelayanan Pendapatan Daer', 35),
('00206', '06.03.02.01', 'P.C Unit', 'HP All In One', '0008', '52l.Ai0 (i', '8', '2020', 'APBD', 'Baik', 14671420, 'Unit Pelayanan Pendapatan Daer', 7),
('00207', '06.03.02.02', 'Lap Top', 'Toshiba Satellite L840', '0001', 'rdisk 750', 'GCampuran', '2012', 'APBD', 'Baik', 10950000, '', 4),
('00208', '06.03.02.02', 'Lap Top', 'HP', '0159', '', '', '2017', 'Pembelian', 'Baik', 15939000, '', 4),
('00209', '06.03.02.02', 'Lap Top', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 19950790, 'Unit Pelayanan Pendapatan Daer', 2),
('00210', '06.03.02.03', 'Note Book', 'LENOVO IDEAPAD Z400', '0160', '', '', '2013', 'Pembelian', 'Baik', 13346400, 'BARANG DARI BAKEUDA', 4),
('00211', '06.03.02.05', 'Personal Komputer Lainnya', 'LENOVO / THINKCENTRE E73', '0161', '', '', '2014', 'Pembelian', 'Baik', 9929795, '', 4),
('00212', '06.03.02.05', 'Personal Komputer Lainnya', 'LENOVO / THINKCENTRE E73', '0162', '', '', '2014', 'Pembelian', 'Baik', 9929795, '', 15),
('00213', '06.03.02.05', 'Personal Komputer Lainnya', 'LENOVE / THINKCENTRE', '0163', '', '', '2018', 'Pembelian', 'Baik', 14684500, '', 7),
('00214', '06.03.04.08', 'Printer', 'FUJI XEROX / PHASER 3124', '0167', '', '', '2010', 'Pembelian', 'Baik', 2500000, '', 5),
('00215', '06.03.04.08', 'Printer', 'HP / PRO 1606DN', '0168', '', '', '2012', 'Pembelian', 'Baik', 4119500, '', 5),
('00216', '06.03.04.08', 'Printer', 'HP 1566 SN', '0166', '', '', '2013', 'Pembelian', 'Baik', 3176482, 'BARANG DARI BAKEUDA', 5),
('00217', '06.03.04.08', 'Printer', 'PRINTONIX/P7010 PADESTAL', '0169', '', '', '2013', 'Pembelian', 'Baik', 90125000, '', 15),
('00218', '06.03.04.08', 'Printer', 'EPSON/ LQ 2190', '0170', '', '', '2013', 'Pembelian', 'Baik', 9199500, '', 5),
('00219', '06.03.04.08', 'Printer', 'EPSON/ LQ 2190', '0171', '', '', '2013', 'Pembelian', 'Baik', 9199500, '', 7),
('00220', '06.03.04.08', 'Printer', 'HP / P1566', '0172', '', '', '2014', 'Pembelian', 'Baik', 3674102, '', 5),
('00221', '06.03.04.08', 'Printer', 'EPSON/ LQ2190', '0173', '', '', '2014', 'Pembelian', 'Baik', 8257982, '', 17),
('00222', '06.03.04.08', 'Printer', 'EPSON/ LQ2190', '0174', '', '', '2014', 'Pembelian', 'Baik', 8257982, '', 17),
('00223', '06.03.04.08', 'Printer', 'EPSON/ LQ2190', '0175', '', '', '2014', 'Pembelian', 'Baik', 8257982, '', 13),
('00224', '06.03.04.08', 'Printer', 'EPSON/ LQ2190', '0176', '', '', '2014', 'Pembelian', 'Baik', 8257982, '', 16),
('00225', '06.03.04.08', 'Printer', 'EPSON LQ2190 SN', '0164', '', '', '2016', 'Pembelian', 'Baik', 11622615, 'BARANG DARI BAKEUDA', 16),
('00226', '06.03.04.08', 'Printer', 'EPSON LQ2190 SN', '0165', '', '', '2016', 'Pembelian', 'Baik', 11622615, 'BARANG DARI BAKEUDA', 16),
('00227', '06.03.04.08', 'Printer', 'HP/M201DW', '0177', '', '', '2016', 'Pembelian', 'Baik', 6028700, '', 7),
('00228', '06.03.04.08', 'Printer', 'Warna Docucenter', '0178', '', '', '2017', 'Pembelian', 'Baik', 7458200, '', 5),
('00229', '06.03.04.08', 'Printer', 'EPSON/LQ2190', '0179', '', '', '2017', 'Pembelian', 'Baik', 10791000, 'BARANG DARI BAKEUDA', 16),
('00230', '06.03.04.08', 'Printer', 'EPSON L360', '0180', '', '', '2018', 'Pembelian', 'Baik', 2993000, '', 21),
('00231', '06.03.04.08', 'Printer', 'EPSON/LQ2190', '0181', '', '', '2018', 'Pembelian', 'Baik', 9184458, '', 16),
('00232', '06.03.04.08', 'Printer', 'EPSON/LQ2190', '0182', '', '', '2018', 'Pembelian', 'Baik', 9184458, '', 17),
('00233', '06.03.04.08', 'Printer', 'CANON//G2010', '0183', '', '', '2018', 'Pembelian', 'Baik', 2431874, '', 5),
('00234', '06.03.04.08', 'Printer', 'EPSON/LQ2190', '0184', '', '', '2018', 'Pembelian', 'Baik', 9184458, '', 40),
('00235', '06.03.04.08', 'Printer', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 3886974, 'UNIT PELAYANAN PENDAPATAN DAER', 2),
('00236', '06.03.04.08', 'Printer', '', '0002', '', '', '2019', 'Pembelian', 'Baik', 9544962, 'UNIT PELAYANAN PENDAPATAN DAER', 16),
('00237', '06.03.04.08', 'Printer', '', '0003', '', '', '2019', 'Pembelian', 'Baik', 9544962, 'UNIT PELAYANAN PENDAPATAN DAER', 41),
('00238', '06.03.04.08', 'Printer', '', '0004', '', '', '2019', 'Pembelian', 'Baik', 9544962, 'UNIT PELAYANAN PENDAPATAN DAER', 33),
('00239', '06.03.04.08', 'Printer', '', '0005', '', '', '2019', 'Pembelian', 'Baik', 10044962, 'UNIT PELAYANAN PENDAPATAN DAER', 34),
('00240', '06.03.04.08', 'Printer', '', '0006', '', '', '2019', 'Pembelian', 'Baik', 10044962, 'UNIT PELAYANAN PENDAPATAN DAER', 35),
('00241', '06.03.05.02', 'Monitor', 'ASUS LED VS207DF', '0001', '', '', '2018', 'Pembelian', 'Baik', 1300000, 'UNIT PELAYANAN PENDAPATAN DAER', 1),
('00242', '06.03.05.03', 'Printer', 'EPSON LQ2190', '0001', 'A4', 'Campuran', '2012', 'APBD', 'Baik', 7400000, 'UNIT PELAYANAN PENDAPATAN DAER', 4),
('00243', '06.03.05.03', 'Printer', 'EPSON L3110', '0001', '', '', '2020', 'APBD', 'Baik', 2999999, 'UNIT PELAYANAN PENDAPATAN DAER', 16),
('00244', '06.03.05.03', 'Printer', 'EPSON L3110', '0002', '', '', '2020', 'APBD', 'Baik', 2999999, 'UNIT PELAYANAN PENDAPATAN DAER', 16),
('00245', '06.03.05.03', 'Printer', 'EPSON L3110', '0003', '', '', '2020', 'APBD', 'Baik', 2999999, 'UNIT PELAYANAN PENDAPATAN DAER', 4),
('00246', '06.03.05.03', 'Printer', 'HP 137fnw', '0004', '', '', '2020', 'APBD', 'Baik', 2991698, 'UNIT PELAYANAN PENDAPATAN DAER', 5),
('00247', '06.03.05.04', 'Scanner', 'CANNON/LIDE 120 SN', '0185', '', '', '2018', 'Pembelian', 'Baik', 1540000, 'UNIT PELAYANAN PENDAPATAN DAER', 5),
('00248', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'ORBITREND/OST-1080', '0186', '', '', '2012', 'Pembelian', 'Baik', 1567500, '', 2),
('00249', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'ORBITREND/OST-1080', '0187', '', '', '2012', 'Pembelian', 'Baik', 1567500, '', 5),
('00250', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'ORBITREND/OST-1080', '0188', '', '', '2012', 'Pembelian', 'Baik', 1567500, '', 4),
('00251', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'ORBITREND/OST-1080', '0189', '', '', '2012', 'Pembelian', 'Baik', 1567500, '', 7),
('00252', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'GRAND', '0190', '', '', '2018', 'Pembelian', 'Baik', 6493286, '', 3),
('00253', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'Modern', '0001', '', '', '2019', 'Pembelian', 'Baik', 6763353, 'UNIT PELAYANAN PENDAPATAN DAER', 1),
('00254', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'Modern', '0002', '', '', '2019', 'Pembelian', 'Baik', 6763353, 'UNIT PELAYANAN PENDAPATAN DAER', 6),
('00255', '06.04.01.06', 'Meja Kerja Pejabat Eselon Iv', 'Modern', '0003', '', '', '2019', 'Pembelian', 'Baik', 6763353, 'UNIT PELAYANAN PENDAPATAN DAER', 20),
('00256', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 2566667, 'UNIT PELAYANAN PENDAPATAN DAER', 33),
('00257', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', '', '0002', '', '', '2019', 'Pembelian', 'Baik', 2566667, 'UNIT PELAYANAN PENDAPATAN DAER', 36),
('00258', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', '', '0003', '', '', '2019', 'Pembelian', 'Baik', 2566667, 'UNIT PELAYANAN PENDAPATAN DAER', 37),
('00259', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', '', '0004', '', '', '2019', 'Pembelian', 'Baik', 2566667, 'UNIT PELAYANAN PENDAPATAN DAER', 4),
('00260', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', '', '0005', '', '', '2019', 'Pembelian', 'Baik', 2566667, 'UNIT PELAYANAN PENDAPATAN DAER', 4),
('00261', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0001', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 5),
('00262', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0002', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 5),
('00263', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0003', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 5),
('00264', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0004', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 5),
('00265', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0005', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 9),
('00266', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0006', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 9),
('00267', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0007', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 9),
('00268', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0008', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 9),
('00269', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0009', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 13),
('00270', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0010', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 14),
('00271', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0011', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 14),
('00272', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0012', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 12),
('00273', '06.04.01.08', 'Meja Kerja Pejabat Non Sruktu', 'EXPO TIPE MC 1260', '0013', '20 X 60 X ', '', '2020', 'APBD', 'Baik', 2420727, 'UNIT PELAYANAN PENDAPATAN DAER', 19),
('00274', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'USHINTO/KD 5033 TLPP', '0191', '', '', '2013', 'Pembelian', 'Baik', 949575, '', 5),
('00275', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'USHINTO/KD 5033 TLPP', '0192', '', '', '2013', 'Pembelian', 'Baik', 949575, '', 5),
('00276', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'USHINTO/KD 5033 TLPP', '0193', '', '', '2013', 'Pembelian', 'Baik', 949575, '', 7),
('00277', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', '', '0194', '', '', '2014', 'Pembelian', 'Baik', 990000, '', 7),
('00278', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'INDACHI/CAPRI', '0195', '', '', '2016', 'Pembelian', 'Baik', 2105250, '', 14),
('00279', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'INDACHI/CAPRI', '0196', '', '', '2016', 'Pembelian', 'Baik', 2105250, '', 5),
('00280', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'SAVELLO MAJESTY', '0197', '', '', '2018', 'Pembelian', 'Baik', 4493500, '', 2),
('00281', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'Ekskutif Modern', '0001', '', '', '2019', 'Pembelian', 'Baik', 3045468, 'UNIT PELAYANAN PENDAPATAN DAER', 1),
('00282', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'Ekskutif Modern', '0002', '', '', '2019', 'Pembelian', 'Baik', 3045468, 'UNIT PELAYANAN PENDAPATAN DAER', 6),
('00283', '06.04.03.06', 'Kursi Kerja Pejabat Eselon Iv', 'Ekskutif Modern', '0003', '', '', '2019', 'Pembelian', 'Baik', 3045468, 'UNIT PELAYANAN PENDAPATAN DAER', 20),
('00284', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0198', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 17),
('00285', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0199', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 17),
('00286', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0200', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 17),
('00287', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0201', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 17),
('00288', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0202', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 13),
('00289', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0203', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 13),
('00290', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0204', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 13),
('00291', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0205', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 13),
('00292', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0206', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 13),
('00293', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'CHITOSE/VISTAN', '0207', '', '', '2013', 'Pembelian', 'Baik', 644264, '', 13),
('00294', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO WANDO', '0208', '', '', '2018', 'Pembelian', 'Baik', 1197893, '', 18),
('00295', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO WANDO', '0209', '', '', '2018', 'Pembelian', 'Baik', 1197893, '', 13),
('00296', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO WANDO', '0210', '', '', '2018', 'Pembelian', 'Baik', 1197893, '', 9),
('00297', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO WANDO', '0211', '', '', '2018', 'Pembelian', 'Baik', 1197893, '', 5),
('00298', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO WANDO', '0212', '', '', '2018', 'Pembelian', 'Baik', 1197893, '', 5),
('00299', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO COMBI PRO', '0213', '', '', '2018', 'Pembelian', 'Baik', 2689480, '', 3),
('00300', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO COMBI PRO', '0214', '', '', '2018', 'Pembelian', 'Baik', 2689480, '', 14),
('00301', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'VIRA', '0215', '', '', '2018', 'Pembelian', 'Baik', 2700000, '', 15),
('00302', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'VIRA', '0216', '', '', '2018', 'Pembelian', 'Baik', 2700000, '', 16),
('00303', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 1770294, 'Unit Pelayanan Pendapatan Daer', 33),
('00304', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', '', '0002', '', '', '2019', 'Pembelian', 'Baik', 1770294, 'Unit Pelayanan Pendapatan Daer', 34),
('00305', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', '', '0003', '', '', '2019', 'Pembelian', 'Baik', 1770294, 'Unit Pelayanan Pendapatan Daer', 34),
('00306', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', '', '0004', '', '', '2019', 'Pembelian', 'Baik', 1770294, 'Unit Pelayanan Pendapatan Daer', 34),
('00307', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', '', '0005', '', '', '2019', 'Pembelian', 'Baik', 1770294, 'Unit Pelayanan Pendapatan Daer', 35),
('00308', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0001', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 2),
('00309', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0002', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 9),
('00310', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0003', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 4),
('00311', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0004', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 9),
('00312', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0005', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 9),
('00313', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0006', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 9),
('00314', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0007', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 9),
('00315', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0008', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 9),
('00316', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0009', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 9),
('00317', '06.04.03.08', 'Kursi Kerja Pejabat Non Strukt', 'SAVELLO TIPE COMBI HTO', '0010', '', '', '2020', 'APBD', 'Baik', 2618000, 'Unit Pelayanan Pendapatan Daer', 12),
('00318', '06.04.03.09', 'Kursi Kerja Pejabat', 'Indachi', '0217', '', '', '2017', 'Pembelian', 'Baik', 1456301, 'Kursi Manajer', 15),
('00319', '06.04.03.09', 'Kursi Kerja Pejabat', 'Indachi', '0218', '', '', '2017', 'Pembelian', 'Baik', 849900, 'Kursi Manajer', 1),
('00320', '06.04.03.09', 'Kursi Kerja Pejabat', 'Indachi', '0219', '', '', '2017', 'Pembelian', 'Baik', 849900, 'Kursi Manajer', 1),
('00321', '06.04.03.09', 'Kursi Kerja Pejabat', 'Indachi', '0220', '', '', '2017', 'Pembelian', 'Baik', 1456301, 'Kursi Manajer', 14),
('00322', '06.04.04.08', 'Kursi Rapat Pejabat', '', '0001', '', '', '2019', 'Pembelian', 'Baik', 798600, 'Unit Pelayanan Pendapatan Daer', 5),
('00323', '06.04.04.08', 'Kursi Rapat Pejabat', '', '0002', '', '', '2019', 'Pembelian', 'Baik', 798600, 'Unit Pelayanan Pendapatan Daer', 5),
('00324', '06.04.04.08', 'Kursi Rapat Pejabat', '', '0003', '', '', '2019', 'Pembelian', 'Baik', 798600, 'Unit Pelayanan Pendapatan Daer', 15),
('00325', '06.04.04.08', 'Kursi Rapat Pejabat', '', '0004', '', '', '2019', 'Pembelian', 'Baik', 798600, 'Unit Pelayanan Pendapatan Daer', 14),
('00326', '06.04.04.08', 'Kursi Rapat Pejabat', '', '0005', '', '', '2019', 'Pembelian', 'Baik', 798600, 'Unit Pelayanan Pendapatan Daer', 16),
('00327', '06.04.07.06', 'Lemari Arsip untuk Arsip Dinamis', 'OPTIMA SECURE LINE', '0001', '', '', '2020', 'APBD', 'Baik', 5744800, 'Unit Pelayanan Pendapatan Daer', 5),
('00328', '06.04.07.06', 'Lemari Arsip untuk Arsip Dinamis', 'OPTIMA SECURE LINE', '0002', '', '', '2020', 'APBD', 'Baik', 5744800, 'Unit Pelayanan Pendapatan Daer', 1),
('00329', '07.01.01.03', 'Proyektor+Attachment', 'INFOCUS', '0001', '', '', '2020', 'APBD', 'Baik', 10090909, 'Unit Pelayanan Pendapatan Daer', 9),
('00330', '07.01.01.45', 'Professional Sound System', 'BMB/DA-200SE', '0221', '', '', '2013', 'Pembelian', 'Baik', 14992133, '', 17),
('00331', '07.01.01.45', 'Professional Sound System', 'KERZT/WAS010UHF', '0222', '', '', '2013', 'Pembelian', 'Baik', 8085000, '', 17),
('00332', '07.01.01.82', 'Peralatan Studio Visual', '', '3666', '', '', '2019', 'Pembelian', 'Baik', 5900395, 'Unit Pelayanan Pendapatan Daer', 37),
('00333', '07.01.02.10', 'Peralatan Studio Video dan Film', 'SAMSUNG/LED', '0234', '', '', '2013', 'Pembelian', 'Baik', 14080000, '', 2),
('00334', '07.01.02.10', 'Peralatan Studio Video dan Film', 'CCTV SECAM', '0001', '8 TITIK', '', '2020', 'APBD', 'Baik', 12050429, 'UNIT PELAYANAN PENDAPATAN DAER', 1),
('00335', '07.02.01.08', 'Sound System', 'BMB DA 2000 II', '0001', '', '', '2020', 'APBD', 'Baik', 11900000, 'UNIT PELAYANAN PENDAPATAN DAER', 35),
('00336', '07.02.01.20', 'Facsimile', 'PANASONIC/KX-FT983CX', '0235', '', '', '2011', 'Pembelian', 'Baik', 1842533, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventariskeluar`
--

CREATE TABLE `tb_inventariskeluar` (
  `id_barang` int(5) NOT NULL,
  `kode_barang` varchar(11) DEFAULT NULL,
  `nama_barang` varchar(70) DEFAULT NULL,
  `merk` varchar(50) NOT NULL,
  `nomor_registrasi` varchar(4) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `bahan` varchar(30) NOT NULL,
  `tahun_pembelian` varchar(4) DEFAULT NULL,
  `asal_usul` varchar(15) DEFAULT NULL,
  `kondisi` varchar(15) DEFAULT NULL,
  `harga` int(15) DEFAULT NULL,
  `keterangan` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(2) NOT NULL,
  `nip` int(18) DEFAULT NULL,
  `nama_pegawai` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `level_pengguna` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mutasikeluar`
--

CREATE TABLE `tb_mutasikeluar` (
  `id_barangkeluar` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `no_bast` varchar(30) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_instansi` int(3) DEFAULT NULL COMMENT 'Instansi Tujuan Mutasi Barang',
  `tahun_anggaran` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mutasimasuk`
--

CREATE TABLE `tb_mutasimasuk` (
  `id_barangmasuk` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `no_bast` varchar(30) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_instansi` int(3) DEFAULT NULL COMMENT 'Asal Tempat Instansi Mutasi Barang',
  `tahun_anggaran` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemusnahan`
--

CREATE TABLE `tb_pemusnahan` (
  `id_pemusnahan` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `no_surat` int(30) DEFAULT NULL,
  `tahun_anggaran` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruangan`
--

CREATE TABLE `tb_ruangan` (
  `id_ruangan` int(5) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ruangan`
--

INSERT INTO `tb_ruangan` (`id_ruangan`, `nama_ruangan`) VALUES
(1, 'Kepala UPPD Pelaihari'),
(2, 'Kepala Sub Bagian Tata Usaha'),
(3, 'Bendahara Pengeluaran Pembantu'),
(4, 'Pengelola Pemanfaatan Barang Milik Daerah'),
(5, 'Staff Tata Usaha'),
(6, 'Kepala Seksi Pendapatan Lainnya'),
(7, 'Staff Seksi Pendapatan Lainnya'),
(8, 'Arsip Berkas Kepolisian'),
(9, 'Rapat'),
(10, 'Musholla Pegawai'),
(11, 'Kamar Mandi/WC Pegawai'),
(12, 'Kepala Seksi PKB & BBNKB'),
(13, 'Staf Seksi PKB & BBNKB II'),
(14, 'Staf Seksi PKB & BBNKB II'),
(15, 'Master'),
(16, 'Administrasi Pajak PKB & BBNKB'),
(17, 'Kasir'),
(18, 'Bendahara Penerimaan Pembantu'),
(19, 'Penerimaan SP3 Dealer'),
(20, 'Kanit Regident SAMSAT Pelaihari'),
(21, 'Gudang Material'),
(22, 'Pelayanan Wajib Pajak PKB & BBNKB'),
(23, 'Lansia'),
(24, 'Bermain Anak dan Laktasi'),
(25, 'Jasa Raharja'),
(26, 'Kamar Mandi/WC Pegawai'),
(27, 'Kamar Mandi/ WC Wajib Pajak'),
(28, 'Cek Layanan Fisik'),
(29, 'Workshop TNKB'),
(30, 'Musholla'),
(31, 'Rumah Dinas I'),
(32, 'Rumah Dinas II'),
(33, 'Staf Seksi PKB & BBNKB'),
(34, 'Staf Seksi PKB & BBNKB (Pengadministrasi Pajak)'),
(35, 'Kasir'),
(36, 'Arsip Berkas Kepolisian'),
(37, 'Pelayanan Wajib Pajak PKB & BBNKB'),
(38, 'Gudang'),
(39, 'Kamar Mandi/WC'),
(40, 'Mobil SAMSAT Keliling 1 (DA 7021 PM)'),
(41, 'Mobil SAMSAT Keliling 2 (DA 136 LB)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_instansi`
--
ALTER TABLE `tb_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tb_inventaris`
--
ALTER TABLE `tb_inventaris`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_inventariskeluar`
--
ALTER TABLE `tb_inventariskeluar`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tb_mutasikeluar`
--
ALTER TABLE `tb_mutasikeluar`
  ADD PRIMARY KEY (`id_barangkeluar`);

--
-- Indexes for table `tb_mutasimasuk`
--
ALTER TABLE `tb_mutasimasuk`
  ADD PRIMARY KEY (`id_barangmasuk`);

--
-- Indexes for table `tb_pemusnahan`
--
ALTER TABLE `tb_pemusnahan`
  ADD PRIMARY KEY (`id_pemusnahan`);

--
-- Indexes for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_instansi`
--
ALTER TABLE `tb_instansi`
  MODIFY `id_instansi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_mutasikeluar`
--
ALTER TABLE `tb_mutasikeluar`
  MODIFY `id_barangkeluar` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_mutasimasuk`
--
ALTER TABLE `tb_mutasimasuk`
  MODIFY `id_barangmasuk` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pemusnahan`
--
ALTER TABLE `tb_pemusnahan`
  MODIFY `id_pemusnahan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  MODIFY `id_ruangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;