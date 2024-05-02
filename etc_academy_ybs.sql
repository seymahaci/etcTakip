-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2024 at 09:06 PM
-- Server version: 11.3.2-MariaDB
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etc_academy_ybs`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type_in_out` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `tick` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `date`, `type_in_out`, `amount`, `tick`) VALUES
(59, '2025-04-17', 'gider_eg', 12800, 'ödenmedi'),
(60, '2025-05-17', 'gider_eg', 12800, 'ödenmedi'),
(61, '2025-06-17', 'gider_eg', 12800, 'ödenmedi'),
(62, '2024-12-17', 'gider_eg', 14400, 'ödenmedi'),
(63, '2025-01-17', 'gider_eg', 14400, 'ödenmedi'),
(64, '2025-02-17', 'gider_eg', 14400, 'ödenmedi'),
(68, '2024-05-02', 'gelir_eg', 7800, 'ödenmedi'),
(69, '2024-05-02', 'gelir_eg', 1560, 'ödenmedi'),
(70, '2024-06-02', 'gelir_eg', 1560, 'ödenmedi'),
(71, '2024-07-02', 'gelir_eg', 1560, 'ödenmedi'),
(72, '2024-08-02', 'gelir_eg', 1560, 'ödenmedi'),
(73, '2024-09-02', 'gelir_eg', 1560, 'ödenmedi');

-- --------------------------------------------------------

--
-- Table structure for table `egitim_egitmen_id`
--

CREATE TABLE `egitim_egitmen_id` (
  `egitim_id` int(11) NOT NULL,
  `egitmen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egitim_egitmen_id`
--

INSERT INTO `egitim_egitmen_id` (`egitim_id`, `egitmen_id`) VALUES
(18, 23455),
(19, 23457);

-- --------------------------------------------------------

--
-- Table structure for table `egitim_etc`
--

CREATE TABLE `egitim_etc` (
  `id` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `donem` varchar(25) NOT NULL,
  `price` float NOT NULL,
  `baslama_tarihi` date NOT NULL,
  `bitis_tarihi` date NOT NULL,
  `kurs_suresi_ay` int(11) NOT NULL,
  `kurs_saati` int(11) NOT NULL,
  `aktif` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egitim_etc`
--

INSERT INTO `egitim_etc` (`id`, `kind`, `donem`, `price`, `baslama_tarihi`, `bitis_tarihi`, `kurs_suresi_ay`, `kurs_saati`, `aktif`) VALUES
(18, 'IELTS', '1', 7800, '2025-03-01', '2025-06-01', 3, 48, 'aktif'),
(19, 'IELTS', '2', 12340, '2024-11-04', '2025-02-04', 3, 48, 'inaktif');

-- --------------------------------------------------------

--
-- Table structure for table `egitim_ogrenci_id`
--

CREATE TABLE `egitim_ogrenci_id` (
  `ogrenci_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egitim_ogrenci_id`
--

INSERT INTO `egitim_ogrenci_id` (`ogrenci_id`, `course_id`) VALUES
(4, 18),
(5, 18),
(6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `egitmen_etc`
--

CREATE TABLE `egitmen_etc` (
  `id` int(11) NOT NULL,
  `adi` varchar(50) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `iban` varchar(30) NOT NULL,
  `dersler` text NOT NULL,
  `notes` text NOT NULL,
  `musait` varchar(11) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egitmen_etc`
--

INSERT INTO `egitmen_etc` (`id`, `adi`, `telefon`, `mail`, `iban`, `dersler`, `notes`, `musait`) VALUES
(23455, 'Cenk Takım', '5319329984', 'cenkcimtkm@gml.com', 'TR6366666666666663', 'YDS, YÖKDİL', 'yok', 'yes'),
(23456, 'Şeyma Haci', '5449523568', 'seyruhaci@gmail.com', 'TR61 6666 6666 66666 66666 66', 'YDS, Genel İngilizce', '-', 'yes'),
(23457, 'Abdullah Yıldız', '5444444444', 'abdullah@gmail.com', 'TR45 4444 4444 4444 4444 44', 'YDS, Genel İngilizce', 'yok', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `odeme_diger`
--

CREATE TABLE `odeme_diger` (
  `odeme_id` varchar(11) NOT NULL,
  `adi` varchar(50) NOT NULL,
  `iban` varchar(40) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `odeme_egitim_id`
--

CREATE TABLE `odeme_egitim_id` (
  `odeme_id` int(11) NOT NULL,
  `taraf_id` int(11) NOT NULL,
  `egitim_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `odeme_egitim_id`
--

INSERT INTO `odeme_egitim_id` (`odeme_id`, `taraf_id`, `egitim_id`) VALUES
(59, 23455, 18),
(60, 23455, 18),
(61, 23455, 18),
(62, 23457, 19),
(63, 23457, 19),
(64, 23457, 19),
(68, 5, 18),
(69, 6, 18),
(70, 6, 18),
(71, 6, 18),
(72, 6, 18),
(73, 6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ogrenci_etc`
--

CREATE TABLE `ogrenci_etc` (
  `id` int(11) NOT NULL,
  `adi` varchar(50) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ogrenci_etc`
--

INSERT INTO `ogrenci_etc` (`id`, `adi`, `telefon`, `mail`, `text`) VALUES
(4, 'Şeyma Haci', '7656545454', 'seyru@mgsdf.com', ''),
(5, 'Seymaningo dırırı', '2343454545', 'sdadd@fsad.com', ''),
(6, 'guana hrers', '987 567 56 56', 'srjfd@hm.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `egitim_egitmen_id`
--
ALTER TABLE `egitim_egitmen_id`
  ADD KEY `egitim_id` (`egitim_id`),
  ADD KEY `egitmen_id` (`egitmen_id`);

--
-- Indexes for table `egitim_etc`
--
ALTER TABLE `egitim_etc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `egitim_ogrenci_id`
--
ALTER TABLE `egitim_ogrenci_id`
  ADD KEY `id` (`course_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `ogrenci_id` (`ogrenci_id`);

--
-- Indexes for table `egitmen_etc`
--
ALTER TABLE `egitmen_etc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `odeme_egitim_id`
--
ALTER TABLE `odeme_egitim_id`
  ADD KEY `odeme_id` (`odeme_id`),
  ADD KEY `egitmen_id` (`taraf_id`),
  ADD KEY `egitim_id` (`egitim_id`);

--
-- Indexes for table `ogrenci_etc`
--
ALTER TABLE `ogrenci_etc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `egitim_etc`
--
ALTER TABLE `egitim_etc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `egitmen_etc`
--
ALTER TABLE `egitmen_etc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23458;

--
-- AUTO_INCREMENT for table `ogrenci_etc`
--
ALTER TABLE `ogrenci_etc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
