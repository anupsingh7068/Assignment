-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 08:08 AM
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
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(111) NOT NULL,
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `phone` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`) VALUES
(1, 'anupsingh', '', '', '$2y$10$9m/xihkzGLSNbHRpxjA76.aN8OO8X2WuIbCv7Kc2t/N9Ya8Yw8ZcO'),
(2, 'rahulsingh', '', '', '$2y$10$v5jp7.sQiXLtnAEOmKp4yej3lep8dGqiYpUf8RAsn5WqrWk926LtC'),
(3, 'anupsingh', '', '', '$2y$10$JstyDjZIoH3kEQ8t2wPtneBFFgcyi9PMgK.6VNTL/anpMAz15.Pdi'),
(4, 'anups', '7068503236', 'Singh', '$2y$10$VsGjDHQiaIgiL8bJyTdIq.SIOUbEGGlZ6T3EN1osgGcnJNUwn9pPa'),
(5, 'Rakesh', '987-1011', '12345', '$2y$10$WWzik1Z1OENQvhfW6E7eBOXwGzlWCP3lrITL11azKjnTkBjQq3rge'),
(6, 'anup', 'anup@sssgmail.com', '7068503236', '$2y$10$.sz9MVd1AV3nfO95NhcmMO5bjDwXngtONQJcS4s1i9M4/ygK64QO.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
