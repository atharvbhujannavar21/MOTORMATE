-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 08:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmp`
--

CREATE TABLE `addmp` (
  `sno` int(11) NOT NULL,
  `medicine` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addmp`
--

INSERT INTO `addmp` (`sno`, `medicine`) VALUES
(1, 'Camshaft'),
(2, 'Differential'),
(3, 'Acrofphobic'),
(4, 'Denalli 200 auxlarilites'),
(5, 'Oil Filter'),
(6, 'Transmission oil'),
(7, 'Brake Calliper'),
(8, 'Gear leaver'),
(9, 'Clutch plates'),
(10, 'Carborator'),
(11, 'Piston'),
(12, 'Connecting Rods'),
(13, 'Spark plugs'),
(14, 'Timing Chain(Rubber)'),
(15, 'Front sprocket'),
(16, 'Tyre'),
(17, 'Silencer'),
(18, 'Alloy wheels'),
(19, 'Front Fender'),
(20, 'Handel Bar raisers'),
(21, 'Fuel X'),
(22, 'Oil Pan'),
(23, '16 PC wrecnch kit'),
(24, 'Horn'),
(25, 'Bottom skid plate')
;

-- --------------------------------------------------------

--
-- Table structure for table `addpd`
--

CREATE TABLE `addpd` (
  `sno` int(11) NOT NULL,
  `product` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addpd`
--

INSERT INTO `addpd` (`sno`, `product`) VALUES
(1, 'colgate'),
(2, 'perfume'),
(3, 'garnier face wash'),
(4, 'garnier face wash');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `action` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `mid`, `action`, `date`) VALUES
(1, 1001, ' INSERTED', '2023-01-24 12:54:41'),
(2, 1001, ' DELETED', '2023-01-24 12:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `medicines` varchar(500) NOT NULL,
  `products` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `medicines`
--
DELIMITER $$
CREATE TRIGGER `Delete` BEFORE DELETE ON `medicines` FOR EACH ROW INSERT INTO Logs VALUES(null,OLD.mid,' DELETED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Insert` AFTER INSERT ON `medicines` FOR EACH ROW INSERT INTO Logs VALUES(null,NEW.mid,' INSERTED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Update` AFTER UPDATE ON `medicines` FOR EACH ROW INSERT INTO Logs VALUES(null,NEW.mid,' UPDATED',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `mid` int(11) NOT NULL,
  `medical_name` varchar(100) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`mid`, `medical_name`, `owner_name`, `phone_no`, `address`) VALUES
(1001, 'ARK PROCODER MEDICAL', 'ANEES', '7896541230', 'Bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addmp`
--
ALTER TABLE `addmp`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `addpd`
--
ALTER TABLE `addpd`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addmp`
--
ALTER TABLE `addmp`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `addpd`
--
ALTER TABLE `addpd`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
