-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 09:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakeitrealdb`
--
CREATE DATABASE IF NOT EXISTS `bakeitrealdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bakeitrealdb`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image_path`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Authentic', 'not false or copied; genuine; real:\r\nhaving an origin supported by unquestionable evidence; authenticated; verified:\r\nrepresenting one’s true nature or beliefs; true to oneself or to the person identified:', 'uploads/brands/1.png?v=1649270060', 1, 0, '2022-02-17 10:55:02'),
(2, 'test', 'test', NULL, 1, 1, '2022-02-17 10:57:41'),
(3, 'Nivea', 'Nivea manufactures and markets skin, sun, lip and deodorant products', 'uploads/brands/3.jpg?v=1645066772', 1, 1, '2022-02-17 10:59:32'),
(4, 'Olay', 'Olay manufactures and markets face and skin care products', 'uploads/brands/4.jpg?v=1645066818', 1, 1, '2022-02-17 11:00:18'),
(5, 'LUX', 'A global personal care brand by Unilever, Lux product categories include soaps, shower gels, bath products, shampoos, and conditioners. Lux is a strong advocate of sustainable causes and is sold in more than 100 countries worldwide.', 'uploads/brands/5.jpg?v=1645066872', 1, 1, '2022-02-17 11:01:12'),
(6, 'Originals', 'of, relating to, or constituting an origin or beginning\r\n not secondary, derivative, or imitative\r\nbeing the first instance or source from which a copy, reproduction, or translation is or can be made,\r\n independent and creative in thought or action .', 'uploads/brands/6.png?v=1649269921', 1, 0, '2022-02-17 11:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Skin Care', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue interdum pellentesque. Praesent bibendum vehicula libero a congue. In molestie rhoncus finibus.', 1, 1, '2022-02-17 11:27:11'),
(2, 'Birthdays', 'n interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis.', 1, 0, '2022-02-17 11:27:24'),
(3, 'Minimalist', 'strive to only use things that serve a purpose', 1, 0, '2022-02-17 11:27:45'),
(4, 'Perfumes', 'Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.', 1, 1, '2022-02-17 11:27:55'),
(5, 'Hair Care', 'Proin sit amet elit in massa posuere ullamcorper quis quis sem. Phasellus accumsan augue vitae varius rhoncus. Proin vitae leo ante. Praesent a lorem justo.', 1, 1, '2022-02-17 11:28:38'),
(6, 'Sun Care', 'Nam nisl ex, condimentum nec malesuada cursus, ullamcorper in velit. Quisque lobortis diam nunc, at auctor felis placerat eu. Nullam egestas rhoncus lacinia.', 1, 1, '2022-02-17 11:29:00'),
(7, 'Decorative', 'Donec imperdiet viverra eros eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in nulla nec ex cursus consequat nec vel ipsum. Phasellus tristique erat sit amet neque venenatis volutpat. Maecenas varius venenatis sagittis.', 1, 1, '2022-02-17 11:29:19'),
(8, 'Lipsticks', 'Nullam quis gravida purus, quis sagittis nibh. Ut eget maximus nisl. Nam elementum diam libero, et scelerisque nisi molestie quis. Duis accumsan, neque nec laoreet malesuada, est ex pretium urna, at pellentesque arcu mauris a est. Proin et sollicitudin dui. Integer consectetur pulvinar tellus in fermentum.', 1, 1, '2022-02-17 11:29:38'),
(9, 'Lip Tint', 'Donec eu porttitor quam. Etiam mollis consequat risus quis maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 1, '2022-02-17 11:29:59'),
(10, 'test', 'test', 0, 1, '2022-02-17 11:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `status`, `delete_flag`, `date_created`) VALUES
(2, 'Samantha Jane', 'Miller', 'Female', '09123456789', 'sam23@sample.com', '45bff2a14658fc9b21c6e5e9bf75186b', 'Sample Address', 1, 1, '2022-02-17 14:24:00'),
(3, 'eren', 'yeager', 'Male', '1234567899', 'erenyeager@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'Wall Shiganshina', 1, 0, '2022-04-06 22:01:37'),
(4, 'mikasa', 'ackerman', 'Male', '1234567899', 'mikasa@gmail.com', '26ccdda098372c403dffcdcf877a5419', 'Shigansina', 1, 0, '2022-04-07 02:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `variant` text NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `variant`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(1, 'Chocolate', 1, 10, 1200, '2022-02-17 11:57:52', '2022-04-07 02:44:56'),
(2, 'Strawberry', 1, 5, 1400, '2022-02-17 12:01:15', '2022-04-07 02:45:08'),
(3, 'Coffee', 1, 10, 1300, '2022-02-17 12:04:15', '2022-04-07 02:45:21'),
(4, 'Strawberry', 3, 5, 1400, '2022-02-17 13:22:54', '2022-04-07 02:44:39'),
(5, 'Chocolate', 3, 5, 1200, '2022-02-17 13:23:05', '2022-04-07 02:44:27'),
(6, 'Strawberry', 4, 5, 1400, '2022-02-17 16:28:14', '2022-04-07 02:44:02'),
(7, 'Chocolate', 4, 5, 1200, '2022-04-07 02:43:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = pending,\r\n1= Packed,\r\n2 = Out for Delivery,\r\n3=Delivered,\r\n4=cancelled',
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_code`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(3, '20220200001', 2, 'Sample Address', 'cod', 0, 900, 4, 0, '2022-02-17 14:51:58', '2022-02-17 15:04:38'),
(4, '20220200002', 2, 'Sample Address', 'Online Payment', 0, 1800, 3, 1, '2022-02-17 15:26:17', '2022-02-17 15:35:45'),
(5, '20220200003', 2, 'Sample Address', 'cod', 0, 500, 3, 1, '2022-02-17 15:32:52', '2022-02-17 15:35:32'),
(6, '20220400001', 3, 'Wall Shiganshina', 'cod', 0, 950, 0, 0, '2022-04-06 22:02:01', NULL),
(7, '20220400002', 3, 'Wall Shiganshina', 'cod', 0, 465, 0, 0, '2022-04-06 22:09:49', NULL),
(8, '20220400003', 4, 'Shigansina', 'cod', 0, 3600, 0, 0, '2022-04-07 02:52:33', NULL),
(9, '20220400004', 4, 'Shigansina district', 'cod', 0, 1200, 0, 0, '2022-04-07 02:53:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `inventory_id`, `quantity`, `price`, `total`) VALUES
(4, 3, 3, 3, 300, 900),
(5, 4, 3, 4, 300, 1200),
(6, 4, 1, 3, 200, 600),
(7, 5, 3, 2, 250, 500),
(8, 6, 4, 2, 350, 700),
(9, 6, 3, 1, 250, 250),
(10, 7, 1, 3, 155, 465),
(11, 8, 4, 2, 1200, 2400),
(12, 8, 1, 1, 1200, 1200),
(13, 9, 4, 1, 1200, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `specs` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `specs`, `status`, `delete_flag`, `date_created`) VALUES
(1, 6, 3, 'Dreamy Pond', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue interdum pellentesque. Praesent bibendum vehicula libero a congue. In molestie rhoncus finibus. In interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis. Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;3&quot; x 5&quot; Cake&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-02-17 11:50:19'),
(2, 5, 7, 'test', '&lt;p&gt;test&lt;/p&gt;', 0, 1, '2022-02-17 11:54:02'),
(3, 1, 1, 'Paw Patrol', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Donec eu porttitor quam. Etiam mollis consequat risus quis maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam pretium et mi vel fringilla. Phasellus facilisis porttitor purus, a egestas magna rutrum ac. Donec in augue lorem. Donec varius elit ante, eget convallis leo ornare faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed finibus purus eget porta malesuada. Phasellus eu cursus urna.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;3&quot; x 5&quot; Cake&lt;/p&gt;', 1, 0, '2022-02-17 13:22:33'),
(4, 6, 3, 'New Year Cake', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Suspendisse vel justo tempus, dignissim augue vel, tempor ipsum. Sed at porta nisi. Aliquam dui neque, gravida id massa sed, aliquam tincidunt libero. Nunc dictum tristique luctus. Pellentesque id urna vitae orci imperdiet hendrerit ut ac ipsum. Integer convallis non nisi a aliquet. Aenean consequat, mauris non rhoncus molestie, nibh tortor gravida turpis, a finibus ante turpis non turpis. Proin varius condimentum ultricies. Sed vestibulum commodo elit, vitae fermentum ligula accumsan a. In lobortis turpis ut faucibus lobortis. Pellentesque quis vestibulum nibh. Integer eget metus quis nibh varius fringilla. Praesent ac eleifend ligula, vitae suscipit felis. Nulla facilisi. Nullam ligula enim, interdum et lobortis dignissim, auctor quis mi. Cras ut odio porta, iaculis est nec, maximus dui.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;3\\\\\\\'\\\\\\\' x 5\\\\\\\'\\\\\\\' Cake&amp;nbsp;&lt;/p&gt;', 1, 0, '2022-02-17 16:27:41'),
(5, 6, 3, 'Princess Cake', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;2&quot; x 3&quot; Cake&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-04-07 02:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(3, 3, 900, '2022-02-17 14:51:58'),
(4, 4, 1800, '2022-02-17 15:26:17'),
(5, 5, 500, '2022-02-17 15:32:52'),
(6, 6, 950, '2022-04-06 22:02:02'),
(7, 7, 465, '2022-04-06 22:09:50'),
(8, 8, 3600, '2022-04-07 02:52:33'),
(9, 9, 1200, '2022-04-07 02:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Bake it Real by Belle'),
(6, 'short_name', 'Bake it Real'),
(11, 'logo', 'uploads/logo-1649263236.png?v=1649263237'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1649263237.png?v=1649263239');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Belle', 'Pagaduan', 'admin', '0192023a7bbd73250516f069df18b500', NULL, 1, '2021-01-20 14:02:37', '2022-04-07 00:34:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
