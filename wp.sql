-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2021 pada 12.31
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(5) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
(1, 'M.RIZQY CAHYO'),
(2, 'JOSHUA BRYAN'),
(3, 'DERRY FEBRIAN'),
(4, 'M. FAJAR SATRIA'),
(5, 'CHARAN ANAMI WIJAYA'),
(6, 'RIKI AHMAD'),
(7, 'DENDY PURNAMA'),
(8, 'LEMUEL CHORESI'),
(9, 'FATTAN KAEELA'),
(10, 'BAMBANG ARIE R'),
(11, 'BILLY DACHRIS'),
(12, 'ADHARA MUSYAFFA BILAL'),
(13, 'ANDRA DWIPUTRA'),
(14, 'RADITYA WIRYA'),
(15, 'M.RIZQY '),
(16, 'M.SUFFI'),
(17, 'PARWAZ S'),
(18, 'RAINER'),
(19, 'M.ANDIKA TANSA'),
(20, 'M.ILHAM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` decimal(11,11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 1, '0.05818669300'),
(2, 2, '0.05541756500'),
(3, 3, '0.05012866600'),
(4, 4, '0.06124523900'),
(5, 5, '0.06079333100'),
(6, 6, '0.05821152100'),
(7, 7, '0.05459249000'),
(8, 8, '0.04963097500'),
(9, 9, '0.04585613400'),
(10, 10, '0.03660273300'),
(11, 11, '0.05974919400'),
(12, 12, '0.05098075000'),
(13, 13, '0.04623430100'),
(14, 14, '0.04309744900'),
(15, 15, '0.04329443900'),
(16, 16, '0.04161461800'),
(17, 17, '0.04130989300'),
(18, 18, '0.04020265800'),
(19, 19, '0.05572165200'),
(20, 20, '0.04712970000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) NOT NULL,
  `kode_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL,
  `tipe` enum('cost','benefit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `bobot`, `tipe`) VALUES
(1, 'K1', 'Fisik', 5, 'benefit'),
(2, 'K2', 'Passing', 3, 'benefit'),
(3, 'K3', 'Dribbling', 3, 'benefit'),
(4, 'K4', 'Shooting', 3, 'benefit'),
(5, 'K5', 'Permainan', 2, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opt_alternatif`
--

CREATE TABLE `opt_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_subkriteria` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel ini digunakan agar kriteria nya bisa dinamis';

--
-- Dumping data untuk tabel `opt_alternatif`
--

INSERT INTO `opt_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(1, 1, 1, 50),
(2, 1, 2, 99),
(3, 1, 3, 148),
(4, 1, 4, 196),
(5, 1, 5, 255),
(6, 2, 1, 45),
(7, 2, 2, 102),
(8, 2, 3, 144),
(9, 2, 4, 191),
(10, 2, 5, 245),
(11, 3, 1, 34),
(12, 3, 2, 92),
(13, 3, 3, 137),
(14, 3, 4, 181),
(15, 3, 5, 255),
(16, 4, 1, 59),
(17, 4, 2, 104),
(18, 4, 3, 150),
(19, 4, 4, 201),
(20, 4, 5, 252),
(21, 5, 1, 51),
(22, 5, 2, 104),
(23, 5, 3, 152),
(24, 5, 4, 205),
(25, 5, 5, 255),
(26, 6, 1, 48),
(27, 6, 2, 102),
(28, 6, 3, 148),
(29, 6, 4, 199),
(30, 6, 5, 251),
(31, 7, 1, 41),
(32, 7, 2, 95),
(33, 7, 3, 145),
(34, 7, 4, 194),
(35, 7, 5, 250),
(36, 8, 1, 37),
(37, 8, 2, 86),
(38, 8, 3, 135),
(39, 8, 4, 186),
(40, 8, 5, 244),
(41, 9, 1, 27),
(42, 9, 2, 83),
(43, 9, 3, 134),
(44, 9, 4, 184),
(45, 9, 5, 235),
(46, 10, 1, 20),
(47, 10, 2, 68),
(48, 10, 3, 118),
(49, 10, 4, 167),
(50, 10, 5, 216),
(51, 11, 1, 51),
(52, 11, 2, 104),
(53, 11, 3, 152),
(54, 11, 4, 199),
(55, 11, 5, 252),
(56, 12, 1, 41),
(57, 12, 2, 87),
(58, 12, 3, 137),
(59, 12, 4, 186),
(60, 12, 5, 245),
(61, 13, 1, 27),
(62, 13, 2, 87),
(63, 13, 3, 135),
(64, 13, 4, 182),
(65, 13, 5, 235),
(66, 14, 1, 27),
(67, 14, 2, 79),
(68, 14, 3, 127),
(69, 14, 4, 177),
(70, 14, 5, 230),
(71, 15, 1, 265),
(72, 15, 2, 86),
(73, 15, 3, 134),
(74, 15, 4, 181),
(75, 15, 5, 225),
(76, 16, 1, 24),
(77, 16, 2, 77),
(78, 16, 3, 127),
(79, 16, 4, 176),
(80, 16, 5, 225),
(81, 17, 1, 20),
(82, 17, 2, 77),
(83, 17, 3, 128),
(84, 17, 4, 178),
(85, 17, 5, 225),
(86, 18, 1, 23),
(87, 18, 2, 76),
(88, 18, 3, 121),
(89, 18, 4, 173),
(90, 18, 5, 225),
(91, 19, 1, 44),
(92, 19, 2, 97),
(93, 19, 3, 147),
(94, 19, 4, 196),
(95, 19, 5, 246),
(96, 20, 1, 33),
(97, 20, 2, 84),
(98, 20, 3, 132),
(99, 20, 4, 185),
(100, 20, 5, 234);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `nama_subkriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `bobot`) VALUES
(16, 1, 'Sangat Buruk (51)', 51),
(17, 1, 'Sangat Buruk (52)', 52),
(19, 1, 'Sangat Buruk (53)', 53),
(20, 1, 'Sangat Buruk (55)', 55),
(21, 1, 'Buruk (56)', 56),
(23, 1, 'Buruk (57)', 57),
(24, 1, 'Buruk (58)', 58),
(25, 1, 'Buruk (59)', 59),
(26, 1, 'Buruk (60)', 60),
(27, 1, 'Buruk (61)', 61),
(28, 1, 'Buruk (62)', 62),
(29, 1, 'Buruk (63)', 63),
(30, 1, 'Buruk (64)', 64),
(31, 1, 'Sedang (65)', 65),
(32, 1, 'Sedang (66)', 66),
(33, 1, 'Sedang (67)', 67),
(34, 1, 'Sedang (68)', 68),
(35, 1, 'Sedang (69)', 69),
(36, 1, 'Sedang (70)', 70),
(37, 1, 'Sedang (71)', 71),
(38, 1, 'Sedang (72)', 72),
(39, 1, 'Sedang (73)', 73),
(40, 1, 'Sedang (74)', 74),
(41, 1, 'Sedang (75)', 75),
(42, 1, 'Sedang (76)', 76),
(43, 1, 'Sedang (77)', 77),
(44, 1, 'Sedang (78)', 78),
(45, 1, 'Bagus (79)', 79),
(46, 1, 'Bagus (80)', 80),
(47, 1, 'Bagus (81)', 81),
(48, 1, 'Bagus (82)', 82),
(49, 1, 'Bagus (83)', 83),
(50, 1, 'Bagus (84)', 84),
(51, 1, 'Bagus (85)', 85),
(52, 1, 'Bagus (86)', 86),
(53, 1, 'Bagus (87)', 87),
(54, 1, 'Bagus (88)', 88),
(55, 1, 'Bagus (89)', 89),
(56, 1, 'Bagus (90)', 90),
(57, 1, 'Sangat Bagus (91)', 91),
(59, 1, 'Sangat Bagus (92)', 92),
(60, 1, 'Sangat Bagus (93)', 93),
(61, 1, 'Sangat Bagus (94)', 94),
(62, 1, 'Sangat Bagus (95)', 95),
(63, 1, 'Sangat Bagus (96)', 96),
(64, 1, 'Sangat Bagus (97)', 97),
(65, 1, 'Sangat Bagus (98)', 98),
(67, 1, 'Sangat Bagus (99)', 99),
(68, 2, 'Sangat Buruk (51)', 51),
(69, 2, 'Sangat Buruk (52)', 52),
(70, 2, 'Sangat Buruk (53)', 53),
(71, 2, 'Sangat Buruk (55)', 55),
(72, 2, 'Buruk (56)', 56),
(74, 2, 'Buruk (57)', 57),
(75, 2, 'Buruk (58)', 58),
(76, 2, 'Buruk (59)', 59),
(77, 2, 'Buruk (60)', 60),
(78, 2, 'Buruk (61)', 61),
(79, 2, 'Buruk (62)', 62),
(80, 2, 'Buruk (63)', 63),
(81, 2, 'Buruk (64)', 64),
(82, 2, 'Sedang (65)', 65),
(83, 2, 'Sedang (66)', 66),
(84, 2, 'Sedang (67)', 67),
(85, 2, 'Sedang (68)', 68),
(86, 2, 'Sedang (69)', 69),
(87, 2, 'Sedang (70)', 70),
(88, 2, 'Sedang (71)', 71),
(89, 2, 'Sedang (72)', 72),
(90, 2, 'Sedang (73)', 73),
(91, 2, 'Sedang (74)', 74),
(92, 2, 'Sedang (75)', 75),
(93, 2, 'Sedang (76)', 76),
(94, 2, 'Sedang (77)', 77),
(95, 2, 'Sedang (78)', 78),
(96, 2, 'Bagus (79)', 79),
(97, 2, 'Bagus (80)', 80),
(98, 2, 'Bagus (81)', 81),
(99, 2, 'Bagus (82)', 82),
(100, 2, 'Bagus (83)', 83),
(101, 2, 'Bagus (84)', 84),
(102, 2, 'Bagus (85)', 85),
(103, 2, 'Bagus (86)', 86),
(104, 2, 'Bagus (87)', 87),
(105, 2, 'Bagus (88)', 88),
(106, 2, 'Bagus (89)', 89),
(107, 2, 'Bagus (90)', 90),
(108, 2, 'Sangat Bagus (91)', 91),
(109, 2, 'Sangat Bagus (92)', 92),
(110, 2, 'Sangat Bagus (93)', 93),
(111, 2, 'Sangat Bagus (94)', 94),
(112, 2, 'Sangat Bagus (95)', 95),
(113, 2, 'Sangat Bagus (96)', 96),
(114, 2, 'Sangat Bagus (97)', 97),
(115, 2, 'Sangat Bagus (98)', 98),
(117, 2, 'Sangat Bagus (99)', 99),
(118, 3, 'Sangat Buruk (51)', 51),
(119, 3, 'Sangat Buruk (52)', 52),
(120, 3, 'Sangat Buruk (53)', 53),
(121, 3, 'Sangat Buruk (55)', 55),
(122, 3, 'Buruk (56)', 56),
(124, 3, 'Buruk (57)', 57),
(125, 3, 'Buruk (58)', 58),
(126, 3, 'Buruk (59)', 59),
(127, 3, 'Buruk (60)', 60),
(128, 3, 'Buruk (61)', 61),
(129, 3, 'Buruk (62)', 62),
(130, 3, 'Buruk (63)', 63),
(131, 3, 'Buruk (64)', 64),
(132, 3, 'Sedang (65)', 65),
(133, 3, 'Sedang (66)', 66),
(134, 3, 'Sedang (67)', 67),
(135, 3, 'Sedang (68)', 68),
(136, 3, 'Sedang (69)', 69),
(137, 3, 'Sedang (70)', 70),
(138, 3, 'Sedang (71)', 71),
(139, 3, 'Sedang (72)', 72),
(140, 3, 'Sedang (73)', 73),
(141, 3, 'Sedang (74)', 74),
(142, 3, 'Sedang (75)', 75),
(143, 3, 'Sedang (76)', 76),
(144, 3, 'Sedang (77)', 77),
(145, 3, 'Sedang (78)', 78),
(146, 3, 'Bagus (79)', 79),
(147, 3, 'Bagus (80)', 80),
(148, 3, 'Bagus (81)', 81),
(149, 3, 'Bagus (82)', 82),
(150, 3, 'Bagus (83)', 83),
(151, 3, 'Bagus (84)', 84),
(152, 3, 'Bagus (85)', 85),
(153, 3, 'Bagus (86)', 86),
(154, 3, 'Bagus (87)', 87),
(155, 3, 'Bagus (88)', 88),
(156, 3, 'Bagus (89)', 89),
(157, 3, 'Bagus (90)', 90),
(158, 3, 'Sangat Bagus (91)', 91),
(159, 3, 'Sangat Bagus (92)', 92),
(160, 3, 'Sangat Bagus (93)', 93),
(161, 3, 'Sangat Bagus (94)', 94),
(162, 3, 'Sangat Bagus (95)', 95),
(163, 3, 'Sangat Bagus (96)', 96),
(164, 3, 'Sangat Bagus (97)', 97),
(165, 3, 'Sangat Bagus (98)', 98),
(166, 3, 'Sangat Bagus (99)', 99),
(167, 4, 'Sangat Buruk (51)', 51),
(168, 4, 'Sangat Buruk (52)', 52),
(169, 4, 'Sangat Buruk (53)', 53),
(170, 4, 'Sangat Buruk (55)', 55),
(171, 4, 'Buruk (56)', 56),
(173, 4, 'Buruk (57)', 57),
(174, 4, 'Buruk (58)', 58),
(175, 4, 'Buruk (59)', 59),
(176, 4, 'Buruk (60)', 60),
(177, 4, 'Buruk (61)', 61),
(178, 4, 'Buruk (62)', 62),
(179, 4, 'Buruk (63)', 63),
(180, 4, 'Buruk (64)', 64),
(181, 4, 'Sedang (65)', 65),
(182, 4, 'Sedang (66)', 66),
(183, 4, 'Sedang (67)', 67),
(184, 4, 'Sedang (68)', 68),
(185, 4, 'Sedang (69)', 69),
(186, 4, 'Sedang (70)', 70),
(187, 4, 'Sedang (71)', 71),
(188, 4, 'Sedang (72)', 72),
(189, 4, 'Sedang (73)', 73),
(190, 4, 'Sedang (74)', 74),
(191, 4, 'Sedang (75)', 75),
(192, 4, 'Sedang (76)', 76),
(193, 4, 'Sedang (77)', 77),
(194, 4, 'Sedang (78)', 78),
(195, 4, 'Bagus (79)', 79),
(196, 4, 'Bagus (80)', 80),
(197, 4, 'Bagus (81)', 81),
(198, 4, 'Bagus (82)', 82),
(199, 4, 'Bagus (83)', 83),
(200, 4, 'Bagus (84)', 84),
(201, 4, 'Bagus (85)', 85),
(202, 4, 'Bagus (86)', 86),
(203, 4, 'Bagus (87)', 87),
(204, 4, 'Bagus (88)', 88),
(205, 4, 'Bagus (89)', 89),
(206, 4, 'Bagus (90)', 90),
(207, 4, 'Sangat Bagus (91)', 91),
(208, 4, 'Sangat Bagus (92)', 92),
(209, 4, 'Sangat Bagus (93)', 93),
(210, 4, 'Sangat Bagus (94)', 94),
(211, 4, 'Sangat Bagus (95)', 95),
(212, 4, 'Sangat Bagus (96)', 96),
(213, 4, 'Sangat Bagus (97)', 97),
(214, 4, 'Sangat Bagus (98)', 98),
(215, 4, 'Sangat Bagus (99)', 99),
(216, 5, 'Sangat Buruk (51)', 51),
(217, 5, 'Sangat Buruk (52)', 52),
(218, 5, 'Sangat Buruk (53)', 53),
(219, 5, 'Sangat Buruk (55)', 55),
(221, 5, 'Buruk (56)', 56),
(222, 5, 'Buruk (57)', 57),
(223, 5, 'Buruk (58)', 58),
(224, 5, 'Buruk (59)', 59),
(225, 5, 'Buruk (60)', 60),
(226, 5, 'Buruk (61)', 61),
(227, 5, 'Buruk (62)', 62),
(228, 5, 'Buruk (63)', 63),
(229, 5, 'Buruk (64)', 64),
(230, 5, 'Sedang (65)', 65),
(231, 5, 'Sedang (66)', 66),
(232, 5, 'Sedang (67)', 67),
(233, 5, 'Sedang (68)', 68),
(234, 5, 'Sedang (69)', 69),
(235, 5, 'Sedang (70)', 70),
(236, 5, 'Sedang (71)', 71),
(237, 5, 'Sedang (72)', 72),
(238, 5, 'Sedang (73)', 73),
(239, 5, 'Sedang (74)', 74),
(240, 5, 'Sedang (75)', 75),
(241, 5, 'Sedang (76)', 76),
(242, 5, 'Sedang (77)', 77),
(243, 5, 'Sedang (78)', 78),
(244, 5, 'Bagus (79)', 79),
(245, 5, 'Bagus (80)', 80),
(246, 5, 'Bagus (81)', 81),
(247, 5, 'Bagus (82)', 82),
(248, 5, 'Bagus (83)', 83),
(249, 5, 'Bagus (84)', 84),
(250, 5, 'Bagus (85)', 85),
(251, 5, 'Bagus (86)', 86),
(252, 5, 'Bagus (87)', 87),
(253, 5, 'Bagus (88)', 88),
(254, 5, 'Bagus (89)', 89),
(255, 5, 'Bagus (90)', 90),
(256, 5, 'Sangat Bagus (91)', 91),
(257, 5, 'Sangat Bagus (92)', 92),
(258, 5, 'Sangat Bagus (93)', 93),
(259, 5, 'Sangat Bagus (94)', 94),
(260, 5, 'Sangat Bagus (95)', 95),
(261, 5, 'Sangat Bagus (96)', 96),
(262, 5, 'Sangat Bagus (97)', 97),
(263, 5, 'Sangat Bagus (98)', 98),
(264, 5, 'Sangat Bagus (99)', 99),
(265, 1, 'Buruk (54)', 54);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD CONSTRAINT `opt_alternatif_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_3` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
