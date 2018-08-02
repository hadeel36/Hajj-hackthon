-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2018 at 06:01 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haj`
--
CREATE DATABASE IF NOT EXISTS `haj` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `haj`;

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
CREATE TABLE `buses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `buses`
--

TRUNCATE TABLE `buses`;
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
-- Truncate table before insert `bus_supervisor`
--

TRUNCATE TABLE `bus_supervisor`;
-- --------------------------------------------------------

--
-- Table structure for table `bus_supervisor_trips`
--

DROP TABLE IF EXISTS `bus_supervisor_trips`;
CREATE TABLE `bus_supervisor_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `bus_supervisor_id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `bus_supervisor_trips`
--

TRUNCATE TABLE `bus_supervisor_trips`;
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
  `qr_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `drivers`
--

TRUNCATE TABLE `drivers`;
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
-- Truncate table before insert `group_supervisor`
--

TRUNCATE TABLE `group_supervisor`;
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

--
-- Truncate table before insert `group_supervisor_user`
--

TRUNCATE TABLE `group_supervisor_user`;
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
-- Truncate table before insert `stations`
--

TRUNCATE TABLE `stations`;
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

--
-- Truncate table before insert `trips`
--

TRUNCATE TABLE `trips`;
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

--
-- Truncate table before insert `trip_driver`
--

TRUNCATE TABLE `trip_driver`;
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
  `job` int(100) NOT NULL,
  `birth_date` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
-- --------------------------------------------------------

--
-- Table structure for table `user_trips`
--

DROP TABLE IF EXISTS `user_trips`;
CREATE TABLE `user_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_coming` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user_trips`
--

TRUNCATE TABLE `user_trips`;
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
-- Truncate table before insert `waiting`
--

TRUNCATE TABLE `waiting`;
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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bus_supervisor`
--
ALTER TABLE `bus_supervisor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bus_supervisor_trips`
--
ALTER TABLE `bus_supervisor_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group_supervisor`
--
ALTER TABLE `group_supervisor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group_supervisor_user`
--
ALTER TABLE `group_supervisor_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
