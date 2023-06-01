-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 03:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sendlogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `idAkun` int(11) NOT NULL,
  `namaAkun` varchar(225) NOT NULL,
  `password` varchar(100) NOT NULL,
  `namaDepan` varchar(100) NOT NULL,
  `namaBlkg` varchar(100) NOT NULL,
  `jenisKelamin` varchar(20) NOT NULL,
  `noHP` int(15) NOT NULL,
  `email` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`idAkun`, `namaAkun`, `password`, `namaDepan`, `namaBlkg`, `jenisKelamin`, `noHP`, `email`, `alamat`) VALUES
(1, 'user\r\n', '123456', 'Bryan', 'Arthur', 'Male', 812031203, 'banana@gmail.com', 'jagakarsa');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` int(11) NOT NULL,
  `namaBarang` varchar(225) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `berat(KG)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `kategori`, `jumlah`, `berat(KG)`) VALUES
(1, 'Jaket', 'pakaian', 10, 1000),
(6, 'baju', 'pakaian', 10, 1),
(8, 'Baju', 'pakaian', 10, 1),
(9, 'Baju', 'pakaian', 1000, 10),
(16, 'Switer', 'pakaian', 10, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idKategori` int(11) NOT NULL,
  `namaKategori` varchar(50) NOT NULL,
  `hargaKategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idKategori`, `namaKategori`, `hargaKategori`) VALUES
(1, 'Pakaian', 4500),
(2, 'Perhiasan', 9000),
(3, 'Surat', 13500),
(4, 'Perlengkapan', 18000),
(5, 'Kendaraan', 22500),
(6, 'Makanan', 27000);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `idKota` int(11) NOT NULL,
  `namaKota` varchar(225) NOT NULL,
  `kodePos` int(11) NOT NULL,
  `jarak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`idKota`, `namaKota`, `kodePos`, `jarak`) VALUES
(1, 'Banda Aceh', 23242, 14),
(2, 'Medan', 20152, 20),
(3, 'Palembang', 30121, 18),
(4, 'Padang', 25129, 16),
(5, 'Bengkulu', 38225, 16),
(6, 'Pekanbaru', 28121, 19),
(7, 'Tanjung Pinang', 29124, 20),
(8, 'Jambi', 36128, 15),
(9, 'Lampung', 35221, 14),
(10, 'Pangkal Pinang', 33684, 17),
(11, 'Samarinda', 75242, 22),
(12, 'Pontianak', 78112, 20),
(13, 'Palangkaraya', 74874, 16),
(14, 'Banjarbaru', 70114, 17),
(15, 'Tanjung Selor', 77212, 20),
(16, 'Jakarta', 10110, 19),
(17, 'Serang', 42111, 14),
(18, 'Bandung', 40115, 18),
(19, 'Semarang', 50249, 17),
(20, 'Yogyakarta', 55213, 16),
(21, 'Surabaya', 60174, 19),
(22, 'Denpasar', 80234, 20),
(23, 'Mataram', 83122, 22),
(24, 'Kupang', 85111, 20),
(25, 'Manado', 95117, 21),
(26, 'Mamuju', 91512, 19),
(27, 'Palu', 94118, 19),
(28, 'Gorontalo', 96135, 20),
(29, 'Kendari', 93231, 21),
(30, 'Makassar', 90231, 20),
(31, 'Sofifi', 97827, 22),
(32, 'Ambon', 97129, 23),
(33, 'Manokwari', 98313, 30),
(34, 'Jayapura', 99313, 33),
(35, 'Merauke', 99615, 29),
(36, 'Nabire', 98811, 27),
(37, 'Jayawijaya', 99511, 30);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `FK_ID_Akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idPembayaran` int(11) NOT NULL,
  `berat(KG)` int(11) NOT NULL,
  `hargaBerat` int(11) NOT NULL,
  `biayaKirim` int(11) NOT NULL,
  `totalHarga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `idPenerima` int(20) NOT NULL,
  `namaPenerima` varchar(55) NOT NULL,
  `noTelpPenerima` varchar(15) NOT NULL,
  `alamatPenerima` varchar(255) NOT NULL,
  `kotaPenerima` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerima`
--

INSERT INTO `penerima` (`idPenerima`, `namaPenerima`, `noTelpPenerima`, `alamatPenerima`, `kotaPenerima`) VALUES
(13, 'asd', '345343', 'jauh', 'Bandung'),
(14, 'Leon', '8128129', 'PAlmerah', 'Bengkulu'),
(15, 'Julius', '829129', 'Bekasi', 'Pekanbaru'),
(16, 'ahigdsaj', '121172813', 'haudshu', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `pengirim`
--

CREATE TABLE `pengirim` (
  `idPengirim` int(20) NOT NULL,
  `namaPengirim` varchar(55) NOT NULL,
  `noTelpPengirim` varchar(15) NOT NULL,
  `alamatPengirim` varchar(200) NOT NULL,
  `kotaPengirim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengirim`
--

INSERT INTO `pengirim` (`idPengirim`, `namaPengirim`, `noTelpPengirim`, `alamatPengirim`, `kotaPengirim`) VALUES
(13, 'asd', '012930', 'asd', 'Banda Aceh'),
(14, 'Bryan', '8281812', 'Jauh', 'Medan'),
(15, 'Leon', '818181', 'jauh', 'Palembang'),
(16, 'asdsa', '82', 'ashdksaj', 'Palembang');

-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE `rute` (
  `idRute` int(11) NOT NULL,
  `ruteAwal` varchar(225) NOT NULL,
  `ruteAkhir` varchar(225) NOT NULL,
  `biayaKirim` int(11) NOT NULL,
  `FK_ID_Kota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rute1`
--

CREATE TABLE `rute1` (
  `idrute1` int(8) NOT NULL,
  `kotaasal` varchar(225) NOT NULL,
  `kotatujuan` varchar(225) NOT NULL,
  `jarak` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rute1`
--

INSERT INTO `rute1` (`idrute1`, `kotaasal`, `kotatujuan`, `jarak`) VALUES
(2001, 'Banda Aceh', 'Medan', '10'),
(2002, 'Banda Aceh', 'Padang', '47'),
(2003, 'Banda Aceh', 'Pekanbaru', '45'),
(2004, 'Medan', 'Padang', '35'),
(2005, 'Medan', 'Pekanbaru', '32'),
(2006, 'Padang', 'Pekanbaru', '6'),
(2007, 'Padang', 'Jambi', '10'),
(2008, 'Padang', 'Bengkulu', '12'),
(2009, 'Padang', 'Palembang', '22'),
(2010, 'Pekanbaru', 'Jambi', '7'),
(2011, 'Pekanbaru', 'Bengkulu', '11'),
(2012, 'Pekanbaru', 'Palembang', '17'),
(2013, 'Pekanbaru', 'Pangkal Pinang', '36'),
(2014, 'Jambi', 'Palembang', '16'),
(2015, 'Jambi', 'Bengkulu', '13'),
(2016, 'Jambi', 'Pangkal Pinang', '15'),
(2017, 'Jambi', 'Lampung', '29'),
(2018, 'Bengkulu', 'Palembang', '8'),
(2019, 'Bengkulu', 'Lampung', '19'),
(2020, 'Bengkulu', 'Pangkal Pinang', '26'),
(2021, 'Pangkal Pinang', 'Palembang', '17'),
(2022, 'Pangkal Pinang', 'Lampung', '19'),
(2023, 'Palembang', 'Lampung', '8'),
(2024, 'Lampung', 'Serang', '18'),
(2025, 'Lampung', 'Jakarta', '16'),
(2026, 'Pangkal Pinang', 'Serang', '10'),
(2027, 'Pangkal Pinang', 'Jakarta', '10'),
(2028, 'Serang', 'Jakarta', '3'),
(2029, 'Serang', 'Bandung', '5'),
(2030, 'Jakarta', 'Bandung', '6'),
(2031, 'Jakarta', 'Semarang', '13'),
(2032, 'Bandung', 'Semarang', '7'),
(2033, 'Bandung', 'Yogyakarta', '15'),
(2034, 'Bandung', 'Surabaya', '19'),
(2035, 'Semarang', 'Yogyakarta', '3'),
(2036, 'Semarang', 'Surabaya', '6'),
(2037, 'Yogyakarta', 'Surabaya', '4'),
(2038, 'Surabaya', 'Denpasar', '14'),
(2039, 'Denpasar', 'Mataram', '11'),
(2040, 'Mataram', 'Kupang', '16'),
(2041, 'Tanjung Pinang', 'Medan', '63'),
(2042, 'Tanjung Pinang', 'Pekanbaru', '60'),
(2043, 'Tanjung Pinang', 'Jambi', '61'),
(2044, 'Tanjung Pinang', 'Pangkal Pinang', '51'),
(2045, 'Tanjung Pinang', 'Pontianak', '45'),
(2046, 'Tanjung Pinang', 'Tanjung Selor', '52'),
(2047, 'Pangkal Pinang', 'Pontianak', '38'),
(2048, 'Pangkal Pinang', 'Palangkaraya', '46'),
(2049, 'Jakarta', 'Pontianak', '57'),
(2050, 'Jakarta', 'Palangkaraya', '52'),
(2051, 'Jakarta', 'Banjarbaru', '59'),
(2052, 'Surabaya', 'Pontianak', '57'),
(2053, 'Surabaya', 'Palangkaraya', '51'),
(2054, 'Surabaya', 'Banjarbaru', '47'),
(2055, 'Denpasar', 'Banjarbaru', '38'),
(2056, 'Denpasar', 'Makassar', '48'),
(2057, 'Pontianak', 'Banjarbaru', '17'),
(2058, 'Pontianak', 'Palangkaraya', '8'),
(2059, 'Pontianak', 'Tanjung Selor', '19'),
(2060, 'Pontianak', 'Samarinda', '21'),
(2061, 'Tanjung Selor', 'Samarinda', '17'),
(2062, 'Tanjung Selor', 'Palangkaraya', '34'),
(2063, 'Tanjung Selor', 'Banjarbaru', '36'),
(2064, 'Palangkaraya', 'Samarinda', '19'),
(2065, 'Palangkaraya', 'Banjarbaru', '14'),
(2066, 'Mamuju', 'Tanjung Selor', '30'),
(2067, 'Mamuju', 'Samarinda', '27'),
(2068, 'Mamuju', 'Banjarbaru', '23'),
(2069, 'Mamuju', 'Makassar', '9'),
(2070, 'Mamuju', 'Palu', '11'),
(2071, 'Mamuju', 'Gorontalo', '20'),
(2072, 'Kupang', 'Makassar', '21'),
(2073, 'Kupang', 'Kendari', '23'),
(2074, 'Palu', 'Makassar', '12'),
(2075, 'Palu', 'Kendari', '9'),
(2076, 'Palu', 'Gorontalo', '8'),
(2077, 'Palu', 'Manado', '16'),
(2078, 'Makassar', 'Kendari', '6'),
(2079, 'Manado', 'Gorontalo', '9'),
(2080, 'Manado', 'Kendari', '24'),
(2081, 'Kendari', 'Ambon', '46'),
(2082, 'Kendari', 'Sofifi', '50'),
(2083, 'Manado', 'Sofifi', '16'),
(2084, 'Manado', 'Ambon', '29'),
(2085, 'Kupang', 'Ambon', '51'),
(2086, 'Sofifi', 'Ambon', '27'),
(2087, 'Sofifi', 'Manokwari', '24'),
(2088, 'Ambon', 'Manokwari', '21'),
(2089, 'Ambon', 'Nabire', '43'),
(2090, 'Manokwari', 'Nabire', '19'),
(2091, 'Manokwari', 'Jayapura', '25'),
(2092, 'Jayapura', 'Nabire', '12'),
(2093, 'Jayapura', 'Wamena', '7'),
(2094, 'Jayapura', 'Merauke', '19'),
(2095, 'Nabire', 'Wamena', '10'),
(2096, 'Nabire', 'Merauke', '15'),
(2097, 'Wamena', 'Merauke', '11'),
(2098, 'Banda Aceh', 'Medan', '10'),
(2099, 'Banda Aceh', 'Padang', '47'),
(2100, 'Banda Aceh', 'Pekanbaru', '45'),
(2101, 'Medan', 'Padang', '35'),
(2102, 'Medan', 'Pekanbaru', '32'),
(2103, 'Padang', 'Pekanbaru', '6'),
(2104, 'Padang', 'Jambi', '10'),
(2105, 'Padang', 'Bengkulu', '12'),
(2106, 'Padang', 'Palembang', '22'),
(2107, 'Pekanbaru', 'Jambi', '7'),
(2108, 'Pekanbaru', 'Bengkulu', '11'),
(2109, 'Pekanbaru', 'Palembang', '17'),
(2110, 'Pekanbaru', 'Pangkal Pinang', '36'),
(2111, 'Jambi', 'Palembang', '16'),
(2112, 'Jambi', 'Bengkulu', '13'),
(2113, 'Jambi', 'Pangkal Pinang', '15'),
(2114, 'Jambi', 'Lampung', '29'),
(2115, 'Bengkulu', 'Palembang', '8'),
(2116, 'Bengkulu', 'Lampung', '19'),
(2117, 'Bengkulu', 'Pangkal Pinang', '26'),
(2118, 'Pangkal Pinang', 'Palembang', '17'),
(2119, 'Pangkal Pinang', 'Lampung', '19'),
(2120, 'Palembang', 'Lampung', '8'),
(2121, 'Lampung', 'Serang', '18'),
(2122, 'Lampung', 'Jakarta', '16'),
(2123, 'Pangkal Pinang', 'Serang', '10'),
(2124, 'Pangkal Pinang', 'Jakarta', '10'),
(2125, 'Serang', 'Jakarta', '3'),
(2126, 'Serang', 'Bandung', '5'),
(2127, 'Jakarta', 'Bandung', '6'),
(2128, 'Jakarta', 'Semarang', '13'),
(2129, 'Bandung', 'Semarang', '7'),
(2130, 'Bandung', 'Yogyakarta', '15'),
(2131, 'Bandung', 'Surabaya', '19'),
(2132, 'Semarang', 'Yogyakarta', '3'),
(2133, 'Semarang', 'Surabaya', '6'),
(2134, 'Yogyakarta', 'Surabaya', '4'),
(2135, 'Surabaya', 'Denpasar', '14'),
(2136, 'Denpasar', 'Mataram', '11'),
(2137, 'Mataram', 'Kupang', '16'),
(2138, 'Tanjung Pinang', 'Medan', '63'),
(2139, 'Tanjung Pinang', 'Pekanbaru', '60'),
(2140, 'Tanjung Pinang', 'Jambi', '61'),
(2141, 'Tanjung Pinang', 'Pangkal Pinang', '51'),
(2142, 'Tanjung Pinang', 'Pontianak', '45'),
(2143, 'Tanjung Pinang', 'Tanjung Selor', '52'),
(2144, 'Pangkal Pinang', 'Pontianak', '38'),
(2145, 'Pangkal Pinang', 'Palangkaraya', '46'),
(2146, 'Jakarta', 'Pontianak', '57'),
(2147, 'Jakarta', 'Palangkaraya', '52'),
(2148, 'Jakarta', 'Banjarbaru', '59'),
(2149, 'Surabaya', 'Pontianak', '57'),
(2150, 'Surabaya', 'Palangkaraya', '51'),
(2151, 'Surabaya', 'Banjarbaru', '47'),
(2152, 'Denpasar', 'Banjarbaru', '38'),
(2153, 'Denpasar', 'Makassar', '48'),
(2154, 'Pontianak', 'Banjarbaru', '17'),
(2155, 'Pontianak', 'Palangkaraya', '8'),
(2156, 'Pontianak', 'Tanjung Selor', '19'),
(2157, 'Pontianak', 'Samarinda', '21'),
(2158, 'Tanjung Selor', 'Samarinda', '17'),
(2159, 'Tanjung Selor', 'Palangkaraya', '34'),
(2160, 'Tanjung Selor', 'Banjarbaru', '36'),
(2161, 'Palangkaraya', 'Samarinda', '19'),
(2162, 'Palangkaraya', 'Banjarbaru', '14'),
(2163, 'Mamuju', 'Tanjung Selor', '30'),
(2164, 'Mamuju', 'Samarinda', '27'),
(2165, 'Mamuju', 'Banjarbaru', '23'),
(2166, 'Mamuju', 'Makassar', '9'),
(2167, 'Mamuju', 'Palu', '11'),
(2168, 'Mamuju', 'Gorontalo', '20'),
(2169, 'Kupang', 'Makassar', '21'),
(2170, 'Kupang', 'Kendari', '23'),
(2171, 'Palu', 'Makassar', '12'),
(2172, 'Palu', 'Kendari', '9'),
(2173, 'Palu', 'Gorontalo', '8'),
(2174, 'Palu', 'Manado', '16'),
(2175, 'Makassar', 'Kendari', '6'),
(2176, 'Manado', 'Gorontalo', '9'),
(2177, 'Manado', 'Kendari', '24'),
(2178, 'Kendari', 'Ambon', '46'),
(2179, 'Kendari', 'Sofifi', '50'),
(2180, 'Manado', 'Sofifi', '16'),
(2181, 'Manado', 'Ambon', '29'),
(2182, 'Kupang', 'Ambon', '51'),
(2183, 'Sofifi', 'Ambon', '27'),
(2184, 'Sofifi', 'Manokwari', '24'),
(2185, 'Ambon', 'Manokwari', '21'),
(2186, 'Ambon', 'Nabire', '43'),
(2187, 'Manokwari', 'Nabire', '19'),
(2188, 'Manokwari', 'Jayapura', '25'),
(2189, 'Jayapura', 'Nabire', '12'),
(2190, 'Jayapura', 'Wamena', '7'),
(2191, 'Jayapura', 'Merauke', '19'),
(2192, 'Nabire', 'Wamena', '10'),
(2193, 'Nabire', 'Merauke', '15'),
(2194, 'Wamena', 'Merauke', '11'),
(2195, 'Medan', 'Banda Aceh', '10'),
(2196, 'Padang', 'Banda Aceh', '47'),
(2197, 'Pekanbaru', 'Banda Aceh', '45'),
(2198, 'Padang', 'Medan', '35'),
(2199, 'Pekanbaru', 'Medan', '32'),
(2200, 'Pekanbaru', 'Padang', '6'),
(2201, 'Jambi', 'Padang', '10'),
(2202, 'Bengkulu', 'Padang', '12'),
(2203, 'Palembang', 'Padang', '22'),
(2204, 'Jambi', 'Pekanbaru', '7'),
(2205, 'Bengkulu', 'Pekanbaru', '11'),
(2206, 'Palembang', 'Pekanbaru', '17'),
(2207, 'Pangkal Pinang', 'Pekanbaru', '36'),
(2208, 'Palembang', 'Jambi', '16'),
(2209, 'Bengkulu', 'Jambi', '13'),
(2210, 'Pangkal Pinang', 'Jambi', '15'),
(2211, 'Lampung', 'Jambi', '29'),
(2212, 'Palembang', 'Bengkulu', '8'),
(2213, 'Lampung', 'Bengkulu', '19'),
(2214, 'Pangkal Pinang', 'Bengkulu', '26'),
(2215, 'Palembang', 'Pangkal Pinang', '17'),
(2216, 'Lampung', 'Pangkal Pinang', '19'),
(2217, 'Lampung', 'Palembang', '8'),
(2218, 'Serang', 'Lampung', '18'),
(2219, 'Jakarta', 'Lampung', '16'),
(2220, 'Serang', 'Pangkal Pinang', '10'),
(2221, 'Jakarta', 'Pangkal Pinang', '10'),
(2222, 'Jakarta', 'Serang', '3'),
(2223, 'Bandung', 'Serang', '5'),
(2224, 'Bandung', 'Jakarta', '6'),
(2225, 'Semarang', 'Jakarta', '13'),
(2226, 'Semarang', 'Bandung', '7'),
(2227, 'Yogyakarta', 'Bandung', '15'),
(2228, 'Surabaya', 'Bandung', '19'),
(2229, 'Yogyakarta', 'Semarang', '3'),
(2230, 'Surabaya', 'Semarang', '6'),
(2231, 'Surabaya', 'Yogyakarta', '4'),
(2232, 'Denpasar', 'Surabaya', '14'),
(2233, 'Mataram', 'Denpasar', '11'),
(2234, 'Kupang', 'Mataram', '16'),
(2235, 'Medan', 'Tanjung Pinang', '63'),
(2236, 'Pekanbaru', 'Tanjung Pinang', '60'),
(2237, 'Jambi', 'Tanjung Pinang', '61'),
(2238, 'Pangkal Pinang', 'Tanjung Pinang', '51'),
(2239, 'Pontianak', 'Tanjung Pinang', '45'),
(2240, 'Tanjung Selor', 'Tanjung Pinang', '52'),
(2241, 'Pontianak', 'Pangkal Pinang', '38'),
(2242, 'Palangkaraya', 'Pangkal Pinang', '46'),
(2243, 'Pontianak', 'Jakarta', '57'),
(2244, 'Palangkaraya', 'Jakarta', '52'),
(2245, 'Banjarbaru', 'Jakarta', '59'),
(2246, 'Pontianak', 'Surabaya', '57'),
(2247, 'Palangkaraya', 'Surabaya', '51'),
(2248, 'Banjarbaru', 'Surabaya', '47'),
(2249, 'Banjarbaru', 'Denpasar', '38'),
(2250, 'Makassar', 'Denpasar', '48'),
(2251, 'Banjarbaru', 'Pontianak', '17'),
(2252, 'Palangkaraya', 'Pontianak', '8'),
(2253, 'Tanjung Selor', 'Pontianak', '19'),
(2254, 'Samarinda', 'Pontianak', '21'),
(2255, 'Samarinda', 'Tanjung Selor', '17'),
(2256, 'Palangkaraya', 'Tanjung Selor', '34'),
(2257, 'Banjarbaru', 'Tanjung Selor', '36'),
(2258, 'Samarinda', 'Palangkaraya', '19'),
(2259, 'Banjarbaru', 'Palangkaraya', '14'),
(2260, 'Tanjung Selor', 'Mamuju', '30'),
(2261, 'Samarinda', 'Mamuju', '27'),
(2262, 'Banjarbaru', 'Mamuju', '23'),
(2263, 'Makassar', 'Mamuju', '9'),
(2264, 'Palu', 'Mamuju', '11'),
(2265, 'Gorontalo', 'Mamuju', '20'),
(2266, 'Makassar', 'Kupang', '21'),
(2267, 'Kendari', 'Kupang', '23'),
(2268, 'Makassar', 'Palu', '12'),
(2269, 'Kendari', 'Palu', '9'),
(2270, 'Gorontalo', 'Palu', '8'),
(2271, 'Manado', 'Palu', '16'),
(2272, 'Kendari', 'Makassar', '6'),
(2273, 'Gorontalo', 'Manado', '9'),
(2274, 'Kendari', 'Manado', '24'),
(2275, 'Ambon', 'Kendari', '46'),
(2276, 'Sofifi', 'Kendari', '50'),
(2277, 'Sofifi', 'Manado', '16'),
(2278, 'Ambon', 'Manado', '29'),
(2279, 'Ambon', 'Kupang', '51'),
(2280, 'Ambon', 'Sofifi', '27'),
(2281, 'Manokwari', 'Sofifi', '24'),
(2282, 'Manokwari', 'Ambon', '21'),
(2283, 'Nabire', 'Ambon', '43'),
(2284, 'Nabire', 'Manokwari', '19'),
(2285, 'Jayapura', 'Manokwari', '25'),
(2286, 'Nabire', 'Jayapura', '12'),
(2287, 'Wamena', 'Jayapura', '7'),
(2288, 'Merauke', 'Jayapura', '19'),
(2289, 'Wamena', 'Nabire', '10'),
(2290, 'Merauke', 'Nabire', '15'),
(2291, 'Merauke', 'Wamena', '11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`idAkun`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `namaAkun` (`namaAkun`),
  ADD UNIQUE KEY `namaAkun_2` (`namaAkun`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`idKota`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ID_Akun` (`FK_ID_Akun`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idPembayaran`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`idPenerima`);

--
-- Indexes for table `pengirim`
--
ALTER TABLE `pengirim`
  ADD PRIMARY KEY (`idPengirim`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`idRute`),
  ADD KEY `FK_ID_Kota` (`FK_ID_Kota`);

--
-- Indexes for table `rute1`
--
ALTER TABLE `rute1`
  ADD PRIMARY KEY (`idrute1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `idAkun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idKategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `idKota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idPembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
  MODIFY `idPenerima` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pengirim`
--
ALTER TABLE `pengirim`
  MODIFY `idPengirim` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rute`
--
ALTER TABLE `rute`
  MODIFY `idRute` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rute1`
--
ALTER TABLE `rute1`
  MODIFY `idrute1` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2292;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `FK_ID_Akun` FOREIGN KEY (`FK_ID_Akun`) REFERENCES `akun` (`idAkun`);

--
-- Constraints for table `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `FK_ID_Kota` FOREIGN KEY (`FK_ID_Kota`) REFERENCES `rute` (`idRute`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
