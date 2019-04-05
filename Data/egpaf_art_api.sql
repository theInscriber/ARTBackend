-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2019 at 11:33 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egpaf_art_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `concept`
--

CREATE TABLE `concept` (
  `concept_id` int(10) UNSIGNED NOT NULL,
  `retired` int(11) NOT NULL DEFAULT '0',
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `form_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `datatype_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class_id` int(11) NOT NULL DEFAULT '0',
  `is_set` int(11) NOT NULL DEFAULT '0',
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `default_charge` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concept`
--

INSERT INTO `concept` (`concept_id`, `retired`, `short_name`, `description`, `form_text`, `datatype_id`, `class_id`, `is_set`, `creator`, `date_created`, `default_charge`, `version`, `changed_by`, `date_changed`, `retired_by`, `date_retired`, `retire_reason`, `uuid`) VALUES
(1, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '1'),
(2, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '2'),
(3, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '3'),
(4, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '4'),
(5, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '5'),
(6, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '6'),
(7, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '7'),
(8, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '8'),
(9, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '9'),
(10, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '10'),
(11, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '11'),
(12, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '12'),
(13, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '13'),
(14, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '14'),
(15, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '15'),
(16, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '16'),
(17, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '17'),
(18, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '18'),
(19, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '19'),
(20, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '20'),
(21, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '21'),
(22, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '22'),
(23, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '23'),
(24, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '24'),
(25, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '25'),
(26, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '26'),
(27, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '27'),
(28, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '28'),
(29, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '29'),
(30, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '30'),
(31, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '31'),
(32, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '32'),
(33, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '33'),
(34, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '34'),
(35, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '35'),
(36, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '36'),
(37, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '37'),
(38, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '38'),
(39, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '39'),
(40, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '40'),
(41, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '41'),
(42, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '42'),
(43, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '43'),
(44, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '44'),
(45, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '45'),
(46, 0, NULL, NULL, NULL, 3, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '46'),
(47, 0, NULL, NULL, NULL, 6, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '47'),
(48, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '48'),
(49, 0, NULL, NULL, NULL, 4, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '49'),
(50, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '50'),
(51, 0, NULL, NULL, NULL, 1, 0, 0, 1, '2007-05-04 07:39:18', NULL, NULL, 1, '2007-12-28 13:54:26', NULL, NULL, NULL, '51');

-- --------------------------------------------------------

--
-- Table structure for table `concept_datatype`
--

CREATE TABLE `concept_datatype` (
  `concept_datatype_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hl7_abbreviation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `retired` int(11) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concept_datatype`
--

INSERT INTO `concept_datatype` (`concept_datatype_id`, `name`, `hl7_abbreviation`, `description`, `creator`, `date_created`, `retired`, `retired_by`, `date_retired`, `retire_reason`, `uuid`) VALUES
(1, 'Numeric', 'NM', 'Numeric value, including integer or float (e.g., creatinine, weight)', 1, '2004-02-01 22:00:00', 0, NULL, NULL, NULL, 'e093d4aa-df1a-11de-a277-0026181bb84d'),
(2, 'Coded', 'CWE', 'Value determined by term dictionary lookup (i.e., term identifier)', 1, '2004-02-01 22:00:00', 0, NULL, NULL, NULL, 'e093d752-df1a-11de-a277-0026181bb84d'),
(3, 'Text', 'ST', 'Free text', 1, '2004-02-01 22:00:00', 0, NULL, NULL, NULL, 'e093d8a6-df1a-11de-a277-0026181bb84d'),
(4, 'N/A', 'ZZ', 'Not associated with a datatype (e.g., term answers, sets)', 1, '2004-02-01 22:00:00', 0, NULL, NULL, NULL, 'e093d9e6-df1a-11de-a277-0026181bb84d'),
(5, 'Document', 'RP', 'Pointer to a binary or text-based document (e.g., clinical document, RTF, XML, EKG, image, etc.) stored in complex_obs table', 1, '2004-04-14 22:00:00', 0, NULL, NULL, NULL, 'e093db1c-df1a-11de-a277-0026181bb84d'),
(6, 'Date', 'DT', 'Absolute date', 1, '2004-07-21 22:00:00', 0, NULL, NULL, NULL, 'e093dc52-df1a-11de-a277-0026181bb84d'),
(7, 'Time', 'TM', 'Absolute time of day', 1, '2004-07-21 22:00:00', 0, NULL, NULL, NULL, 'e093e904-df1a-11de-a277-0026181bb84d'),
(8, 'Datetime', 'TS', 'Absolute date and time', 1, '2004-07-21 22:00:00', 0, NULL, NULL, NULL, 'e093ea4e-df1a-11de-a277-0026181bb84d'),
(10, 'Boolean', 'BIT', 'Boolean value (yes/no, true/false)', 1, '2004-08-25 22:00:00', 0, NULL, NULL, NULL, 'e093eb7a-df1a-11de-a277-0026181bb84d'),
(11, 'Rule', 'ZZ', 'Value derived from other data', 1, '2006-09-11 11:22:00', 0, NULL, NULL, NULL, 'e093ecb0-df1a-11de-a277-0026181bb84d'),
(12, 'Structured Numeric', 'SN', 'Complex numeric values possible (ie, <5, 1-10, etc.)', 1, '2005-08-05 22:00:00', 0, NULL, NULL, NULL, 'e093ede6-df1a-11de-a277-0026181bb84d'),
(13, 'Complex', 'ED', 'Complex value.  Analogous to HL7 Embedded Datatype', 1, '2008-05-28 10:25:34', 0, NULL, NULL, NULL, 'e093ef1c-df1a-11de-a277-0026181bb84d');

-- --------------------------------------------------------

--
-- Table structure for table `concept_name`
--

CREATE TABLE `concept_name` (
  `concept_name_id` int(10) UNSIGNED NOT NULL,
  `concept_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concept_name_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale_preferred` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concept_name`
--

INSERT INTO `concept_name` (`concept_name_id`, `concept_id`, `name`, `locale`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`, `uuid`, `concept_name_type`, `locale_preferred`) VALUES
(1, 1, 'HIV-related diseases', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '1', NULL, 0),
(2, 2, 'Urine-LAM / CrAg Result', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '2', NULL, 0),
(3, 3, 'WHO Stage', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '3', NULL, 0),
(4, 4, 'CD4', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '4', NULL, 0),
(5, 5, 'CD4 Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '5', NULL, 0),
(6, 6, 'Height', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '6', NULL, 0),
(7, 7, 'Weight', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '7', NULL, 0),
(8, 8, 'Age at Init.', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '8', NULL, 0),
(9, 9, 'TB Status at Initiation', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '9', NULL, 0),
(10, 10, 'KS', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '10', NULL, 0),
(11, 11, 'Pregnant / BreastFeedg', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '11', NULL, 0),
(12, 12, 'Ever taken ARVs', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '12', NULL, 0),
(13, 13, 'Last ARVs drug', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '13', NULL, 0),
(14, 14, 'Last ARVs date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '14', NULL, 0),
(15, 15, 'Site, HTC Serial No.', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '15', NULL, 0),
(16, 16, 'Test Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '16', NULL, 0),
(17, 17, 'Test', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '17', NULL, 0),
(18, 18, 'ART educat. Done', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '18', NULL, 0),
(19, 19, 'ART educat. Done Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '19', NULL, 0),
(20, 20, 'TB treatm. Reg. No.', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '20', NULL, 0),
(21, 21, 'TB treatm. Start Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '21', NULL, 0),
(22, 22, 'ART Regimens Regimen', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '22', NULL, 0),
(23, 23, 'ART Regimens Start Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '23', NULL, 0),
(24, 24, 'Current ART Regimens Regimen', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '24', NULL, 0),
(25, 25, 'Current ART Regimens Start Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '25', NULL, 0),
(26, 26, 'Annual BP screening for 30+yrs sys', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '26', NULL, 0),
(27, 27, 'Annual BP screening for 30+yrs dias', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '27', NULL, 0),
(28, 28, 'Transfer-In Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '28', NULL, 0),
(29, 29, 'ART Reg no', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '29', NULL, 0),
(30, 30, 'Child HCC no', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '30', NULL, 0),
(31, 31, 'Year', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '31', NULL, 0),
(32, 32, 'Visit Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '32', NULL, 0),
(33, 33, 'Weight', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '33', NULL, 0),
(34, 34, 'Pregnant / Breastfeed', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '34', NULL, 0),
(35, 35, 'TB Status (Current)*', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '35', NULL, 0),
(36, 36, 'Side Effects', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '36', NULL, 0),
(37, 37, 'Pill Count', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '37', NULL, 0),
(38, 38, 'Doses Missed', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '38', NULL, 0),
(39, 39, 'ART Regimen', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '39', NULL, 0),
(40, 40, 'ARVs Given No. of tablets', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '40', NULL, 0),
(41, 41, 'ARVs Given To', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '41', NULL, 0),
(42, 42, 'CPT / IPT Given Options', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '42', NULL, 0),
(43, 43, 'CPT / IPT Given No. of tablets', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '43', NULL, 0),
(44, 44, 'Months on ART', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '44', NULL, 0),
(45, 45, 'Viral Load Sample taken', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '45', NULL, 0),
(46, 46, 'Viral Load Result', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '46', NULL, 0),
(47, 47, 'Next Appointment / Outcome Date', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '47', NULL, 0),
(48, 48, 'Adverse Outcome', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '48', NULL, 0),
(49, 48, 'Family Planning Depo Given', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '49', NULL, 0),
(50, 50, 'Family Planning Depo No of Condom', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '50', NULL, 0),
(51, 51, 'Height (cm)', 'en', 1, '2007-05-04 07:39:18', NULL, NULL, 0, NULL, NULL, NULL, '51', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `encounter`
--

CREATE TABLE `encounter` (
  `encounter_id` int(10) UNSIGNED NOT NULL,
  `encounter_type` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `location_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `encounter_datetime` datetime NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `encounter`
--

INSERT INTO `encounter` (`encounter_id`, `encounter_type`, `patient_id`, `provider_id`, `location_id`, `form_id`, `encounter_datetime`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`, `uuid`, `program_id`) VALUES
(1, 1, 4, 4, NULL, NULL, '2019-04-04 08:28:40', 0, '2019-04-04 08:28:40', NULL, NULL, 0, NULL, NULL, NULL, '1ac3e7ba-87d6-4f5e-9716-bea67e1c1e83', NULL),
(2, 2, 4, 4, NULL, NULL, '2019-04-04 08:28:40', 0, '2019-04-04 08:28:40', NULL, NULL, 0, NULL, NULL, NULL, '6778e7f9-6f81-42d4-a6a6-46fe120e280a', NULL),
(3, 3, 4, 4, NULL, NULL, '2019-04-04 08:28:41', 0, '2019-04-04 08:28:41', NULL, NULL, 0, NULL, NULL, NULL, '700293ee-9634-418e-9cb1-60eab678d329', NULL),
(4, 1, 4, 4, NULL, NULL, '2019-04-04 08:29:56', 0, '2019-04-04 08:29:56', NULL, NULL, 0, NULL, NULL, NULL, '96b78339-51b0-4329-9b8e-b6ab90474508', NULL),
(5, 4, 4, 4, NULL, NULL, '2019-04-04 08:59:20', 0, '2019-04-04 08:59:20', NULL, NULL, 0, NULL, NULL, NULL, 'eb65eae0-5b91-4aac-b03c-30eaef888824', NULL),
(6, 4, 4, 4, NULL, NULL, '2019-04-04 09:11:14', 0, '2019-04-04 09:11:14', NULL, NULL, 0, NULL, NULL, NULL, '2b3906ce-3ff2-4784-a2cd-d2f9859c4a3f', NULL),
(7, 4, 4, 4, NULL, NULL, '2019-04-04 09:24:08', 0, '2019-04-04 09:24:08', NULL, NULL, 0, NULL, NULL, NULL, '267c98f8-d74a-4b40-9cd9-572011ac121c', NULL),
(8, 4, 4, 4, NULL, NULL, '2019-04-04 09:26:04', 0, '2019-04-04 09:26:04', NULL, NULL, 0, NULL, NULL, NULL, '65d3903d-a95a-4481-8b90-5d05edb05c8e', NULL),
(9, 4, 4, 4, NULL, NULL, '2019-04-04 09:28:25', 0, '2019-04-04 09:28:25', NULL, NULL, 0, NULL, NULL, NULL, '353f2b0c-b6c8-4945-beae-c9c066325d0e', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `encounter_type`
--

CREATE TABLE `encounter_type` (
  `encounter_type_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `retired` int(11) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `encounter_type`
--

INSERT INTO `encounter_type` (`encounter_type_id`, `name`, `description`, `creator`, `date_created`, `retired`, `retired_by`, `date_retired`, `retire_reason`, `uuid`) VALUES
(1, 'ART REGISTRATION', 'An ART Encounter, for patient registration at enrollment', 1, '2010-01-10 21:32:11', 0, NULL, NULL, NULL, '1'),
(2, 'ART STATUS AT INITIATION', 'An ART Encounter, for patient status at initiation', 1, '2010-01-10 21:32:11', 0, NULL, NULL, NULL, '2'),
(3, 'ART CONFIRMATORY HIV BEFORE START', 'An ART Encounter, for patient HIV test before Start', 1, '2010-01-10 21:32:11', 0, NULL, NULL, NULL, '3'),
(4, 'ART VISIT', 'An ART Encounter, for patient visit', 1, '2010-01-10 21:32:11', 0, NULL, NULL, NULL, '4');

-- --------------------------------------------------------

--
-- Table structure for table `master_card`
--

CREATE TABLE `master_card` (
  `master_card_id` int(10) UNSIGNED NOT NULL,
  `version` int(11) NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_card`
--

INSERT INTO `master_card` (`master_card_id`, `version`, `status`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`, `uuid`) VALUES
(1, 1, '', 0, '2019-04-01 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, '1'),
(2, 2, '', 0, '2019-04-01 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, '2'),
(3, 3, '', 0, '2019-04-01 00:00:01', NULL, NULL, 0, NULL, NULL, NULL, '3'),
(4, 4, '', 0, '2019-04-01 00:00:01', NULL, NULL, 0, NULL, NULL, NULL, '4'),
(5, 5, '', 0, '2019-04-01 00:00:02', NULL, NULL, 0, NULL, NULL, NULL, '5'),
(6, 6, '', 0, '2019-04-01 00:00:02', NULL, NULL, 0, NULL, NULL, NULL, '6'),
(7, 7, '', 0, '2019-04-01 00:00:03', NULL, NULL, 0, NULL, NULL, NULL, '7');

-- --------------------------------------------------------

--
-- Table structure for table `master_card_map`
--

CREATE TABLE `master_card_map` (
  `concept_id` int(10) UNSIGNED NOT NULL,
  `encounter_type_id` int(10) UNSIGNED NOT NULL,
  `master_card_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_card_map`
--

INSERT INTO `master_card_map` (`concept_id`, `encounter_type_id`, `master_card_id`) VALUES
(1, 2, 5),
(1, 2, 6),
(1, 2, 7),
(2, 2, 7),
(3, 2, 5),
(3, 2, 7),
(4, 2, 5),
(4, 2, 6),
(4, 2, 7),
(5, 2, 5),
(5, 2, 6),
(5, 2, 7),
(6, 2, 5),
(6, 2, 6),
(6, 2, 7),
(7, 2, 5),
(7, 2, 6),
(7, 2, 7),
(8, 2, 5),
(8, 2, 6),
(8, 2, 7),
(9, 2, 5),
(9, 2, 6),
(9, 2, 7),
(10, 2, 5),
(10, 2, 6),
(10, 2, 7),
(11, 2, 5),
(11, 2, 6),
(11, 2, 7),
(12, 2, 5),
(12, 2, 6),
(12, 2, 7),
(13, 2, 5),
(13, 2, 6),
(13, 2, 7),
(14, 2, 5),
(14, 2, 6),
(14, 2, 7),
(15, 3, 5),
(15, 3, 6),
(15, 3, 7),
(16, 3, 5),
(16, 3, 6),
(16, 3, 7),
(17, 3, 5),
(17, 3, 6),
(17, 3, 7),
(18, 3, 5),
(18, 3, 6),
(18, 3, 7),
(19, 3, 5),
(19, 3, 6),
(19, 3, 7),
(20, 3, 5),
(20, 3, 6),
(20, 3, 7),
(21, 3, 5),
(21, 3, 6),
(21, 3, 7),
(22, 3, 5),
(22, 3, 6),
(22, 3, 7),
(23, 3, 5),
(23, 3, 6),
(23, 3, 7),
(24, 3, 5),
(24, 3, 6),
(24, 3, 7),
(25, 3, 5),
(25, 3, 6),
(25, 3, 7),
(26, 3, 5),
(26, 3, 6),
(26, 3, 7),
(27, 3, 5),
(27, 3, 6),
(27, 3, 7),
(28, 1, 5),
(28, 1, 6),
(28, 1, 7),
(29, 1, 5),
(29, 1, 6),
(29, 1, 7),
(30, 1, 5),
(30, 1, 6),
(30, 1, 7),
(31, 1, 5),
(31, 1, 6),
(31, 1, 7),
(32, 4, 5),
(32, 4, 6),
(32, 4, 7),
(33, 4, 5),
(33, 4, 6),
(33, 4, 7),
(34, 4, 5),
(34, 4, 6),
(34, 4, 7),
(35, 4, 5),
(35, 4, 6),
(35, 4, 7),
(36, 4, 5),
(36, 4, 6),
(36, 4, 7),
(37, 4, 5),
(37, 4, 6),
(37, 4, 7),
(38, 4, 5),
(38, 4, 6),
(38, 4, 7),
(39, 4, 5),
(39, 4, 6),
(39, 4, 7),
(40, 4, 5),
(40, 4, 6),
(40, 4, 7),
(41, 4, 5),
(41, 4, 6),
(41, 4, 7),
(42, 4, 6),
(42, 4, 7),
(43, 4, 5),
(43, 4, 6),
(43, 4, 7),
(44, 4, 5),
(44, 4, 6),
(44, 4, 7),
(45, 4, 5),
(45, 4, 6),
(45, 4, 7),
(46, 4, 5),
(46, 4, 6),
(46, 4, 7),
(47, 4, 5),
(47, 4, 6),
(47, 4, 7),
(48, 4, 5),
(48, 4, 6),
(48, 4, 7),
(49, 4, 5),
(49, 4, 6),
(50, 4, 5),
(50, 4, 6),
(51, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_03_27_123309_create_master_card_table', 1),
(2, '2019_03_27_123409_create_person_table', 1),
(3, '2019_03_27_123418_create_person_name_table', 1),
(4, '2019_03_27_123420_create_person_address_table', 1),
(5, '2019_03_27_123429_create_patient_table', 1),
(6, '2019_03_27_123435_create_patient_card_table', 1),
(7, '2019_03_27_123440_create_concept_datatype_table', 1),
(8, '2019_03_27_123447_create_concept_table', 1),
(9, '2019_03_27_123459_create_concept_name_table', 1),
(10, '2019_03_27_123500_create_encounter_type_table', 1),
(11, '2019_03_27_123514_create_encounter_table', 1),
(14, '2019_03_27_123520_create_master_card_map_table', 2),
(15, '2019_03_27_123532_create_obs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `obs`
--

CREATE TABLE `obs` (
  `obs_id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `concept_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `encounter_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `obs_datetime` datetime NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `obs_group_id` int(11) DEFAULT NULL,
  `accession_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_group_id` int(11) DEFAULT NULL,
  `value_boolean` tinyint(1) DEFAULT NULL,
  `value_coded` int(11) DEFAULT NULL,
  `value_coded_name_id` int(11) DEFAULT NULL,
  `value_drug` int(11) DEFAULT NULL,
  `value_datetime` datetime DEFAULT NULL,
  `value_numeric` double(8,2) DEFAULT NULL,
  `value_modifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `date_started` datetime DEFAULT NULL,
  `date_stopped` datetime DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_complex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obs`
--

INSERT INTO `obs` (`obs_id`, `person_id`, `concept_id`, `encounter_id`, `order_id`, `obs_datetime`, `location_id`, `obs_group_id`, `accession_number`, `value_group_id`, `value_boolean`, `value_coded`, `value_coded_name_id`, `value_drug`, `value_datetime`, `value_numeric`, `value_modifier`, `value_text`, `date_started`, `date_stopped`, `comments`, `creator`, `date_created`, `voided`, `voided_by`, `date_voided`, `void_reason`, `value_complex`, `uuid`) VALUES
(1, 4, 28, 1, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, 'ae8631a1-1707-43e2-a7f1-d8f6f16da212'),
(2, 4, 29, 1, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZCH1', NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, '91cadaf0-bd16-4cde-82a1-dfc83b5a35bc'),
(3, 4, 30, 1, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, 'ae961fd8-d54d-47e2-aa79-c81bf1f54323'),
(4, 4, 31, 1, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, '2d332476-3e20-49da-9f26-d71e8c8cded1'),
(5, 4, 1, 2, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'STis', NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, 'c108889b-d8d9-4895-8021-8a2295e60a6e'),
(6, 4, 2, 2, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, '8723813a-45da-4f3f-80e6-2590653eb71a'),
(7, 4, 3, 2, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, '526feb35-edf1-43ba-a244-81ea4273d4a7'),
(8, 4, 4, 2, NULL, '2019-04-04 08:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:40', 0, NULL, NULL, NULL, NULL, '9f2a5596-5fb6-4e0b-91ca-baaa36909f60'),
(9, 4, 5, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'ed339999-9a38-47c7-bd21-7120a5b4afe7'),
(10, 4, 6, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'aadc8b98-6da6-4258-8c6d-5ce24752012f'),
(11, 4, 7, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'd9bf8359-a9c8-4dfd-a450-c678510dee27'),
(12, 4, 8, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'ac498dc0-3aa1-495c-91a0-477ac15e4c47'),
(13, 4, 9, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Never > 2yrs', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'a0f44b7c-866c-4f78-b56a-c43989ce825b'),
(14, 4, 10, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '5a3ee47f-4916-41f6-9fc2-8eba6918bbef'),
(15, 4, 11, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'bfa20ee7-450e-472d-93c6-234f76decc49'),
(16, 4, 12, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'eb2de9ab-e7ac-4195-a858-b58f12fd1d50'),
(17, 4, 13, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ARV', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'd5f69905-1e2f-451e-ba88-fbae0d5eb690'),
(18, 4, 14, 2, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'f022d76c-619d-41ec-8c70-3088960e4252'),
(19, 4, 15, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZCH', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '70078682-2976-4bb8-b7bb-70a3f6bd73ba'),
(20, 4, 16, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '1ad9226f-55b3-4ca7-9522-8970a330ce2c'),
(21, 4, 17, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rapid', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '043681be-df04-44ef-b0f4-9317d9304a53'),
(22, 4, 18, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '392853aa-3d56-43d4-bfac-62a0fd9898b7'),
(23, 4, 19, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-09', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '6a64789c-d876-44af-bc36-71906b29227e'),
(24, 4, 20, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TB1', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'f6f9459e-145b-45ab-aaf7-c2552bc9e908'),
(25, 4, 21, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '73dfae22-4c7b-467a-b584-dfa686d4606e'),
(26, 4, 22, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9A', NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, 'e2ca68d5-a5a2-482f-a4b1-e1686bb1b5a8'),
(27, 4, 23, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '248c97e5-c447-4971-bdde-7900355c798d'),
(28, 4, 24, 3, NULL, '2019-04-04 08:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:41', 0, NULL, NULL, NULL, NULL, '3da6e240-0237-48ca-9865-ff7ab019663d'),
(29, 4, 25, 3, NULL, '2019-04-04 08:28:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:42', 0, NULL, NULL, NULL, NULL, '99c5c239-7a76-4ca4-a6bf-a1bf3dfa1782'),
(30, 4, 26, 3, NULL, '2019-04-04 08:28:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:42', 0, NULL, NULL, NULL, NULL, '062c4f2d-849f-4911-a1f0-312e19b684ff'),
(31, 4, 27, 3, NULL, '2019-04-04 08:28:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:28:42', 0, NULL, NULL, NULL, NULL, 'ad5307a0-c819-47ae-b587-670e85cc6b1e'),
(32, 4, 28, 4, NULL, '2019-04-04 08:29:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:29:56', 0, NULL, NULL, NULL, NULL, '511fb5c0-bb9b-42c7-99c2-7ea3b27d2921'),
(33, 4, 29, 4, NULL, '2019-04-04 08:29:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, 0, '2019-04-04 08:29:57', 0, NULL, NULL, NULL, NULL, 'e3ff71f0-68c6-4e63-9430-06198e977d48'),
(34, 4, 30, 4, NULL, '2019-04-04 08:29:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:29:57', 0, NULL, NULL, NULL, NULL, 'aed63c78-0e9f-4ec7-b6a8-48810964b6ea'),
(35, 4, 31, 4, NULL, '2019-04-04 08:29:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:29:57', 0, NULL, NULL, NULL, NULL, '03ec7993-ac60-41e5-b461-ffab675866b8'),
(36, 4, 32, 5, NULL, '2019-04-04 08:59:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:20', 0, NULL, NULL, NULL, NULL, 'e879bc5f-23d6-4528-a5a0-b46dc3768d24'),
(37, 4, 33, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '5c1c880e-3905-4ce6-b63b-b6e8b401cfe2'),
(38, 4, 34, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Preg', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, 'dbfbf8bd-16cf-4303-8d83-24d996f38a2f'),
(39, 4, 35, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, 'd50ed19f-c7ec-4b22-b422-124a7b981522'),
(40, 4, 36, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '3a89a948-d6af-4e70-981e-a1cce96a5cbc'),
(41, 4, 37, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, 'd3352f2d-75ea-46c3-8af9-8a58c8e82eb5'),
(42, 4, 38, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '1d128afe-6a1a-4031-859d-d1aa58a568a4'),
(43, 4, 39, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0A', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '33a1e9be-0c99-4026-9f4f-8c59021fac5b'),
(44, 4, 40, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '120', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '12c2fa1e-dbb0-4bdb-b18e-fa26f57f8420'),
(45, 4, 41, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, 'a2f175b3-56cb-4280-9131-7e182cf4de9f'),
(46, 4, 42, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '7f164ac4-33ec-42df-954e-feac2519e106'),
(47, 4, 43, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '120', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, 'cce90718-8431-4194-8720-331b045c594c'),
(48, 4, 44, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, 'd8f01fd2-34bb-4597-ba0b-f31583a56b44'),
(49, 4, 45, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'true', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '3925e7c2-9cde-44c5-8846-9f41474d0599'),
(50, 4, 46, 5, NULL, '2019-04-04 08:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', NULL, NULL, NULL, 0, '2019-04-04 08:59:21', 0, NULL, NULL, NULL, NULL, '99484885-0041-4ac8-87dc-afd695bfe6e3'),
(51, 4, 47, 5, NULL, '2019-04-04 08:59:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:22', 0, NULL, NULL, NULL, NULL, '88d14bea-862d-4d1a-83f1-0289c0fd9c87'),
(52, 4, 48, 5, NULL, '2019-04-04 08:59:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, 0, '2019-04-04 08:59:22', 0, NULL, NULL, NULL, NULL, '9c61f2f0-abcd-4c32-b03e-350371a77c8d'),
(53, 4, 49, 5, NULL, '2019-04-04 08:59:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Depo', NULL, NULL, NULL, 0, '2019-04-04 08:59:22', 0, NULL, NULL, NULL, NULL, '84d90532-4002-45fe-9674-1210fe5c0b85'),
(54, 4, 50, 5, NULL, '2019-04-04 08:59:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:22', 0, NULL, NULL, NULL, NULL, 'd0c969ac-dd98-4395-b5d1-c6b0e82e3f63'),
(55, 4, 51, 5, NULL, '2019-04-04 08:59:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 08:59:22', 0, NULL, NULL, NULL, NULL, 'c5dafa8a-efce-43ef-8b1e-aea0a6011b93'),
(56, 4, 32, 6, NULL, '2019-04-04 09:11:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:14', 0, NULL, NULL, NULL, NULL, '4f4c6e8c-0780-41f2-aab8-3af2249f80ab'),
(57, 4, 33, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, '7fa74413-d997-45c0-8dee-823eb5cefdfa'),
(58, 4, 34, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Preg', NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, 'df958442-fd6c-4fcb-a045-ed5a5cea2a5c'),
(59, 4, 35, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, '2a2db8d2-e351-4a9c-ab69-254043327538'),
(60, 4, 36, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, '3810b584-4b02-49b7-8d0d-5a8354766aaa'),
(61, 4, 37, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, 'b60621b2-4fa7-4edb-9d0c-3f822eda6b9e'),
(62, 4, 38, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, '032e0bb3-91eb-46f5-8f66-4d98bb20d54a'),
(63, 4, 39, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2A', NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, '336040cd-a77e-494f-80e3-26c076648023'),
(64, 4, 40, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, 'b93eceeb-c2ef-4918-86d6-b7302b99a447'),
(65, 4, 41, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, '79a0fd75-13a2-4c34-9ec0-870de9093497'),
(66, 4, 42, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CI', NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, 'ab02a8f4-239a-4708-bfff-bf703eb5deaa'),
(67, 4, 43, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, '6ea3114d-6a93-4b7f-9694-0141f3622488'),
(68, 4, 44, 6, NULL, '2019-04-04 09:11:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:15', 0, NULL, NULL, NULL, NULL, 'e64ebbac-5a04-4944-a66f-7509dac54672'),
(69, 4, 45, 6, NULL, '2019-04-04 09:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bled', NULL, NULL, NULL, 0, '2019-04-04 09:11:16', 0, NULL, NULL, NULL, NULL, '5dcd2f79-310d-49e9-92d8-0b4ce3ceac8e'),
(70, 4, 46, 6, NULL, '2019-04-04 09:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:16', 0, NULL, NULL, NULL, NULL, '80b1beaa-f26d-423b-86de-2e76594b85bb'),
(71, 4, 47, 6, NULL, '2019-04-04 09:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:16', 0, NULL, NULL, NULL, NULL, 'b0bbd00c-7914-4126-a1b6-d7cfa887f566'),
(72, 4, 48, 6, NULL, '2019-04-04 09:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Def', NULL, NULL, NULL, 0, '2019-04-04 09:11:16', 0, NULL, NULL, NULL, NULL, 'ecd775a6-eeaa-40a4-aacc-a2775a114689'),
(73, 4, 49, 6, NULL, '2019-04-04 09:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Depo', NULL, NULL, NULL, 0, '2019-04-04 09:11:16', 0, NULL, NULL, NULL, NULL, '69ecef64-f8ad-491a-be16-475b0e851794'),
(74, 4, 50, 6, NULL, '2019-04-04 09:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:11:16', 0, NULL, NULL, NULL, NULL, '4ddf198f-3f6f-4439-acf2-db62515367b0'),
(75, 4, 32, 7, NULL, '2019-04-04 09:24:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:08', 0, NULL, NULL, NULL, NULL, 'ddc9bb3e-9c73-4d7f-a573-28b8a99f0563'),
(76, 4, 33, 7, NULL, '2019-04-04 09:24:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:08', 0, NULL, NULL, NULL, NULL, '683a741d-e698-4342-b0ef-8df3f12cf13a'),
(77, 4, 34, 7, NULL, '2019-04-04 09:24:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Preg', NULL, NULL, NULL, 0, '2019-04-04 09:24:08', 0, NULL, NULL, NULL, NULL, 'eeb12b92-f99c-404f-8deb-0b78d27ffe85'),
(78, 4, 35, 7, NULL, '2019-04-04 09:24:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 09:24:08', 0, NULL, NULL, NULL, NULL, '89f8e963-61b2-48ff-9730-c6f85a6713a2'),
(79, 4, 36, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '8d890a20-e912-4d1b-957e-14cf084c63bd'),
(80, 4, 37, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '8ee72ca6-5a7a-4559-82f4-907e881af54b'),
(81, 4, 38, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '1f693bc8-c31d-4254-b218-315a67336a26'),
(82, 4, 39, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, 'a221318b-0d00-4872-ae67-5b56cd5fbcfc'),
(83, 4, 40, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '1371809f-97a7-487e-b8ae-b5c596ae93ad'),
(84, 4, 41, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '1e1af03f-7e24-4312-8aa4-d3fee99cb06e'),
(85, 4, 42, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '67cb45ea-c45d-43ec-b952-84cb7fe8861c'),
(86, 4, 43, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, 'e05ac648-c2bc-4d5d-b013-7fd067d99e03'),
(87, 4, 44, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '3b8e123b-b34c-480c-8c9c-771fb96aecfb'),
(88, 4, 45, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, 'fce0ed4a-d808-4887-8a63-4a8e6c043b3d'),
(89, 4, 46, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '82c72b5f-3e48-4aa5-9dd2-3d2ef7cb9542'),
(90, 4, 47, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, 'a75c333a-263b-4266-96f1-f07a860b152e'),
(91, 4, 48, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '41461f5e-addf-44e2-b060-4a684f3225c0'),
(92, 4, 49, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, 'c4c6a88b-681e-4855-8786-8e6a14bbb88b'),
(93, 4, 50, 7, NULL, '2019-04-04 09:24:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:24:09', 0, NULL, NULL, NULL, NULL, '90cef5d4-c215-4289-94d9-6d1b94c4bd28'),
(94, 4, 32, 8, NULL, '2019-04-04 09:26:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:04', 0, NULL, NULL, NULL, NULL, '1aa08d88-e17c-493e-8a3f-8de291dd3fdc'),
(95, 4, 33, 8, NULL, '2019-04-04 09:26:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:04', 0, NULL, NULL, NULL, NULL, '552b3af8-d182-472d-8bde-9dab24ef3aa2'),
(96, 4, 34, 8, NULL, '2019-04-04 09:26:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:04', 0, NULL, NULL, NULL, NULL, '99020ea0-d1a3-4401-aef1-6c3e8a8b2857'),
(97, 4, 35, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '91e825df-73d0-4150-b7d6-2b5489ff12d6'),
(98, 4, 36, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, 'e53b5210-52fd-47ed-990e-8fa2fd00c08c'),
(99, 4, 37, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '62040df3-36c4-4e8a-a5d8-1c56c6343ddb'),
(100, 4, 38, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '080ede3e-bdcf-491a-81b2-eb9e12764206'),
(101, 4, 39, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '7313e352-15bb-4be7-bff2-0eab09bfc6fe'),
(102, 4, 40, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, 'b32bf400-970c-461a-9da7-02fcc0f063b1'),
(103, 4, 41, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '73753990-4536-4af3-9ff2-20b83124c9b2'),
(104, 4, 42, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '26b79dbc-a231-4cfe-b09d-9ed06a7fc636'),
(105, 4, 43, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, 'f7a1af11-a44d-4666-a44d-08661d32c459'),
(106, 4, 44, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '68794688-bd0f-4eee-809f-01fc010489d3'),
(107, 4, 45, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, 'b6051ab4-099e-4554-9e3a-54caae0739fb'),
(108, 4, 46, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '49858daf-e90f-46ea-b66a-b2bf7f2590a5'),
(109, 4, 47, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '971fd060-6fe9-434d-8853-207b1bf3597a'),
(110, 4, 48, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, 'd469586c-44fb-47a6-b503-d377f8e29049'),
(111, 4, 49, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, 'd3685a24-ee3d-4fed-97e0-4dca7f03316a'),
(112, 4, 50, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '2da37084-3193-4a66-9108-181cbc71c85b'),
(113, 4, 51, 8, NULL, '2019-04-04 09:26:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:26:05', 0, NULL, NULL, NULL, NULL, '31d4ce47-f9fd-427f-8b01-e329c6a50990'),
(114, 4, 32, 9, NULL, '2019-04-04 09:28:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:25', 0, NULL, NULL, NULL, NULL, '0b1fd1ef-6dfd-4d6d-a15f-7591e7adbe7a'),
(115, 4, 33, 9, NULL, '2019-04-04 09:28:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:25', 0, NULL, NULL, NULL, NULL, '08011994-2e28-474e-8c7e-1287f93bbfbf'),
(116, 4, 34, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'b7d9f1c0-208c-47cb-a784-dcd9bc670e4a'),
(117, 4, 35, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'e30e8d3b-9d91-4761-8810-05f4c50ccc86'),
(118, 4, 36, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'feae1a6f-1c84-4600-9cea-7ad61247db4d'),
(119, 4, 37, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '84274a99-74e1-47d5-a215-0368eff46b5b'),
(120, 4, 38, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120.00, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '608209fb-92d3-47c6-8aa8-fd8650ff4297'),
(121, 4, 39, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0A', NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '1788f213-ec8e-42bf-a267-ace84e94c5c0'),
(122, 4, 40, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '120', NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'ba6b61e8-f97b-4927-8559-12c0a0bcded8'),
(123, 4, 41, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'c9796906-a92b-49e0-92c2-2353ead14697'),
(124, 4, 42, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'b8bc68e5-7d31-4aeb-8b88-c0bc9c598b0d'),
(125, 4, 43, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '16b2ba78-a7d1-4898-bd1e-4190c91a3323'),
(126, 4, 44, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'e910a103-1d4f-4781-85b6-65cde72cb3b0'),
(127, 4, 45, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '2888c1b5-27bb-42b3-b37e-9a4e38daa55e'),
(128, 4, 46, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'cb38e36f-3005-4334-b180-1ea9b0f75307'),
(129, 4, 47, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '4ed6ca61-5f67-4b44-946a-329ec08b3f1f'),
(130, 4, 48, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '87366c11-ac0b-4ebb-a0c2-1426efc42e6a'),
(131, 4, 49, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '7eb6b840-9bc1-4965-b222-3b630093f03e'),
(132, 4, 50, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, '351f59e8-caea-4e75-a889-2d8aac602f75'),
(133, 4, 51, 9, NULL, '2019-04-04 09:28:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-04-04 09:28:26', 0, NULL, NULL, NULL, NULL, 'c1b01abd-8295-43a9-91f4-862bc2a41151');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(10) UNSIGNED NOT NULL,
  `tribe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_up` enum('true','false') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `tribe`, `guardian_name`, `patient_phone`, `guardian_phone`, `follow_up`, `guardian_relation`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`) VALUES
(3, 'Lomwe', 'Malawi Yute', '0881481182', '0888670026', 'true', 'Father', 0, '2019-04-02 05:19:39', NULL, NULL, 0, NULL, NULL, NULL),
(4, 'Chewa', 'Samuel Yute', '0888800900', '0999800900', 'false', 'Brother', 0, '2019-04-02 08:40:08', NULL, NULL, 0, NULL, NULL, NULL),
(5, 'Chewa', 'Samuel Yute', '0881481182', '0881481182', 'true', 'Friend', 0, '2019-04-04 07:22:02', NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_card`
--

CREATE TABLE `patient_card` (
  `patient_card_id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `master_card_id` int(10) UNSIGNED NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_card`
--

INSERT INTO `patient_card` (`patient_card_id`, `patient_id`, `master_card_id`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`, `uuid`) VALUES
(1, 4, 6, 0, '2019-04-04 07:23:35', NULL, NULL, 0, NULL, NULL, NULL, '58854489-2726-493d-8eca-6770ff36efc0'),
(2, 4, 5, 0, '2019-04-04 07:44:00', NULL, NULL, 0, NULL, NULL, NULL, '48203c45-be70-45d9-b093-64b024b58f84'),
(3, 4, 7, 0, '2019-04-04 09:26:40', NULL, NULL, 0, NULL, NULL, NULL, 'e39f2b03-9402-4131-8688-cf88050896ac');

-- --------------------------------------------------------

--
-- Table structure for table `patient_card_map`
--

CREATE TABLE `patient_card_map` (
  `encounter_id` int(10) UNSIGNED NOT NULL,
  `patient_card_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_card_map`
--

INSERT INTO `patient_card_map` (`encounter_id`, `patient_card_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(10) UNSIGNED NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `birthdate_estimated` int(11) NOT NULL DEFAULT '0',
  `dead` int(11) NOT NULL DEFAULT '0',
  `death_date` datetime DEFAULT NULL,
  `cause_of_death` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `gender`, `birthdate`, `birthdate_estimated`, `dead`, `death_date`, `cause_of_death`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`, `uuid`) VALUES
(3, 'M', '2019-04-01', 0, 0, NULL, NULL, 0, '2019-04-02 05:19:38', NULL, NULL, 0, NULL, NULL, NULL, 'ce2f40be-f42a-49c9-a865-eb6fc0f4ce10'),
(4, 'M', '2019-04-01', 0, 0, NULL, NULL, 0, '2019-04-02 08:40:08', NULL, NULL, 0, NULL, NULL, NULL, 'd4f9e41b-0358-42e1-9e69-830fe7f5b18a'),
(5, 'M', '2019-04-03', 0, 0, NULL, NULL, 0, '2019-04-04 07:22:02', NULL, NULL, 0, NULL, NULL, NULL, 'db70ca66-f10b-4989-bff1-120b02df85c4');

-- --------------------------------------------------------

--
-- Table structure for table `person_address`
--

CREATE TABLE `person_address` (
  `person_address_id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `preferred` int(11) NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood_cell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `township_division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_address`
--

INSERT INTO `person_address` (`person_address_id`, `person_id`, `preferred`, `address1`, `address2`, `city_village`, `state_province`, `postal_code`, `country`, `latitude`, `longitude`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`, `county_district`, `neighborhood_cell`, `region`, `subregion`, `township_division`, `uuid`) VALUES
(3, 3, 0, 'Ndola', NULL, 'Zomba', 'Southern', 'Box 280', 'Malawi', NULL, NULL, 0, '2019-04-02 05:19:39', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'af5c0f00-577c-40ed-9178-28dadfa38978'),
(4, 4, 0, 'Ndola', NULL, 'Bwaira', 'Southern', 'Box 280', 'Malawi', NULL, NULL, 0, '2019-04-02 08:40:08', NULL, NULL, 0, NULL, NULL, NULL, 'Zomba', NULL, NULL, NULL, NULL, '6cf82610-7f56-4de9-9a2f-b5f4212c1d99'),
(5, 5, 0, 'Ndola', NULL, 'Zomba', 'Southern', 'Box 280', 'Malawi', NULL, NULL, 0, '2019-04-04 07:22:02', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ndola', 'fcf851dd-1ae6-49ce-b69a-8b0024828d7a');

-- --------------------------------------------------------

--
-- Table structure for table `person_name`
--

CREATE TABLE `person_name` (
  `person_name_id` int(10) UNSIGNED NOT NULL,
  `preferred` int(11) NOT NULL DEFAULT '0',
  `person_id` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `given_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name_suffix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `voided` int(11) NOT NULL DEFAULT '0',
  `voided_by` int(11) DEFAULT NULL,
  `date_voided` datetime DEFAULT NULL,
  `void_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(38) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_name`
--

INSERT INTO `person_name` (`person_name_id`, `preferred`, `person_id`, `prefix`, `given_name`, `middle_name`, `family_name_prefix`, `family_name`, `family_name2`, `family_name_suffix`, `degree`, `creator`, `date_created`, `changed_by`, `date_changed`, `voided`, `voided_by`, `date_voided`, `void_reason`, `uuid`) VALUES
(3, 0, 3, NULL, 'Samuel', 'Malawi', NULL, 'Yute', NULL, NULL, NULL, 0, '2019-04-02 05:19:38', NULL, NULL, 0, NULL, NULL, NULL, 'c9b2197d-43a1-483b-8ad0-9cbb53547869'),
(4, 0, 4, NULL, 'Pempho', 'Walker', NULL, 'Ndange', NULL, NULL, NULL, 0, '2019-04-02 08:40:08', NULL, NULL, 0, NULL, NULL, NULL, '88b6f6f5-06dc-476f-8574-a444dd7cf32e'),
(5, 0, 5, NULL, 'Jack', 'Malawi', NULL, 'Msonkho', NULL, NULL, NULL, 0, '2019-04-04 07:22:02', NULL, NULL, 0, NULL, NULL, NULL, 'e7be72df-4350-4ac4-a895-f5e97177cdf2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concept`
--
ALTER TABLE `concept`
  ADD PRIMARY KEY (`concept_id`),
  ADD UNIQUE KEY `concept_uuid_unique` (`uuid`),
  ADD KEY `concept_datatype_id_foreign` (`datatype_id`);

--
-- Indexes for table `concept_datatype`
--
ALTER TABLE `concept_datatype`
  ADD PRIMARY KEY (`concept_datatype_id`),
  ADD UNIQUE KEY `concept_datatype_uuid_unique` (`uuid`);

--
-- Indexes for table `concept_name`
--
ALTER TABLE `concept_name`
  ADD PRIMARY KEY (`concept_name_id`),
  ADD UNIQUE KEY `concept_name_uuid_unique` (`uuid`),
  ADD KEY `concept_name_concept_id_foreign` (`concept_id`);

--
-- Indexes for table `encounter`
--
ALTER TABLE `encounter`
  ADD PRIMARY KEY (`encounter_id`),
  ADD UNIQUE KEY `encounter_uuid_unique` (`uuid`),
  ADD KEY `encounter_patient_id_foreign` (`patient_id`),
  ADD KEY `encounter_encounter_type_foreign` (`encounter_type`),
  ADD KEY `encounter_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `encounter_type`
--
ALTER TABLE `encounter_type`
  ADD PRIMARY KEY (`encounter_type_id`),
  ADD UNIQUE KEY `encounter_type_uuid_unique` (`uuid`);

--
-- Indexes for table `master_card`
--
ALTER TABLE `master_card`
  ADD PRIMARY KEY (`master_card_id`),
  ADD UNIQUE KEY `master_card_version_unique` (`version`),
  ADD UNIQUE KEY `master_card_uuid_unique` (`uuid`);

--
-- Indexes for table `master_card_map`
--
ALTER TABLE `master_card_map`
  ADD PRIMARY KEY (`concept_id`,`encounter_type_id`,`master_card_id`),
  ADD KEY `master_card_map_encounter_type_id_foreign` (`encounter_type_id`),
  ADD KEY `master_card_map_master_card_id_foreign` (`master_card_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obs`
--
ALTER TABLE `obs`
  ADD PRIMARY KEY (`obs_id`),
  ADD UNIQUE KEY `obs_uuid_unique` (`uuid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_card`
--
ALTER TABLE `patient_card`
  ADD PRIMARY KEY (`patient_card_id`),
  ADD UNIQUE KEY `patient_card_uuid_unique` (`uuid`),
  ADD KEY `patient_card_patient_id_foreign` (`patient_id`),
  ADD KEY `patient_card_master_card_id_foreign` (`master_card_id`);

--
-- Indexes for table `patient_card_map`
--
ALTER TABLE `patient_card_map`
  ADD PRIMARY KEY (`encounter_id`,`patient_card_id`),
  ADD KEY `patient_card_map_patient_card_id_foreign` (`patient_card_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `person_uuid_unique` (`uuid`);

--
-- Indexes for table `person_address`
--
ALTER TABLE `person_address`
  ADD PRIMARY KEY (`person_address_id`),
  ADD UNIQUE KEY `person_address_uuid_unique` (`uuid`),
  ADD KEY `person_address_person_id_foreign` (`person_id`);

--
-- Indexes for table `person_name`
--
ALTER TABLE `person_name`
  ADD PRIMARY KEY (`person_name_id`),
  ADD UNIQUE KEY `person_name_uuid_unique` (`uuid`),
  ADD KEY `person_name_person_id_foreign` (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concept`
--
ALTER TABLE `concept`
  MODIFY `concept_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `concept_datatype`
--
ALTER TABLE `concept_datatype`
  MODIFY `concept_datatype_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `concept_name`
--
ALTER TABLE `concept_name`
  MODIFY `concept_name_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `encounter`
--
ALTER TABLE `encounter`
  MODIFY `encounter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `encounter_type`
--
ALTER TABLE `encounter_type`
  MODIFY `encounter_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_card`
--
ALTER TABLE `master_card`
  MODIFY `master_card_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `obs`
--
ALTER TABLE `obs`
  MODIFY `obs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `patient_card`
--
ALTER TABLE `patient_card`
  MODIFY `patient_card_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `person_address`
--
ALTER TABLE `person_address`
  MODIFY `person_address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `person_name`
--
ALTER TABLE `person_name`
  MODIFY `person_name_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `concept`
--
ALTER TABLE `concept`
  ADD CONSTRAINT `concept_datatype_id_foreign` FOREIGN KEY (`datatype_id`) REFERENCES `concept_datatype` (`concept_datatype_id`) ON DELETE CASCADE;

--
-- Constraints for table `concept_name`
--
ALTER TABLE `concept_name`
  ADD CONSTRAINT `concept_name_concept_id_foreign` FOREIGN KEY (`concept_id`) REFERENCES `concept` (`concept_id`) ON DELETE CASCADE;

--
-- Constraints for table `encounter`
--
ALTER TABLE `encounter`
  ADD CONSTRAINT `encounter_encounter_type_foreign` FOREIGN KEY (`encounter_type`) REFERENCES `encounter_type` (`encounter_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `encounter_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `encounter_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `master_card_map`
--
ALTER TABLE `master_card_map`
  ADD CONSTRAINT `master_card_map_concept_id_foreign` FOREIGN KEY (`concept_id`) REFERENCES `concept` (`concept_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `master_card_map_encounter_type_id_foreign` FOREIGN KEY (`encounter_type_id`) REFERENCES `encounter_type` (`encounter_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `master_card_map_master_card_id_foreign` FOREIGN KEY (`master_card_id`) REFERENCES `master_card` (`master_card_id`) ON DELETE CASCADE;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_card`
--
ALTER TABLE `patient_card`
  ADD CONSTRAINT `patient_card_master_card_id_foreign` FOREIGN KEY (`master_card_id`) REFERENCES `master_card` (`master_card_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_card_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_card_map`
--
ALTER TABLE `patient_card_map`
  ADD CONSTRAINT `patient_card_map_encounter_id_foreign` FOREIGN KEY (`encounter_id`) REFERENCES `encounter` (`encounter_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patient_card_map_patient_card_id_foreign` FOREIGN KEY (`patient_card_id`) REFERENCES `patient_card` (`patient_card_id`) ON DELETE CASCADE;

--
-- Constraints for table `person_address`
--
ALTER TABLE `person_address`
  ADD CONSTRAINT `person_address_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `person_name`
--
ALTER TABLE `person_name`
  ADD CONSTRAINT `person_name_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
