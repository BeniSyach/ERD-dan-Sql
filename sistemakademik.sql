-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 05:19 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemakademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `fee` int(30) NOT NULL,
  `prerequisite` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `faculty_id` varchar(20) NOT NULL,
  `faculty_name` varchar(30) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` varchar(20) NOT NULL,
  `feedback_text` varchar(200) NOT NULL,
  `date_of_posting` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lg_admin`
--

CREATE TABLE `lg_admin` (
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lg_fakultas`
--

CREATE TABLE `lg_fakultas` (
  `faculty_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lg_siswa`
--

CREATE TABLE `lg_siswa` (
  `student_id` int(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `query_id` varchar(30) NOT NULL,
  `query_text` varchar(500) NOT NULL,
  `date_of_query` date NOT NULL,
  `date_of_response` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `student_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studycenter`
--

CREATE TABLE `studycenter` (
  `center_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_admin`
--
ALTER TABLE `lg_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_fakultas`
--
ALTER TABLE `lg_fakultas`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `lg_siswa`
--
ALTER TABLE `lg_siswa`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`query_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `studycenter`
--
ALTER TABLE `studycenter`
  ADD PRIMARY KEY (`center_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lg_admin`
--
ALTER TABLE `lg_admin`
  ADD CONSTRAINT `lg_admin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `feedback` (`id`);

--
-- Constraints for table `lg_fakultas`
--
ALTER TABLE `lg_fakultas`
  ADD CONSTRAINT `lg_fakultas_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `fakultas` (`faculty_id`);

--
-- Constraints for table `lg_siswa`
--
ALTER TABLE `lg_siswa`
  ADD CONSTRAINT `lg_siswa_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `siswa` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
