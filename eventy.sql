-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2023 at 06:49 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('beza', '00000000'),
('beti', '11111111'),
('biftu', '22222222'),
('birhan', '33333333'),
('meti', '44444444');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `event type` varchar(25) NOT NULL,
  `event code` int(4) NOT NULL,
  PRIMARY KEY (`event code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event type`, `event code`) VALUES
('arts', 1001),
('sightseeing', 1002),
('classes', 1003),
('exhibitions and bazaars', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `logged users`
--

DROP TABLE IF EXISTS `logged users`;
CREATE TABLE IF NOT EXISTS `logged users` (
  `User name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logged users`
--

INSERT INTO `logged users` (`User name`, `password`) VALUES
('melat12', '12221212'),
('@neba', '12212133'),
('linasol', '23323232'),
('melat12', '12221212'),
('@neba', '12212133'),
('linasol', '23323232');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `name` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(10) NOT NULL,
  `User id` int(4) NOT NULL,
  PRIMARY KEY (`User id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `password`, `email`, `username`, `User id`) VALUES
('Yonatan Assefa', '15151010', 'nati@gmail.com', 'nati10', 10),
('Mahlet Mebratu', '12233445', 'mahletmebratu@gmail.com', 'mahi', 11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `First name` text NOT NULL,
  `Last name` text NOT NULL,
  `User id` int(11) NOT NULL,
  PRIMARY KEY (`User id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`First name`, `Last name`, `User id`) VALUES
('Alem', 'Worku', 1),
('Nati ', 'Asmare', 2),
('Rediat', 'Melaku', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
