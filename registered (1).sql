-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 02:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `createpassword` varchar(50) NOT NULL,
  `confirmpassword` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`name`, `email`, `createpassword`, `confirmpassword`, `country`, `state`, `phonenumber`, `gender`, `course`) VALUES
('Apple', 'apple@gmail.com', 'qwe', 'qwe', 'as', 'as', 123, 'Male', 'Course 1'),
('Apple', 'apple@gmail.com', 'qwe', 'qwe', 'as', 'as', 123, 'Male', 'Course 1'),
('Apple', 'apple@gmail.com', '[C@1cfa7812', '[C@2e9dc049', 'as', 'as', 123, 'Male', 'null'),
('Apple', 'apple@gmail.com', '[C@10596c3a', '[C@3762630e', 'as', 'as', 123, 'Male', 'null'),
('Bea', 'sdfgh', '[C@48109548', '[C@19235c84', 'asdf', 'asdfg', 234, 'Female', 'null'),
('iuytr', 'kjhgf', '[C@6298100f', '[C@5e7fa1af', 'lkjhg', 'lkjuhg', 9876, 'Female', 'null'),
('qwert', 'qwerty', '[C@2b90db5e', '[C@57e8afbd', 'qwerwer', 'qwert', 2345, 'Female', 'null'),
('fghjk', 'fghjk', '[C@549d918', '[C@6298100f', 'fghjk', 'fghjk', 45678, 'Female', 'null'),
('we', 'wert', '[C@37baf6bb', '[C@58ae3662', 'asedrt', 'qwer', 23456, 'Female', 'null'),
('tr', 'fghjk', '[C@549d918', '[C@6298100f', 'fghjk', 'fghjk', 56789, 'Female', 'null'),
('Natalia', 'natalia@gmail.com', '[C@41b6d319', '[C@78d96514', 'kenya', 'kenya', 70000000, 'Female', 'null'),
('Qwerty', 'qwert@gmail.com', 'qwe', 'qwe', 'kenya', 'kenya', 123, 'Male', 'Course 1'),
('Apple', 'apple@gmail.com', 'qwe', 'qwe', 'as', 'as', 123, 'Male', 'Course 1'),
('WERT', 'asdfgh', '[C@3dfb78f2', '[C@5eac92cd', 'dfghj', 'fghj', 5678, 'Female', 'null'),
('qwerty', 'qwertyui', '123', '123', 'zxdfgh', 'asdfg', 23456, 'Male', 'Course 1'),
('Apple', 'apple@gmail.com', 'qwe', 'qwe', 'as', 'as', 123, 'Male', 'Course 1'),
('qwerty', 'qwertyui', '[C@436c42c6', '[C@118b1f6b', 'ghjk', 'fghjk', 67890, 'Female', 'null');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
