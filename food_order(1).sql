-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 04:52 AM
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
-- Database: `food_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(36, 'Jhon Nelson', 'jhon123', '7012f5ad146ba71d6788f6e96c2b9d95'),
(37, 'Peter Sliva', 'peter@g', '828a60e0623fcfc3cabac29505e22eb6'),
(38, 'Edven Doe', 'edven12', '9073695546cc8552b014528ee9ab86be'),
(39, 'Alix Watson', 'alix23', '50e974da90bd1da650357bd6e0b8b933'),
(40, 'Charith', 'charith123', '900150983cd24fb0d6963f7d28e17f72');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(13, 'Soup', 'Food_Category_335.jpg', 'Yes', 'Yes'),
(15, 'Noodles', 'Food_Category_535.jpg', 'Yes', 'Yes'),
(16, 'Rice', 'Food_Category_770.jpg', 'Yes', 'Yes'),
(17, 'Pizza', 'Food_Category_814.jpg', 'Yes', 'Yes'),
(18, 'Burger', 'Food_Category_533.jpg', 'Yes', 'Yes'),
(19, 'Dessert', 'Food_Category_317.jpg', 'Yes', 'Yes'),
(20, 'Chips', 'Food_Category_796.jpg', 'Yes', 'Yes'),
(21, 'Kottu', 'Food_Category_620.png', 'Yes', 'Yes'),
(22, 'Sawan Rice', 'Food_Category_771.jpg', 'Yes', 'Yes'),
(23, 'Chicken Starter', 'Food_Category_63.jpg', 'Yes', 'Yes'),
(24, 'Veg Starter', 'Food_Category_704.jpeg', 'Yes', 'Yes'),
(25, 'Sea Food', 'Food_Category_904.jpg', 'Yes', 'Yes'),
(26, 'SubMarine', 'Food_Category_560.jpg', 'Yes', 'Yes'),
(27, 'Drink', 'Food_Category_596.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(18, 'Soup-Chiken', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper', '900.00', 'Food_Name_1841.jpg', 13, 'Yes', 'Yes'),
(19, 'Noodles-Chiken-Hakka', 'Vegetable soup doesn’t have to be bland and boring. This recipe is so hearty and delicious, you’ll hardly realize it’s vegetarian.', '1600.00', 'Food_Name_177.jpg', 15, 'Yes', 'Yes'),
(22, 'Indian Rice', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '2200.00', 'Food_Name_9699.jpg', 16, 'Yes', 'Yes'),
(53, 'Pizza-chicken-sasauge', 'A flavoursome duo of chicken bacon and spicy potatoes on a fiery base of Nai Miris sauce complemented with crunchy onions', '2200.00', 'Food_Name_233.png', 17, 'Yes', 'Yes'),
(63, 'Fruit-Choclate-board', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '3500.00', 'Food_Name_1540.jpg', 19, 'Yes', 'Yes'),
(64, 'Soup-Cuttlefish', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '1400.00', 'Food-Name-3871.jpg', 13, 'Yes', 'Yes'),
(65, 'Soup-Prawns', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '1400.00', 'Food-Name-3911.jpg', 13, 'Yes', 'Yes'),
(66, 'Soup-Tomato-Egg', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '800.00', 'Food-Name-7829.jpg', 13, 'Yes', 'Yes'),
(67, 'Noodles-Chiken', 'This spicy sambal noodles recipe is made with rice noodles tossed in a silky sauce of tomatoes, sambal ulek (aka sambal oelek), and coconut milk. With every bite, you’ll get spicy and tangy flavors and a hint of sweetness.', '1200.00', 'Food-Name-5658.jpg', 15, 'Yes', 'Yes'),
(68, 'Soup-Broccoli-Cheese', 'This spicy sambal noodles recipe is made with rice noodles tossed in a silky sauce of tomatoes, sambal ulek (aka sambal oelek), and coconut milk. With every bite, you’ll get spicy and tangy flavors and a hint of sweetness.', '1200.00', 'Food_Name_2157.jpg', 13, 'Yes', 'Yes'),
(69, 'Noodles-Prawns', 'This spicy sambal noodles recipe is made with rice noodles tossed in a silky sauce of tomatoes, sambal ulek (aka sambal oelek), and coconut milk. With every bite, you’ll get spicy and tangy flavors and a hint of sweetness', '1800.00', 'Food-Name-8035.jpg', 13, 'Yes', 'Yes'),
(71, 'Noodles-Ramen', 'This spicy sambal noodles recipe is made with rice noodles tossed in a silky sauce of tomatoes, sambal ulek (aka sambal oelek), and coconut milk. With every bite, you’ll get spicy and tangy flavors and a hint of sweetness', '1500.00', 'Food_Name_7982.jpg', 15, 'Yes', 'Yes'),
(73, 'Noodles-Ramen-Spicy', 'This spicy sambal noodles recipe is made with rice noodles tossed in a silky sauce of tomatoes, sambal ulek (aka sambal oelek), and coconut milk. ', '1600.00', 'Food-Name-9098.jpg', 15, 'Yes', 'Yes'),
(74, 'Fried Rice', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper', '2100.00', 'Food-Name-8667.jpg', 16, 'Yes', 'Yes'),
(75, 'Soup-Mushroom', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper', '1100.00', 'Food_Name_7367.jpg', 13, 'Yes', 'Yes'),
(76, 'Panneer Fried Rice', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper', '2300.00', 'Food-Name-9831.jpg', 16, 'Yes', 'Yes'),
(77, 'Egg Biriyani', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper', '2700.00', 'Food-Name-2323.jpg', 16, 'Yes', 'Yes'),
(78, 'Steamed Rice', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '600.00', 'Food-Name-108.jpg', 16, 'Yes', 'Yes'),
(79, 'Yello Rice', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '800.00', 'Food-Name-5134.jpg', 16, 'Yes', 'Yes'),
(80, 'Mutton Biriyani', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '3000.00', 'Food-Name-7158.jpg', 16, 'Yes', 'Yes'),
(81, 'Vegetable Rice', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper ', '1600.00', 'Food-Name-49.jpg', 16, 'Yes', 'Yes'),
(82, 'Pizza-chiken', 'BBQ chicken, bacon and sausages complemented with crunchy onions and bell pepper, topped with a layer of mozzarella cheese', '2000.00', 'Food_Name_9913.jpg', 17, 'Yes', 'Yes'),
(83, 'Pizza-chiken-sausage', 'Chicken sausages & onions with a double layer of cheese.black chicken and crunchy onion with a double layer of cheese.', '2400.00', 'Food_Name_1035.jpg', 17, 'Yes', 'Yes'),
(84, 'Pizza-BBQ', 'A combination of devilled chicken and succulent chicken sausages accompanied with crunchy onions and capsicum', '2000.00', 'Food_Name_9654.jpg', 17, 'Yes', 'Yes'),
(85, 'Soup-Veg', 'This spicy sambal noodles recipe is made with rice noodles tossed in a silky sauce of tomatoes, sambal ulek (aka sambal oelek), and coconut milk. With every bite, you’ll get spicy and tangy flavors and a hint of sweetness.', '800.00', 'Food_Name_1709.jpg', 13, 'Yes', 'Yes'),
(86, 'Brownies-cream', 'This spicy sambal noodles recipe is made with rice noodles tossed in a silky sauce of tomatoes, sambal ulek (aka sambal oelek), and coconut milk. With every bite, you’ll get spicy and tangy flavors and a hint of sweetness.', '800.00', 'Food-Name-8797.jpg', 19, 'Yes', 'Yes'),
(87, 'Choclate-Cake', 'Tasety', '2800.00', 'Food-Name-6332.jpg', 19, 'Yes', 'Yes'),
(88, 'Soup-Corns', 'A classic preparation of chicken noodle soup made with a stewing hen and flavored with thyme and black pepper', '950.00', 'Food-Name-4685.jpg', 13, 'Yes', 'Yes'),
(89, 'Ice Cream Cake', 'Tasety', '1400.00', 'Food-Name-8931.jpg', 19, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_date` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `customer_name` varchar(10) NOT NULL,
  `customer_contact` varchar(10) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(9, 'Soup-Chiken', '900.00', '3.00', '2700', '2022-10-17', 'Delivered', 'Saman', '0712858364', 'saman12@gmail.com', 'No 56 fonseaka road panandura'),
(10, 'Soup-Veg', '800.00', '2.00', '1600', '2022-10-17', 'Delivered', 'Rangani', '0712348765', 'rangani18@gmail.com', 'No 56 walana panadura'),
(11, 'Noodles-Chiken-Hakka', '1600.00', '10.00', '16000', '2022-10-17', 'OnDelivery', 'Aanya', '0712758465', 'aanya17@gmail.com', 'No 76 araliya road dehiwala'),
(12, 'Panneer Fried Rice', '2300.00', '4.00', '9200', '2022-10-17', 'Cancelled', 'Ruwan', '0712375467', 'ruwan19@gmail.com', 'No76 fonseaka road bambalapitiya'),
(13, 'Soup-Broccoli-Cheese', '1200.00', '1.00', '1200', '2022-10-22', 'OnDelivery', 'Kamal', '0712858365', 'ka@17.gmal', 'colombo'),
(14, 'Soup-Chiken', '900.00', '2.00', '1800', '2022-10-31', 'OnDelivery', 'Aanya', '0712858366', 'aanya17@gmail.com', 'panadura');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
