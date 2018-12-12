-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 03:23 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `office_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-10-13 16:02:02', '2018-10-13 16:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `supplier_id`, `supply_id`, `cost`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(2, 1, 2, '3.25', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(3, 1, 3, '4.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(4, 1, 4, '2.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(5, 1, 5, '3.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(6, 1, 6, '3.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(7, 2, 1, '1.75', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(8, 2, 2, '2.25', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(9, 2, 3, '5.25', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(10, 2, 4, '3.75', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(11, 2, 5, '2.25', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(12, 2, 6, '2.15', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(13, 3, 1, '4.15', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(14, 3, 2, '1.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(15, 3, 3, '4.75', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(16, 3, 4, '3.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(17, 3, 5, '2.25', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(18, 3, 6, '1.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(19, 4, 1, '4.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(20, 4, 2, '3.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(21, 4, 3, '2.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(22, 4, 4, '1.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(23, 4, 5, '3.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(24, 4, 6, '2.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(25, 6, 1, '2.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(26, 6, 2, '3.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(27, 6, 3, '3.25', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(28, 6, 4, '2.60', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(29, 6, 5, '1.75', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(30, 6, 6, '5.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(31, 7, 1, '5.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(32, 7, 2, '5.20', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(33, 7, 3, '4.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(34, 7, 4, '5.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(35, 7, 5, '3.85', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(36, 7, 6, '4.15', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(37, 8, 1, '4.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(38, 8, 2, '3.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(39, 8, 3, '3.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(40, 8, 4, '4.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(41, 8, 5, '3.25', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(42, 8, 6, '3.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(43, 9, 1, '4.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(44, 9, 2, '4.15', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(45, 9, 3, '4.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(46, 9, 4, '4.75', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(47, 9, 5, '3.20', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(48, 9, 6, '3.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(49, 10, 1, '10.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(50, 10, 2, '7.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(51, 10, 3, '5.95', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(52, 10, 4, '8.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(53, 10, 5, '7.75', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(54, 10, 6, '9.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(55, 5, 1, '2.10', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(56, 5, 2, '3.00', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(57, 5, 3, '1.50', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(58, 5, 4, '4.75', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(59, 5, 5, '4.55', '2018-12-11 20:04:08', '2018-12-11 20:05:21'),
(60, 5, 6, '3.65', '2018-12-11 20:04:08', '2018-12-11 20:05:21');

--
-- Triggers `costs`
--
DELIMITER $$
CREATE TRIGGER `costs_before_update` BEFORE UPDATE ON `costs` FOR EACH ROW BEGIN
	SET NEW.cost = FORMAT(NEW.cost,2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `cost_list`
-- (See below for the actual view)
--
CREATE TABLE `cost_list` (
`id` int(11)
,`Supply` varchar(255)
,`Supplier` varchar(255)
,`cost` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `supply_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 500, '2018-10-03 00:00:00', '2018-10-03 00:00:00'),
(2, 2, 150, '2018-10-03 00:00:00', '2018-10-03 00:00:00'),
(3, 4, 200, '2018-10-03 00:00:00', '2018-10-03 00:00:00'),
(4, 3, 300, '2018-10-03 00:00:00', '2018-10-03 00:00:00'),
(5, 5, 20, '2018-10-03 00:00:00', '2018-10-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `totalcost` decimal(10,2) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `supply_id`, `employee_id`, `supplier_id`, `quantity`, `totalcost`, `date`, `status`, `created_at`, `updated_at`) VALUES
(119, 1, 7, 1, 6, '15.00', '11-18-2018', 0, '2018-11-19 02:12:00', '2018-11-19 02:12:00'),
(120, 3, 7, 1, 4, '20.00', '11-18-2018', 0, '2018-11-19 02:12:00', '2018-11-19 02:12:00'),
(122, 1, 7, 1, 1, '2.50', '11-18-2018', 0, '2018-11-19 02:42:17', '2018-11-19 02:42:17'),
(123, 1, 7, 1, 1, '2.50', '11-19-2018', 0, '2018-11-19 15:53:31', '2018-11-19 15:53:31'),
(125, 1, 7, 1, 5, '12.50', '12-09-2018', 0, '2018-12-09 17:29:57', '2018-12-09 17:29:57'),
(126, 2, 7, 1, 5, '16.25', '12-09-2018', 0, '2018-12-09 17:29:57', '2018-12-09 17:29:57'),
(127, 1, 7, 1, 5, '12.50', '12-09-2018', 0, '2018-12-09 19:01:13', '2018-12-09 19:01:13'),
(128, 2, 7, 1, 2, '6.50', '12-09-2018', 0, '2018-12-09 19:01:13', '2018-12-09 19:01:13'),
(129, 1, 7, 1, 1, '2.50', '12-09-2018', 0, '2018-12-09 19:01:38', '2018-12-09 19:01:38'),
(130, 1, 7, 1, 1, '2.50', '12-09-2018', 0, '2018-12-09 19:07:10', '2018-12-09 19:07:10'),
(132, 1, 7, 1, 5, '12.50', '12-09-2018', 0, '2018-12-09 20:57:59', '2018-12-09 20:57:59'),
(133, 1, 7, 6, 3, '7.50', '12-09-2018', 0, '2018-12-09 23:32:32', '2018-12-09 23:32:32'),
(138, 1, 7, 10, 1, '10.00', '12-10-2018', 0, '2018-12-10 17:39:26', '2018-12-10 17:39:26'),
(139, 3, 7, 10, 1, '5.95', '12-10-2018', 0, '2018-12-10 17:39:26', '2018-12-10 17:39:26'),
(140, 1, 7, 1, 1, '2.50', '12-10-2018', 0, '2018-12-10 17:39:26', '2018-12-10 17:39:26'),
(142, 1, 7, 1, 1, '2.50', '12-10-2018', 0, '2018-12-10 17:45:05', '2018-12-10 17:45:05'),
(144, 1, 7, 1, 1, '2.50', '12-10-2018', 0, '2018-12-10 21:02:12', '2018-12-10 21:02:12'),
(145, 4, 7, 1, 1, '2.00', '12-10-2018', 0, '2018-12-10 21:04:23', '2018-12-10 21:04:23'),
(146, 2, 7, 4, 1, '3.00', '12-10-2018', 0, '2018-12-10 21:06:18', '2018-12-10 21:06:18'),
(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-10 21:26:42', '2018-12-10 21:26:42'),
(148, 3, 7, 1, 10, '45.00', '12-10-2018', 0, '2018-12-10 21:26:53', '2018-12-10 21:26:53'),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-10 21:59:20', '2018-12-10 21:59:20'),
(150, 1, 7, 9, 1, '4.00', '12-10-2018', 0, '2018-12-10 21:59:33', '2018-12-10 21:59:33'),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-10 22:48:34', '2018-12-10 22:48:34'),
(152, 1, 9, 1, 1, '2.50', '12-10-2018', 0, '2018-12-10 22:48:37', '2018-12-10 22:48:37'),
(153, 1, 9, 1, 1, '2.50', '12-10-2018', 0, '2018-12-10 22:59:55', '2018-12-10 22:59:55'),
(154, 1, 9, 7, 10, '50.00', '12-10-2018', 0, '2018-12-10 23:04:15', '2018-12-10 23:04:15'),
(155, 4, 9, 8, 20, '90.00', '12-10-2018', 0, '2018-12-10 23:04:15', '2018-12-10 23:04:15'),
(156, 5, 9, 1, 1, '3.50', '12-10-2018', 0, '2018-12-10 23:04:46', '2018-12-10 23:04:46'),
(157, 5, 9, 1, 9, '31.50', '12-10-2018', 0, '2018-12-10 23:05:16', '2018-12-10 23:05:16'),
(158, 1, 9, 1, 5, '12.50', '12-10-2018', 0, '2018-12-10 23:08:02', '2018-12-10 23:08:02'),
(159, 1, 9, 1, 1, '2.50', '12-10-2018', 0, '2018-12-10 23:53:10', '2018-12-10 23:53:10'),
(160, 1, 9, 2, 3, '5.25', '12-10-2018', 0, '2018-12-10 23:53:40', '2018-12-10 23:53:40'),
(161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-11 00:52:07', '2018-12-11 00:52:07'),
(162, 1, 7, 5, 2, '4.20', '12-10-2018', 0, '2018-12-11 00:52:19', '2018-12-11 00:52:19'),
(163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-11 01:01:59', '2018-12-11 01:01:59'),
(164, 3, 7, 1, 1, '4.50', '12-10-2018', 0, '2018-12-11 01:02:10', '2018-12-11 01:02:10'),
(165, 1, 7, 2, 6, '10.50', '12-10-2018', 0, '2018-12-11 01:02:32', '2018-12-11 01:02:32'),
(166, 3, 7, 1, 9, '40.50', '12-10-2018', 0, '2018-12-11 01:02:53', '2018-12-11 01:02:53'),
(167, 4, 7, 3, 10, '30.00', '12-10-2018', 0, '2018-12-11 01:03:14', '2018-12-11 01:03:14'),
(168, 1, 7, 5, 5, '10.50', '12-11-2018', 0, '2018-12-11 19:19:12', '2018-12-11 19:19:12'),
(169, 1, 7, 4, 5, '20.00', '12-11-2018', 0, '2018-12-12 02:07:38', '2018-12-12 02:07:38'),
(170, 1, 7, 10, 1, '10.00', '12-11-2018', 0, '2018-12-12 02:51:52', '2018-12-12 02:51:52'),
(171, 2, 7, 2, 1, '2.25', '12-11-2018', 0, '2018-12-12 02:51:52', '2018-12-12 02:51:52'),
(172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-12 13:51:08', '2018-12-12 13:51:08'),
(173, 1, 7, 3, 1, '4.15', '12-12-2018', 0, '2018-12-12 13:51:16', '2018-12-12 13:51:16'),
(174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-12 14:13:30', '2018-12-12 14:13:30'),
(175, 6, 7, 7, 5, '20.75', '12-12-2018', 0, '2018-12-12 14:13:48', '2018-12-12 14:13:48');

--
-- Triggers `orders`
--
DELIMITER $$
CREATE TRIGGER `orders_before_update` BEFORE UPDATE ON `orders` FOR EACH ROW BEGIN
	SET NEW.totalcost = FORMAT(NEW.totalcost,2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `orders_list`
-- (See below for the actual view)
--
CREATE TABLE `orders_list` (
`id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`supplyname` varchar(255)
,`Supplier` varchar(255)
,`quantity` int(11)
,`totalcost` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT '1',
  `quantity` int(11) DEFAULT '1',
  `unit_price` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(11) NOT NULL,
  `orderstatusid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180928003337'),
('20181025234352'),
('20181026004919'),
('20181026021557');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `phonenum` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `city`, `state`, `phonenum`, `created_at`, `updated_at`) VALUES
(1, 'Dunder Mifflin', '1725 Slough Avenue', 'Scranton', 'Pennsylvania', '123-456-7890', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(2, 'Scott Paper Company', '1725 Slough Avenue', 'Scranton', 'Pennsylvania', '555-555-5555', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(3, 'Pencil Pushers', '123 Pencil Lane', 'Penciltown', 'Kansas', '777-888-9999', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(4, 'Printer Company', '888 Printer Avenue', 'Ink', 'Florida', '999-999-9999', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(5, 'Folder Company', '11 Folder Street', 'Fold', 'New York', '777-777-7777', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(6, 'Fake Co', '8 Fake Street', 'Faketown', 'Texas', '000-000-0000', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(7, 'Initech', '4120 Freidrich Lane', 'Austin', 'Texas', '444-444-4444', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(8, 'Globex Corporation', '2300 Michigan St', 'Hammond', 'Indiana', '555-666-7777', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(9, 'Acme Corp', '1 Acme Lane', 'Acme', 'California', '222-333-4444', '2018-10-05 00:00:00', '2018-10-05 00:00:00'),
(10, 'Stark Industries', '7 Stark Way', 'Los Angeles', 'California', '333-333-3333', '2018-10-05 00:00:00', '2018-10-05 00:00:00');

--
-- Triggers `suppliers`
--
DELIMITER $$
CREATE TRIGGER `suppliers_before_update` BEFORE UPDATE ON `suppliers` FOR EACH ROW BEGIN
	SET NEW.state = UPPER(NEW.state);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `suppliesid` int(11) NOT NULL,
  `supplyname` varchar(255) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`suppliesid`, `supplyname`, `inventory`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Pencils', 35, 'Stuff about pencils', '2018-10-13 00:00:00', '2018-10-13 00:00:00'),
(2, 'Pens', 69, 'Something about pens', '2018-10-13 00:00:00', '2018-10-13 00:00:00'),
(3, 'Paper', 35, 'Paper products information', '2018-10-13 00:00:00', '2018-10-13 00:00:00'),
(4, 'Paperclips', 31, 'Information about paperclips', '2018-10-13 00:00:00', '2018-10-13 00:00:00'),
(5, 'Folders', 170, 'Something about folders', '2018-10-13 00:00:00', '2018-10-13 00:00:00'),
(6, 'Erasers', 145, 'Something about erasers right here.', '2018-11-11 00:43:55', '2018-11-11 00:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phonenumber` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `privileges` tinyint(4) NOT NULL DEFAULT '0',
  `encrypted_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `city`, `state`, `phonenumber`, `email`, `privileges`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`) VALUES
(7, 'Joseph', 'Smith', '123 Nowhere Lane', 'Nada', 'IL', '444-999-44444', 'fake@mailer.com', 1, '$2a$11$q60Jr3bfTnzqLPDhjmvTyevPEhKB7SfuRkvvQtAomFgHjRhPM/O9G', NULL, NULL, NULL, '2018-10-13 21:21:54', '2018-10-13 22:10:21'),
(8, 'Jack', 'Smith', '123 Nowhere Lane', 'Oswego', 'IL', '123-456-9292', 'jack@jack.com', 0, '$2a$11$SUTc552fN1gsJX0.CMxL9u11FeI2mthF8zOqPTb0QsaS0QQUq0cgi', NULL, NULL, NULL, '2018-10-21 18:02:20', '2018-10-21 18:02:20'),
(9, 'Elijah', 'Banks', '123 Nowhere Lane', 'Sometown', 'IL', '123-456-7890', 'ejoebanks@gmail.com', 1, '$2a$11$Kv4wWiuhur33sWWWd6QUF.JJV98AVienPEaIKss2HgFfomcNkiLau', NULL, NULL, NULL, '2018-12-10 22:23:04', '2018-12-10 22:23:04'),
(10, 'Adam', 'Deisz', '789 Place Lane', 'Town', 'IL', '555-555-5555', 'adam@mail.com', 0, '$2a$11$cY25ErcSTm9KGNyOlW10XeheTP2skzYyjlltJOC3kGkV75ClX3xum', NULL, NULL, NULL, '2018-12-11 00:05:36', '2018-12-11 00:05:36'),
(11, 'Geoffery', 'Greiner', '456 Park Way', 'Parktown', 'IL', '987-546-5454', 'greiner@mail.com', 0, '$2a$11$Cvq3LZW1L2SpYmVBkY..f.CjmuB2kRAki39k7N1IK8aeEmM9dYDCK', NULL, NULL, NULL, '2018-12-11 00:06:08', '2018-12-11 00:06:08'),
(12, 'Mark ', 'McDonough', '445 Some Street', 'Aurora', 'IL', '656-648-8797', 'mark@mail.com', 0, '$2a$11$yK3sIs7yFP2H0y5bBZiK5eE2mr/Zh7EKW1rq3zGlhrTvTL4KTCGu6', NULL, NULL, NULL, '2018-12-11 00:06:43', '2018-12-11 00:06:43');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `users_before_update` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	SET NEW.state = UPPER(NEW.state);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `cost_list`
--
DROP TABLE IF EXISTS `cost_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cost_list`  AS  select `costs`.`id` AS `id`,`supplies`.`supplyname` AS `Supply`,`suppliers`.`name` AS `Supplier`,`costs`.`cost` AS `cost` from ((`costs` join `supplies` on((`costs`.`supply_id` = `supplies`.`suppliesid`))) join `suppliers` on((`costs`.`supplier_id` = `suppliers`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `orders_list`
--
DROP TABLE IF EXISTS `orders_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_list`  AS  select `orders`.`id` AS `id`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`supplies`.`supplyname` AS `supplyname`,`suppliers`.`name` AS `Supplier`,`orders`.`quantity` AS `quantity`,`orders`.`totalcost` AS `totalcost` from (((`orders` join `supplies` on((`orders`.`supply_id` = `supplies`.`suppliesid`))) join `suppliers` on((`orders`.`supplier_id` = `suppliers`.`id`))) join `users` on((`orders`.`employee_id` = `users`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supply_id` (`supply_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supply_id` (`supply_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliesid` (`supply_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_order_items_on_supplies_id` (`supply_id`),
  ADD KEY `index_order_items_on_cart_id` (`order_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`suppliesid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `reset_password_toke` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `suppliesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `costs`
--
ALTER TABLE `costs`
  ADD CONSTRAINT `costs_ibfk_1` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`suppliesid`),
  ADD CONSTRAINT `costs_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_ibfk_1` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`suppliesid`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`suppliesid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`suppliesid`),
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `inv_decr` ON SCHEDULE EVERY 12 HOUR STARTS '2018-11-15 15:55:39' ON COMPLETION PRESERVE ENABLE DO UPDATE supplies
	SET inventory = inventory - 30
	WHERE suppliesid >= 0
	and inventory > 30$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
