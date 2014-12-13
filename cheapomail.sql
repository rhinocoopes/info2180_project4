-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2014 at 03:13 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cheapomail`
--
CREATE DATABASE IF NOT EXISTS `cheapomail` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cheapomail`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(2000) NOT NULL,
  `subject` varchar(555) NOT NULL,
  `recipient_ids` int(11) DEFAULT NULL,
  `user_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_ID` (`user_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `body`, `subject`, `recipient_ids`, `user_ID`) VALUES
(13, 'gaza', 'gaza', 1, 1),
(14, 'az', 'asd', 2, 1),
(15, 'az', 'asd', 2, 1),
(16, 'az', 'asd', 2, 1),
(17, 'asd', 'asd', 3, 1),
(18, 'asd', 'sad', 2, 1),
(19, 'gaza', 'gaza', 3, 1),
(20, 'gaza\r\n', 'sad', 2, 1),
(21, 'sd', 'as', 2, 2),
(22, 'asd', 'asd', 2, 1),
(23, 'as', 'ds', 2, 1),
(24, 'as', 'ds', 1, 1),
(25, 'as', 'ds', 1, 1),
(26, 'sda', 'as', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message_read`
--

CREATE TABLE IF NOT EXISTS `message_read` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `reader_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `message_id` (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `message_read`
--

INSERT INTO `message_read` (`ID`, `message_id`, `reader_id`, `date`) VALUES
(3, 13, 3, '0000-00-00'),
(4, 14, 2, '2014-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(55) NOT NULL,
  `LastName` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `FirstName`, `LastName`, `password`, `username`) VALUES
(1, 'stefan', 'cooper', 'gaza', 'rhino'),
(2, 'Stefan', 'Cooper', 'rhino', 'gaza'),
(3, 'tavia', 'watson', 'watson', 'tavia');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `message_read`
--
ALTER TABLE `message_read`
  ADD CONSTRAINT `message_read_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
