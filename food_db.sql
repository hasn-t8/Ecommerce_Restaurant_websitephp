-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 01:08 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'HassanTalha', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(3, 'HassanAwan', 'd281ff4023a206ac6432ea492ba5df4b8cfb5c90'),
(4, 'HamzaAftab', 'b6737fc7368bbc970124bb2cd5c8dfc75b283432'),
(5, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(17, 2, 4, '1.5 litre 7up', 180, 1, '7ap.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 2, 'Awan', 'hassantalha807@gmail.com', '0349521447', 'hi its me hassan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 2, 'Hassan Talha', '0349521557', 'hassantalha807@gmail.com', 'credit card', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', 'Pizza (23 x 1) - Drink (123 x 1) - ', 146, '2023-04-23', 'completed'),
(3, 2, 'Hassan Talha', '0349521557', 'hassantalha807@gmail.com', 'cash on delivery', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', 'Drink (123 x 4) - ', 492, '2023-04-23', 'completed'),
(4, 2, 'Hassan Talha', '0349521557', 'hassantalha807@gmail.com', 'cash on delivery', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', 'Pizza (23 x 1) - ', 23, '2023-04-24', 'completed'),
(5, 2, 'Hassan Talha', '0349521557', 'hassantalha807@gmail.com', 'cash on delivery', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', 'Pizza (23 x 1) - ', 23, '2023-04-26', 'completed'),
(6, 3, 'HassanTalha', '34567', 'hassantalha808@gmail.com', 'cash on delivery', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', '1.5 litre 7up (180 x 1) - Pizza (234 x 1) - ', 414, '2023-04-26', 'completed'),
(7, 2, 'Hassan Talha', '0349521557', 'hassantalha807@gmail.com', 'cash on delivery', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', 'Pizza (234 x 1) - ', 234, '2023-04-27', 'pending'),
(8, 2, 'Hassan Talha', '0349521557', 'hassantalha807@gmail.com', 'cash on delivery', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', '1.5 Litre Dew (180 x 1) - ', 180, '2023-04-27', 'pending'),
(9, 2, 'Hassan Talha', '0349521557', 'hassantalha807@gmail.com', 'cash on delivery', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600', '10\'\' pizza, 2 zingers, wings and drink (2199 x 3) - 1.5 litre 7up (180 x 3) - 14\'\' Big Chief Special pizza  (1400 x 1) - ', 8537, '2023-05-09', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(2, '14&#39;&#39; Signature pizza', 'fast food', 1299, 'home-img-1.png'),
(4, '1.5 litre 7up', 'drinks', 180, '7ap.jpg'),
(5, '1.5 Litre Dew', 'drinks', 180, 'dew.webp'),
(6, '1.5 Litre Coke', 'drinks', 180, 'coke.jpg'),
(7, '1.5 Litre Pepsi', 'drinks', 180, 'pepsi.jpg'),
(8, '1.5 Litre Sprite', 'drinks', 180, 'sprite.webp'),
(10, 'Coca cola Tin', 'drinks', 90, 'coca cola.jpg'),
(11, '7up  Tin', 'drinks', 90, '7Up.jpg'),
(12, 'Dew Tin', 'drinks', 90, 'dew.jpeg'),
(13, 'Pepsi Tin', 'drinks', 90, 'Pepsi.webp'),
(14, 'Water 1.5 Litre', 'drinks', 100, '1.5 litre.jpeg'),
(15, 'Water 0.5 Litre', 'drinks', 60, 'half litre.jpg'),
(16, '14&#39;&#39; Big Chief Special pizza ', 'fast food', 1400, 'big chef speical.jpg'),
(17, '14&#39;&#39; Cheese lover pizza', 'fast food', 1400, 'cheese lover pizza.jpg'),
(18, '14&#39;&#39; Chicken fajita', 'fast food', 1400, 'chicken fatija.jpg'),
(19, '14&#39;&#39; Chicken supreme pizza', 'fast food', 1400, 'chicken supreme pizza.jpg'),
(20, '14&#39;&#39; Pepperoni pizza', 'fast food', 1599, 'pepperoni pizza.jpg'),
(21, '14&#39;&#39; Sausage pizza', 'fast food', 1599, 'sausage pizza.jpg'),
(22, '14&#39;&#39; Smoke chicken pizza', 'fast food', 1499, 'smoke chicken pizza.jpg'),
(23, '14&#39;&#39; Veggi pizza', 'fast food', 1299, 'veggi pizza.jpg'),
(24, 'Beef classic burger', 'fast food', 650, 'beef classic burger.jpg'),
(25, 'Double', 'fast food', 700, 'bouble zinger burger.jpg'),
(26, 'Chicken grill burger', 'fast food', 550, 'chicken grill burger.jpg'),
(27, 'Chicken patti burger', 'fast food', 550, 'chicken patti burger.jpg'),
(29, 'Chicken tikka burger', 'fast food', 550, 'chicken tikka burger.jpg'),
(30, 'Zinger burger', 'fast food', 380, 'zinger burger.jpg'),
(31, '10&#39;&#39; pizza, 2 zingers, wings and drink', 'main dish', 2199, '0b05442d-22c5-49dd-8e73-804fc7785cf3.jpg'),
(33, 'Beef burger, drink and regular fries', 'main dish', 1199, '81d71d72-db63-4db5-8b86-864db67b193b.jpg'),
(34, '2 shawarma, tins and 2 regular fries', 'main dish', 899, '288bb652-0e70-4a1c-bd62-7e56f9191457.jpg'),
(35, 'Shawarma , tins and regular fries', 'main dish', 599, '8702c824-233f-4387-89a6-02795d6f8271.jpg'),
(36, 'Beef, zinger and patti burger', 'main dish', 1299, 'b36647e6-12dc-4d6e-9314-ff7d7c18e3b5.jpg'),
(37, 'Beef paratha', 'fast food', 450, 'beef parata.jpg'),
(38, 'Chicken shawarma', 'fast food', 300, 'chicken shawarma.jpg'),
(39, 'Chicken tikka paratha', 'fast food', 400, 'chicken tikka parata.jpg'),
(40, 'Chicken cheese paratha', 'fast food', 500, 'chicken with cheese shawarma.webp'),
(41, 'Special shawarma', 'fast food', 350, 'special shawarma.jpg'),
(42, 'Zinger shawarma', 'fast food', 450, 'zinger shawarma.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(2, 'Hassan Talha', 'hassantalha807@gmail.com', '0349521557', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600'),
(3, 'HassanTalha', 'hassantalha808@gmail.com', '34567', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'nill, 23, Rawalpindi, Islamabad, Islamabad, Punjab, Pakistan - 4600');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
