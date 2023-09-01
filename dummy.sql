-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2022 at 11:59 AM
-- Server version: 8.0.30-0ubuntu0.22.04.1
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soin`
--

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `id` varchar(200) NOT NULL,
  `product` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`id`, `product`, `category`, `brand`) VALUES
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('1', 'product-1', 'category-1', 'brand-1'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('2', 'product-2', 'category-2', 'brand-2'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3'),
('3', 'product-3', 'category-3', 'brand-3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
