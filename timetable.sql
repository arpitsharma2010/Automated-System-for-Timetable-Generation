-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Sep 17, 2020 at 03:39 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `1`
--

DROP TABLE IF EXISTS `1`;
CREATE TABLE IF NOT EXISTS `1` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1`
--

INSERT INTO `1` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', 'CN<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', 'CN<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CN<br>K5', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', 'CN<br>K5', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'NS<br>K3', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', 'NS<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', 'NS<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', 'NS<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `2`
--

DROP TABLE IF EXISTS `2`;
CREATE TABLE IF NOT EXISTS `2` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2`
--

INSERT INTO `2` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'DAA<br>K3', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', 'DAA<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', 'DAA<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'DAA<br>K3'),
('mondaye', 'OS<br>K2', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'OS<br>K2'),
('thursdaye', '-<br>-', '-<br>-', 'OS<br>K2', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', 'OS<br>K2', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `3`
--

DROP TABLE IF EXISTS `3`;
CREATE TABLE IF NOT EXISTS `3` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3`
--

INSERT INTO `3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', 'FSDP<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', 'FSDP<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', 'FSDP<br>K4', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', 'FSDP<br>K4', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ES<br>K5', '-<br>-'),
('tuesdaye', '-<br>-', 'ES<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', 'ES<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', 'ES<br>K5', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `4`
--

DROP TABLE IF EXISTS `4`;
CREATE TABLE IF NOT EXISTS `4` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `4`
--

INSERT INTO `4` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'WE<br>K5', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', 'WE<br>K5', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', 'WE<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', 'WE<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', 'CA<br>K2', '-<br>-', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB'),
('wednesdaye', '-<br>-', 'CA<br>K2', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', 'CA<br>K2', '-<br>-', '-<br>-', '-<br>-', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `5`
--

DROP TABLE IF EXISTS `5`;
CREATE TABLE IF NOT EXISTS `5` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5`
--

INSERT INTO `5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', 'DC<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', 'DC<br>K4', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'DC<br>K4', '-<br>-'),
('fridayo', '-<br>-', 'DC<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', 'SE<br>K5', 'ST-4<br>LAB', 'ST-4<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', 'SE<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', 'ST-4<br>LAB', 'ST-4<br>LAB', 'SE<br>K5', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', 'SE<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `6`
--

DROP TABLE IF EXISTS `6`;
CREATE TABLE IF NOT EXISTS `6` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `6`
--

INSERT INTO `6` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'SS<br>K4', '-<br>-', 'SS-L<br>LAB', 'SS-L<br>LAB'),
('tuesdayo', '-<br>-', 'SS<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', 'SS<br>K4', '-<br>-', '-<br>-', '-<br>-', 'SS-L<br>LAB', 'SS-L<br>LAB'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'SS<br>K4'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', 'ST-3<br>LAB', 'ST-3<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'TOC<br>K1', '-<br>-'),
('thursdaye', '-<br>-', 'TOC<br>K1', 'ST-3<br>LAB', 'ST-3<br>LAB', '-<br>-', '-<br>-'),
('fridaye', 'TOC<br>K1', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `7`
--

DROP TABLE IF EXISTS `7`;
CREATE TABLE IF NOT EXISTS `7` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7`
--

INSERT INTO `7` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', 'CN<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', 'CN<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', 'CN<br>K3', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', 'CN<br>K3', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ES-L<br>LAB', 'ES-L<br>LAB'),
('tuesdaye', '-<br>-', 'ES<br>K3', 'ES-L<br>LAB', 'ES-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', 'ES<br>K3', '-<br>-', '-<br>-', '-<br>-', 'ES-L<br>LAB', 'ES-L<br>LAB'),
('thursdaye', '-<br>-', 'ES<br>K3', 'ES-L<br>LAB', 'ES-L<br>LAB', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', 'ES<br>K3', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `8`
--

DROP TABLE IF EXISTS `8`;
CREATE TABLE IF NOT EXISTS `8` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8`
--

INSERT INTO `8` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', 'DSP<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', 'DSP<br>K5', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', 'DSP<br>K5', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', 'DSP<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', 'DS<br>K6', 'OS<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'OS<br>K4', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', 'DS<br>K6', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'DS<br>K6', 'OS<br>K4'),
('fridaye', '-<br>-', 'DS<br>K6', 'OS<br>K4', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `9`
--

DROP TABLE IF EXISTS `9`;
CREATE TABLE IF NOT EXISTS `9` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `9`
--

INSERT INTO `9` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'SS-L<br>LAB', 'SS-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', 'SS<br>K2', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', 'SS<br>K2', '-<br>-', 'SS-L<br>LAB', 'SS-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', 'SS<br>K2', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', 'DS<br>K1', '-<br>-', 'DS-L<br>LAB', 'DS-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', 'DS<br>K1', '-<br>-', 'DS-L<br>LAB', 'DS-L<br>LAB'),
('wednesdaye', '-<br>-', '-<br>-', 'DS-L<br>LAB', 'DS-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', 'DS<br>K1', '-<br>-', 'DS-L<br>LAB', 'DS-L<br>LAB'),
('fridaye', '-<br>-', 'DS<br>K1', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `10`
--

DROP TABLE IF EXISTS `10`;
CREATE TABLE IF NOT EXISTS `10` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `10`
--

INSERT INTO `10` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'STLD-L<br>LAB', 'STLD-L<br>LAB', '-<br>-', 'STLD<br>K2'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'STLD-L<br>LAB', 'STLD-L<br>LAB'),
('wednesdayo', '-<br>-', 'STLD<br>K2', 'STLD-L<br>LAB', 'STLD-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', 'STLD<br>K2', '-<br>-', '-<br>-', '-<br>-', 'STLD-L<br>LAB', 'STLD-L<br>LAB'),
('fridayo', '-<br>-', '-<br>-', 'STLD<br>K2', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', 'DBS<br>K4', '-<br>-', '-<br>-', '-<br>-', 'DBS-L<br>LAB', 'DBS-L<br>LAB'),
('tuesdaye', 'DBS<br>K4', '-<br>-', 'DBS-L<br>LAB', 'DBS-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', 'DBS<br>K4', '-<br>-', 'DBS-L<br>LAB', 'DBS-L<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', 'DBS-L<br>LAB', 'DBS-L<br>LAB', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', 'DBS<br>K4', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `11`
--

DROP TABLE IF EXISTS `11`;
CREATE TABLE IF NOT EXISTS `11` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `11`
--

INSERT INTO `11` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', 'PM<br>K6', '-<br>-', '-<br>-', 'PM-L<br>LAB', 'PM-L<br>LAB'),
('tuesdayo', 'PM<br>K6', '-<br>-', 'PM-L<br>LAB', 'PM-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', 'PM<br>K6', 'PM-L<br>LAB', 'PM-L<br>LAB'),
('thursdayo', '-<br>-', '-<br>-', 'PM-L<br>LAB', 'PM-L<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', 'PM<br>K6', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ST-3<br>LAB', 'ST-3<br>LAB'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ST-3<br>LAB', 'ST-3<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `12`
--

DROP TABLE IF EXISTS `12`;
CREATE TABLE IF NOT EXISTS `12` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `12`
--

INSERT INTO `12` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', 'DSP<br>K3', '-<br>-', '-<br>-', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', 'DSP<br>K3', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB'),
('thursdayo', '-<br>-', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB', 'DSP<br>K3', '-<br>-'),
('fridayo', '-<br>-', 'DSP<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'ALP-L<br>LAB', 'ALP-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', 'ALP<br>K1', 'ALP-L<br>LAB', 'ALP-L<br>LAB'),
('wednesdaye', '-<br>-', 'ALP<br>K1', 'ALP-L<br>LAB', 'ALP-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', 'ALP<br>K1', '-<br>-', '-<br>-', '-<br>-', 'ALP-L<br>LAB', 'ALP-L<br>LAB'),
('fridaye', '-<br>-', '-<br>-', 'ALP<br>K1', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `13`
--

DROP TABLE IF EXISTS `13`;
CREATE TABLE IF NOT EXISTS `13` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `13`
--

INSERT INTO `13` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', 'DS<br>K6', 'ST-2<br>LAB', 'ST-2<br>LAB'),
('tuesdayo', '-<br>-', 'DS<br>K6', 'ST-2<br>LAB', 'ST-2<br>LAB', '-<br>-', '-<br>-'),
('wednesdayo', 'DS<br>K6', '-<br>-', '-<br>-', '-<br>-', 'ST-2<br>LAB', 'ST-2<br>LAB'),
('thursdayo', 'DS<br>K6', '-<br>-', 'ST-2<br>LAB', 'ST-2<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'DS-L<br>LAB', 'DS-L<br>LAB'),
('tuesdaye', '-<br>-', '-<br>-', 'DS-L<br>LAB', 'DS-L<br>LAB', '-<br>-', 'TOC<br>K6'),
('wednesdaye', '-<br>-', '-<br>-', 'TOC<br>K6', '-<br>-', 'DS-L<br>LAB', 'DS-L<br>LAB'),
('thursdaye', '-<br>-', 'TOC<br>K6', 'DS-L<br>LAB', 'DS-L<br>LAB', '-<br>-', '-<br>-'),
('fridaye', 'TOC<br>K6', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `14`
--

DROP TABLE IF EXISTS `14`;
CREATE TABLE IF NOT EXISTS `14` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `14`
--

INSERT INTO `14` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', 'PM<br>K1', 'PM-L<br>LAB', 'PM-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdayo', 'PM<br>K1', '-<br>-', '-<br>-', '-<br>-', 'PM-L<br>LAB', 'PM-L<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', 'PM-L<br>LAB', 'PM-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', 'PM<br>K1', 'PM-L<br>LAB', 'PM-L<br>LAB'),
('fridayo', '-<br>-', '-<br>-', 'PM<br>K1', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', 'DBS<br>K2', 'DBS-L<br>LAB', 'DBS-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', 'DBS<br>K2', '-<br>-', '-<br>-', '-<br>-', 'DBS-L<br>LAB', 'DBS-L<br>LAB'),
('wednesdaye', '-<br>-', '-<br>-', 'DBS-L<br>LAB', 'DBS-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', 'DBS<br>K2', 'DBS-L<br>LAB', 'DBS-L<br>LAB'),
('fridaye', '-<br>-', '-<br>-', 'DBS<br>K2', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `15`
--

DROP TABLE IF EXISTS `15`;
CREATE TABLE IF NOT EXISTS `15` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `15`
--

INSERT INTO `15` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB', 'FE-1<br>K2', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', 'FE-1<br>K2', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', 'FE-1<br>K2', '-<br>-', '-<br>-', 'DSP-L<br>LAB', 'DSP-L<br>LAB'),
('fridayo', 'FE-1<br>K2', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'OS-L<br>LAB', 'OS-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ST-4<br>LAB', 'ST-4<br>LAB'),
('wednesdaye', '-<br>-', '-<br>-', 'OS-L<br>LAB', 'OS-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', 'FE-2<br>K4', '-<br>-', '-<br>-', 'ST-4<br>LAB', 'ST-4<br>LAB'),
('fridaye', 'FE-2<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `16`
--

DROP TABLE IF EXISTS `16`;
CREATE TABLE IF NOT EXISTS `16` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `16`
--

INSERT INTO `16` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB', '-<br>-', 'OOAD<br>K5'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB'),
('wednesdayo', '-<br>-', 'OOAD<br>K5', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', 'OOAD<br>K5', '-<br>-', '-<br>-', '-<br>-', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB'),
('fridayo', '-<br>-', '-<br>-', 'OOAD<br>K5', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', 'AI<br>K3', '-<br>-', '-<br>-', '-<br>-', 'AI-L<br>LAB', 'AI-L<br>LAB'),
('tuesdaye', '-<br>-', '-<br>-', 'AI-L<br>LAB', 'AI-L<br>LAB', 'AI<br>K3', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', 'AI<br>K3', 'AI-L<br>LAB', 'AI-L<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', 'AI-L<br>LAB', 'AI-L<br>LAB', '-<br>-', '-<br>-'),
('fridaye', 'AI<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `17`
--

DROP TABLE IF EXISTS `17`;
CREATE TABLE IF NOT EXISTS `17` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `17`
--

INSERT INTO `17` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', 'OOAD<br>K3', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB', 'OOAD<br>K3', '-<br>-'),
('wednesdayo', '-<br>-', 'OOAD<br>K3', '-<br>-', '-<br>-', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB'),
('thursdayo', 'OOAD<br>K3', '-<br>-', 'OOAD-L<br>LAB', 'OOAD-L<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', 'CA<br>K4', 'CLab2<br>LAB', 'CLab2<br>LAB'),
('tuesdaye', '-<br>-', '-<br>-', 'CLab2<br>LAB', 'CLab2<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', 'CA<br>K4', '-<br>-', '-<br>-', 'CLab2<br>LAB', 'CLab2<br>LAB'),
('thursdaye', 'CA<br>K4', '-<br>-', 'CLab2<br>LAB', 'CLab2<br>LAB', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', 'CA<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `18`
--

DROP TABLE IF EXISTS `18`;
CREATE TABLE IF NOT EXISTS `18` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `18`
--

INSERT INTO `18` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'EDC<br>K6', '-<br>-', 'EDC-L<br>LAB', 'EDC-L<br>LAB'),
('tuesdayo', '-<br>-', 'EDC<br>K1', 'EDC-L<br>LAB', 'EDC-L<br>LAB', 'EDC<br>K6', '-<br>-'),
('wednesdayo', 'EDC<br>K1', 'EDC<br>K6', '-<br>-', '-<br>-', 'EDC-L<br>LAB', 'EDC-L<br>LAB'),
('thursdayo', '-<br>-', '-<br>-', 'EDC-L<br>LAB', 'EDC-L<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'EDC<br>K1', 'EDC<br>K6'),
('mondaye', '-<br>-', 'ADIC<br>K1', 'ADIC<br>K6', '-<br>-', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB'),
('tuesdaye', 'ADIC<br>K1', 'ADIC<br>K6', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', 'ADIC-L<br>LAB', 'ADIC-L<br>LAB', '-<br>-', 'ADIC<br>K6'),
('fridaye', '-<br>-', '-<br>-', 'ADIC<br>K6', '-<br>-', 'ADIC<br>K1', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `19`
--

DROP TABLE IF EXISTS `19`;
CREATE TABLE IF NOT EXISTS `19` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `19`
--

INSERT INTO `19` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', 'DC<br>K2', '-<br>-', '-<br>-', '-<br>-', 'CLab1<br>LAB', 'CLab1<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', 'CLab1<br>LAB', 'CLab1<br>LAB', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CLab1<br>LAB', 'CLab1<br>LAB'),
('thursdayo', '-<br>-', '-<br>-', 'CLab1<br>LAB', 'CLab1<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', 'DC<br>K2', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', 'SE<br>K3', '-<br>-', '-<br>-', 'ST-4<br>LAB', 'ST-4<br>LAB'),
('tuesdaye', 'SE<br>K3', '-<br>-', 'ST-4<br>LAB', 'ST-4<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', 'SE<br>K3', '-<br>-', 'ST-4<br>LAB', 'ST-4<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', 'ST-4<br>LAB', 'ST-4<br>LAB', 'SE<br>K3', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `20`
--

DROP TABLE IF EXISTS `20`;
CREATE TABLE IF NOT EXISTS `20` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20`
--

INSERT INTO `20` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', 'DAA<br>K5', '-<br>-', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB'),
('wednesdayo', 'DAA<br>K5', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', 'DAA<br>K5', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', 'OOP<br>K6', '-<br>-', '-<br>-', 'OOP-L<br>LAB', 'OOP-L<br>LAB'),
('tuesdaye', 'OOP<br>K6', '-<br>-', 'OOP-L<br>LAB', 'OOP-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', 'OOP<br>K6', '-<br>-', '-<br>-', '-<br>-', 'OOP-L<br>LAB', 'OOP-L<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', 'OOP-L<br>LAB', 'OOP-L<br>LAB', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', 'OOP<br>K6', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `21`
--

DROP TABLE IF EXISTS `21`;
CREATE TABLE IF NOT EXISTS `21` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `21`
--

INSERT INTO `21` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', 'FSDP<br>K2', 'CLab1<br>LAB', 'CLab1<br>LAB', '-<br>-', '-<br>-'),
('tuesdayo', 'FSDP<br>K2', '-<br>-', '-<br>-', '-<br>-', 'CLab1<br>LAB', 'CLab1<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', 'CLab1<br>LAB', 'CLab1<br>LAB', 'FSDP<br>K2', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CLab1<br>LAB', 'CLab1<br>LAB'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', 'FSDP<br>K2', '-<br>-', '-<br>-'),
('mondaye', 'AI<br>K5', '-<br>-', 'AI-L<br>LAB', 'AI-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', 'AI<br>K5', 'AI-L<br>LAB', 'AI-L<br>LAB'),
('wednesdaye', '-<br>-', '-<br>-', 'AI-L<br>LAB', 'AI-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', 'AI<br>K5', '-<br>-', '-<br>-', 'AI-L<br>LAB', 'AI-L<br>LAB'),
('fridaye', 'AI<br>K5', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `22`
--

DROP TABLE IF EXISTS `22`;
CREATE TABLE IF NOT EXISTS `22` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `22`
--

INSERT INTO `22` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', 'STLD<br>K4', 'STLD-L<br>LAB', 'STLD-L<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', 'STLD-L<br>LAB', 'STLD-L<br>LAB', 'STLD<br>K4', '-<br>-'),
('wednesdayo', '-<br>-', 'STLD<br>K4', '-<br>-', '-<br>-', 'STLD-L<br>LAB', 'STLD-L<br>LAB'),
('thursdayo', 'STLD<br>K4', '-<br>-', 'STLD-L<br>LAB', 'STLD-L<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'ES-L<br>LAB', 'ES-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', 'NS<br>K5', '-<br>-', 'ES-L<br>LAB', 'ES-L<br>LAB'),
('wednesdaye', '-<br>-', 'NS<br>K5', 'ES-L<br>LAB', 'ES-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', 'NS<br>K5', '-<br>-', '-<br>-', '-<br>-', 'ES-L<br>LAB', 'ES-L<br>LAB'),
('fridaye', '-<br>-', '-<br>-', 'NS<br>K5', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `23`
--

DROP TABLE IF EXISTS `23`;
CREATE TABLE IF NOT EXISTS `23` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `23`
--

INSERT INTO `23` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', 'DS<br>K1', '-<br>-', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB'),
('thursdayo', 'DS<br>K1', '-<br>-', 'DAA-L<br>LAB', 'DAA-L<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', 'DS<br>K1', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'OOP-L<br>LAB', 'OOP-L<br>LAB', 'OOP<br>K1', '-<br>-'),
('tuesdaye', '-<br>-', 'OOP<br>K1', '-<br>-', '-<br>-', 'OOP-L<br>LAB', 'OOP-L<br>LAB'),
('wednesdaye', 'OOP<br>K1', '-<br>-', 'OOP-L<br>LAB', 'OOP-L<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', 'OOP<br>K1', 'OOP-L<br>LAB', 'OOP-L<br>LAB'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `24`
--

DROP TABLE IF EXISTS `24`;
CREATE TABLE IF NOT EXISTS `24` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `24`
--

INSERT INTO `24` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'ST-2<br>LAB', 'ST-2<br>LAB', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ST-2<br>LAB', 'ST-2<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', 'ST-2<br>LAB', 'ST-2<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', 'WE<br>K3', '-<br>-', '-<br>-', 'ST-2<br>LAB', 'ST-2<br>LAB'),
('fridayo', 'WE<br>K3', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'ST-3<br>LAB', 'ST-3<br>LAB', 'CRM<br>K2', '-<br>-'),
('tuesdaye', '-<br>-', 'CRM<br>K2', '-<br>-', '-<br>-', 'ST-3<br>LAB', 'ST-3<br>LAB'),
('wednesdaye', 'CRM<br>K2', '-<br>-', 'ST-3<br>LAB', 'ST-3<br>LAB', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ST-3<br>LAB', 'ST-3<br>LAB'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', 'CRM<br>K2', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `25`
--

DROP TABLE IF EXISTS `25`;
CREATE TABLE IF NOT EXISTS `25` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `25`
--

INSERT INTO `25` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'EDC-L<br>LAB', 'EDC-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'EDC-L<br>LAB', 'EDC-L<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', 'EDC-L<br>LAB', 'EDC-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', 'FE-1<br>K4', '-<br>-', '-<br>-', 'EDC-L<br>LAB', 'EDC-L<br>LAB'),
('fridayo', 'FE-1<br>K4', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'CLab2<br>LAB', 'CLab2<br>LAB', '-<br>-', 'FE-2<br>K2'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CLab2<br>LAB', 'CLab2<br>LAB'),
('wednesdaye', '-<br>-', '-<br>-', 'CLab2<br>LAB', 'CLab2<br>LAB', 'FE-2<br>K2', '-<br>-'),
('thursdaye', '-<br>-', 'FE-2<br>K2', '-<br>-', '-<br>-', 'CLab2<br>LAB', 'CLab2<br>LAB'),
('fridaye', 'FE-2<br>K2', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `26`
--

DROP TABLE IF EXISTS `26`;
CREATE TABLE IF NOT EXISTS `26` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `26`
--

INSERT INTO `26` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'ST-1<br>LAB', 'ST-1<br>LAB', 'CO<br>K1', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', 'CO<br>K1', '-<br>-', 'ST-1<br>LAB', 'ST-1<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', 'ST-1<br>LAB', 'ST-1<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', 'CO<br>K1', '-<br>-', '-<br>-', 'ST-1<br>LAB', 'ST-1<br>LAB'),
('fridayo', 'CO<br>K1', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', 'ALP<br>K6', 'ALP-L<br>LAB', 'ALP-L<br>LAB'),
('tuesdaye', '-<br>-', '-<br>-', 'ALP-L<br>LAB', 'ALP-L<br>LAB', 'ALP<br>K6', '-<br>-'),
('wednesdaye', '-<br>-', 'ALP<br>K6', '-<br>-', '-<br>-', 'ALP-L<br>LAB', 'ALP-L<br>LAB'),
('thursdaye', 'ALP<br>K6', '-<br>-', 'ALP-L<br>LAB', 'ALP-L<br>LAB', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `27`
--

DROP TABLE IF EXISTS `27`;
CREATE TABLE IF NOT EXISTS `27` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `27`
--

INSERT INTO `27` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'ST-1<br>LAB', 'ST-1<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', 'ST-1<br>LAB', 'ST-1<br>LAB', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', 'CO<br>K6', '-<br>-', 'ST-1<br>LAB', 'ST-1<br>LAB'),
('thursdayo', '-<br>-', 'CO<br>K6', 'ST-1<br>LAB', 'ST-1<br>LAB', '-<br>-', '-<br>-'),
('fridayo', 'CO<br>K6', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'CRM<br>K4', '-<br>-', 'OS-L<br>LAB', 'OS-L<br>LAB'),
('tuesdaye', '-<br>-', 'CRM<br>K4', 'OS-L<br>LAB', 'OS-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdaye', 'CRM<br>K4', '-<br>-', '-<br>-', '-<br>-', 'OS-L<br>LAB', 'OS-L<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', 'OS-L<br>LAB', 'OS-L<br>LAB', 'CRM<br>K4', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `28`
--

DROP TABLE IF EXISTS `28`;
CREATE TABLE IF NOT EXISTS `28` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `28`
--

INSERT INTO `28` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', 'SS-L<br>LAB', 'SS-L<br>LAB', 'SS-L<br>LAB', 'SS-L<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', 'SS-L<br>LAB', 'SS-L<br>LAB', 'SS-L<br>LAB', 'SS-L<br>LAB'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `29`
--

DROP TABLE IF EXISTS `29`;
CREATE TABLE IF NOT EXISTS `29` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `29`
--

INSERT INTO `29` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', 'M3<br>K6', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'M3<br>K6'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'M3<br>K6', '-<br>-'),
('fridayo', '-<br>-', 'M3<br>K6', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `30`
--

DROP TABLE IF EXISTS `30`;
CREATE TABLE IF NOT EXISTS `30` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `30`
--

INSERT INTO `30` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', 'M3<br>K1', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'M3<br>K1', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', 'M3<br>K1', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', 'M3<br>K1', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `31`
--

DROP TABLE IF EXISTS `31`;
CREATE TABLE IF NOT EXISTS `31` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `31`
--

INSERT INTO `31` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `32`
--

DROP TABLE IF EXISTS `32`;
CREATE TABLE IF NOT EXISTS `32` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `32`
--

INSERT INTO `32` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `33`
--

DROP TABLE IF EXISTS `33`;
CREATE TABLE IF NOT EXISTS `33` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `33`
--

INSERT INTO `33` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdayo', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdayo', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `34`
--

DROP TABLE IF EXISTS `34`;
CREATE TABLE IF NOT EXISTS `34` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `34`
--

INSERT INTO `34` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CS-L<br>LAB', 'CS-L<br>LAB'),
('thursdayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('tuesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('wednesdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('thursdaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `50`
--

DROP TABLE IF EXISTS `50`;
CREATE TABLE IF NOT EXISTS `50` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `50`
--

INSERT INTO `50` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondayo', '-<br>-', '-<br>-', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB'),
('tuesdayo', '-<br>-', '-<br>-', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB'),
('wednesdayo', '-<br>-', '-<br>-', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB'),
('thursdayo', '-<br>-', '-<br>-', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB', 'P&S-1<br>LAB'),
('fridayo', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-'),
('mondaye', '-<br>-', '-<br>-', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB'),
('tuesdaye', '-<br>-', '-<br>-', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB'),
('wednesdaye', '-<br>-', '-<br>-', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB'),
('thursdaye', '-<br>-', '-<br>-', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB', 'P&S-2<br>LAB'),
('fridaye', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
CREATE TABLE IF NOT EXISTS `classroom` (
  `name` varchar(5) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`name`, `status`) VALUES
('K3', '4B'),
('K2', '3A'),
('K1', '2A'),
('K4', '3B'),
('K5', '4A'),
('K6', '2B');

-- --------------------------------------------------------

--
-- Table structure for table `semester3`
--

DROP TABLE IF EXISTS `semester3`;
CREATE TABLE IF NOT EXISTS `semester3` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(50) DEFAULT NULL,
  `period4` varchar(50) DEFAULT NULL,
  `period5` varchar(50) DEFAULT NULL,
  `period6` varchar(50) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester3`
--

INSERT INTO `semester3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondaya', 'M3<br>DVK', 'PM<br>KHD', 'Practical<br>-', 'Practical<br>-', 'CO<br>PND', '-<br>-'),
('tuesdaya', 'PM<br>KHD', 'EDC<br>ABP', 'M3<br>DVK', 'CO<br>PND', 'Practical<br>-', 'Practical<br>-'),
('wednesdaya', 'EDC<br>ABP', 'DS<br>SGT', 'Practical<br>-', 'Practical<br>-', 'PM<br>KHD', '-<br>-'),
('thursdaya', 'DS<br>SGT', 'CO<br>PND', 'M3<br>DVK', '-<br>-', 'Practical<br>-', 'Practical<br>-'),
('fridaya', 'CO<br>PND', 'M3<br>DVK', 'PM<br>KHD', 'EDC<br>ABP', 'DS<br>SGT', '-<br>-'),
('mondayb', 'M3<br>ASP', 'PM<br>PPD', 'EDC<br>ABP', 'DS<br>KRH', 'Practical<br>-', 'Practical<br>-'),
('tuesdayb', 'PM<br>PPD', 'DS<br>KRH', 'Practical<br>-', 'Practical<br>-', 'EDC<br>ABP', 'CO<br>SPI'),
('wednesdayb', 'DS<br>KRH', 'EDC<br>ABP', 'CO<br>SPI', 'M3<br>ASP', 'Practical<br>-', 'Practical<br>-'),
('thursdayb', 'DS<br>KRH', 'CO<br>SPI', 'Practical<br>-', 'Practical<br>-', 'M3<br>ASP', 'PM<br>PPD'),
('fridayb', 'CO<br>SPI', 'M3<br>ASP', 'PM<br>PPD', '-<br>-', 'EDC<br>ABP', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `semester4`
--

DROP TABLE IF EXISTS `semester4`;
CREATE TABLE IF NOT EXISTS `semester4` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester4`
--

INSERT INTO `semester4` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondaya', 'DS<br>RAK', 'ADIC<br>ABP', 'Practical<br>-', 'Practical<br>-', 'OOP<br>SGT', '-<br>-'),
('tuesdaya', 'ADIC<br>ABP', 'OOP<br>SGT', 'DS<br>RAK', 'ALP<br>PBL', 'Practical<br>-', 'Practical<br>-'),
('wednesdaya', 'OOP<br>SGT', 'ALP<br>PBL', 'Practical<br>-', 'Practical<br>-', 'TOC<br>SSD', '-<br>-'),
('thursdaya', 'ALP<br>PBL', 'TOC<br>SSD', 'DS<br>RAK', 'OOP<br>SGT', 'Practical<br>-', 'Practical<br>-'),
('fridaya', 'TOC<br>SSD', 'DS<br>RAK', 'ALP<br>PBL', '-<br>-', 'ADIC<br>ABP', '-<br>-'),
('mondayb', 'DS<br>AAC', 'OOP<br>NVP', 'ADIC<br>ABP', 'ALP<br>PND', 'Practical<br>-', 'Practical<br>-'),
('tuesdayb', 'OOP<br>NVP', 'ADIC<br>ABP', 'Practical<br>-', 'Practical<br>-', 'ALP<br>PND', 'TOC<br>KRH'),
('wednesdayb', 'OOP<br>NVP', 'ALP<br>PND', 'TOC<br>KRH', 'DS<br>AAC', 'Practical<br>-', 'Practical<br>-'),
('thursdayb', 'ALP<br>PND', 'TOC<br>KRH', 'Practical<br>-', 'Practical<br>-', 'DS<br>AAC', 'ADIC<br>ABP'),
('fridayb', 'TOC<br>KRH', 'DS<br>AAC', 'ADIC<br>ABP', 'OOP<br>NVP', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `semester5`
--

DROP TABLE IF EXISTS `semester5`;
CREATE TABLE IF NOT EXISTS `semester5` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester5`
--

INSERT INTO `semester5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondaya', 'DC<br>NMY', 'FSDP<br>SVK', 'Practical<br>-', 'Practical<br>-', 'FE-1<br>MAD', '-<br>-'),
('tuesdaya', 'FSDP<br>SVK', 'SS<br>RAK', 'STLD<br>YSA', 'FE-1<br>MAD', 'Practical<br>-', 'Practical<br>-'),
('wednesdaya', 'SS<br>RAK', 'STLD<br>YSA', 'Practical<br>-', 'Practical<br>-', 'FSDP<br>SVK', '-<br>-'),
('thursdaya', 'STLD<br>YSA', 'FE-1<br>MAD', 'SS<br>RAK', 'FSDP<br>SVK', 'Practical<br>-', 'Practical<br>-'),
('fridaya', 'FE-1<br>MAD', 'DC<br>NMY', 'STLD<br>YSA', 'SS<br>RAK', '-<br>-', '-<br>-'),
('mondayb', 'DC<br>SWA', 'FSDP<br>SRG', 'SS<br>SSD', 'STLD<br>NAD', 'Practical<br>-', 'Practical<br>-'),
('tuesdayb', 'FSDP<br>SRG', 'SS<br>SSD', 'Practical<br>-', 'Practical<br>-', 'STLD<br>NAD', '-<br>-'),
('wednesdayb', 'SS<br>SSD', 'STLD<br>NAD', 'DC<br>SWA', 'FSDP<br>SRG', 'Practical<br>-', 'Practical<br>-'),
('thursdayb', 'STLD<br>NAD', 'FE-1<br>AOS', 'Practical<br>-', 'Practical<br>-', 'DC<br>SWA', '-<br>-'),
('fridayb', 'FE-1<br>AOS', 'DC<br>SWA', 'FSDP<br>SRG', '-<br>-', '-<br>-', 'SS<br>SSD');

-- --------------------------------------------------------

--
-- Table structure for table `semester6`
--

DROP TABLE IF EXISTS `semester6`;
CREATE TABLE IF NOT EXISTS `semester6` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester6`
--

INSERT INTO `semester6` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondaya', 'OS<br>VMD', 'DBS<br>KHD', 'Practical<br>-', 'Practical<br>-', 'CRM<br>ARM', 'FE-2<br>AOS'),
('tuesdaya', 'DBS<br>KHD', 'CRM<br>ARM', 'CA<br>SPA', '-<br>-', 'Practical<br>-', 'Practical<br>-'),
('wednesdaya', 'CRM<br>ARM', 'CA<br>SPA', 'Practical<br>-', 'Practical<br>-', 'FE-2<br>AOS', 'OS<br>VMD'),
('thursdaya', 'CA<br>SPA', 'FE-2<br>AOS', 'OS<br>VMD', 'DBS<br>KHD', 'Practical<br>-', 'Practical<br>-'),
('fridaya', 'FE-2<br>AOS', 'OS<br>VMD', 'DBS<br>KHD', 'CRM<br>ARM', '-<br>-', '-<br>-'),
('mondayb', 'DBS<br>YSA', 'OS<br>AAC', 'CRM<br>SPI', 'CA<br>SHK', 'Practical<br>-', 'Practical<br>-'),
('tuesdayb', 'DBS<br>YSA', 'CRM<br>SPI', 'Practical<br>-', 'Practical<br>-', 'OS<br>AAC', '-<br>-'),
('wednesdayb', 'CRM<br>SPI', 'CA<br>SHK', 'DBS<br>YSA', '-<br>-', 'Practical<br>-', 'Practical<br>-'),
('thursdayb', 'CA<br>SHK', 'FE-2<br>MAD', 'Practical<br>-', 'Practical<br>-', 'CRM<br>SPI', 'OS<br>AAC'),
('fridayb', 'FE-2<br>MAD', 'CA<br>SHK', 'OS<br>AAC', 'DBS<br>YSA', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `semester7`
--

DROP TABLE IF EXISTS `semester7`;
CREATE TABLE IF NOT EXISTS `semester7` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester7`
--

INSERT INTO `semester7` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondaya', 'DSP<br>AAC', 'CN<br>GRB', 'Practical<br>-', 'Practical<br>-', 'WE<br>SPA', '-<br>-'),
('tuesdaya', 'CN<br>GRB', 'DAA<br>NVP', 'DSP<br>AAC', 'OOAD<br>VSS', 'Practical<br>-', 'Practical<br>-'),
('wednesdaya', 'DAA<br>NVP', 'OOAD<br>VSS', 'Practical<br>-', 'Practical<br>-', 'CN<br>GRB', 'WE<br>SPA'),
('thursdaya', 'OOAD<br>VSS', 'WE<br>SPA', 'DAA<br>NVP', 'DSP<br>AAC', 'Practical<br>-', 'Practical<br>-'),
('fridaya', 'WE<br>SPA', 'DSP<br>AAC', 'OOAD<br>VSS', 'CN<br>GRB', 'DAA<br>NVP', '-<br>-'),
('mondayb', 'DSP<br>PBL', 'CN<br>PKA', 'DAA<br>VMD', 'OOAD<br>SHK', 'Practical<br>-', 'Practical<br>-'),
('tuesdayb', 'CN<br>PKA', 'DAA<br>VMD', 'Practical<br>-', 'Practical<br>-', 'OOAD<br>SHK', '-<br>-'),
('wednesdayb', 'DAA<br>VMD', 'OOAD<br>SHK', 'DSP<br>PBL', 'CN<br>PKA', 'Practical<br>-', 'Practical<br>-'),
('thursdayb', 'OOAD<br>SHK', 'WE<br>ARM', 'Practical<br>-', 'Practical<br>-', 'DSP<br>PBL', '-<br>-'),
('fridayb', 'WE<br>ARM', 'DSP<br>PBL', 'CN<br>PKA', '-<br>-', '-<br>-', 'DAA<br>VMD');

-- --------------------------------------------------------

--
-- Table structure for table `semester8`
--

DROP TABLE IF EXISTS `semester8`;
CREATE TABLE IF NOT EXISTS `semester8` (
  `day` varchar(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL,
  UNIQUE KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester8`
--

INSERT INTO `semester8` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('mondaya', 'AI<br>SVK', 'SE<br>SWA', 'Practical<br>-', 'Practical<br>-', 'ES<br>SRG', '-<br>-'),
('tuesdaya', 'SE<br>SWA', 'ES<br>SRG', 'NS<br>NAD', 'AI<br>SVK', 'Practical<br>-', 'Practical<br>-'),
('wednesdaya', 'ES<br>SRG', 'NS<br>NAD', 'Practical<br>-', 'Practical<br>-', 'SE<br>SWA', '-<br>-'),
('thursdaya', 'NS<br>NAD', 'AI<br>SVK', 'ES<br>SRG', '-<br>-', 'Practical<br>-', 'Practical<br>-'),
('fridaya', 'AI<br>SVK', 'SE<br>SWA', 'NS<br>NAD', '-<br>-', '-<br>-', '-<br>-'),
('mondayb', 'AI<br>VSS', 'SE<br>NMY', 'NS<br>GRB', '-<br>-', 'Practical<br>-', 'Practical<br>-'),
('tuesdayb', 'SE<br>NMY', 'ES<br>PKA', 'Practical<br>-', 'Practical<br>-', 'AI<br>VSS', '-<br>-'),
('wednesdayb', 'ES<br>PKA', 'NS<br>GRB', 'SE<br>NMY', 'AI<br>VSS', 'Practical<br>-', 'Practical<br>-'),
('thursdayb', 'NS<br>GRB', 'ES<br>PKA', 'Practical<br>-', 'Practical<br>-', 'SE<br>NMY', '-<br>-'),
('fridayb', 'AI<br>VSS', 'NS<br>GRB', 'ES<br>PKA', '-<br>-', '-<br>-', '-<br>-');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `code` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sname` varchar(10) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `semester` int(1) NOT NULL,
  `isAllotedA` int(1) DEFAULT NULL,
  `allotedtoA` int(3) DEFAULT NULL,
  `allotedtoA2` int(3) DEFAULT NULL,
  `isAllotedB` int(1) DEFAULT NULL,
  `allotedtoB` int(3) DEFAULT NULL,
  `allotedtoB2` int(3) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`code`, `name`, `sname`, `type`, `semester`, `isAllotedA`, `allotedtoA`, `allotedtoA2`, `isAllotedB`, `allotedtoB`, `allotedtoB2`) VALUES
(3001, 'Engineering Mathematics III', 'M3', 'THEORY', 3, 1, 30, NULL, 1, 29, NULL),
(3002, 'Programming Methodology', 'PM', 'THEORY', 3, 1, 14, NULL, 1, 11, NULL),
(3003, 'Electronics Devices & Circuits', 'EDC', 'THEORY', 3, 1, 18, NULL, 1, 18, NULL),
(3004, 'Discrete Structure', 'DS', 'THEORY', 3, 1, 23, NULL, 1, 13, NULL),
(3005, 'Computer Organization', 'CO', 'THEORY', 3, 1, 26, NULL, 1, 27, NULL),
(3017, 'Electronics Devices & Circuits', 'EDC-L', 'LAB', 3, 1, 25, 25, 1, 18, 18),
(5001, 'Data Communication', 'DC', 'THEORY', 5, 1, 19, NULL, 1, 5, NULL),
(5002, 'File Structure and Data Processing', 'FSDP', 'THEORY', 5, 1, 21, NULL, 1, 3, NULL),
(5003, 'System Software', 'SS', 'THEORY', 5, 1, 9, NULL, 1, 6, NULL),
(5004, 'Switching Theory and Logic Design', 'STLD', 'THEORY', 5, 1, 10, NULL, 1, 22, NULL),
(5005, 'Free Elective I', 'FE-1', 'THEORY', 5, 1, 15, NULL, 1, 25, NULL),
(5016, 'System Software', 'SS-L', 'LAB', 5, 1, 9, 28, 1, 28, 6),
(5017, 'Switching Theory and Logic Design', 'STLD-L', 'LAB', 5, 1, 10, 10, 1, 22, 22),
(5018, 'Communication Skills', 'CS-L', 'LAB', 5, 1, 31, 32, 1, 33, 34),
(5019, 'Spoken Tutorial 2', 'ST-2', 'LAB', 5, 1, 24, 24, 1, 13, 13),
(7001, 'Digital Signal Processing', 'DSP', 'THEORY', 7, 1, 8, NULL, 1, 12, NULL),
(7002, 'Computer Networks', 'CN', 'THEORY', 7, 1, 1, NULL, 1, 7, NULL),
(7003, 'Design and Analysis of Algorithm', 'DAA', 'THEORY', 7, 1, 20, NULL, 1, 2, NULL),
(7004, 'Object Oriented Analysis and Design', 'OOAD', 'THEORY', 7, 1, 16, NULL, 1, 17, NULL),
(7005, 'Web Engineering', 'WE', 'THEORY', 7, 1, 4, NULL, 1, 24, NULL),
(7016, 'Digital Signal Processing', 'DSP-L', 'LAB', 7, 1, 15, 15, 1, 12, 12),
(7017, 'Design and Analysis of Algorithm', 'DAA-L', 'LAB', 7, 1, 20, 20, 1, 23, 23),
(7018, 'Object Oriented Analysis and Design', 'OOAD-L', 'LAB', 7, 1, 16, 16, 1, 17, 17),
(3016, 'Programming Methodology', 'PM-L', 'LAB', 3, 1, 14, 14, 1, 11, 11),
(3018, 'Computer Lab 1', 'CLab1', 'LAB', 3, 1, 21, 21, 1, 19, 19),
(3019, 'Spoken Tutorial 1', 'ST-1', 'LAB', 3, 1, 26, 26, 1, 27, 27),
(7019, 'Project and Seminar', 'P&S-1', 'LAB', 7, 1, 50, 50, 1, 50, 50),
(4001, 'Data Structures', 'DS', 'THEORY', 4, 1, 9, NULL, 1, 8, NULL),
(4002, 'Analog and Digital IC\'s', 'ADIC', 'THEORY', 4, 1, 18, NULL, 1, 18, NULL),
(4003, 'Object Oriented Programming', 'OOP', 'THEORY', 4, 1, 23, NULL, 1, 20, NULL),
(4004, 'Assembly Language Programming', 'ALP', 'THEORY', 4, 1, 12, NULL, 1, 26, NULL),
(4005, 'Theory of Computation', 'TOC', 'THEORY', 4, 1, 6, NULL, 1, 13, NULL),
(4006, 'Data Structures', 'DS-L', 'LAB', 4, 1, 9, 9, 1, 13, 13),
(4007, 'Analog and Digital IC\'s', 'ADIC-L', 'LAB', 4, 1, 4, 4, 1, 18, 18),
(4008, 'Object Oriented Programming', 'OOP-L', 'LAB', 4, 1, 23, 23, 1, 20, 20),
(4009, 'Assembly Language Programming', 'ALP-L', 'LAB', 4, 1, 12, 12, 1, 26, 26),
(6001, 'Operating System', 'OS', 'THEORY', 6, 1, 2, NULL, 1, 8, NULL),
(6002, 'Database Systems', 'DBS', 'THEORY', 6, 1, 14, NULL, 1, 10, NULL),
(6003, 'Computing Resource Management', 'CRM', 'THEORY', 6, 1, 24, NULL, 1, 27, NULL),
(6004, 'Computer Architecture', 'CA', 'THEORY', 6, 1, 4, NULL, 1, 17, NULL),
(6005, 'Free Elective II', 'FE-2', 'THEORY', 6, 1, 25, NULL, 1, 15, NULL),
(6006, 'Operating System', 'OS-L', 'LAB', 6, 1, 15, 15, 1, 27, 27),
(6007, 'Database Systems', 'DBS-L', 'LAB', 6, 1, 14, 14, 1, 10, 10),
(6008, 'Computer Lab 2', 'CLab2', 'LAB', 6, 1, 25, 25, 1, 17, 17),
(6009, 'Spoken Tutorial 3', 'ST-3', 'LAB', 6, 1, 24, 24, 1, 6, 11),
(8001, 'Artificial Intelligence', 'AI', 'THEORY', 8, 1, 21, NULL, 1, 16, NULL),
(8002, 'Software Engineering', 'SE', 'THEORY', 8, 1, 5, NULL, 1, 19, NULL),
(8003, 'Embedded System', 'ES', 'THEORY', 8, 1, 3, NULL, 1, 7, NULL),
(8004, 'Network Security', 'NS', 'THEORY', 8, 1, 22, NULL, 1, 1, NULL),
(8005, 'Artificial Intelligence', 'AI-L', 'LAB', 8, 1, 21, 21, 1, 16, 16),
(8006, 'Embedded System', 'ES-L', 'LAB', 8, 1, 22, 22, 1, 7, 7),
(8007, 'Spoken Tutorial 4', 'ST-4', 'LAB', 8, 1, 5, 15, 1, 19, 19),
(8008, 'Project and Seminar', 'P&S-2', 'LAB', 8, 1, 50, 50, 1, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `facultyno` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(3) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`facultyno`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`facultyno`, `name`, `alias`, `designation`, `contact`, `email`) VALUES
(29, 'A S Panurkar', 'ASP', 'Assistant Professor', '', ''),
(28, 'T P Adhau', 'TPA', 'Professor', '', ''),
(27, 'S P Ingale', 'SPI', 'Professor', '', ''),
(5, 'Ms S W Ahmed', 'SWA', 'Professor', '', ''),
(6, 'S S Dandge', 'SSD', 'Professor', '', ''),
(7, 'P K Agrawal', 'PKA', 'Professor', '', ''),
(8, 'A A Chaudhari', 'AAC', 'Professor', '', ''),
(9, 'Ms R A Kale', 'RAK', 'Professor', '', ''),
(10, 'Ms Y S Alone', 'YSA', 'Professor', '', ''),
(11, 'Ms P P Deshmukh', 'PPD', 'Professor', '', ''),
(12, 'Ms P B Lohiya', 'PBL', 'Professor', '', ''),
(13, 'Ms K R Hole', 'KRH', 'Professor', '', ''),
(14, 'Ms K H Deshmukh', 'KHD', 'Professor', '', ''),
(15, 'Ms M A Deshmukh', 'MAD', 'Professor', '', ''),
(16, 'Ms V S Sakharkar', 'VSS', 'Professor', '', ''),
(17, 'Ms S H Kuche', 'SHK', 'Professor', '', ''),
(18, 'Ms A B Pahurkar', 'ABP', 'Professor', '', ''),
(19, 'Ms N M Yawale', 'NMY', 'Professor', '', ''),
(20, 'Ms N V Pardakhe', 'NVP', 'Professor', '', ''),
(21, 'Ms S V Kalbande', 'SVK', 'Professor', '', ''),
(22, 'Ms N A Deshmukh', 'NAD', 'Professor', '', ''),
(23, 'Ms S G Taley', 'SGT', 'Professor', '', ''),
(24, 'A R Mune', 'ARM', 'Professor', '', ''),
(25, 'A O Sable', 'AOS', 'Professor', '', ''),
(26, 'Ms P N Deshmukh', 'PND', 'Professor', '', ''),
(4, 'S P Akarte', 'SPA', 'Professor', '', ''),
(3, 'S R Gupta', 'SRG', 'Dr.', '', ''),
(2, 'V M Deshmukh', 'VMD', 'Dr.', '', ''),
(1, 'G R Bamnote', 'GRB', 'Dr.', '', ''),
(30, 'Ms D V Kapse', 'DVK', 'Assistant Professor', '', ''),
(31, 'Ms Ghazala Parveen', 'GP', 'Assistant Professor', '', ''),
(32, 'S R Deshmukh', 'SRD', 'Assistant Professor', '', ''),
(33, 'Ms P V Gadve', 'PVG', 'Assistant Professor', '', ''),
(34, 'Y R Vaidya', 'YRV', 'Assistant Professor', '', ''),
(50, 'P&S', 'P&S', 'Assistant Professor', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
