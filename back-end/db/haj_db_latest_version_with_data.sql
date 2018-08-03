-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2018 at 04:53 AM
-- Server version: 5.6.36-82.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zarqadal_hajj`
--
CREATE DATABASE IF NOT EXISTS `zarqadal_hajj` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `zarqadal_hajj`;

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
CREATE TABLE `buses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` int(25) UNSIGNED NOT NULL,
  `capacity` int(11) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `name`, `number`, `capacity`, `license_number`, `color`, `model`, `created_at`) VALUES
(1, NULL, 32, 24, 'F0T 1U7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(2, NULL, 42, 22, 'X8D 3Y1', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(3, NULL, 85, 33, 'S3R 3X7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(4, NULL, 75, 25, 'B4J 6X5', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(5, NULL, 59, 8, 'P5Y 8Y3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(6, NULL, 99, 14, 'V7V 5N3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(7, NULL, 32, 13, 'Z4M 8X4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(8, NULL, 2, 31, 'I4V 3P7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(9, NULL, 52, 37, 'R0J 9E9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(10, NULL, 36, 41, 'E3G 8O0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(11, NULL, 35, 7, 'M0S 5X8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(12, NULL, 13, 47, 'Z8B 6F3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(13, NULL, 26, 45, 'Z1S 2G0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(14, NULL, 65, 45, 'Y1G 8M8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(15, NULL, 7, 48, 'T7D 7U4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(16, NULL, 70, 34, 'Z2U 1K5', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(17, NULL, 15, 46, 'C2Q 6J4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(18, NULL, 91, 46, 'V3Y 3A0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(19, NULL, 61, 32, 'J2R 8P9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(20, NULL, 37, 24, 'O3B 1D6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(21, NULL, 10, 48, 'S2K 3L5', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(22, NULL, 11, 15, 'T9S 4T5', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(23, NULL, 14, 44, 'P0Z 5V0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(24, NULL, 94, 23, 'R0S 3O6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(25, NULL, 99, 36, 'N8Z 4W0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(26, NULL, 43, 48, 'E5D 8E8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(27, NULL, 71, 48, 'G4Y 0Y5', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(28, NULL, 100, 37, 'S1B 5O0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(29, NULL, 68, 19, 'U1T 4Z9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(30, NULL, 59, 36, 'D1Q 7H3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(31, NULL, 23, 18, 'E5B 8A8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(32, NULL, 87, 44, 'I0I 9Z6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(33, NULL, 88, 36, 'O1K 3H6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(34, NULL, 47, 16, 'R4V 9L2', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(35, NULL, 3, 50, 'Z0G 7N3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(36, NULL, 33, 33, 'Z8M 0E1', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(37, NULL, 99, 25, 'V9Q 1D1', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(38, NULL, 64, 23, 'U6V 4W8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(39, NULL, 16, 39, 'I9N 7Q1', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(40, NULL, 80, 9, 'U3J 1F3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(41, NULL, 84, 15, 'A2F 2X5', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(42, NULL, 5, 23, 'X7Q 9L0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(43, NULL, 75, 41, 'O0D 9N3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(44, NULL, 30, 20, 'L8G 2C8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(45, NULL, 77, 24, 'T6P 5D5', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(46, NULL, 82, 18, 'E0S 4T3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(47, NULL, 42, 27, 'J0G 8A9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(48, NULL, 69, 46, 'D9D 5Y3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(49, NULL, 99, 28, 'O2I 8L3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(50, NULL, 16, 14, 'K3H 8G0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(51, NULL, 29, 7, 'E9E 3I7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(52, NULL, 34, 20, 'Y4R 2Z7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(53, NULL, 55, 27, 'Z9W 3Z8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(54, NULL, 53, 11, 'D5Q 3G4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(55, NULL, 44, 42, 'T4D 6P7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(56, NULL, 19, 30, 'D8C 2U4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(57, NULL, 94, 21, 'U9R 8K4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(58, NULL, 83, 26, 'T6V 4N7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(59, NULL, 74, 39, 'R1Q 2U0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(60, NULL, 83, 48, 'Z6G 7W9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(61, NULL, 70, 43, 'Q2A 6W0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(62, NULL, 5, 49, 'V6Q 9U4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(63, NULL, 31, 35, 'L4Q 2V6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(64, NULL, 98, 34, 'Z7V 7L0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(65, NULL, 37, 24, 'C4B 7Z2', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(66, NULL, 8, 50, 'H1C 6M6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(67, NULL, 73, 7, 'S7Q 5J2', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(68, NULL, 98, 49, 'M0S 1I0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(69, NULL, 34, 24, 'S5B 4X8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(70, NULL, 13, 30, 'B3P 1W9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(71, NULL, 72, 49, 'C0X 6B8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(72, NULL, 98, 38, 'E1X 3F3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(73, NULL, 19, 31, 'E2L 9P0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(74, NULL, 29, 30, 'R1F 2I9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(75, NULL, 87, 22, 'V2G 6S6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(76, NULL, 21, 37, 'Z1P 0U3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(77, NULL, 76, 36, 'Q7H 6E9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(78, NULL, 70, 24, 'W3B 4S6', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(79, NULL, 44, 10, 'I9O 9S0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(80, NULL, 9, 8, 'F4C 5J8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(81, NULL, 73, 51, 'F7C 7O3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(82, NULL, 46, 35, 'E5F 8W8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(83, NULL, 75, 24, 'N6V 6R9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(84, NULL, 20, 17, 'U4X 5N1', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(85, NULL, 80, 23, 'R2S 2R3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(86, NULL, 33, 9, 'N7H 7B4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(87, NULL, 55, 27, 'L0N 0P8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(88, NULL, 97, 35, 'R0B 3E2', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(89, NULL, 83, 37, 'Q0J 4X7', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(90, NULL, 48, 7, 'Q3Y 5M4', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(91, NULL, 19, 18, 'R1H 6P0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(92, NULL, 91, 33, 'W0M 4Y8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(93, NULL, 54, 44, 'E6L 2F9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(94, NULL, 91, 33, 'V8L 4F9', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(95, NULL, 87, 25, 'B4Z 6N0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(96, NULL, 21, 16, 'T7I 7B0', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(97, NULL, 5, 8, 'F6M 0P8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(98, NULL, 64, 11, 'H8C 3H2', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(99, NULL, 65, 27, 'T6E 6W8', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55'),
(100, NULL, 16, 34, 'A8S 5E3', 'white,red,green,black,blue', NULL, '2018-08-03 00:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `bus_supervisor`
--

DROP TABLE IF EXISTS `bus_supervisor`;
CREATE TABLE `bus_supervisor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_supervisor`
--

INSERT INTO `bus_supervisor` (`id`, `name`, `national_id`, `email`, `qr_code`, `created_at`) VALUES
(1, 'Travis Buchanan', '8025', 'massa.Vestibulum.accumsan@sedleoCras.ca', 'bs_1', '2018-08-03 01:01:05'),
(2, 'Miranda Alvarado', '8963', 'Vivamus.non.lorem@molestiepharetranibh.ca', 'bs_2', '2018-08-03 01:01:05'),
(3, 'Dai Olsen', '9913', 'ipsum.primis@SuspendissesagittisNullam.org', 'bs_3', '2018-08-03 01:01:05'),
(4, 'Graiden Perez', '6784', 'nunc@Loremipsumdolor.co.uk', 'bs_4', '2018-08-03 01:01:05'),
(5, 'Warren Gillespie', '5681', 'mus.Aenean@atpretium.co.uk', 'bs_5', '2018-08-03 01:01:05'),
(6, 'Tamekah Wall', '9562', 'fermentum@arcuNunc.org', 'bs_6', '2018-08-03 01:01:05'),
(7, 'Addison Roach', '6888', 'sit.amet.consectetuer@SeddictumProin.org', 'bs_7', '2018-08-03 01:01:05'),
(8, 'Laith Long', '6166', 'egestas@dictumcursusNunc.ca', 'bs_8', '2018-08-03 01:01:05'),
(9, 'Stephanie Norris', '8256', 'pulvinar.arcu@metus.net', 'bs_9', '2018-08-03 01:01:05'),
(10, 'Herrod Lewis', '6387', 'volutpat.Nulla@et.org', 'bs_10', '2018-08-03 01:01:05'),
(11, 'Bo Thornton', '5162', 'Proin@Quisque.ca', 'bs_11', '2018-08-03 01:01:05'),
(12, 'Neville Ross', '5444', 'in@volutpatornare.net', 'bs_12', '2018-08-03 01:01:05'),
(13, 'Patricia Brock', '7127', 'fringilla.porttitor@lacus.ca', 'bs_13', '2018-08-03 01:01:05'),
(14, 'Virginia Knapp', '8508', 'nulla@leoCrasvehicula.com', 'bs_14', '2018-08-03 01:01:05'),
(15, 'Oren Stark', '7043', 'scelerisque@dictumeleifend.ca', 'bs_15', '2018-08-03 01:01:05'),
(16, 'Stephanie Fox', '9239', 'elit.pharetra.ut@lectus.net', 'bs_16', '2018-08-03 01:01:05'),
(17, 'Emma Wilder', '6638', 'imperdiet.ornare@rutrum.co.uk', 'bs_17', '2018-08-03 01:01:05'),
(18, 'Rahim Valdez', '9588', 'sit.amet@Sednulla.co.uk', 'bs_18', '2018-08-03 01:01:05'),
(19, 'Dolan Good', '7001', 'Cras.dolor.dolor@tortor.net', 'bs_19', '2018-08-03 01:01:05'),
(20, 'Adele Gonzalez', '8884', 'sed.pede.Cum@pellentesqueSed.edu', 'bs_20', '2018-08-03 01:01:05'),
(21, 'Ciara Horne', '6544', 'eros@turpis.net', 'bs_21', '2018-08-03 01:01:05'),
(22, 'Colin Lara', '9946', 'eu.placerat.eget@Nullaeu.edu', 'bs_22', '2018-08-03 01:01:05'),
(23, 'Orlando Hart', '5376', 'aliquam@blandit.net', 'bs_23', '2018-08-03 01:01:05'),
(24, 'Quamar Tyson', '7342', 'cubilia.Curae@Donec.ca', 'bs_24', '2018-08-03 01:01:05'),
(25, 'Orlando Young', '7874', 'quam.vel@quamvel.ca', 'bs_25', '2018-08-03 01:01:05'),
(26, 'Keegan Dillon', '6883', 'sodales.at.velit@Duisvolutpatnunc.co.uk', 'bs_26', '2018-08-03 01:01:05'),
(27, 'Derek Vega', '8344', 'et.netus@estacmattis.com', 'bs_27', '2018-08-03 01:01:05'),
(28, 'Mohammad Phillips', '6256', 'sociis@tincidunt.org', 'bs_28', '2018-08-03 01:01:05'),
(29, 'Wynne Patel', '7058', 'cursus.purus@dui.org', 'bs_29', '2018-08-03 01:01:05'),
(30, 'Ethan Mccoy', '7962', 'dis.parturient.montes@Aeneansedpede.net', 'bs_30', '2018-08-03 01:01:05'),
(31, 'Jerry Osborne', '6849', 'leo.Morbi.neque@nonnisi.co.uk', 'bs_31', '2018-08-03 01:01:05'),
(32, 'Lana Mayer', '7898', 'rhoncus@arcuVestibulumante.ca', 'bs_32', '2018-08-03 01:01:05'),
(33, 'Wilma Fuller', '8655', 'molestie.tellus.Aenean@eratneque.org', 'bs_33', '2018-08-03 01:01:05'),
(34, 'Xander Anthony', '9229', 'auctor.non@idenimCurabitur.org', 'bs_34', '2018-08-03 01:01:05'),
(35, 'Iona Miller', '7855', 'Vivamus.sit.amet@sociisnatoquepenatibus.ca', 'bs_35', '2018-08-03 01:01:05'),
(36, 'Malik Knox', '5255', 'molestie.dapibus@auctorodio.ca', 'bs_36', '2018-08-03 01:01:05'),
(37, 'Phillip Key', '7879', 'eleifend@nibhQuisque.com', 'bs_37', '2018-08-03 01:01:05'),
(38, 'Abra Harvey', '9041', 'risus@Donecsollicitudin.co.uk', 'bs_38', '2018-08-03 01:01:05'),
(39, 'Beatrice Chase', '8108', 'Sed.et@maurisidsapien.edu', 'bs_39', '2018-08-03 01:01:05'),
(40, 'Wynter Sutton', '5581', 'sollicitudin.commodo@Aliquamfringillacursus.ca', 'bs_40', '2018-08-03 01:01:05'),
(41, 'Clinton Randall', '9275', 'nonummy.Fusce@Donecluctus.edu', 'bs_41', '2018-08-03 01:01:05'),
(42, 'Constance Lloyd', '6079', 'arcu.Vivamus.sit@vestibulum.ca', 'bs_42', '2018-08-03 01:01:05'),
(43, 'Yeo Alvarez', '9060', 'libero.at.auctor@utquamvel.co.uk', 'bs_43', '2018-08-03 01:01:05'),
(44, 'Sonia Serrano', '5704', 'ipsum@purusac.co.uk', 'bs_44', '2018-08-03 01:01:05'),
(45, 'Ferris Wiggins', '8224', 'Nunc.sollicitudin.commodo@malesuadafringilla.org', 'bs_45', '2018-08-03 01:01:05'),
(46, 'Dai Parks', '6427', 'dictum.Proin.eget@cursusInteger.com', 'bs_46', '2018-08-03 01:01:05'),
(47, 'Quamar Washington', '8720', 'arcu.Sed.eu@Maecenasliberoest.edu', 'bs_47', '2018-08-03 01:01:05'),
(48, 'Halla Mullins', '7743', 'Sed.auctor@penatibuset.edu', 'bs_48', '2018-08-03 01:01:05'),
(49, 'Basil Jenkins', '8192', 'lectus.convallis.est@magnaUttincidunt.net', 'bs_49', '2018-08-03 01:01:05'),
(50, 'Rinah Strickland', '9003', 'placerat.augue.Sed@Maecenasmalesuadafringilla.co.uk', 'bs_50', '2018-08-03 01:01:05'),
(51, 'Kyla Small', '9440', 'eleifend.non@odioauctorvitae.co.uk', 'bs_51', '2018-08-03 01:01:05'),
(52, 'Jeanette Farley', '6046', 'fringilla@nonlacinia.ca', 'bs_52', '2018-08-03 01:01:05'),
(53, 'Cole Castro', '7195', 'Quisque.fringilla@ultriciesligula.co.uk', 'bs_53', '2018-08-03 01:01:05'),
(54, 'Garth Beck', '7863', 'pharetra.Quisque.ac@Praesent.edu', 'bs_54', '2018-08-03 01:01:05'),
(55, 'Alma Mckenzie', '6630', 'Donec.vitae.erat@elitelitfermentum.co.uk', 'bs_55', '2018-08-03 01:01:05'),
(56, 'Calvin Robinson', '7726', 'non.sapien@pharetra.co.uk', 'bs_56', '2018-08-03 01:01:05'),
(57, 'Byron Miller', '7100', 'ridiculus@Seddiamlorem.ca', 'bs_57', '2018-08-03 01:01:05'),
(58, 'Nissim Rivers', '9395', 'id.sapien.Cras@orcitinciduntadipiscing.org', 'bs_58', '2018-08-03 01:01:05'),
(59, 'Blythe Pittman', '5412', 'adipiscing.Mauris@ornareegestas.co.uk', 'bs_59', '2018-08-03 01:01:05'),
(60, 'Lael Mueller', '5343', 'nostra@mauriseuelit.co.uk', 'bs_60', '2018-08-03 01:01:05'),
(61, 'Xerxes Brown', '9704', 'libero.est@liberomaurisaliquam.edu', 'bs_61', '2018-08-03 01:01:05'),
(62, 'Craig Butler', '6496', 'aliquet.libero.Integer@eutellus.net', 'bs_62', '2018-08-03 01:01:05'),
(63, 'Guy Daugherty', '6832', 'vestibulum.neque@lobortis.edu', 'bs_63', '2018-08-03 01:01:05'),
(64, 'Walker Flynn', '9927', 'Cras.vulputate.velit@Proin.com', 'bs_64', '2018-08-03 01:01:05'),
(65, 'Kelly Stephens', '5665', 'luctus.et@magnaSedeu.ca', 'bs_65', '2018-08-03 01:01:05'),
(66, 'Dennis Kelly', '8420', 'ipsum.ac@rhoncusid.co.uk', 'bs_66', '2018-08-03 01:01:05'),
(67, 'Wyoming Mann', '9494', 'malesuada.vel.venenatis@Duis.org', 'bs_67', '2018-08-03 01:01:05'),
(68, 'Althea Lawrence', '8124', 'Donec.sollicitudin.adipiscing@tempor.com', 'bs_68', '2018-08-03 01:01:05'),
(69, 'Wayne Potter', '8987', 'Aliquam@Proin.org', 'bs_69', '2018-08-03 01:01:05'),
(70, 'Jasper Golden', '7457', 'tortor.nibh.sit@mattissemper.com', 'bs_70', '2018-08-03 01:01:05'),
(71, 'Benjamin Goodman', '5257', 'mauris@blandit.com', 'bs_71', '2018-08-03 01:01:05'),
(72, 'Helen Merrill', '7581', 'purus@euodio.com', 'bs_72', '2018-08-03 01:01:05'),
(73, 'Daquan Burns', '8887', 'Duis.risus@nislarcu.com', 'bs_73', '2018-08-03 01:01:05'),
(74, 'Lev House', '7569', 'ultricies.ornare@lacusvariuset.co.uk', 'bs_74', '2018-08-03 01:01:05'),
(75, 'Emmanuel Lancaster', '9860', 'auctor@feugiat.edu', 'bs_75', '2018-08-03 01:01:05'),
(76, 'Brady Mccall', '9607', 'nulla@adipiscing.ca', 'bs_76', '2018-08-03 01:01:05'),
(77, 'Shaine Morales', '9223', 'netus.et@nascetur.co.uk', 'bs_77', '2018-08-03 01:01:05'),
(78, 'Cooper Hardy', '8787', 'ornare.facilisis.eget@maurisaliquameu.co.uk', 'bs_78', '2018-08-03 01:01:05'),
(79, 'Fuller Leach', '6858', 'ut@Donecporttitortellus.com', 'bs_79', '2018-08-03 01:01:05'),
(80, 'Gwendolyn Matthews', '5197', 'at.pretium@Uttinciduntvehicula.edu', 'bs_80', '2018-08-03 01:01:05'),
(81, 'Robin Gregory', '6971', 'dictum.augue@Nunc.net', 'bs_81', '2018-08-03 01:01:05'),
(82, 'Kennedy Pope', '5134', 'tellus@mollis.org', 'bs_82', '2018-08-03 01:01:05'),
(83, 'Cameron Lindsey', '5144', 'pellentesque.Sed@cursus.co.uk', 'bs_83', '2018-08-03 01:01:05'),
(84, 'Arthur Dillon', '6953', 'orci@egestasrhoncusProin.org', 'bs_84', '2018-08-03 01:01:05'),
(85, 'Ivy Robertson', '8299', 'in.magna@volutpatornarefacilisis.ca', 'bs_85', '2018-08-03 01:01:05'),
(86, 'Bernard Justice', '6080', 'magna@liberoDonec.com', 'bs_86', '2018-08-03 01:01:05'),
(87, 'Serena Lee', '9221', 'aliquam@aliquetsemut.com', 'bs_87', '2018-08-03 01:01:05'),
(88, 'Fulton Rodriguez', '8604', 'Vestibulum.ut@augueeu.co.uk', 'bs_88', '2018-08-03 01:01:05'),
(89, 'Brent Velasquez', '7924', 'ornare.egestas.ligula@inlobortistellus.net', 'bs_89', '2018-08-03 01:01:05'),
(90, 'Isaiah Grimes', '9397', 'egestas.Aliquam.nec@egetlacusMauris.ca', 'bs_90', '2018-08-03 01:01:05'),
(91, 'Buffy Bolton', '9547', 'elit.a@ridiculus.co.uk', 'bs_91', '2018-08-03 01:01:05'),
(92, 'Hop Kim', '7097', 'metus.eu.erat@nonduinec.co.uk', 'bs_92', '2018-08-03 01:01:05'),
(93, 'Hyatt Mccall', '5054', 'sem@in.ca', 'bs_93', '2018-08-03 01:01:05'),
(94, 'Raymond Larsen', '9347', 'egestas.Aliquam@ac.ca', 'bs_94', '2018-08-03 01:01:05'),
(95, 'Griffin Fuller', '5766', 'augue@iaculisodio.edu', 'bs_95', '2018-08-03 01:01:05'),
(96, 'Coby Wilkerson', '9226', 'nunc.nulla.vulputate@fringillapurusmauris.edu', 'bs_96', '2018-08-03 01:01:05'),
(97, 'Edan Allen', '9981', 'netus.et.malesuada@nec.org', 'bs_97', '2018-08-03 01:01:05'),
(98, 'Elijah Watts', '5159', 'nunc@vehiculaetrutrum.co.uk', 'bs_98', '2018-08-03 01:01:05'),
(99, 'Vernon Malone', '5522', 'dolor.sit.amet@adipiscingMaurismolestie.com', 'bs_99', '2018-08-03 01:01:05'),
(100, 'Carly Everett', '7614', 'vulputate.risus@etliberoProin.co.uk', 'bs_100', '2018-08-03 01:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `bus_supervisor_trips`
--

DROP TABLE IF EXISTS `bus_supervisor_trips`;
CREATE TABLE `bus_supervisor_trips` (
  `id` int(11) NOT NULL,
  `bus_supervisor_id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `national_id`, `email`, `qr_code`, `created_at`) VALUES
(1, 'Phyllis Neal', '9974', 'tortor@eget.edu', 'dr_1', '2018-08-03 01:03:45'),
(2, 'Lev Shelton', '7363', 'dui.semper@lectusa.org', 'dr_2', '2018-08-03 01:03:45'),
(3, 'Alana Cortez', '8082', 'eu@magnaDuisdignissim.co.uk', 'dr_3', '2018-08-03 01:03:45'),
(4, 'Honorato Kirby', '9472', 'adipiscing@dignissimpharetraNam.com', 'dr_4', '2018-08-03 01:03:45'),
(5, 'Ori Mckay', '9557', 'amet@sodalespurus.org', 'dr_5', '2018-08-03 01:03:45'),
(6, 'Richard Mathis', '6234', 'eu@musDonecdignissim.com', 'dr_6', '2018-08-03 01:03:45'),
(7, 'Medge Villarreal', '9155', 'Mauris.molestie.pharetra@magnaSuspendisse.com', 'dr_7', '2018-08-03 01:03:45'),
(8, 'Jacob Harrison', '9292', 'vel.arcu.eu@Seddiam.edu', 'dr_8', '2018-08-03 01:03:45'),
(9, 'Gareth Tucker', '8981', 'accumsan.convallis@ametultriciessem.co.uk', 'dr_9', '2018-08-03 01:03:45'),
(10, 'Maisie Wallace', '8869', 'mauris@rutrum.org', 'dr_10', '2018-08-03 01:03:45'),
(11, 'Brooke Hubbard', '6224', 'risus.Donec@enimnectempus.edu', 'dr_11', '2018-08-03 01:03:45'),
(12, 'Forrest Crane', '6043', 'iaculis.aliquet@fermentumconvallis.ca', 'dr_12', '2018-08-03 01:03:45'),
(13, 'Thaddeus Saunders', '8019', 'magna.Ut.tincidunt@nonmassa.ca', 'dr_13', '2018-08-03 01:03:45'),
(14, 'Haviva Kline', '8085', 'ac.libero@elitpellentesque.edu', 'dr_14', '2018-08-03 01:03:45'),
(15, 'Yuri Case', '5617', 'et.malesuada@tinciduntvehicularisus.com', 'dr_15', '2018-08-03 01:03:45'),
(16, 'Jeanette Murphy', '9558', 'neque@velitegestas.net', 'dr_16', '2018-08-03 01:03:45'),
(17, 'Samuel Sykes', '8134', 'nulla.ante.iaculis@et.net', 'dr_17', '2018-08-03 01:03:45'),
(18, 'Audra Ayala', '5428', 'Pellentesque@nislNulla.edu', 'dr_18', '2018-08-03 01:03:45'),
(19, 'Elaine Sullivan', '8046', 'Aliquam.ultrices.iaculis@malesuada.co.uk', 'dr_19', '2018-08-03 01:03:45'),
(20, 'Troy Kerr', '9239', 'vehicula.et.rutrum@lectusconvallis.org', 'dr_20', '2018-08-03 01:03:45'),
(21, 'Carter James', '7558', 'eget.volutpat@lectus.co.uk', 'dr_21', '2018-08-03 01:03:45'),
(22, 'Alexa Shannon', '5757', 'erat@nuncidenim.ca', 'dr_22', '2018-08-03 01:03:45'),
(23, 'Jamalia Evans', '9330', 'Aliquam.rutrum.lorem@ligulaconsectetuerrhoncus.co.uk', 'dr_23', '2018-08-03 01:03:45'),
(24, 'Teagan Le', '8189', 'id.mollis@Curabitur.net', 'dr_24', '2018-08-03 01:03:45'),
(25, 'Iola Rutledge', '5901', 'neque@anunc.com', 'dr_25', '2018-08-03 01:03:45'),
(26, 'Herrod Stone', '8012', 'egestas.hendrerit@adipiscingelit.edu', 'dr_26', '2018-08-03 01:03:45'),
(27, 'Jael Goodwin', '6669', 'sit@sed.org', 'dr_27', '2018-08-03 01:03:45'),
(28, 'Ali Vang', '7889', 'et.rutrum@egetipsumSuspendisse.ca', 'dr_28', '2018-08-03 01:03:45'),
(29, 'Heather Cochran', '7401', 'lectus@lacus.co.uk', 'dr_29', '2018-08-03 01:03:45'),
(30, 'Ebony Emerson', '8204', 'est.congue.a@vitaesodalesnisi.edu', 'dr_30', '2018-08-03 01:03:45'),
(31, 'Ivor Mercer', '8213', 'libero.Proin.mi@estvitae.org', 'dr_31', '2018-08-03 01:03:45'),
(32, 'Allistair Hinton', '6846', 'a.dui@Donecconsectetuermauris.com', 'dr_32', '2018-08-03 01:03:45'),
(33, 'Francis Delgado', '9124', 'vitae@ametrisus.net', 'dr_33', '2018-08-03 01:03:45'),
(34, 'Daria Alvarez', '9818', 'parturient.montes.nascetur@Crasdolor.co.uk', 'dr_34', '2018-08-03 01:03:45'),
(35, 'Zephania Carr', '8623', 'Suspendisse.commodo@Cras.org', 'dr_35', '2018-08-03 01:03:45'),
(36, 'Jane Contreras', '7263', 'Nulla.eget.metus@malesuadafamesac.org', 'dr_36', '2018-08-03 01:03:45'),
(37, 'Hector Wood', '6143', 'semper.Nam.tempor@nonsapien.ca', 'dr_37', '2018-08-03 01:03:45'),
(38, 'Debra Mathis', '5339', 'placerat.augue@Etiamvestibulum.co.uk', 'dr_38', '2018-08-03 01:03:45'),
(39, 'Kylie Medina', '9060', 'ut.quam@malesuada.net', 'dr_39', '2018-08-03 01:03:45'),
(40, 'Lacota Dickerson', '8253', 'felis@aliquetnecimperdiet.ca', 'dr_40', '2018-08-03 01:03:45'),
(41, 'Tucker Allison', '9256', 'non@pedemalesuada.edu', 'dr_41', '2018-08-03 01:03:45'),
(42, 'Maris Robertson', '6210', 'Donec@maurisut.ca', 'dr_42', '2018-08-03 01:03:45'),
(43, 'Ferris Franco', '7425', 'quis.diam@dictum.org', 'dr_43', '2018-08-03 01:03:45'),
(44, 'Otto Gamble', '5289', 'mauris.ut@facilisis.ca', 'dr_44', '2018-08-03 01:03:45'),
(45, 'Jin Fuentes', '7475', 'mollis@Proinnislsem.net', 'dr_45', '2018-08-03 01:03:45'),
(46, 'Lucian Bradshaw', '7661', 'ultrices.iaculis@etrisusQuisque.org', 'dr_46', '2018-08-03 01:03:45'),
(47, 'Ayanna Shannon', '8480', 'mollis@atvelit.com', 'dr_47', '2018-08-03 01:03:45'),
(48, 'Lilah Watson', '8265', 'rutrum.non@acarcuNunc.com', 'dr_48', '2018-08-03 01:03:45'),
(49, 'Linda Blevins', '9592', 'tortor.Integer@cursuseteros.co.uk', 'dr_49', '2018-08-03 01:03:45'),
(50, 'Lamar Burgess', '7688', 'purus@egetodio.co.uk', 'dr_50', '2018-08-03 01:03:45'),
(51, 'Emery Clay', '6696', 'Donec.est.Nunc@enimcommodo.com', 'dr_51', '2018-08-03 01:03:45'),
(52, 'Alice Cantu', '6645', 'consequat@nunc.ca', 'dr_52', '2018-08-03 01:03:45'),
(53, 'Uriah Flynn', '5299', 'non@montes.ca', 'dr_53', '2018-08-03 01:03:45'),
(54, 'Reagan Winters', '5083', 'Quisque.porttitor.eros@parturientmontes.org', 'dr_54', '2018-08-03 01:03:45'),
(55, 'Delilah Ball', '9806', 'odio@magnaPhasellusdolor.ca', 'dr_55', '2018-08-03 01:03:45'),
(56, 'Joan Edwards', '5835', 'convallis@consectetueradipiscing.com', 'dr_56', '2018-08-03 01:03:45'),
(57, 'Andrew Whitley', '7683', 'elit.erat.vitae@Nullafacilisis.edu', 'dr_57', '2018-08-03 01:03:45'),
(58, 'Owen Spears', '5164', 'ridiculus.mus@bibendumsed.ca', 'dr_58', '2018-08-03 01:03:45'),
(59, 'Oprah Frank', '9266', 'velit@at.edu', 'dr_59', '2018-08-03 01:03:45'),
(60, 'Brenna Kemp', '8721', 'fermentum@esttempor.co.uk', 'dr_60', '2018-08-03 01:03:45'),
(61, 'Maris Golden', '5709', 'risus@vitaeeratvel.edu', 'dr_61', '2018-08-03 01:03:45'),
(62, 'Lance Drake', '8653', 'mollis.Duis.sit@Innec.ca', 'dr_62', '2018-08-03 01:03:45'),
(63, 'Stone Fitzgerald', '7601', 'Vivamus.nibh.dolor@aliquetmolestietellus.ca', 'dr_63', '2018-08-03 01:03:45'),
(64, 'William Frazier', '6636', 'quis.pede.Suspendisse@liberoProin.com', 'dr_64', '2018-08-03 01:03:45'),
(65, 'Odysseus Oliver', '9711', 'risus.Donec.nibh@Phasellusat.edu', 'dr_65', '2018-08-03 01:03:45'),
(66, 'Inez Simpson', '7621', 'Nam.tempor.diam@ut.com', 'dr_66', '2018-08-03 01:03:45'),
(67, 'Yvette Parrish', '7272', 'vel@etnetuset.com', 'dr_67', '2018-08-03 01:03:45'),
(68, 'Jane Jackson', '6379', 'Integer@sodalesMauris.org', 'dr_68', '2018-08-03 01:03:45'),
(69, 'Maisie Browning', '7961', 'dui@egestasrhoncusProin.net', 'dr_69', '2018-08-03 01:03:45'),
(70, 'Ulla Lane', '5098', 'tellus.Suspendisse@odioAliquam.ca', 'dr_70', '2018-08-03 01:03:45'),
(71, 'Lila Norton', '7086', 'Aliquam@vitaevelitegestas.org', 'dr_71', '2018-08-03 01:03:45'),
(72, 'Martena Hardin', '7968', 'vitae.risus.Duis@lacus.edu', 'dr_72', '2018-08-03 01:03:45'),
(73, 'Theodore Hampton', '8475', 'Duis@Proin.ca', 'dr_73', '2018-08-03 01:03:45'),
(74, 'Sybil Marquez', '9216', 'porttitor.tellus@nunc.com', 'dr_74', '2018-08-03 01:03:45'),
(75, 'Gillian Chambers', '9744', 'Ut.tincidunt@semper.org', 'dr_75', '2018-08-03 01:03:45'),
(76, 'Hu Wooten', '7023', 'interdum@convallisligulaDonec.ca', 'dr_76', '2018-08-03 01:03:45'),
(77, 'Kane Hardin', '9667', 'Nullam@Crasdictum.com', 'dr_77', '2018-08-03 01:03:45'),
(78, 'Cally Matthews', '9747', 'semper.pretium@nuncid.co.uk', 'dr_78', '2018-08-03 01:03:45'),
(79, 'Sheila Adams', '7811', 'faucibus@utnulla.edu', 'dr_79', '2018-08-03 01:03:45'),
(80, 'Yen Johnston', '8710', 'risus.Nunc@ultricesmauris.edu', 'dr_80', '2018-08-03 01:03:45'),
(81, 'Constance Burton', '9045', 'lectus.pede.et@rutrumnon.net', 'dr_81', '2018-08-03 01:03:45'),
(82, 'Velma Edwards', '8092', 'arcu.Morbi@quisdiam.edu', 'dr_82', '2018-08-03 01:03:45'),
(83, 'Jordan Bates', '8898', 'sed.libero@anteiaculis.edu', 'dr_83', '2018-08-03 01:03:45'),
(84, 'Avram Ruiz', '8674', 'Nunc.mauris@dapibusligula.edu', 'dr_84', '2018-08-03 01:03:45'),
(85, 'Tyrone Lyons', '5496', 'tellus.non@ante.org', 'dr_85', '2018-08-03 01:03:45'),
(86, 'Thane Vincent', '5653', 'diam@arcuNuncmauris.ca', 'dr_86', '2018-08-03 01:03:45'),
(87, 'Jerome Cooley', '6608', 'libero@non.edu', 'dr_87', '2018-08-03 01:03:45'),
(88, 'Oprah Cote', '6668', 'Integer.tincidunt.aliquam@magnaet.net', 'dr_88', '2018-08-03 01:03:45'),
(89, 'Cairo Winters', '8709', 'torquent.per@egetmollislectus.ca', 'dr_89', '2018-08-03 01:03:45'),
(90, 'Oren Wiley', '9709', 'morbi.tristique@sitamet.org', 'dr_90', '2018-08-03 01:03:45'),
(91, 'Brian Blake', '7303', 'magna.Ut.tincidunt@aliquam.com', 'dr_91', '2018-08-03 01:03:45'),
(92, 'Logan Warren', '5339', 'tristique@eratVivamus.ca', 'dr_92', '2018-08-03 01:03:45'),
(93, 'Imogene White', '5671', 'placerat.Cras@malesuadafamesac.edu', 'dr_93', '2018-08-03 01:03:45'),
(94, 'April Beach', '8083', 'ante.ipsum@pharetra.net', 'dr_94', '2018-08-03 01:03:45'),
(95, 'Louis Nelson', '10000', 'penatibus.et.magnis@semegestas.edu', 'dr_95', '2018-08-03 01:03:45'),
(96, 'Hanna Nguyen', '7700', 'adipiscing.elit.Aliquam@idmagna.com', 'dr_96', '2018-08-03 01:03:45'),
(97, 'Justina Tate', '8583', 'nascetur.ridiculus@vulputateullamcorper.com', 'dr_97', '2018-08-03 01:03:45'),
(98, 'Alden Welch', '7542', 'natoque.penatibus.et@accumsannequeet.edu', 'dr_98', '2018-08-03 01:03:45'),
(99, 'Lewis Davenport', '9927', 'lectus.pede@vulputate.org', 'dr_99', '2018-08-03 01:03:45'),
(100, 'Peter Harris', '8419', 'Nullam.suscipit.est@maurisidsapien.co.uk', 'dr_100', '2018-08-03 01:03:45'),
(101, 'Phyllis Neal', '9974', 'tortor@eget.edu', 'dr_101', '2018-08-03 01:04:11'),
(102, 'Lev Shelton', '7363', 'dui.semper@lectusa.org', 'dr_102', '2018-08-03 01:04:11'),
(103, 'Alana Cortez', '8082', 'eu@magnaDuisdignissim.co.uk', 'dr_103', '2018-08-03 01:04:11'),
(104, 'Honorato Kirby', '9472', 'adipiscing@dignissimpharetraNam.com', 'dr_104', '2018-08-03 01:04:11'),
(105, 'Ori Mckay', '9557', 'amet@sodalespurus.org', 'dr_105', '2018-08-03 01:04:11'),
(106, 'Richard Mathis', '6234', 'eu@musDonecdignissim.com', 'dr_106', '2018-08-03 01:04:11'),
(107, 'Medge Villarreal', '9155', 'Mauris.molestie.pharetra@magnaSuspendisse.com', 'dr_107', '2018-08-03 01:04:11'),
(108, 'Jacob Harrison', '9292', 'vel.arcu.eu@Seddiam.edu', 'dr_108', '2018-08-03 01:04:11'),
(109, 'Gareth Tucker', '8981', 'accumsan.convallis@ametultriciessem.co.uk', 'dr_109', '2018-08-03 01:04:11'),
(110, 'Maisie Wallace', '8869', 'mauris@rutrum.org', 'dr_110', '2018-08-03 01:04:11'),
(111, 'Brooke Hubbard', '6224', 'risus.Donec@enimnectempus.edu', 'dr_111', '2018-08-03 01:04:11'),
(112, 'Forrest Crane', '6043', 'iaculis.aliquet@fermentumconvallis.ca', 'dr_112', '2018-08-03 01:04:11'),
(113, 'Thaddeus Saunders', '8019', 'magna.Ut.tincidunt@nonmassa.ca', 'dr_113', '2018-08-03 01:04:11'),
(114, 'Haviva Kline', '8085', 'ac.libero@elitpellentesque.edu', 'dr_114', '2018-08-03 01:04:11'),
(115, 'Yuri Case', '5617', 'et.malesuada@tinciduntvehicularisus.com', 'dr_115', '2018-08-03 01:04:11'),
(116, 'Jeanette Murphy', '9558', 'neque@velitegestas.net', 'dr_116', '2018-08-03 01:04:11'),
(117, 'Samuel Sykes', '8134', 'nulla.ante.iaculis@et.net', 'dr_117', '2018-08-03 01:04:11'),
(118, 'Audra Ayala', '5428', 'Pellentesque@nislNulla.edu', 'dr_118', '2018-08-03 01:04:11'),
(119, 'Elaine Sullivan', '8046', 'Aliquam.ultrices.iaculis@malesuada.co.uk', 'dr_119', '2018-08-03 01:04:11'),
(120, 'Troy Kerr', '9239', 'vehicula.et.rutrum@lectusconvallis.org', 'dr_120', '2018-08-03 01:04:11'),
(121, 'Carter James', '7558', 'eget.volutpat@lectus.co.uk', 'dr_121', '2018-08-03 01:04:11'),
(122, 'Alexa Shannon', '5757', 'erat@nuncidenim.ca', 'dr_122', '2018-08-03 01:04:11'),
(123, 'Jamalia Evans', '9330', 'Aliquam.rutrum.lorem@ligulaconsectetuerrhoncus.co.uk', 'dr_123', '2018-08-03 01:04:11'),
(124, 'Teagan Le', '8189', 'id.mollis@Curabitur.net', 'dr_124', '2018-08-03 01:04:11'),
(125, 'Iola Rutledge', '5901', 'neque@anunc.com', 'dr_125', '2018-08-03 01:04:11'),
(126, 'Herrod Stone', '8012', 'egestas.hendrerit@adipiscingelit.edu', 'dr_126', '2018-08-03 01:04:11'),
(127, 'Jael Goodwin', '6669', 'sit@sed.org', 'dr_127', '2018-08-03 01:04:11'),
(128, 'Ali Vang', '7889', 'et.rutrum@egetipsumSuspendisse.ca', 'dr_128', '2018-08-03 01:04:11'),
(129, 'Heather Cochran', '7401', 'lectus@lacus.co.uk', 'dr_129', '2018-08-03 01:04:11'),
(130, 'Ebony Emerson', '8204', 'est.congue.a@vitaesodalesnisi.edu', 'dr_130', '2018-08-03 01:04:11'),
(131, 'Ivor Mercer', '8213', 'libero.Proin.mi@estvitae.org', 'dr_131', '2018-08-03 01:04:12'),
(132, 'Allistair Hinton', '6846', 'a.dui@Donecconsectetuermauris.com', 'dr_132', '2018-08-03 01:04:12'),
(133, 'Francis Delgado', '9124', 'vitae@ametrisus.net', 'dr_133', '2018-08-03 01:04:12'),
(134, 'Daria Alvarez', '9818', 'parturient.montes.nascetur@Crasdolor.co.uk', 'dr_134', '2018-08-03 01:04:12'),
(135, 'Zephania Carr', '8623', 'Suspendisse.commodo@Cras.org', 'dr_135', '2018-08-03 01:04:12'),
(136, 'Jane Contreras', '7263', 'Nulla.eget.metus@malesuadafamesac.org', 'dr_136', '2018-08-03 01:04:12'),
(137, 'Hector Wood', '6143', 'semper.Nam.tempor@nonsapien.ca', 'dr_137', '2018-08-03 01:04:12'),
(138, 'Debra Mathis', '5339', 'placerat.augue@Etiamvestibulum.co.uk', 'dr_138', '2018-08-03 01:04:12'),
(139, 'Kylie Medina', '9060', 'ut.quam@malesuada.net', 'dr_139', '2018-08-03 01:04:12'),
(140, 'Lacota Dickerson', '8253', 'felis@aliquetnecimperdiet.ca', 'dr_140', '2018-08-03 01:04:12'),
(141, 'Tucker Allison', '9256', 'non@pedemalesuada.edu', 'dr_141', '2018-08-03 01:04:12'),
(142, 'Maris Robertson', '6210', 'Donec@maurisut.ca', 'dr_142', '2018-08-03 01:04:12'),
(143, 'Ferris Franco', '7425', 'quis.diam@dictum.org', 'dr_143', '2018-08-03 01:04:12'),
(144, 'Otto Gamble', '5289', 'mauris.ut@facilisis.ca', 'dr_144', '2018-08-03 01:04:12'),
(145, 'Jin Fuentes', '7475', 'mollis@Proinnislsem.net', 'dr_145', '2018-08-03 01:04:12'),
(146, 'Lucian Bradshaw', '7661', 'ultrices.iaculis@etrisusQuisque.org', 'dr_146', '2018-08-03 01:04:12'),
(147, 'Ayanna Shannon', '8480', 'mollis@atvelit.com', 'dr_147', '2018-08-03 01:04:12'),
(148, 'Lilah Watson', '8265', 'rutrum.non@acarcuNunc.com', 'dr_148', '2018-08-03 01:04:12'),
(149, 'Linda Blevins', '9592', 'tortor.Integer@cursuseteros.co.uk', 'dr_149', '2018-08-03 01:04:12'),
(150, 'Lamar Burgess', '7688', 'purus@egetodio.co.uk', 'dr_150', '2018-08-03 01:04:12'),
(151, 'Emery Clay', '6696', 'Donec.est.Nunc@enimcommodo.com', 'dr_151', '2018-08-03 01:04:12'),
(152, 'Alice Cantu', '6645', 'consequat@nunc.ca', 'dr_152', '2018-08-03 01:04:12'),
(153, 'Uriah Flynn', '5299', 'non@montes.ca', 'dr_153', '2018-08-03 01:04:12'),
(154, 'Reagan Winters', '5083', 'Quisque.porttitor.eros@parturientmontes.org', 'dr_154', '2018-08-03 01:04:12'),
(155, 'Delilah Ball', '9806', 'odio@magnaPhasellusdolor.ca', 'dr_155', '2018-08-03 01:04:12'),
(156, 'Joan Edwards', '5835', 'convallis@consectetueradipiscing.com', 'dr_156', '2018-08-03 01:04:12'),
(157, 'Andrew Whitley', '7683', 'elit.erat.vitae@Nullafacilisis.edu', 'dr_157', '2018-08-03 01:04:12'),
(158, 'Owen Spears', '5164', 'ridiculus.mus@bibendumsed.ca', 'dr_158', '2018-08-03 01:04:12'),
(159, 'Oprah Frank', '9266', 'velit@at.edu', 'dr_159', '2018-08-03 01:04:12'),
(160, 'Brenna Kemp', '8721', 'fermentum@esttempor.co.uk', 'dr_160', '2018-08-03 01:04:12'),
(161, 'Maris Golden', '5709', 'risus@vitaeeratvel.edu', 'dr_161', '2018-08-03 01:04:12'),
(162, 'Lance Drake', '8653', 'mollis.Duis.sit@Innec.ca', 'dr_162', '2018-08-03 01:04:12'),
(163, 'Stone Fitzgerald', '7601', 'Vivamus.nibh.dolor@aliquetmolestietellus.ca', 'dr_163', '2018-08-03 01:04:12'),
(164, 'William Frazier', '6636', 'quis.pede.Suspendisse@liberoProin.com', 'dr_164', '2018-08-03 01:04:12'),
(165, 'Odysseus Oliver', '9711', 'risus.Donec.nibh@Phasellusat.edu', 'dr_165', '2018-08-03 01:04:12'),
(166, 'Inez Simpson', '7621', 'Nam.tempor.diam@ut.com', 'dr_166', '2018-08-03 01:04:12'),
(167, 'Yvette Parrish', '7272', 'vel@etnetuset.com', 'dr_167', '2018-08-03 01:04:12'),
(168, 'Jane Jackson', '6379', 'Integer@sodalesMauris.org', 'dr_168', '2018-08-03 01:04:12'),
(169, 'Maisie Browning', '7961', 'dui@egestasrhoncusProin.net', 'dr_169', '2018-08-03 01:04:12'),
(170, 'Ulla Lane', '5098', 'tellus.Suspendisse@odioAliquam.ca', 'dr_170', '2018-08-03 01:04:12'),
(171, 'Lila Norton', '7086', 'Aliquam@vitaevelitegestas.org', 'dr_171', '2018-08-03 01:04:12'),
(172, 'Martena Hardin', '7968', 'vitae.risus.Duis@lacus.edu', 'dr_172', '2018-08-03 01:04:12'),
(173, 'Theodore Hampton', '8475', 'Duis@Proin.ca', 'dr_173', '2018-08-03 01:04:12'),
(174, 'Sybil Marquez', '9216', 'porttitor.tellus@nunc.com', 'dr_174', '2018-08-03 01:04:12'),
(175, 'Gillian Chambers', '9744', 'Ut.tincidunt@semper.org', 'dr_175', '2018-08-03 01:04:12'),
(176, 'Hu Wooten', '7023', 'interdum@convallisligulaDonec.ca', 'dr_176', '2018-08-03 01:04:12'),
(177, 'Kane Hardin', '9667', 'Nullam@Crasdictum.com', 'dr_177', '2018-08-03 01:04:12'),
(178, 'Cally Matthews', '9747', 'semper.pretium@nuncid.co.uk', 'dr_178', '2018-08-03 01:04:12'),
(179, 'Sheila Adams', '7811', 'faucibus@utnulla.edu', 'dr_179', '2018-08-03 01:04:12'),
(180, 'Yen Johnston', '8710', 'risus.Nunc@ultricesmauris.edu', 'dr_180', '2018-08-03 01:04:12'),
(181, 'Constance Burton', '9045', 'lectus.pede.et@rutrumnon.net', 'dr_181', '2018-08-03 01:04:12'),
(182, 'Velma Edwards', '8092', 'arcu.Morbi@quisdiam.edu', 'dr_182', '2018-08-03 01:04:12'),
(183, 'Jordan Bates', '8898', 'sed.libero@anteiaculis.edu', 'dr_183', '2018-08-03 01:04:12'),
(184, 'Avram Ruiz', '8674', 'Nunc.mauris@dapibusligula.edu', 'dr_184', '2018-08-03 01:04:12'),
(185, 'Tyrone Lyons', '5496', 'tellus.non@ante.org', 'dr_185', '2018-08-03 01:04:12'),
(186, 'Thane Vincent', '5653', 'diam@arcuNuncmauris.ca', 'dr_186', '2018-08-03 01:04:12'),
(187, 'Jerome Cooley', '6608', 'libero@non.edu', 'dr_187', '2018-08-03 01:04:12'),
(188, 'Oprah Cote', '6668', 'Integer.tincidunt.aliquam@magnaet.net', 'dr_188', '2018-08-03 01:04:12'),
(189, 'Cairo Winters', '8709', 'torquent.per@egetmollislectus.ca', 'dr_189', '2018-08-03 01:04:12'),
(190, 'Oren Wiley', '9709', 'morbi.tristique@sitamet.org', 'dr_190', '2018-08-03 01:04:12'),
(191, 'Brian Blake', '7303', 'magna.Ut.tincidunt@aliquam.com', 'dr_191', '2018-08-03 01:04:12'),
(192, 'Logan Warren', '5339', 'tristique@eratVivamus.ca', 'dr_192', '2018-08-03 01:04:12'),
(193, 'Imogene White', '5671', 'placerat.Cras@malesuadafamesac.edu', 'dr_193', '2018-08-03 01:04:12'),
(194, 'April Beach', '8083', 'ante.ipsum@pharetra.net', 'dr_194', '2018-08-03 01:04:12'),
(195, 'Louis Nelson', '10000', 'penatibus.et.magnis@semegestas.edu', 'dr_195', '2018-08-03 01:04:12'),
(196, 'Hanna Nguyen', '7700', 'adipiscing.elit.Aliquam@idmagna.com', 'dr_196', '2018-08-03 01:04:12'),
(197, 'Justina Tate', '8583', 'nascetur.ridiculus@vulputateullamcorper.com', 'dr_197', '2018-08-03 01:04:12'),
(198, 'Alden Welch', '7542', 'natoque.penatibus.et@accumsannequeet.edu', 'dr_198', '2018-08-03 01:04:12'),
(199, 'Lewis Davenport', '9927', 'lectus.pede@vulputate.org', 'dr_199', '2018-08-03 01:04:12'),
(200, 'Peter Harris', '8419', 'Nullam.suscipit.est@maurisidsapien.co.uk', 'dr_200', '2018-08-03 01:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `group_supervisor`
--

DROP TABLE IF EXISTS `group_supervisor`;
CREATE TABLE `group_supervisor` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_supervisor`
--

INSERT INTO `group_supervisor` (`id`, `name`, `national_id`, `email`, `qr_code`, `created_at`) VALUES
(1, 'Nermeen Mattar', '123456789', 'nermeen@gmail.com', 'bs_1', '2018-08-02 02:29:55'),
(2, 'Arden Mcguire', '6192', 'Pellentesque@Maurisut.net', 'bs_2', '2018-08-03 01:08:34'),
(3, 'Wilma Franks', '5542', 'nibh@metusInnec.ca', 'bs_3', '2018-08-03 01:08:34'),
(4, 'Joelle Edwards', '9204', 'dolor.sit@Morbivehicula.net', 'bs_4', '2018-08-03 01:08:34'),
(5, 'Chantale Nixon', '9443', 'posuere.cubilia@euaccumsansed.com', 'bs_5', '2018-08-03 01:08:34'),
(6, 'Reese Mayo', '9101', 'In.tincidunt.congue@laciniavitaesodales.com', 'bs_6', '2018-08-03 01:08:34'),
(7, 'Leonard Rhodes', '8843', 'fermentum@ipsum.ca', 'bs_7', '2018-08-03 01:08:34'),
(8, 'Sacha Mccoy', '8861', 'ac@enim.co.uk', 'bs_8', '2018-08-03 01:08:34'),
(9, 'Raya Todd', '6780', 'arcu.Nunc.mauris@Nuncmaurissapien.co.uk', 'bs_9', '2018-08-03 01:08:34'),
(10, 'Xantha Donovan', '6178', 'mauris.id.sapien@elit.co.uk', 'bs_10', '2018-08-03 01:08:34'),
(11, 'Renee Page', '6155', 'sed.tortor.Integer@congue.edu', 'bs_11', '2018-08-03 01:08:34'),
(12, 'Burke Sharpe', '5496', 'enim@sit.com', 'bs_12', '2018-08-03 01:08:34'),
(13, 'Nehru Barrera', '8239', 'tristique.senectus@malesuadaut.co.uk', 'bs_13', '2018-08-03 01:08:34'),
(14, 'Stewart Hays', '7502', 'In.ornare.sagittis@leoin.org', 'bs_14', '2018-08-03 01:08:34'),
(15, 'Clark Hendricks', '9283', 'lacus.Etiam.bibendum@lectuspede.com', 'bs_15', '2018-08-03 01:08:34'),
(16, 'Danielle Velazquez', '8501', 'Sed.malesuada.augue@viverraDonectempus.co.uk', 'bs_16', '2018-08-03 01:08:34'),
(17, 'Virginia Lewis', '9149', 'Sed.nulla.ante@nisisem.com', 'bs_17', '2018-08-03 01:08:34'),
(18, 'Grady Duran', '8795', 'sit.amet.faucibus@Duisvolutpatnunc.org', 'bs_18', '2018-08-03 01:08:34'),
(19, 'Honorato Ferrell', '9945', 'lorem.eu@ametorciUt.org', 'bs_19', '2018-08-03 01:08:34'),
(20, 'Lucas Marquez', '8666', 'facilisis@amet.org', 'bs_20', '2018-08-03 01:08:34'),
(21, 'Simone Kent', '5915', 'quis.pede@Aliquamauctor.edu', 'bs_21', '2018-08-03 01:08:34'),
(22, 'Wang Cervantes', '7978', 'habitant.morbi.tristique@elitpede.co.uk', 'bs_22', '2018-08-03 01:08:34'),
(23, 'Buckminster Trujillo', '5236', 'mauris@Duissitamet.ca', 'bs_23', '2018-08-03 01:08:34'),
(24, 'Kasimir Patterson', '9605', 'pede@pede.co.uk', 'bs_24', '2018-08-03 01:08:34'),
(25, 'Lucius Perkins', '5261', 'eu.elit@cursusluctus.ca', 'bs_25', '2018-08-03 01:08:34'),
(26, 'Ayanna Andrews', '8381', 'penatibus@nec.org', 'bs_26', '2018-08-03 01:08:34'),
(27, 'Nevada Henson', '6168', 'sem@ametluctus.net', 'bs_27', '2018-08-03 01:08:34'),
(28, 'Moses Drake', '8206', 'Phasellus@egetmollis.net', 'bs_28', '2018-08-03 01:08:34'),
(29, 'Kiayada Robbins', '7333', 'in.faucibus.orci@Nunclaoreet.com', 'bs_29', '2018-08-03 01:08:34'),
(30, 'Clayton Briggs', '9075', 'ligula.Nullam@eutellus.ca', 'bs_30', '2018-08-03 01:08:34'),
(31, 'Zane Keller', '6691', 'a@arcu.edu', 'bs_31', '2018-08-03 01:08:34'),
(32, 'Cooper Riggs', '9619', 'nunc.est@elitdictumeu.ca', 'bs_32', '2018-08-03 01:08:34'),
(33, 'Pascale Bell', '5236', 'nulla.Integer.urna@InfaucibusMorbi.org', 'bs_33', '2018-08-03 01:08:34'),
(34, 'Kelly Lawson', '5979', 'ornare.libero@pedesagittis.edu', 'bs_34', '2018-08-03 01:08:34'),
(35, 'Eve Morgan', '9763', 'molestie.pharetra.nibh@pretiumet.ca', 'bs_35', '2018-08-03 01:08:34'),
(36, 'Shelly Dunn', '8032', 'diam@risusa.co.uk', 'bs_36', '2018-08-03 01:08:34'),
(37, 'Cadman Knox', '7972', 'quis.tristique@magnaCras.edu', 'bs_37', '2018-08-03 01:08:34'),
(38, 'Quinn Noel', '8735', 'ligula.Nullam@Nullatincidunt.org', 'bs_38', '2018-08-03 01:08:34'),
(39, 'Lesley Benjamin', '7074', 'ut.pharetra.sed@egetlacus.edu', 'bs_39', '2018-08-03 01:08:34'),
(40, 'Aladdin Nieves', '7483', 'dolor.Quisque@Cum.co.uk', 'bs_40', '2018-08-03 01:08:34'),
(41, 'Iona Johnston', '5997', 'mi@pedeCumsociis.net', 'bs_41', '2018-08-03 01:08:34'),
(42, 'Zahir Vargas', '5697', 'egestas.Sed.pharetra@semperrutrum.co.uk', 'bs_42', '2018-08-03 01:08:34'),
(43, 'Tucker Herrera', '8556', 'dui@adipiscinglacusUt.net', 'bs_43', '2018-08-03 01:08:34'),
(44, 'Kyra Solis', '7604', 'blandit.viverra@atsem.com', 'bs_44', '2018-08-03 01:08:34'),
(45, 'Omar Mosley', '5880', 'Aliquam.ornare@dolor.co.uk', 'bs_45', '2018-08-03 01:08:34'),
(46, 'Paula Wheeler', '9859', 'enim.Suspendisse@fringillapurus.edu', 'bs_46', '2018-08-03 01:08:34'),
(47, 'Jocelyn Mullins', '8599', 'vitae.purus@magna.edu', 'bs_47', '2018-08-03 01:08:34'),
(48, 'Hedley Leonard', '5859', 'Phasellus@parturient.net', 'bs_48', '2018-08-03 01:08:34'),
(49, 'Fitzgerald Morse', '8848', 'arcu@Crasconvallis.net', 'bs_49', '2018-08-03 01:08:34'),
(50, 'Uriah Wood', '9979', 'fringilla@vulputatemaurissagittis.ca', 'bs_50', '2018-08-03 01:08:34'),
(51, 'Timon Lucas', '8552', 'cursus.diam@Morbinonsapien.co.uk', 'bs_51', '2018-08-03 01:08:34'),
(52, 'Rosalyn Hogan', '6400', 'pede.malesuada.vel@purusmaurisa.co.uk', 'bs_52', '2018-08-03 01:08:34'),
(53, 'Alfreda Patrick', '6592', 'vel@rutrum.edu', 'bs_53', '2018-08-03 01:08:34'),
(54, 'Myles Erickson', '7737', 'Cras.pellentesque.Sed@Integervulputaterisus.edu', 'bs_54', '2018-08-03 01:08:34'),
(55, 'Deborah Kennedy', '6387', 'et.libero@amet.ca', 'bs_55', '2018-08-03 01:08:34'),
(56, 'Breanna Lawson', '6916', 'quis@adlitora.edu', 'bs_56', '2018-08-03 01:08:34'),
(57, 'Leila Malone', '8473', 'scelerisque@fringillapurusmauris.org', 'bs_57', '2018-08-03 01:08:34'),
(58, 'Rhoda George', '6858', 'lorem@vehiculaet.com', 'bs_58', '2018-08-03 01:08:34'),
(59, 'Courtney Fry', '5037', 'et.lacinia@idnuncinterdum.net', 'bs_59', '2018-08-03 01:08:34'),
(60, 'Elaine Parrish', '6853', 'convallis.ante.lectus@cursus.org', 'bs_60', '2018-08-03 01:08:34'),
(61, 'Frances Bowers', '8604', 'sit.amet@metusIn.net', 'bs_61', '2018-08-03 01:08:34'),
(62, 'Garrett Marshall', '6082', 'gravida.Aliquam.tincidunt@massaSuspendisseeleifend.com', 'bs_62', '2018-08-03 01:08:34'),
(63, 'Abigail Strong', '8168', 'nulla.Cras@mattis.net', 'bs_63', '2018-08-03 01:08:34'),
(64, 'Ray Stokes', '8892', 'vulputate.nisi.sem@MaurisnullaInteger.net', 'bs_64', '2018-08-03 01:08:34'),
(65, 'Anastasia Ayers', '9122', 'Suspendisse.non.leo@erosturpis.com', 'bs_65', '2018-08-03 01:08:34'),
(66, 'Wade Walker', '5721', 'mollis.Phasellus.libero@semperpretium.edu', 'bs_66', '2018-08-03 01:08:34'),
(67, 'Ginger Conner', '8475', 'Aenean@egestasSed.edu', 'bs_67', '2018-08-03 01:08:34'),
(68, 'Gabriel Rhodes', '8849', 'luctus@Praesent.edu', 'bs_68', '2018-08-03 01:08:34'),
(69, 'Noah Patterson', '5189', 'auctor@ametnullaDonec.co.uk', 'bs_69', '2018-08-03 01:08:34'),
(70, 'Ila Hancock', '5908', 'Nam.porttitor.scelerisque@purusmaurisa.edu', 'bs_70', '2018-08-03 01:08:34'),
(71, 'Jakeem Vincent', '6203', 'orci.Ut.semper@mollis.com', 'bs_71', '2018-08-03 01:08:34'),
(72, 'Candace Woods', '6969', 'auctor@primis.net', 'bs_72', '2018-08-03 01:08:34'),
(73, 'Serena Dodson', '7623', 'eu@mollis.co.uk', 'bs_73', '2018-08-03 01:08:34'),
(74, 'Ashely Flowers', '9931', 'elit.pharetra.ut@non.edu', 'bs_74', '2018-08-03 01:08:34'),
(75, 'Wanda Sellers', '5707', 'magna.Duis@Inlorem.co.uk', 'bs_75', '2018-08-03 01:08:34'),
(76, 'Maxine Wise', '5902', 'Morbi.accumsan.laoreet@Sed.ca', 'bs_76', '2018-08-03 01:08:34'),
(77, 'Philip Buckley', '6412', 'Morbi@egestas.org', 'bs_77', '2018-08-03 01:08:34'),
(78, 'Jada Ware', '7437', 'interdum.Curabitur.dictum@Cras.com', 'bs_78', '2018-08-03 01:08:34'),
(79, 'Pascale Jordan', '6749', 'quis.diam.luctus@odiotristique.net', 'bs_79', '2018-08-03 01:08:34'),
(80, 'Walker Rivers', '8912', 'scelerisque@Aeneangravidanunc.net', 'bs_80', '2018-08-03 01:08:34'),
(81, 'Carla Gay', '7514', 'suscipit.est.ac@hendreritconsectetuer.edu', 'bs_81', '2018-08-03 01:08:34'),
(82, 'Neve Potter', '8979', 'nec.orci.Donec@vulputate.net', 'bs_82', '2018-08-03 01:08:34'),
(83, 'Stewart Patterson', '9418', 'cursus@enimcondimentum.org', 'bs_83', '2018-08-03 01:08:34'),
(84, 'Tarik Hobbs', '8258', 'eros.turpis.non@vitae.co.uk', 'bs_84', '2018-08-03 01:08:34'),
(85, 'Juliet Roberson', '9457', 'in.aliquet.lobortis@rutrumnon.net', 'bs_85', '2018-08-03 01:08:34'),
(86, 'Ferris Walls', '7723', 'vitae.risus@Integer.edu', 'bs_86', '2018-08-03 01:08:34'),
(87, 'Indigo Byers', '6058', 'nonummy@eteuismod.ca', 'bs_87', '2018-08-03 01:08:34'),
(88, 'Neve Cook', '9947', 'dui@sociis.net', 'bs_88', '2018-08-03 01:08:34'),
(89, 'Blaine Morton', '8304', 'purus@semper.com', 'bs_89', '2018-08-03 01:08:34'),
(90, 'Colton Duran', '7946', 'at.augue.id@Suspendisseseddolor.org', 'bs_90', '2018-08-03 01:08:34'),
(91, 'Imani Fisher', '9474', 'quam.Pellentesque.habitant@rhoncusDonecest.co.uk', 'bs_91', '2018-08-03 01:08:34'),
(92, 'Vladimir Patterson', '7076', 'justo@Aliquamauctor.edu', 'bs_92', '2018-08-03 01:08:34'),
(93, 'Paul Ross', '6456', 'enim.sit@sedpede.com', 'bs_93', '2018-08-03 01:08:34'),
(94, 'Xanthus Callahan', '9394', 'odio.Phasellus@diam.co.uk', 'bs_94', '2018-08-03 01:08:34'),
(95, 'Thaddeus Freeman', '7735', 'dolor.sit@inhendrerit.edu', 'bs_95', '2018-08-03 01:08:34'),
(96, 'Brett Sanders', '5510', 'felis.purus.ac@etipsum.edu', 'bs_96', '2018-08-03 01:08:34'),
(97, 'Uma Lindsay', '9165', 'nisi@nibhdolornonummy.org', 'bs_97', '2018-08-03 01:08:34'),
(98, 'Oliver Bridges', '9819', 'dolor.Quisque@lectuspedeultrices.org', 'bs_98', '2018-08-03 01:08:34'),
(99, 'Kylynn Rasmussen', '8008', 'convallis@sociisnatoque.edu', 'bs_99', '2018-08-03 01:08:34'),
(100, 'Shellie Mckinney', '5451', 'molestie.sodales@elementumpurusaccumsan.edu', 'bs_100', '2018-08-03 01:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `group_supervisor_user`
--

DROP TABLE IF EXISTS `group_supervisor_user`;
CREATE TABLE `group_supervisor_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_supervisor_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number_of_buses` int(11) NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`, `address`, `number_of_buses`, `notes`, `created_at`) VALUES
(1, 'Mina', '', 0, '', '2018-08-02 23:55:47'),
(2, 'Masjid al haram mecca', '', 0, '', '2018-08-02 23:55:47'),
(3, 'Mecca', '', 0, '', '2018-08-02 23:56:33'),
(4, 'Arafat', '', 0, '', '2018-08-02 23:56:33'),
(5, 'Muzdalifah', '', 0, '', '2018-08-02 23:57:52'),
(6, 'Madina Monwara', '', 0, '', '2018-08-02 23:57:52'),
(7, 'King Abdulaziz International Airport, Jeddah', '', 0, '', '2018-08-02 23:59:34'),
(8, '', 'Jeddah New Airport', 0, '', '2018-08-02 23:59:34'),
(11, 'Prince Mohammad Bin Abdulaziz International Airport, Madina Monwara', '', 0, '', '2018-08-03 00:00:58'),
(12, 'Prince Abdul Mohsin bin Abdulaziz International Airport, Yanbu', '', 0, '', '2018-08-03 00:00:58'),
(13, 'Prince Abdul Majeed bin Abdulaziz Domestic Airport, Al-Ula', '', 0, '', '2018-08-03 00:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `bus_id` int(10) UNSIGNED NOT NULL,
  `source_station_id` int(10) UNSIGNED NOT NULL,
  `destination` varchar(255) NOT NULL,
  `departure_time` timestamp NULL DEFAULT NULL,
  `arrival_time` timestamp NULL DEFAULT NULL,
  `free_seats` int(10) UNSIGNED NOT NULL,
  `occupied_seats` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trip_driver`
--

DROP TABLE IF EXISTS `trip_driver`;
CREATE TABLE `trip_driver` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `photo`, `phone`, `job`, `birth_date`, `nationality`, `qr_code`, `is_enabled`, `created_at`) VALUES
(1, 'Astra', 'Fuller', 'Patricia', 'dapibus@nequetellusimperdiet.net', '', '1657091373599', 'Non Inc', '06/24/2018', 'Wallis and Futuna', 'us_1', NULL, '2018-08-03 00:19:46'),
(2, 'Stuart', 'Leigh', 'Ray', 'facilisis@dolor.edu', '', '1679021053999', 'Tristique PC', '04/10/2018', 'Kazakhstan', 'us_2', NULL, '2018-08-03 00:19:46'),
(3, 'Abraham', 'Hayfa', 'Jorden', 'eu.tempor.erat@porttitortellusnon.net', '', '1695101718099', 'Nulla PC', '06/11/2018', 'Turks and Caicos Islands', 'us_3', NULL, '2018-08-03 00:19:46'),
(4, 'Howard', 'Kirby', 'Colorado', 'in.faucibus.orci@enimmitempor.edu', '', '1668052053299', 'Gravida Praesent Institute', '03/18/2018', 'Saint Kitts and Nevis', NULL, NULL, '2018-08-03 00:19:46'),
(5, 'Stewart', 'Idona', 'Quinn', 'ultrices.Duis.volutpat@malesuadafamesac.org', '', '1668120225299', 'Nisi A Corporation', '07/21/2018', 'Côte D\'Ivoire (Ivory Coast)', NULL, NULL, '2018-08-03 00:19:46'),
(6, 'Colton', 'Halla', 'Jelani', 'Quisque.imperdiet@Cumsociis.net', '', '1683110781599', 'Eu Tellus Associates', '08/02/2017', 'Congo, the Democratic Republic of the', NULL, NULL, '2018-08-03 00:19:46'),
(7, 'Sade', 'Malachi', 'Ella', 'a.nunc.In@porttitortellusnon.org', '', '1681053013899', 'Gravida Mauris Incorporated', '08/03/2018', 'Kuwait', NULL, NULL, '2018-08-03 00:19:46'),
(8, 'Stone', 'Castor', 'Nash', 'volutpat@nullaDonecnon.com', '', '1644042873399', 'Fringilla Industries', '12/06/2017', 'El Salvador', NULL, NULL, '2018-08-03 00:19:46'),
(9, 'Erin', 'Otto', 'Sylvester', 'ipsum.Suspendisse@natoque.co.uk', '', '1643010545499', 'Vestibulum Massa Limited', '02/03/2018', 'Greece', NULL, NULL, '2018-08-03 00:19:46'),
(10, 'Darryl', 'Aquila', 'Kelly', 'sem.Pellentesque@penatibuset.org', '', '1692070694199', 'Phasellus Foundation', '06/09/2018', 'Bosnia and Herzegovina', NULL, NULL, '2018-08-03 00:19:46'),
(11, 'McKenzie', 'Lucian', 'Brianna', 'rutrum.non@ullamcorper.co.uk', '', '1636070899799', 'Tincidunt Foundation', '12/15/2017', 'Bermuda', NULL, NULL, '2018-08-03 00:19:46'),
(12, 'Harlan', 'Cheyenne', 'Reed', 'et@malesuadafringillaest.ca', '', '1696092368399', 'Ornare Tortor At Foundation', '09/11/2017', 'Guyana', NULL, NULL, '2018-08-03 00:19:46'),
(13, 'Grace', 'Isadora', 'Uriel', 'risus.quis.diam@faucibusMorbi.net', '', '1663121550099', 'Ante Maecenas Inc.', '08/29/2017', 'Estonia', NULL, NULL, '2018-08-03 00:19:46'),
(14, 'Colby', 'Sylvia', 'Rooney', 'at.egestas@molestie.org', '', '1639062926799', 'A Scelerisque Company', '11/29/2017', 'Honduras', NULL, NULL, '2018-08-03 00:19:46'),
(15, 'Vera', 'Kasper', 'Roth', 'Donec@ipsum.net', '', '1622040275599', 'Mollis Consulting', '08/25/2017', 'Svalbard and Jan Mayen Islands', NULL, NULL, '2018-08-03 00:19:46'),
(16, 'Gary', 'Bertha', 'Hilda', 'elit@NuncmaurisMorbi.co.uk', '', '1688091106499', 'Eu LLC', '02/20/2018', 'Pakistan', NULL, NULL, '2018-08-03 00:19:46'),
(17, 'Xander', 'Ulla', 'Carter', 'Mauris.non@sapienCrasdolor.org', '', '1652092292299', 'Molestie Orci Tincidunt LLP', '09/12/2017', 'Israel', NULL, NULL, '2018-08-03 00:19:46'),
(18, 'Paul', 'Nichole', 'Lyle', 'Nam.consequat@vellectus.net', '', '1692051817099', 'Nec Metus Facilisis Ltd', '10/17/2017', 'Montenegro', NULL, NULL, '2018-08-03 00:19:46'),
(19, 'Blair', 'Ignacia', 'Haviva', 'Quisque.tincidunt@mi.edu', '', '1629081984999', 'Ut Industries', '04/18/2018', 'Mayotte', NULL, NULL, '2018-08-03 00:19:46'),
(20, 'Aubrey', 'Malachi', 'Cassady', 'interdum.libero@acipsumPhasellus.com', '', '1629051207699', 'Consectetuer Incorporated', '03/16/2018', 'Central African Republic', NULL, NULL, '2018-08-03 00:19:46'),
(21, 'Laith', 'Orson', 'Cruz', 'nibh.sit.amet@sociisnatoque.net', '', '1695070582399', 'Sem Eget Corp.', '06/21/2018', 'Spain', NULL, NULL, '2018-08-03 00:19:46'),
(22, 'Mariko', 'Ifeoma', 'Raja', 'mauris.blandit.mattis@Donecest.net', '', '1620061069299', 'Ac Mi Eleifend Corporation', '02/23/2018', 'Morocco', NULL, NULL, '2018-08-03 00:19:46'),
(23, 'Naida', 'Winifred', 'Bernard', 'ultrices.Vivamus@augueac.net', '', '1694051507699', 'Mauris Corp.', '01/02/2018', 'Mauritania', NULL, NULL, '2018-08-03 00:19:46'),
(24, 'Zenia', 'Chaim', 'Dorothy', 'mi@diamDuismi.org', '', '1675102309499', 'Blandit Congue In Industries', '11/23/2017', 'Azerbaijan', NULL, NULL, '2018-08-03 00:19:46'),
(25, 'Harlan', 'Josephine', 'Bernard', 'diam.Proin.dolor@orci.edu', '', '1614092939999', 'Imperdiet Ullamcorper Duis Inc.', '06/27/2018', 'Dominica', NULL, NULL, '2018-08-03 00:19:46'),
(26, 'Salvador', 'Sara', 'Grant', 'tincidunt.nunc.ac@neque.edu', '', '1688062532499', 'Nulla At Institute', '04/20/2018', 'Guinea-Bissau', NULL, NULL, '2018-08-03 00:19:46'),
(27, 'Heidi', 'Keane', 'Acton', 'odio.vel.est@eu.com', '', '1637062656899', 'Tempor Industries', '07/28/2018', 'Mayotte', NULL, NULL, '2018-08-03 00:19:46'),
(28, 'Vivien', 'Blake', 'Hedwig', 'massa.rutrum@non.edu', '', '1638050728899', 'Non Corporation', '03/11/2018', 'Mali', NULL, NULL, '2018-08-03 00:19:46'),
(29, 'Howard', 'Axel', 'Ivor', 'eu.tellus.Phasellus@ut.co.uk', '', '1652112575699', 'Justo Faucibus Lectus Foundation', '03/24/2018', 'Estonia', NULL, NULL, '2018-08-03 00:19:46'),
(30, 'Herman', 'Griffin', 'Riley', 'velit.Pellentesque.ultricies@purusgravidasagittis.net', '', '1606061072499', 'Vel Est Tempor Foundation', '07/26/2018', 'San Marino', NULL, NULL, '2018-08-03 00:19:46'),
(31, 'Cyrus', 'Charissa', 'Mira', 'varius@quamquis.com', '', '1626031169699', 'Luctus Felis Inc.', '07/27/2018', 'Senegal', NULL, NULL, '2018-08-03 00:19:46'),
(32, 'Yuli', 'Gabriel', 'Kessie', 'vulputate@pede.co.uk', '', '1648032696099', 'Vitae Aliquam Eros LLP', '04/18/2018', 'Northern Mariana Islands', NULL, NULL, '2018-08-03 00:19:46'),
(33, 'Oleg', 'Maxwell', 'Brandon', 'Nulla.eu@quisarcu.co.uk', '', '1620100414999', 'Aliquam Fringilla LLP', '03/25/2018', 'Angola', NULL, NULL, '2018-08-03 00:19:46'),
(34, 'Beau', 'Veda', 'Colt', 'aliquet@lobortisauguescelerisque.edu', '', '1675101604899', 'Dolor Vitae Dolor Corporation', '08/05/2017', 'Haiti', NULL, NULL, '2018-08-03 00:19:46'),
(35, 'Lucy', 'Shay', 'Jemima', 'risus@Duissitamet.edu', '', '1659071084999', 'Tempus Foundation', '11/03/2017', 'Uganda', NULL, NULL, '2018-08-03 00:19:46'),
(36, 'Winter', 'Wing', 'Solomon', 'risus.Duis@cubiliaCurae.com', '', '1665101300099', 'Lacus Quisque Institute', '08/23/2017', 'Kyrgyzstan', NULL, NULL, '2018-08-03 00:19:46'),
(37, 'Vivian', 'Zelenia', 'Cora', 'montes.nascetur@semperet.edu', '', '1626102826999', 'Sociis Natoque Penatibus LLP', '07/27/2018', 'Cape Verde', NULL, NULL, '2018-08-03 00:19:46'),
(38, 'Curran', 'Justine', 'Abdul', 'Nunc.ac.sem@lacusCras.com', '', '1651090413799', 'Etiam Consulting', '08/13/2017', 'Saint Vincent and The Grenadines', NULL, NULL, '2018-08-03 00:19:46'),
(39, 'Ishmael', 'Ahmed', 'Jermaine', 'imperdiet.ornare@tinciduntduiaugue.net', '', '1672060302499', 'Lobortis Company', '03/11/2018', 'Denmark', NULL, NULL, '2018-08-03 00:19:46'),
(40, 'Henry', 'Quincy', 'Mollie', 'vestibulum@eu.com', '', '1683080939099', 'Aliquet Magna A Industries', '08/29/2017', 'Jamaica', NULL, NULL, '2018-08-03 00:19:46'),
(41, 'Tasha', 'Paul', 'Jeremy', 'tincidunt.congue.turpis@aliquet.co.uk', '', '1629042041299', 'Phasellus Elit Corporation', '02/22/2018', 'Afghanistan', NULL, NULL, '2018-08-03 00:19:46'),
(42, 'Fletcher', 'Simon', 'Curran', 'Nunc.sed@tellus.edu', '', '1621051247599', 'Pellentesque Sed Dictum Company', '11/13/2017', 'British Indian Ocean Territory', NULL, NULL, '2018-08-03 00:19:46'),
(43, 'Jenette', 'Blair', 'Gray', 'laoreet@malesuadamalesuada.co.uk', '', '1680032679999', 'Dignissim Maecenas Ornare Associates', '10/16/2017', 'Senegal', NULL, NULL, '2018-08-03 00:19:46'),
(44, 'Hayley', 'Xantha', 'Savannah', 'feugiat.Lorem@faucibusidlibero.edu', '', '1611082457799', 'Nullam Corporation', '12/25/2017', 'Cyprus', NULL, NULL, '2018-08-03 00:19:46'),
(45, 'Ezekiel', 'Amena', 'Lester', 'magna.sed.dui@loremeu.com', '', '1615042007699', 'Morbi Consulting', '05/18/2018', 'Macao', NULL, NULL, '2018-08-03 00:19:46'),
(46, 'Allistair', 'Alexandra', 'Ross', 'eu@utsemNulla.co.uk', '', '1615080880199', 'Elit Pede Ltd', '12/17/2017', 'Congo (Brazzaville)', NULL, NULL, '2018-08-03 00:19:46'),
(47, 'Tara', 'Ramona', 'Edward', 'orci.Ut@tinciduntadipiscing.org', '', '1618012926099', 'Vulputate Company', '07/14/2018', 'Malaysia', NULL, NULL, '2018-08-03 00:19:46'),
(48, 'Clayton', 'Liberty', 'Uriah', 'a.magna@parturient.ca', '', '1678090814799', 'Purus PC', '02/12/2018', 'Kuwait', NULL, NULL, '2018-08-03 00:19:46'),
(49, 'Ulric', 'Keith', 'Mark', 'Sed.pharetra.felis@arcuVestibulum.edu', '', '1628050956099', 'Commodo Auctor Institute', '11/28/2017', 'Tunisia', NULL, NULL, '2018-08-03 00:19:46'),
(50, 'Ira', 'Azalia', 'Daquan', 'porta.elit@antedictumcursus.edu', '', '1695071887699', 'Volutpat Incorporated', '10/17/2017', 'Monaco', NULL, NULL, '2018-08-03 00:19:46'),
(51, 'Nissim', 'Gil', 'Neil', 'tristique.aliquet.Phasellus@convallis.ca', '', '1666072092399', 'Fringilla Porttitor PC', '11/17/2017', 'France', NULL, NULL, '2018-08-03 00:19:46'),
(52, 'Bruce', 'Nomlanga', 'Joelle', 'ullamcorper.velit.in@acarcuNunc.org', '', '1695062690099', 'Amet Consectetuer Adipiscing Limited', '05/06/2018', 'Tonga', NULL, NULL, '2018-08-03 00:19:46'),
(53, 'Maxine', 'Ralph', 'Bell', 'sed.turpis@felisNulla.ca', '', '1693012071799', 'Commodo Auctor Industries', '04/13/2018', 'Indonesia', NULL, NULL, '2018-08-03 00:19:46'),
(54, 'Kevyn', 'Germaine', 'Amaya', 'risus.In.mi@nonummyipsum.ca', '', '1623111017099', 'In Tincidunt Congue Company', '11/23/2017', 'Timor-Leste', NULL, NULL, '2018-08-03 00:19:46'),
(55, 'Virginia', 'Sage', 'Jeremy', 'ut@ut.co.uk', '', '1696082061399', 'Mollis Nec Limited', '11/18/2017', 'Switzerland', NULL, NULL, '2018-08-03 00:19:46'),
(56, 'Kareem', 'Taylor', 'Brian', 'accumsan.sed@nec.org', '', '1678110350699', 'Scelerisque Neque Nullam Corp.', '12/13/2017', 'Western Sahara', NULL, NULL, '2018-08-03 00:19:46'),
(57, 'Lucius', 'Alexa', 'Jenette', 'venenatis.lacus.Etiam@consectetueradipiscing.ca', '', '1607092500599', 'Parturient Montes Associates', '01/28/2018', 'Switzerland', NULL, NULL, '2018-08-03 00:19:46'),
(58, 'Zenaida', 'Amir', 'Sharon', 'enim.diam.vel@Nulla.edu', '', '1666053024699', 'Tempor Bibendum Consulting', '01/07/2018', 'Malaysia', NULL, NULL, '2018-08-03 00:19:46'),
(59, 'Jackson', 'Angelica', 'Jade', 'mollis.Integer@uteros.ca', '', '1674030189899', 'Amet Company', '04/22/2018', 'Pitcairn Islands', NULL, NULL, '2018-08-03 00:19:46'),
(60, 'Ava', 'Shaeleigh', 'Alexandra', 'eu.sem.Pellentesque@Etiamvestibulum.net', '', '1690051930499', 'Non Industries', '05/19/2018', 'Botswana', NULL, NULL, '2018-08-03 00:19:46'),
(61, 'Claudia', 'Reuben', 'Burke', 'diam.Pellentesque@lacusCras.net', '', '1671012871699', 'Nec Urna Corp.', '05/18/2018', 'Guyana', NULL, NULL, '2018-08-03 00:19:46'),
(62, 'Stephen', 'Kamal', 'Timon', 'risus.Morbi.metus@risusQuisquelibero.org', '', '1632081457199', 'Nulla Ltd', '12/25/2017', 'Congo (Brazzaville)', NULL, NULL, '2018-08-03 00:19:46'),
(63, 'Shaeleigh', 'Lionel', 'Aileen', 'sapien.imperdiet.ornare@dis.edu', '', '1602092517699', 'Tincidunt Consulting', '07/27/2018', 'Saint Barthélemy', NULL, NULL, '2018-08-03 00:19:46'),
(64, 'Keefe', 'Libby', 'Cassady', 'ipsum@justo.com', '', '1687071719799', 'Sit Amet Diam Consulting', '05/31/2018', 'United States', NULL, NULL, '2018-08-03 00:19:46'),
(65, 'Damon', 'Rudyard', 'Louis', 'Aliquam@pharetranibhAliquam.edu', '', '1632032221099', 'Eu Metus In Corporation', '02/18/2018', 'Ireland', NULL, NULL, '2018-08-03 00:19:46'),
(66, 'Wynne', 'Maggie', 'Baxter', 'rutrum@Integersemelit.net', '', '1614060472099', 'Non LLC', '01/12/2018', 'Mauritius', NULL, NULL, '2018-08-03 00:19:46'),
(67, 'Merrill', 'Althea', 'Daniel', 'facilisi.Sed@blanditat.com', '', '1661070910399', 'Phasellus PC', '02/03/2018', 'Liechtenstein', NULL, NULL, '2018-08-03 00:19:46'),
(68, 'Aileen', 'Todd', 'Alika', 'tortor.Integer.aliquam@QuisquevariusNam.co.uk', '', '1654092726299', 'Phasellus Ornare Fusce PC', '05/26/2018', 'Italy', NULL, NULL, '2018-08-03 00:19:46'),
(69, 'Wesley', 'Holly', 'Amelia', 'Aliquam.auctor.velit@mattis.co.uk', '', '1604083000099', 'Tincidunt Vehicula Risus Ltd', '05/19/2018', 'Northern Mariana Islands', NULL, NULL, '2018-08-03 00:19:46'),
(70, 'Ava', 'Priscilla', 'Grady', 'sapien.imperdiet@Fuscemollis.co.uk', '', '1685102517799', 'Nam Incorporated', '09/23/2017', 'New Zealand', NULL, NULL, '2018-08-03 00:19:46'),
(71, 'Dale', 'Ezra', 'Keiko', 'orci@nonegestasa.com', '', '1676040861899', 'Eu Limited', '04/15/2018', 'Bulgaria', NULL, NULL, '2018-08-03 00:19:46'),
(72, 'Grady', 'Cedric', 'Martin', 'libero@ornareegestasligula.co.uk', '', '1682122070099', 'Felis Ullamcorper Viverra Institute', '12/07/2017', 'Tanzania', NULL, NULL, '2018-08-03 00:19:46'),
(73, 'James', 'Chloe', 'Nathaniel', 'Proin@nectellus.ca', '', '1694050819899', 'Urna Incorporated', '08/28/2017', 'Lithuania', NULL, NULL, '2018-08-03 00:19:46'),
(74, 'Barry', 'Mechelle', 'Burke', 'at@purusmaurisa.ca', '', '1665070551499', 'Ornare Lectus Limited', '09/14/2017', 'Panama', NULL, NULL, '2018-08-03 00:19:46'),
(75, 'Emily', 'Britanney', 'Kalia', 'vulputate.dui@felis.org', '', '1673052959399', 'Tristique Foundation', '04/04/2018', 'Martinique', NULL, NULL, '2018-08-03 00:19:46'),
(76, 'Herman', 'Fulton', 'Mark', 'dignissim@egestas.com', '', '1683090333799', 'Nostra Per Inceptos Ltd', '07/08/2018', 'Romania', NULL, NULL, '2018-08-03 00:19:46'),
(77, 'Nissim', 'Blake', 'August', 'ligula.consectetuer@ligula.ca', '', '1601070349599', 'Odio Semper Cursus Consulting', '12/12/2017', 'Albania', NULL, NULL, '2018-08-03 00:19:46'),
(78, 'Sydney', 'Bruce', 'Berk', 'elit.pede@utmi.ca', '', '1607011827199', 'Amet LLC', '06/10/2018', 'Timor-Leste', NULL, NULL, '2018-08-03 00:19:46'),
(79, 'Dante', 'Plato', 'Bell', 'Cras.eget.nisi@nonummy.edu', '', '1676121976399', 'Arcu Sed PC', '05/02/2018', 'Iceland', NULL, NULL, '2018-08-03 00:19:46'),
(80, 'Joan', 'Mikayla', 'Rinah', 'magnis.dis@Nulladignissim.co.uk', '', '1654091779799', 'Sed Tortor Corp.', '01/25/2018', 'Honduras', NULL, NULL, '2018-08-03 00:19:46'),
(81, 'Scarlet', 'Nevada', 'Cruz', 'lorem.eget@Duis.com', '', '1679091533799', 'Donec Porttitor Tellus Foundation', '09/18/2017', 'Mexico', NULL, NULL, '2018-08-03 00:19:46'),
(82, 'Patience', 'Nigel', 'Quamar', 'Morbi.non.sapien@ornare.ca', '', '1692101764999', 'Ante Vivamus Corp.', '04/17/2018', 'Monaco', NULL, NULL, '2018-08-03 00:19:46'),
(83, 'Echo', 'Rogan', 'Lewis', 'enim.mi@aliquetlibero.org', '', '1666033016599', 'Convallis PC', '05/30/2018', 'Macedonia', NULL, NULL, '2018-08-03 00:19:46'),
(84, 'Yoko', 'Ferdinand', 'Judith', 'iaculis@maurisut.co.uk', '', '1609060856099', 'Mattis Corporation', '12/02/2017', 'Equatorial Guinea', NULL, NULL, '2018-08-03 00:19:46'),
(85, 'Griffith', 'Neve', 'Debra', 'non.luctus@dolorsitamet.net', '', '1618090719799', 'Tristique Ac Incorporated', '05/05/2018', 'Kenya', NULL, NULL, '2018-08-03 00:19:46'),
(86, 'Yael', 'Jamal', 'Lee', 'pede.malesuada@pharetrafelis.edu', '', '1679041177599', 'Non LLP', '07/13/2018', 'Turks and Caicos Islands', NULL, NULL, '2018-08-03 00:19:46'),
(87, 'Ayanna', 'Bruce', 'Damian', 'amet@gravida.ca', '', '1665010396399', 'Sed PC', '01/16/2018', 'Paraguay', NULL, NULL, '2018-08-03 00:19:46'),
(88, 'Isabella', 'Raphael', 'Ginger', 'ultrices@lacusCras.ca', '', '1651080841199', 'Ut Erat Sed Corporation', '02/05/2018', 'Peru', NULL, NULL, '2018-08-03 00:19:46'),
(89, 'Cyrus', 'Lucian', 'Andrew', 'eu.eros.Nam@facilisis.com', '', '1699121764499', 'Nunc Commodo Foundation', '11/11/2017', 'Hong Kong', NULL, NULL, '2018-08-03 00:19:46'),
(90, 'Jerry', 'Constance', 'Hanae', 'mauris.id@Fuscedolor.ca', '', '1691121250699', 'Amet Institute', '12/05/2017', 'Finland', NULL, NULL, '2018-08-03 00:19:46'),
(91, 'Kyla', 'Ariel', 'Logan', 'Cum@sagittisaugue.org', '', '1611102496799', 'Donec Consectetuer Limited', '11/11/2017', 'Peru', NULL, NULL, '2018-08-03 00:19:46'),
(92, 'Jamal', 'Anika', 'Logan', 'Donec@feugiatSed.co.uk', '', '1624071224499', 'Cum Sociis Natoque PC', '05/30/2018', 'Slovenia', NULL, NULL, '2018-08-03 00:19:46'),
(93, 'Nero', 'Price', 'Noelani', 'magna.tellus.faucibus@adipiscingelitEtiam.org', '', '1674071115299', 'Dis Parturient Montes PC', '02/22/2018', 'Aruba', NULL, NULL, '2018-08-03 00:19:46'),
(94, 'Kai', 'Beatrice', 'Harrison', 'tellus.Nunc.lectus@Pellentesque.co.uk', '', '1687051146799', 'Nunc Id Institute', '01/10/2018', 'Luxembourg', NULL, NULL, '2018-08-03 00:19:46'),
(95, 'Signe', 'Tashya', 'Kylee', 'elit.Aliquam@eratEtiam.edu', '', '1668051029499', 'Non Lacinia Industries', '09/25/2017', 'Georgia', NULL, NULL, '2018-08-03 00:19:46'),
(96, 'Ian', 'Dustin', 'Aaron', 'habitant.morbi.tristique@auctorvitae.com', '', '1611121462299', 'A Consulting', '08/18/2017', 'Nepal', NULL, NULL, '2018-08-03 00:19:46'),
(97, 'Kenneth', 'Kimberley', 'Nadine', 'rutrum.Fusce@libero.ca', '', '1616050696599', 'Eleifend Incorporated', '12/02/2017', 'Micronesia', NULL, NULL, '2018-08-03 00:19:46'),
(98, 'Lucas', 'Isabella', 'Violet', 'urna@tellus.ca', '', '1644092390499', 'Luctus Consulting', '11/07/2017', 'Malawi', NULL, NULL, '2018-08-03 00:19:46'),
(99, 'Geoffrey', 'Warren', 'Malachi', 'id.blandit.at@odio.net', '', '1690112501199', 'Sed Congue Elit Ltd', '04/20/2018', 'Central African Republic', NULL, NULL, '2018-08-03 00:19:46'),
(100, 'Flynn', 'Arden', 'Kiayada', 'Sed.nec@est.net', '', '1670122901699', 'Ornare Lectus Corp.', '04/14/2018', 'Canada', NULL, NULL, '2018-08-03 00:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_trips`
--

DROP TABLE IF EXISTS `user_trips`;
CREATE TABLE `user_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_forced` tinyint(1) DEFAULT NULL,
  `taken` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `waiting`
--

DROP TABLE IF EXISTS `waiting`;
CREATE TABLE `waiting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_order` int(11) NOT NULL,
  `departure_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_supervisor`
--
ALTER TABLE `bus_supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_supervisor_trips`
--
ALTER TABLE `bus_supervisor_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bst_trip_id` (`trip_id`),
  ADD KEY `bst_bus_supervisor_id` (`bus_supervisor_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_supervisor`
--
ALTER TABLE `group_supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_supervisor_user`
--
ALTER TABLE `group_supervisor_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gsu_group_supervisor_id` (`group_supervisor_id`),
  ADD KEY `gsu_user_id` (`user_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_bus_id` (`bus_id`);

--
-- Indexes for table `trip_driver`
--
ALTER TABLE `trip_driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `td_trip_id` (`trip_id`),
  ADD KEY `td_driver_id` (`driver_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_trips`
--
ALTER TABLE `user_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_trips_trip_id` (`trip_id`),
  ADD KEY `user_trips_user_id` (`user_id`);

--
-- Indexes for table `waiting`
--
ALTER TABLE `waiting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waiting_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `bus_supervisor`
--
ALTER TABLE `bus_supervisor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `bus_supervisor_trips`
--
ALTER TABLE `bus_supervisor_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `group_supervisor`
--
ALTER TABLE `group_supervisor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `group_supervisor_user`
--
ALTER TABLE `group_supervisor_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trip_driver`
--
ALTER TABLE `trip_driver`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `user_trips`
--
ALTER TABLE `user_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `waiting`
--
ALTER TABLE `waiting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_supervisor_trips`
--
ALTER TABLE `bus_supervisor_trips`
  ADD CONSTRAINT `bst_bus_supervisor_id` FOREIGN KEY (`bus_supervisor_id`) REFERENCES `bus_supervisor` (`id`),
  ADD CONSTRAINT `bst_trip_id` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);

--
-- Constraints for table `group_supervisor_user`
--
ALTER TABLE `group_supervisor_user`
  ADD CONSTRAINT `gsu_group_supervisor_id` FOREIGN KEY (`group_supervisor_id`) REFERENCES `group_supervisor` (`id`),
  ADD CONSTRAINT `gsu_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_bus_id` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`);

--
-- Constraints for table `trip_driver`
--
ALTER TABLE `trip_driver`
  ADD CONSTRAINT `td_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `td_trip_id` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);

--
-- Constraints for table `user_trips`
--
ALTER TABLE `user_trips`
  ADD CONSTRAINT `user_trips_trip_id` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`),
  ADD CONSTRAINT `user_trips_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `waiting`
--
ALTER TABLE `waiting`
  ADD CONSTRAINT `waiting_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
