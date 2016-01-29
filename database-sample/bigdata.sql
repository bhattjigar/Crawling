-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2016 at 10:37 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bigdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogspot_in`
--

CREATE TABLE IF NOT EXISTS `blogspot_in` (
  `wen_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `wen_name` text NOT NULL,
  PRIMARY KEY (`wen_no`),
  UNIQUE KEY `wen_no` (`wen_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `blogspot_in`
--

INSERT INTO `blogspot_in` (`wen_no`, `wen_name`) VALUES
(1, 'http://solanki-hardik.blogspot.com/feeds/posts/default'),
(2, 'http://solanki-hardik.blogspot.com/feeds/posts/default?alt=rss'),
(3, 'https://www.blogger.com/feeds/9013034570276674757/posts/default'),
(4, 'https://www.blogger.com/openid-server.g'),
(5, 'http://solanki-hardik.blogspot.com/feeds/posts/default'),
(6, 'http://solanki-hardik.blogspot.com/feeds/posts/default?alt=rss'),
(7, 'https://www.blogger.com/feeds/9013034570276674757/posts/default'),
(8, 'https://www.blogger.com/openid-server.g');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
