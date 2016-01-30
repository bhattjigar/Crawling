-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2016 at 01:30 AM
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
  `wen_hash` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`wen_no`),
  UNIQUE KEY `wen_hash` (`wen_hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `blogspot_in`
--

INSERT INTO `blogspot_in` (`wen_no`, `wen_name`, `wen_hash`) VALUES
(1, 'http://solanki-hardik.blogspot.com/feeds/posts/default', 'e24d4a4546d6c9c1ea5f08d8cb305c984e4e2a7deacb3a74bfafc603dd3156d2c7b6165d0bfbed74cd6de5fea41cc20804b3838b3b5f63d1a35fe40bf974d997'),
(2, 'http://solanki-hardik.blogspot.com/feeds/posts/default?alt=rss', '4270cba1e62bbad61edf6238ecbd10d0dd1f2d2a08cacf26f87f1fd9d378729d05e04cd3fbc513015dd11ac442beb51e62efee7e549e90858ca6fb4bf47ff3af'),
(3, 'https://www.blogger.com/feeds/9013034570276674757/posts/default', '19ba6f035906b03e7b06bca64430fbec8a0250c4adcc2825239a3e1e1068d8e57b574b9b56ad7544c39ecaa9f867ba7e44502da1a86bb08d7d6d3dc12dcfeeb0'),
(4, 'https://www.blogger.com/openid-server.g', '17ff1e61388280f4642ddd108160b2e73e7bd5084bcdc622d0a120672dabb174a02988487d859a6f25dbc401ee9d66443913e80857fa78cee013cd9206c1fe2c');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
