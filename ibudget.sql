-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 12:58 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibudget`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `salary` int(255) NOT NULL,
  `income` int(255) NOT NULL,
  `daily_living` int(255) NOT NULL,
  `rent` int(255) NOT NULL,
  `transport` int(255) NOT NULL,
  `entertainment` int(255) NOT NULL,
  `dues` int(255) NOT NULL,
  `health` int(255) NOT NULL,
  `misc` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `user_id`, `salary`, `income`, `daily_living`, `rent`, `transport`, `entertainment`, `dues`, `health`, `misc`, `name`, `start_date`, `end_date`) VALUES
(4, 6, 200000, 20000, 1000, 5000, 6000, 500, 3000, 2000, 1000, 'Personal Budget', '2022-06-07', '2022-06-23'),
(5, 6, 20000, 4000, 1000, 5000, 6000, 500, 500, 700, 6000, 'My Startup spending', '2022-06-01', '2022-06-14'),
(6, 6, 50000, 10000, 30000, 5000, 1100, 1200, 1200, 1300, 1400, 'Allowances', '2022-06-01', '2022-06-30'),
(7, 6, 4000000, 100000, 10000, 10000, 10000, 20000, 10000, 100000, 50000, 'Athletic budget', '2022-06-08', '2022-06-15'),
(8, 7, 20000, 15000, 1000, 4000, 2000, 2000, 900, 1000, 3000, 'school', '2022-06-05', '2022-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` varchar(400) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phoneno`, `password`) VALUES
(1, 'emmanuel', 'emmaezele@yahoo.com', '9018454343', '1234'),
(2, 'emmanuel', 'emmaezele@yahoo.com', '09018454343', '1234'),
(3, 'Ngozi', 'ngozi@gmail.com', '090184543', '1234'),
(4, 'Samuel', 'sam@yahoo.com', '09018545234', '2345'),
(5, 'ezelem', 'eaze@yahoo.com', '09015676868', 'eaze'),
(6, 'went', 'went@gmail.com', '0908453322', 'went'),
(7, 'maze', 'maze@gmail.com', '2349018454343', 'went');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
