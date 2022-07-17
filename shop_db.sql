-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 07:22 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(64, 3, 'Adolph Compact 4 Seater Dining Set', 23231, 5, 'd2c.jpg'),
(72, 5, 'Adolph 4 Seater Dining Set', 27999, 1, 'd2.png'),
(73, 2, 'Clove 2 Seater Dining Set ', 19999, 1, 'd12 (2).png'),
(74, 2, 'X Base Coffee Table', 13212, 1, 'x1 (2).png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(15, 5, 'try', 'try@gmail.com', '112233', 'HI, HAVE A GOOD DAY!!!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(11, 2, 'dasdwadasxc', '2131231', 'chesteruser@gmail.com', 'cash on delivery', 'flat no. sdasd21321sda, 312312, Rodriguez , dasdwasd - 34234234', ', Adolph Compact 4 Seater Dining Set (1) ', 23232, '07-Jul-2022', 'completed'),
(12, 2, 'dasdwadasxc', '312313123', 'chesteruser@gmail.com', 'credit card', 'flat no. sdasd21321sda, 312312, Rodriguez , dasdwasd - 31231231232', ', Adolph Compact 4 Seater Dining Set (5) ', 116160, '08-Jul-2022', 'completed'),
(13, 5, 'try', '123', 'try@gmail.com', 'cash on delivery', 'flat no. Malampaya St., Blk 78 lot 45, Antipolo, Philippines - 3212', ', Mallika Couch Sofa Set (1) , Helix Bedside Table (1) ', 76298, '10-Jul-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `dscrp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `type`, `dscrp`) VALUES
(2, 'Adolph 4 Seater Dining Set', 27999, 'd2.png', 'Dining Set', '| Seater: 4 seater |  Finish: Honey finish |  Material: Sheesham wood |  Table Dimensions (Inch): 46 L x 30 W x 30 H |  Chair Dimensions (Inch): 36 L x 18 W x 18 H|  Delivery Condition: Expert-Assembly | '),
(4, 'Clove 2 Seater Dining Set ', 19999, 'd12 (2).png', 'Dining Set', '| Seater: 2 seaters |  Finish:  Walnut finish|  Material: Sheesham wood |  Table Dimensions (Inch): 36 L x 36 W x 30 H |  Chair Dimensions (Inch): 18 L x 21 W x 36 H |  Delivery Condition: Expert-Assembly |'),
(5, 'Orson 2 Seater Dining Set', 15499, 'd26.png', 'Dining Set', '| Seater: 2 seaters |  Finish:  Honey finish|  Material: Sheesham wood |  Table Dimensions (Inch): 28 L x 28 W x 30 H |  Chair Dimensions (Inch): 18 L x 18 W x 35 H |  Delivery Condition: Expert-Assembly |'),
(7, 'McBeth 6 Seater Dining Set ', 44599, 'd22.png', 'Dining Set', '| Seater: 6 seaters |  Finish:  Walnut finish |  Material: Sheesham wood |  Table Dimensions (Inch): 67 L x 36 W x 30 H |  Chair Dimensions (Inch): 18 L x 19.5 W x 38 H |  Delivery Condition: Expert-Assembly |'),
(8, 'Cohoon 6 Seater Dining Set', 43499, 'd27.png', 'Dining Set', '| Seater: 6 seaters |  Finish:  Walnut finish|  Material: Sheesham wood |  Table Dimensions (Inch): 63.5 L x 38 W x 30 H |  Chair Dimensions (Inch): 18 L x 18 W x 36 H |  Delivery Condition: Expert-Assembly |'),
(11, 'Cambrey Dining Set', 50399, 'd8.png', 'Dining Set', '| Seater: 8 seaters |  Finish:  Walnut finish|  Material: Sheesham wood |  Table Dimensions (Inch): 80 L x 36 W x 30 H |  Chair Dimensions (Inch): 18 L x 18 W x 36 H |  Delivery Condition: Expert-Assembly | '),
(12, ' Audrey Sofa Set', 60599, 'ss2 (2).png', 'Sofa Set', 'Seater: L shape |  Finish: Honey finish |  Material: Sheesham wood |  Dimensions (Inch): 103 L x 71 W x 28 H |  Shape: L - Shape |  Delivery Condition: Expert-Assembly | '),
(13, 'Cortez Sofa Set', 58599, 'ss5 (2).png', 'Sofa Set', '| Seater: L shape |  Finish: Honey finish |  Material: Sheesham wood |  Dimensions (Inch): 116 L x 72 W x 28 H |  Shape: L - Shape |  Delivery Condition: Expert-Assembly | '),
(14, ' Marriott 2 Sofa Set', 30999, 'ss13 (2).png', 'Sofa Set', ' | Seater: 2 seater |  Finish: Honey finish |  Material: Sheesham wood |  Two Seater Dimensions(Inch): 56 L x 33 W x 30 H |  Product Weight: 63 Kg |  Delivery Condition: Basic assembly/DIY | '),
(15, ' Marriot 3 Sofa Set', 33899, 'ss15 (2).png', 'Sofa Set', ' | Seater: 3 seater |  Finish: Walnut finish |  Material: Sheesham wood |  Three Seater Dimensions (Inch): 78 L x 33 W x 30 H |  Shape: Rectangular |  Delivery Condition: Basic assembly/DIY | '),
(16, 'Winster  Sofa Set', 57000, 'ss20 (2).png', 'Sofa Set', ' | Seater: 3+1+1 seater | Finish: Honey finish |  Material: Sheesham wood | 1S Dimensions(Inch):31 L x 31 W x 30 H | 3S Dimensions(Inch): 72 L x 31 W x 30 H | Delivery Condition: Basic assembly | '),
(17, 'Mallika Couch Sofa Set', 70599, 'ss11 (2).png', 'Sofa Set', ' | Seater: 3seaters |  Finish: Walnut finish |  Material: Teak wood |  Chair Dimension (inch): 48 L x 26 W x 33 H |  Pack Content: 3 Seater Sofa |  Delivery Condition: Pre-assembled | '),
(18, 'Allan Bedside Table ', 4950, 'b1.png', 'Bedside Table ', ' | Finish: Walnut finish |  Material: Sheesham wood |  Dimensions: (Inch)16 L x 14 W x 22 H |  Storage: Yes |  Storage Type: Open and Closed |  Delivery Condition: Pre-assembled | '),
(19, 'Helix Bedside Table', 5699, 'b5.png', 'Bedside Table ', ' | Finish: Walnut finish |  Material: Sheesham wood |  Dimensions: (Inch)19 L x 15 W x 18 H |  Storage: Yes |  Storage Type: Open and Closed |  Delivery Condition: Pre-assembled | '),
(20, 'Parish Bedside Table', 5999, 'b9.png', 'Bedside Table ', ' | Finish: Walnut finish | Material: mango wood |  Dimension: (Inch)18 L x 15 W x 16 H | Storage: Yes  | Storage Type: Open and Closed Delivery | Condition: Pre-assembled | '),
(21, 'Taupe Coffee table ', 1199, 'c2 (2).png', 'Coffee table', 'Excellent for condos or home offices |  Additional Information |  Materials: 18mm-thick |  Solid Rubberwood |  Color: Natural Wood |  Size: L74 x W47.5 x H32.5cm |'),
(23, 'Eliahs Broke Console table', 22000, 'c5 (2).png', 'Console table', ' |  Material: Solid + Manufactured Wood |  Drawers Included: Yes |  Number of Drawers: 4 |  Top Shape: Rectangle |  Wheels Included: No |  Weight Capacity: 100 lb. | '),
(24, 'Offerman Console table', 17999, 'c11 (2).png', 'Console table', ' | Material: Manufactured Wood |  Top Shape: Rectangle |  Product Warranty: Yes |  Warranty Length: 90 Days |  Full or Limited Warranty: Limited |  Warranty Details: Against defects | '),
(25, 'Madison Dining Table', 17899, 'd18 (2).png', 'Dining Table', ' | Width (cm): 220 |  Depth (cm): 90 |  Height (cm): 75 |  Width Between Legs (cm): 124 |  Frame Materials: Rubber Wood |  Leg Materials: Metal | Packaging: 212 x 97 x 6.5, 72 x 72 x 73 | \r\n\r\n '),
(26, 'Hensley Round Dining Table', 6396, 'd11 (2).png', 'Dining Table', ' | Diameter (cm): 120 |  Height (cm): 75 |  Width Between Legs (cm): 45 |  Table Top Material: (MDF) |  Legs Material: Solid Wood |  Packaging Dimension (cm) 126.4 x 125.2 x 11.2 | '),
(27, 'Hensley Dining Table', 8122, 'd7 (2).png', 'Dining Table', ' | Width (cm): 200 |  Depth (cm): 90 |  Height (cm): 75 |  Table Top Material: (MDF Board) |  Legs Material: Solid Wood | Ships In: 3 Days | Assembly: Legs to be fitted | '),
(28, 'Lance Laptop Table', 1499, 'l5 (2).png', 'Laptop Table', ' | Finish: Walnut finish |  Material: Sheesham wood |  Dimensions: (Inch)22.5 L x 12.5 W x 7.5 H |  Product Weight: 4 Kg |  Ships In: 3 Days |  Delivery Condition: Pre-assembled | '),
(29, 'Makong Laptop Table', 1489, 'l10 (2).png', 'Laptop Table', '| Finish: Walnut finish |  Material: Sheesham wood |  Dimensions: (Inch)22 L x 13 W x 12 H |  Est. Delivery: 5-7 Weeks |  Ships In: 3 Days | Delivery Condition: Pre-assembled |'),
(30, 'Novelo Balcony Set', 11599, 'b1 (2).png', 'Balcony Set', ' | Low-height table and chair |  Finish: Honey finish |  Material: Sheesham wood |  Table Dimensions:  (Inch)20 L x 20 W x 24H |  Chair Dimensions:  (Inch)21 L x 30 W x 37 H |  Delivery Condition: Pre-assembled | '),
(31, 'Hanton Balcony Set', 15000, 'b2.png', 'Balcony Set', ' | Low-height table and chair |  Finish: Honey finish |  Material: Sheesham wood |  Table Dimensions:(Inch)28 L x 28 W x 24 H |  Chair Dimensions:(Inch)20 L x 23 W x 35 H |  Delivery Condition: Pre-assembled | '),
(32, 'Barrel Chair', 4500, 'd1 (2).png', 'Chair', ' | Finish: Walnut finish |  MaterialS: heesham wood |  Dimensions: (Inch)17 L x 17 x 32 H |  Seating Height: 18 H |  Product Weight: 10 Kg |  Delivery Condition: Pre-assembled | '),
(33, 'Cambrey Chair', 4900, 'd3 (2).png', 'Chair', ' | Finish: Walnut finish |  Material: Sheesham wood |  Material: Cane |  Dimensions: (Inch)18 L x 18 W x 36 H |  Seating Height: 18 H |  Delivery Condition: Pre-assembled | '),
(35, 'Helina Chair', 4799, 'd6 (2).png', 'Chair', ' | Finish: Walnut finish |  Material: Sheesham wood |  Dimensions: (Inch)18 L x 18 W x 35 H |  Product Weight: 10 Kg |  Seating Height: 18 H |  Delivery Condition”: Pre-assembled | '),
(36, 'Trois Chair ', 5000, 'e7 (2).png', 'Chair', ' | Finish: Honey finish |  Material: Sheesham wood |  Material: Cane |  Dimensions:(Inch)17 L x 17 W x 32 H |  Seating Height: 18 H |  Delivery Condition: Pre-assembled | '),
(37, 'Benjamin Iconic Chair ', 3999, 'i2 (2).png', 'Iconic Chair', ' | Material: Leatherette |  Material: Wood |  Dimensions:  (Inch)18.9 L x 16.5 W x 29.5 H |  Product Quantity: 1 Iconic Chair |  Delivery Condition: Pre-assembled | '),
(40, 'Eliot Iconic Chair ', 4499, 'i5 (2).png', 'Iconic Chair', ' | Material: Beech wood |  Material: Fabric |  Dimensions: (Inch)18.1 L x 16.1 W x 32.3 H |  Product Quantity: 1 Iconic Chair |  Delivery Condition: Pre-assembled | '),
(41, 'YNG Iconic Chair ', 6500, 'i6 (2).png', 'Iconic Chair', ' | Material: Fabric |  Material: Beech wood |  Dimensions: (Inch)24.8 L x 23.6 W x 32.2 H |  Product Quantity: 1 Iconic Chair |  Delivery Condition: Pre-assembled | '),
(44, 'Crsiper Lounge Chair', 10899, 'r1 (2).png', 'Lounge Chair', ' | Finish: Walnut finish | BLUE |  Material: Sheesham wood |  Material: Cotton |  Seating Capacity: 1 |  Product Quantity: 1 Unit |  Delivery Condition: Pre-assembled | '),
(45, 'Modern Lounge Chair', 10500, 'r4 (2).png', 'Lounge Chair', ' | Finish: Walnut finish |  Material: Teak wood |  Color: Green |  Dimensions:  (Inch)22 L x 29 W x 31 H |  Pack Content: 1 Armchair |  Delivery Condition: Pre-assembled | '),
(46, 'Crsiper G Lounge Chair', 10899, 'r3 (2).png', 'Lounge Chair', ' | Finish: Walnut finish | GREY |  Material: Sheesham wood |  Material: Cotton |  Seating Capacity: 1 |  Product Quantity: 1 Unit |  Delivery Condition: Pre-assembled | '),
(47, 'Crsiper W Lounge Chair', 10899, 'r2 (2).png', 'Lounge Chair', ' | Finish: Walnut finish | WHITE |  Material: Sheesham wood |  Material: Cotton |  Seating Capacity: 1 |  Product Quantity: 1 Unit |  Delivery Condition: Pre-assembled | '),
(48, 'Ashton Living Room Chair', 3999, 'w2 (2).png', 'Living Room Chair', ' | Finish: Walnut finish |  Dimensions (cm): 55 x 55 x70 |  Seat Height (cm)40 |  Frame Materials Solid Wood |  Fabric Composition Polyester |  Packaging Dimension (cm) 68.1 x 65 x 18.2 | '),
(49, 'Lombok Living Room Chair', 10350, 'w6 (2).png', 'Living Room Chair', ' | Finish: Walnut finish |  Dimensions (cm): 64 x 69 x 84 x 46 |  Seat Height (cm)46 |  Frame Materials Solid Ash Wood |  Fabric Composition Polyester |  Packaging Dimension (cm) 68.1 x 65 x 18.2 | '),
(50, 'Nomi Living Room Chair', 9889, 'w13 (2).png', 'Living Room Chair', '| Finish: Walnut finish |  Dimensions(cm): 69 x 75 x 82 |  Seat Height (cm): 48.5 |  Frame Materials: Solid Wood |  Fabric Composition: Premium Polyester |  Special Features: Retro Design |'),
(51, 'X Base Coffee Table', 13212, 'x1 (2).png', 'Coffee table', ' | Finish: Honey finish |  Material: Sheesham wood |  Material: Cane |  Dimensions:(Inch)17 L x 17 W x 32 H |  Seating Height: 18 H |  Delivery Condition: Pre-assembled | ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'ADMIN', 'chesteradmin@gmail.com', 'e58cc5ca94270acaceed13bc82dfedf7', 'admin'),
(2, 'zikeeez', 'chesteruser@gmail.com', 'e58cc5ca94270acaceed13bc82dfedf7', 'user'),
(5, 'try', 'try@gmail.com', 'e58cc5ca94270acaceed13bc82dfedf7', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
