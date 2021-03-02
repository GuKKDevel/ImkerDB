-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 06. Mrz 2016 um 06:53
-- Server Version: 5.5.47-0ubuntu0.14.04.1
-- PHP-Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `ImkerDB`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Standort`
--
-- Erzeugt am: 06. Mrz 2016 um 05:30
--

DROP TABLE IF EXISTS `Standort`;
CREATE TABLE IF NOT EXISTS `Standort` (
  `SO_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primärschlüssel Standort',
  `SO_name` varchar(5) NOT NULL COMMENT 'Kürzel für Standort',
  `SO_adresse` varchar(250) NOT NULL COMMENT 'Adresse des Standorts',
  `SO_aufnahme` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ZP Aufnahme',
  `SO_aenderung` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'ZP Änderung',
  PRIMARY KEY (`SO_id`),
  KEY `SO_name` (`SO_name`),
  KEY `SO_name_2` (`SO_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
