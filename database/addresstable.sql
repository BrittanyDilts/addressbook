-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2018 at 08:41 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addressdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresstable`
--

CREATE TABLE `addresstable` (
  `id` int(11) NOT NULL,
  `co_name` text NOT NULL,
  `recip_name` text NOT NULL,
  `street` text NOT NULL,
  `street2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresstable`
--

INSERT INTO `addresstable` (`id`, `entry_name`, `co_name`, `recip_name`, `street`, `street2`, `city`, `state`, `zip`, `label`) VALUES
(1, 'Sally\'s Scissors and Scythes', 'Sally Smith', '123 Main St', '', 'Springfield', 'MO', 65803, 'Sally\'s Scissors and Scythes'),
(2, 'John\'s Jeans', 'John Johnston', '7893 S. North Ave', 'Suite 160', 'Springfield', 'MO', 65807, 'John\'s Jeans'),
(4, 'Yolo\'s Yo-yos', 'Yolo Yancey', '456 Second St', '', 'Springfield', 'MO', 65807, 'Yoyo store'),
(5, 'Tippy\'s Tapas', 'Tipenia Tillerson', '38 Jackson St', '', 'Willard', 'TN', 84569, 'Tippy\'s'),
(6, 'Candie\'s Candy', 'Candace Canton', '832 Hollon Ln', '', 'Rogersville', 'MO', 65849, 'Candy Shop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresstable`
--
ALTER TABLE `addresstable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresstable`
--
ALTER TABLE `addresstable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
