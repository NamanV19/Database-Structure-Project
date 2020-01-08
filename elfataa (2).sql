-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 06:43 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elfataa`
--
CREATE DATABASE IF NOT EXISTS `elfataa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elfataa`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE IF NOT EXISTS `customer_details` (
`customer_id` int(20) unsigned NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `telp_no` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customer_id`, `customer_name`, `gender`, `address`, `telp_no`, `dob`) VALUES
(2, 'Soni', 'M', 'Jalan Mokmer no.2', '81114455', '2000-01-02'),
(3, 'Marsih', 'M', 'Jalan Kacang', '08222444', '2002-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) unsigned NOT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_quantity`, `type`, `price`, `expiry_date`) VALUES
(1, 'Panadol', 3, 'Generic Medicine', 5000, '2021-04-04'),
(2, 'Mylanta', 0, 'Generic Medicine', 8000, '2021-04-01'),
(3, 'Promag', 0, 'Generic Medicine', 11500, '2027-05-01'),
(4, 'Sefat', 0, 'Antibiotic', 7000, '2028-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

DROP TABLE IF EXISTS `staff_details`;
CREATE TABLE IF NOT EXISTS `staff_details` (
  `staff_id` int(11) unsigned NOT NULL,
  `staff_name` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telp_no` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`staff_id`, `staff_name`, `gender`, `address`, `telp_no`, `password`) VALUES
(1, 'SUTARDI', 'F', 'Jalan Bendungan Jago', '0896777888', '123');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
`supplier_id` int(11) unsigned NOT NULL,
  `supplier_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`) VALUES
(1, 'Sutanto');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

DROP TABLE IF EXISTS `supplier_product`;
CREATE TABLE IF NOT EXISTS `supplier_product` (
`supp_prod_id` int(11) unsigned NOT NULL,
  `prod_id` int(11) unsigned DEFAULT NULL,
  `supp_id` int(11) unsigned DEFAULT NULL,
  `buying_price` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`supp_prod_id`, `prod_id`, `supp_id`, `buying_price`) VALUES
(1, 2, 1, 3500);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
`transaction_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) unsigned DEFAULT NULL,
  `staff_id` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `customer_id`, `staff_id`) VALUES
(8, 3, 1),
(9, 2, 1),
(10, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
CREATE TABLE IF NOT EXISTS `transaction_details` (
`transaction_details_id` int(11) unsigned NOT NULL,
  `transaction_id` int(11) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`transaction_details_id`, `transaction_id`, `product_id`, `quantity`) VALUES
(1, 8, 3, 1),
(10, 8, 3, 1),
(19, 8, 2, 1),
(20, 8, 4, 1),
(21, 8, 4, 1),
(22, 9, 2, 1),
(23, 9, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
 ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
 ADD PRIMARY KEY (`supp_prod_id`), ADD KEY `prod_id` (`prod_id`), ADD KEY `supp_id` (`supp_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`transaction_id`), ADD KEY `customer_id` (`customer_id`), ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
 ADD PRIMARY KEY (`transaction_details_id`), ADD KEY `transaction_id` (`transaction_id`), ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
MODIFY `customer_id` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `supplier_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
MODIFY `supp_prod_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `transaction_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
MODIFY `transaction_details_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `supplier_product`
--
ALTER TABLE `supplier_product`
ADD CONSTRAINT `supplier_product_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `product` (`product_id`),
ADD CONSTRAINT `supplier_product_ibfk_2` FOREIGN KEY (`supp_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`customer_id`),
ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`staff_id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
ADD CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`transaction_id`),
ADD CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
