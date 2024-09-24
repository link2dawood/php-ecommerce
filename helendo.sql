-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 12:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helendo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `image`, `user_id`, `quantity`, `product_id`) VALUES
(21, 'uploads/download (4).jpeg', 1, 3, 14),
(22, 'uploads/Tshirt-orange.jpg', 1, 2, 17),
(24, 'uploads/leptop.jpeg', 1, 1, 16),
(27, 'uploads/download (5).jpeg', 1, 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `name`, `description`) VALUES
(12, 'uploads/Tshirt-green.jpg', 'Shirts', 'Stylish shirts available in various colors, patterns, and fabrics, perfect for casual or formal wear.\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(13, 'uploads/download (5).jpeg', 'Piano', 'Helle this is a awesome and amazing piano. this voice soo nice '),
(15, 'uploads/download (4).jpeg', 'Head phones', 'Comfortable headphones delivering high-quality sound, perfect for music, gaming, and noise-canceling experiences.');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `price` int(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `product_id`, `quantity`, `name`, `email`, `address`, `city`, `country`, `price`, `user_id`) VALUES
(18, 21, 3, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 150, 1),
(19, 24, 1, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 250, 1),
(20, 22, 2, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 150, 1),
(21, 27, 1, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 800, 1),
(22, 21, 3, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 150, 1),
(23, 24, 1, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 250, 1),
(24, 22, 2, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 150, 1),
(25, 27, 1, 'Umair hassan', 'umair@gmail.com', 'madina colony bhagtanwala', 'Sargodha', 'Pakistan', 800, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `user_id`) VALUES
(18, 18, 21, 150, 1),
(19, 19, 24, 250, 1),
(20, 20, 22, 150, 1),
(21, 21, 27, 800, 1),
(22, 22, 21, 150, 1),
(23, 23, 24, 250, 1),
(24, 24, 22, 150, 1),
(25, 25, 27, 800, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(20) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `title`, `description`, `price`, `category_id`) VALUES
(14, 'uploads/download (4).jpeg', 'Head Phons', 'Comfortable headphones delivering high-quality sound, perfect for music, gaming, and noise-canceling experiences.', 150, 15),
(16, 'uploads/leptop.jpeg', 'Leptop', '	Versatile devices for computing tasks, including work, gaming, and communication, powered by advanced technology.', 250, 14),
(17, 'uploads/Tshirt-orange.jpg', 'Shirt', '	Stylish shirts available in various colors, patterns, and fabrics, perfect for casual or formal wear', 150, 12),
(18, 'uploads/download (5).jpeg', 'Piano', '	Piano available in various colors, awosome, and various, perfect for casual orpiano.', 800, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `confirm_password`, `role`) VALUES
(1, 'Umair hassan', 'umair@gmail.com', '12345678', '12345678', 0),
(2, 'Fasil khan', 'fasil@123.com', '12365478', '12365478', 0),
(4, 'Admin', 'admin@admin.com', 'password', 'password', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
