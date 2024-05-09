-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 06, 2024 at 08:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timesheetdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `email`, `address`, `password`) VALUES
(1, 'dainrey', 'dainrey@gmail.com', 'asdasdas', '12345'),
(2, 'renzrey', 'renzrey@gmail.com', 'asdasd', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `timesheet_id` int(100) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time-in(am)` time NOT NULL,
  `time-out(am)` time NOT NULL,
  `time-in(pm)` time NOT NULL,
  `time-out(pm)` time NOT NULL,
  `worked-hours` time NOT NULL,
  `task` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`timesheet_id`, `name`, `date`, `time-in(am)`, `time-out(am)`, `time-in(pm)`, `time-out(pm)`, `worked-hours`, `task`) VALUES
(2, 'dainrey', '2024-05-06', '26:59:38', '26:59:38', '27:59:38', '43:59:38', '00:00:24', 'doing homework');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD KEY `timesheet_id_fk` (`timesheet_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD CONSTRAINT `timesheet_id_fk` FOREIGN KEY (`timesheet_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
