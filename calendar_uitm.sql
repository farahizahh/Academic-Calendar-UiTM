-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2022 at 11:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar_uitm`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `google_calendar_event_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events_list`
--

CREATE TABLE `events_list` (
  `eventID` int(11) NOT NULL,
  `eventTitle` varchar(50) NOT NULL,
  `eventDescription` varchar(100) NOT NULL,
  `eventLocation` varchar(50) NOT NULL,
  `eventDate_Start` date NOT NULL,
  `eventDate_End` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events_list`
--

INSERT INTO `events_list` (`eventID`, `eventTitle`, `eventDescription`, `eventLocation`, `eventDate_Start`, `eventDate_End`) VALUES
(1, 'Persetujuan Menerima Tawaran UiTM Asasi ', 'AKTIVITI PENDAFTARAN DALAM TALIAN PELAJAR BAHARU', 'Online', '2021-12-01', '2022-01-09'),
(2, 'Pendaftaran Sebagai Pelajar Asasi UiTM', 'AKTIVITI PENDAFTARAN DALAM TALIAN PELAJAR BAHARU ', 'Online', '2021-12-01', '2022-01-09'),
(3, 'Proses Serahan Dokumen Pelajar Baharu Asasi', 'AKTIVITI PENDAFTARAN DALAM TALIAN PELAJAR BAHARU ', 'Online', '2021-12-01', '2022-01-09'),
(4, 'Penjanaan Kad Pelajar Maya di iStudent Apps', 'AKTIVITI PENDAFTARAN DALAM TALIAN PELAJAR BAHARU', 'Online', '2021-12-02', '2022-01-09'),
(5, 'Pengemaskinian Rekod Pelajar di iStudent Portal', 'AKTIVITI PENDAFTARAN DALAM TALIAN PELAJAR BAHARU ', 'Online', '2021-12-02', '2022-02-09'),
(6, 'Program Minggu Destini Siswa (MDS)', 'AKTIVITI PENDAFTARAN DALAM TALIAN PELAJAR BAHARU ', 'Online', '2022-01-10', '2022-01-12'),
(7, 'Program Minggu Edu 5.0@UiTM', 'AKTIVITI PENDAFTARAN DALAM TALIAN PELAJAR BAHARU', 'Online', '2022-01-13', '2022-01-15'),
(8, 'Pendaftaran Kursus Pelajar Baharu ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-02-03', '0000-00-00'),
(9, 'Pendaftaran Kursus Pelajar Baharu ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-01-03', '2022-02-03'),
(10, 'Kuliah 1  ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-01-17', '2022-03-06'),
(11, 'Proses Entrance Survey ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-01-17', '2022-01-30'),
(12, 'Ujian Pertengahan Semester	', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-03-07', '2022-03-13'),
(13, 'Cuti Pertengahan Semester', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2021-12-01', '2022-01-09'),
(14, 'Kuliah 2', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA	 \r\n', 'ODL / BERSEMUKA', '2021-12-01', '2022-01-09'),
(15, 'Cuti Khas Perayaan ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-05-01', '2022-05-08'),
(16, ' Kuliah 3 ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-05-09', '2022-05-15'),
(17, 'Proses Exit Survey', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-04-25', '2022-05-15'),
(18, 'Student Feedback Online (SuFO)', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-04-04', '2022-05-22'),
(19, ' Minggu Ulangkaji', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-04-04', '2022-05-22'),
(20, 'Penilaian / Peperiksaan Akhir ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-05-18', '2022-06-09'),
(21, 'Cuti Semester  ', 'AKTIVITI PERKULIAHAN SECARA ODL / BERSEMUKA', 'ODL / BERSEMUKA', '2022-06-10', '2022-07-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_list`
--
ALTER TABLE `events_list`
  ADD PRIMARY KEY (`eventID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events_list`
--
ALTER TABLE `events_list`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
