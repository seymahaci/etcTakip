-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2024 at 09:55 PM
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
(70000, '2023-01-01', 'gelir_di', 0, 'ödendi');

-- --------------------------------------------------------

--
-- Table structure for table `egitim_egitmen_id`
--

CREATE TABLE `egitim_egitmen_id` (
  `id` int(11) NOT NULL,
  `egitim_id` int(11) NOT NULL,
  `egitmen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `egitim_etc`
--

CREATE TABLE `egitim_etc` (
  `id` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `donem` varchar(25) NOT NULL,
  `price` float NOT NULL,
  `egprice` int(11) NOT NULL,
  `baslama_tarihi` date NOT NULL,
  `bitis_tarihi` date NOT NULL,
  `kurs_suresi_ay` int(11) NOT NULL,
  `kurs_saati` int(11) NOT NULL,
  `aktif` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `egitim_etc`
--

INSERT INTO `egitim_etc` (`id`, `kind`, `donem`, `price`, `egprice`, `baslama_tarihi`, `bitis_tarihi`, `kurs_suresi_ay`, `kurs_saati`, `aktif`) VALUES
(10000, 'Default', '0', 0, 0, '2023-01-01', '2023-01-01', 0, 0, 'inaktif');

-- --------------------------------------------------------

--
-- Table structure for table `egitim_ogrenci_id`
--

CREATE TABLE `egitim_ogrenci_id` (
  `id` int(11) NOT NULL,
  `ogrenci_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(30000, 'Default', '00000000000', '-', '0', '-', '-', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `odeme_diger`
--

CREATE TABLE `odeme_diger` (
  `odeme_id` int(11) NOT NULL,
  `adi` varchar(50) NOT NULL,
  `iban` varchar(40) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `odeme_diger`
--

INSERT INTO `odeme_diger` (`odeme_id`, `adi`, `iban`, `reason`) VALUES
(90000, 'Default', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `odeme_egitim_id`
--

CREATE TABLE `odeme_egitim_id` (
  `id` int(11) NOT NULL,
  `odeme_id` int(11) NOT NULL,
  `taraf_id` int(11) NOT NULL,
  `egitim_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(50000, 'Default', '00000000000', '-', '-');

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
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`),
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
-- Indexes for table `odeme_diger`
--
ALTER TABLE `odeme_diger`
  ADD PRIMARY KEY (`odeme_id`);

--
-- Indexes for table `odeme_egitim_id`
--
ALTER TABLE `odeme_egitim_id`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70001;

--
-- AUTO_INCREMENT for table `egitim_egitmen_id`
--
ALTER TABLE `egitim_egitmen_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `egitim_etc`
--
ALTER TABLE `egitim_etc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT for table `egitim_ogrenci_id`
--
ALTER TABLE `egitim_ogrenci_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `egitmen_etc`
--
ALTER TABLE `egitmen_etc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30001;

--
-- AUTO_INCREMENT for table `odeme_diger`
--
ALTER TABLE `odeme_diger`
  MODIFY `odeme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90001;

--
-- AUTO_INCREMENT for table `odeme_egitim_id`
--
ALTER TABLE `odeme_egitim_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogrenci_etc`
--
ALTER TABLE `ogrenci_etc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50001;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
