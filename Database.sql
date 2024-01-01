-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 03:43 AM
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
-- Database: `db_ajax`
--
CREATE DATABASE IF NOT EXISTS `db_ajax` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_ajax`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ragister`
--

CREATE TABLE `tbl_ragister` (
  `login_id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ragister`
--

INSERT INTO `tbl_ragister` (`login_id`, `full_name`, `email`, `username`, `password`) VALUES
(1, 'chitra ', ' chitra@gmail.com ', 'chitra@gmail.com ', 'chitra@gmail.com '),
(2, 'manisha ', ' manisha@gmail.com ', 'manisha@gmail.com ', '1234 '),
(3, 'mayur ', ' mayur@gmail.com ', 'mayur ', '12345 '),
(4, 'mayur ', ' admin ', 'chitra@gmail.com ', '123456 ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` text NOT NULL,
  `site_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_url`) VALUES
(1, ' Google  ', 'http://www.google.com '),
(3, ' Yahoo ', 'http://www.yahoo.com '),
(5, ' Google  ', 'http://www.google.com ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ragister`
--
ALTER TABLE `tbl_ragister`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ragister`
--
ALTER TABLE `tbl_ragister`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `db_classified`
--
CREATE DATABASE IF NOT EXISTS `db_classified` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_classified`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ad`
--

CREATE TABLE `tbl_ad` (
  `ad_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `ad_title` varchar(30) NOT NULL,
  `Ads_image` text NOT NULL,
  `ad_shor_desc` text NOT NULL,
  `ad_long_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ad`
--

INSERT INTO `tbl_ad` (`ad_id`, `product_id`, `user_id`, `city_id`, `ad_title`, `Ads_image`, `ad_shor_desc`, `ad_long_desc`) VALUES
(1, 5, 1, 1, 'LG smart tv showroom condition', 'Lg Tv.jpg', 'Digital Dolby speakers,4 HDMI ports  ', 'Digital Dolby speakers,4 HDMI ports ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_area`
--

CREATE TABLE `tbl_area` (
  `area_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_name` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_area`
--

INSERT INTO `tbl_area` (`area_id`, `city_id`, `area_name`, `is_active`) VALUES
(1, 1, 'Burdi', 'y'),
(2, 2, 'Trivandrum', 'y'),
(3, 3, 'Goregao', 'y'),
(4, 5, 'lokamanya nagar ', 'N'),
(5, 5, 'Mundhava', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `cat_icon` text NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `cat_icon`, `is_active`) VALUES
(1, 'Electronics', 'laptop.png', 'Y'),
(2, 'Furniture', 'bed.jpg', 'Y'),
(3, 'Automobile', 'car.jpg', 'Y'),
(4, 'Realestate', 'home.jpg', 'Y'),
(5, 'Cosmatics', 'makeup.jpg', 'Y'),
(6, 'Books', 'books.jpg', 'Y'),
(7, 'Cloths', 'cloth.jpg', 'Y'),
(8, 'Agriculture', 'agri.jpg', 'Y'),
(9, 'Medicine', 'med.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `city_name` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `state_id`, `product_id`, `city_name`, `is_active`) VALUES
(1, 1, 1, 'Nagpur', 'Y'),
(2, 2, 3, 'Tiruvanantpurm', 'Y'),
(3, 1, 4, 'Mumbai', 'Y'),
(5, 1, 5, 'Pune', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `comp_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `comp_name` varchar(30) NOT NULL,
  `website` varchar(11) NOT NULL,
  `email_id` varchar(11) NOT NULL,
  `director_name` char(20) NOT NULL,
  `propritor_name` char(20) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `gst_no` varchar(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`comp_id`, `state_id`, `city_id`, `area_id`, `comp_name`, `website`, `email_id`, `director_name`, `propritor_name`, `phone_no`, `contact_no`, `gst_no`, `reg_no`, `is_active`) VALUES
(1, 1, 1, 1, 'OLX', 'olx.com', 'olx@gmail.c', 'Rahul singh', 'Priya sharma', 2147483647, 2147483647, '27AAACS5123K1ZD', 'SEC CIK 0000875981', 'y'),
(2, 2, 2, 2, 'Quickr', 'Quikr.com', 'quickr@gmai', 'Sid patil', 'Deep kumar', 214748364, 214748364, '06AAJCR1488F1Z8', 'U32301HR2018PTC07601', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company1`
--

CREATE TABLE `tbl_company1` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_feature_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `mfg_dt` datetime NOT NULL,
  `expiry_dt` datetime NOT NULL,
  `launch_dt` datetime NOT NULL,
  `product_price` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_feature_id`, `product_name`, `category_id`, `subcategory_id`, `product_desc`, `user_id`, `company_id`, `image`, `mfg_dt`, `expiry_dt`, `launch_dt`, `product_price`, `is_active`) VALUES
(1, 1, 'Samsung 10 pro', 1, 1, 'Equipped with impressive features and decent specifications, the Samsung Galaxy Note 10 Plus (Galaxy Note 10 Pro) is a perfect choice that is available at a starting price of Rs 79,999. The phone offers a slip-free grip as it is light in weight and is easy to carry. This stylish handset from Samsung comes with a 6.8 inches (17.27 cm) display that has a resolution of 1440 x 3040 pixels offering immersive and comfortable viewing.. The camera specifications of the mobile are really impressive and remarkable that let you capture high-resolution images and videos.', 4, 1, '10 pro.jpg', '2019-08-23 11:02:49', '2022-08-26 11:02:49', '2019-08-23 11:02:49', 'Rs. 79,999', 'Y'),
(3, 2, 'Samsung Galaxy A12', 1, 1, ' Samsung Galaxy A12 is powered by a 1.8GHz octa-core MediaTek Helio P35 (MT6765) processor that features 4 cores clocked at 1.8GHz and 4 cores clocked at 2.3GHz. It comes with 4GB of RAM. The Samsung Galaxy A12 runs Android 10 and is powered by a 5000mAh battery. The Samsung Galaxy A12 supports proprietary fast charging.', 5, 1, 'A12 Samsung.jpg', '2019-11-07 11:19:07', '2022-08-26 11:19:07', '2022-11-24 11:19:07', 'Rs. 11,970', 'Y'),
(4, 2, 'Galaxy S20 FE', 1, 1, 'The Samsung Galaxy S20 FE, or Fan Edition, promises the most popular features of the flagship Galaxy S20 family at a much lower price. You get the same Exynos 990 processor, plus a 6.5-inch full-HD+ 120Hz Super AMOLED screen and a 4500mAh battery. The body is polycarbonate but this phone still feels premium, and is IP68 rated for water and dust resistance. You get plenty of high-end features including stereo speakers and wireless charging. ', 1, 1, 'galaxy S20.jpg', '2021-03-31 03:59:38', '2022-08-21 03:59:38', '2021-03-31 03:59:38', 'Rs. 36,999', 'Y'),
(5, 1, 'Lgtv', 0, 0, '', 0, 0, 'Lg Tv.jpg', '2022-08-26 08:56:11', '2022-08-26 08:56:11', '2022-08-26 08:56:11', '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_comment`
--

CREATE TABLE `tbl_product_comment` (
  `comment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_desc` text DEFAULT NULL,
  `posted_date` datetime DEFAULT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_comment`
--

INSERT INTO `tbl_product_comment` (`comment_id`, `product_id`, `user_id`, `comment_desc`, `posted_date`, `is_active`) VALUES
(1, 1, 1, 'please give me more details about that product', '2022-09-07 15:55:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_details`
--

CREATE TABLE `tbl_product_details` (
  `product_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_feature_type_id` int(11) NOT NULL,
  `product_feature_detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_feature`
--

CREATE TABLE `tbl_product_feature` (
  `product_feature_id` int(11) NOT NULL,
  `product_feature` varchar(30) NOT NULL,
  `product_feature_value` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_feature`
--

INSERT INTO `tbl_product_feature` (`product_feature_id`, `product_feature`, `product_feature_value`, `is_active`) VALUES
(1, 'Display', '', 'Y'),
(2, 'Storage', '', 'Y'),
(3, 'Camera', '', 'Y'),
(4, 'Operating System', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_feature_details`
--

CREATE TABLE `tbl_product_feature_details` (
  `product_feature_detail_id` int(11) NOT NULL,
  `product_feature_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_feature_details`
--

INSERT INTO `tbl_product_feature_details` (`product_feature_detail_id`, `product_feature_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_feature_type`
--

CREATE TABLE `tbl_product_feature_type` (
  `product_feature_type_id` int(11) NOT NULL,
  `product_feature_id` int(11) NOT NULL,
  `product_feature_type` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_feature_type`
--

INSERT INTO `tbl_product_feature_type` (`product_feature_type_id`, `product_feature_id`, `product_feature_type`, `is_active`) VALUES
(1, 1, 'Amoled', 'Y'),
(2, 1, 'LCD', 'Y'),
(3, 1, 'IPS Pannel', 'Y'),
(4, 1, 'TFT LCD', 'Y'),
(5, 1, 'OLED', 'Y'),
(6, 1, 'Super Amoled', 'Y'),
(7, 3, 'FRONT-3MP', 'Y'),
(8, 3, 'FRONT-5MP', 'Y'),
(9, 3, 'FRONT-12MP', 'Y'),
(10, 3, 'FRONT-16MP', 'Y'),
(11, 3, 'REAR-32MP', 'Y'),
(12, 3, 'REAR-64MP', 'Y'),
(13, 3, 'REAR-128MP', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`, `is_active`) VALUES
(1, 'Maharashtra', 'Y'),
(2, 'Kerla', 'Y'),
(3, 'Rajasthan', 'N'),
(4, 'Chhattisgarh', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(30) NOT NULL,
  `subcat_icon` text NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `category_id`, `subcategory_name`, `subcat_icon`, `is_active`) VALUES
(1, 1, 'Mobile and tablets', 'phone.png', 'Y'),
(2, 1, 'Refrigerator', 'refrigerator.jpg', 'Y'),
(3, 1, 'Washing Machine', 'machine.jpg', 'Y'),
(4, 1, 'Ear pod', 'earpod.jpg', 'Y'),
(5, 1, 'Television', 'Lg Tv.jpg', 'Y'),
(6, 1, 'Laptop', 'laptop.png', 'Y'),
(7, 1, 'Speaker', 'speaker.jpg', 'Y'),
(8, 3, 'Car', 'car.jpg', 'Y'),
(9, 3, 'Bike', 'bike.png', 'Y'),
(10, 3, 'Scooty', 'scooty.jpg', 'Y'),
(11, 2, 'Bed', 'bed.jpg', 'Y'),
(12, 2, 'Sofa Set', 'sofa.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `usertype_id` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_img` text NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `state_id`, `city_id`, `area_id`, `user_name`, `usertype_id`, `password`, `user_img`, `is_active`) VALUES
(1, 1, 1, 1, 'chitra@gmail.com ', 1, '123456', 'agri.jpg', 'Y'),
(2, 1, 5, 4, 'nisha@gmail.com', 2, '1234', '', 'Y'),
(3, 1, 5, 5, 'abhilasha@gmail.com', 3, '1234', '', 'Y'),
(4, 1, 5, 4, 'mayur@gmail.com', 2, '12345', '', 'Y'),
(5, 1, 1, 1, 'akash@gmail.com', 3, '12345', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usertype`
--

CREATE TABLE `tbl_usertype` (
  `usertype_id` int(11) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_usertype`
--

INSERT INTO `tbl_usertype` (`usertype_id`, `usertype`) VALUES
(1, 'Admin'),
(2, 'Advertiser'),
(3, 'Guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ad`
--
ALTER TABLE `tbl_ad`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `tbl_company1`
--
ALTER TABLE `tbl_company1`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_product_comment`
--
ALTER TABLE `tbl_product_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  ADD PRIMARY KEY (`product_detail_id`);

--
-- Indexes for table `tbl_product_feature`
--
ALTER TABLE `tbl_product_feature`
  ADD PRIMARY KEY (`product_feature_id`);

--
-- Indexes for table `tbl_product_feature_details`
--
ALTER TABLE `tbl_product_feature_details`
  ADD PRIMARY KEY (`product_feature_detail_id`);

--
-- Indexes for table `tbl_product_feature_type`
--
ALTER TABLE `tbl_product_feature_type`
  ADD PRIMARY KEY (`product_feature_type_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  ADD PRIMARY KEY (`usertype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ad`
--
ALTER TABLE `tbl_ad`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_area`
--
ALTER TABLE `tbl_area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_company1`
--
ALTER TABLE `tbl_company1`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product_comment`
--
ALTER TABLE `tbl_product_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  MODIFY `product_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_feature`
--
ALTER TABLE `tbl_product_feature`
  MODIFY `product_feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product_feature_details`
--
ALTER TABLE `tbl_product_feature_details`
  MODIFY `product_feature_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product_feature_type`
--
ALTER TABLE `tbl_product_feature_type`
  MODIFY `product_feature_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  MODIFY `usertype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `db_consultancy`
--
CREATE DATABASE IF NOT EXISTS `db_consultancy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_consultancy`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_area`
--

CREATE TABLE `tbl_area` (
  `area_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_name` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_area`
--

INSERT INTO `tbl_area` (`area_id`, `city_id`, `area_name`, `is_active`) VALUES
(1, 1, 'Burdi', 'y'),
(2, 2, 'Trivandrum', 'y'),
(3, 3, 'Goregao', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `state_id`, `city_name`, `is_active`) VALUES
(1, 1, 'Nagpur', 'Y'),
(2, 2, 'Tiruvanantpurm', 'Y'),
(3, 1, 'Mumbai', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `comp_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `comp_name` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `director_name` char(20) NOT NULL,
  `propritor_name` char(20) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `gst_no` varchar(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `comp_logo` text DEFAULT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`comp_id`, `state_id`, `city_id`, `area_id`, `comp_name`, `website`, `email_id`, `director_name`, `propritor_name`, `phone_no`, `contact_no`, `gst_no`, `reg_no`, `comp_logo`, `is_active`) VALUES
(1, 1, 1, 1, 'OLX', 'olx.com', 'olx@gmail.c', 'Rahul singh', 'Priya sharma', '2147483647', '2147483647', '27AAACS5123K1ZD', 'SEC CIK 0000875981', 'delet.jpg', 'y'),
(2, 2, 2, 2, 'Quickr', 'Quikr.com', 'quickr@gmai', 'Sid patil', 'Deep kumar', '214748364', '214748364', '06AAJCR1488F1Z8', 'U32301HR2018PTC07601', 'mountains.jpg', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company1`
--

CREATE TABLE `tbl_company1` (
  `company_id` int(10) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  `estd_yr` varchar(30) NOT NULL,
  `Founder_Name` char(30) NOT NULL,
  `Chairperson_Name` char(30) NOT NULL,
  `No_Of_Employees` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_company1`
--

INSERT INTO `tbl_company1` (`company_id`, `company_name`, `website`, `estd_yr`, `Founder_Name`, `Chairperson_Name`, `No_Of_Employees`) VALUES
(1, 'TCS', 'http://www.tcs.com', '1980', 'Jamshetji Tata', 'Rantanji Tata', 592),
(2, 'HCL', 'http://myhcl.com', '12 Nov 1919', 'Shiv Nadar,Arjun Malhotra', 'Roshni nadar malhotra', 208877),
(3, 'IBM', 'http://myhcl.com', '12 Nov 1919', 'Shiv Nadar,Arjun Malhotra', 'Roshni nadar malhotra', 592);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `summary` varchar(30) NOT NULL,
  `email_name` varchar(30) NOT NULL,
  `logo` text NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `location` varchar(20) NOT NULL,
  `tags` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `summary`, `email_name`, `logo`, `phone_number`, `location`, `tags`) VALUES
(1, 'Accounting Inc', 'info@accounting-inc.com', 'accounting_inc.jpg', '555546143786 work', 'Dallas,united state', 'important'),
(2, 'Air new zeland ', 'info@airnewzeland.org', 'Air_NewZealand.png', '1023553001 home', '', 'customer'),
(3, 'Basket case', 'shop@basketcase.co', 'basket_ball.png', '1015553001 Mobile', 'Pinehaven', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_electronic`
--

CREATE TABLE `tbl_electronic` (
  `electronic_id` int(10) NOT NULL,
  `fan_start` varchar(50) NOT NULL,
  `fan_stop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `employee_id` int(10) NOT NULL,
  `employee_name` varchar(30) NOT NULL,
  `Login_time` datetime(6) NOT NULL,
  `Logout_time` datetime(6) NOT NULL,
  `Browser_Name` varchar(225) NOT NULL,
  `IP_Address` varchar(30) NOT NULL,
  `Login_Counter` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`employee_id`, `employee_name`, `Login_time`, `Logout_time`, `Browser_Name`, `IP_Address`, `Login_Counter`) VALUES
(1, 'Prajwal Sontakke', '2022-07-01 12:12:45.000000', '2022-07-01 12:12:55.000000', 'chrome', '192.168.12.4', 45),
(3, 'kapil joshi', '2022-07-01 12:12:45.000000', '2022-07-01 12:12:55.000000', 'Mozila', '192.168.15.6', 56);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `login_counter` int(11) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `ip_address` text NOT NULL,
  `browser_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `email`, `password`, `login_counter`, `login_time`, `logout_time`, `ip_address`, `browser_name`) VALUES
(1, 'chitra@gmail.com', '123', 5, '2022-06-21 08:48:18', '2022-06-21 08:53:12', '198.162.114.23', 'mozilla 5.0'),
(2, 'admin@yahoo.com', '12345', 50, '2022-06-21 09:53:18', '2022-06-21 09:53:11', '198.162.114.23', 'mozilla 7.0'),
(3, 'admin', 'admin', 10, '2022-06-21 08:48:18', '2022-06-21 08:53:11', '198.162.114.23', 'mozilla5.0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mail`
--

CREATE TABLE `tbl_mail` (
  `Mail_id` int(11) NOT NULL,
  `sender_photo` text NOT NULL,
  `mail_to` varchar(20) NOT NULL,
  `mail_from` varchar(20) NOT NULL,
  `mail_subject` text NOT NULL,
  `cc_bcc` varchar(30) NOT NULL,
  `mail_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mail`
--

INSERT INTO `tbl_mail` (`Mail_id`, `sender_photo`, `mail_to`, `mail_from`, `mail_subject`, `cc_bcc`, `mail_message`) VALUES
(1, 'Chitra_Bhujade_43.png', 'prajawal@gmail.com', 'rssoftsoft@gmail.com', 'project Task Mail', 'pqr@yahoo.com', 'hi how are you?'),
(4, 'login_history.png', 'prajawal@gmail.com', 'rssoftsoft@gmail.com', 'Admin Development mail', 'hr@gmail.com', 'Hi how are you?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(30) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`, `is_active`) VALUES
(1, 'Maharashtra', 'Y'),
(2, 'Kerla', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `tbl_company1`
--
ALTER TABLE `tbl_company1`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_electronic`
--
ALTER TABLE `tbl_electronic`
  ADD PRIMARY KEY (`electronic_id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  ADD PRIMARY KEY (`Mail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_company1`
--
ALTER TABLE `tbl_company1`
  MODIFY `company_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_electronic`
--
ALTER TABLE `tbl_electronic`
  MODIFY `electronic_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  MODIFY `Mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_consultancy\",\"table\":\"tbl_employees\"},{\"db\":\"db_consultancy\",\"table\":\"tbl_company1\"},{\"db\":\"db_consultancy\",\"table\":\"tbl_company\"},{\"db\":\"db_consultancy\",\"table\":\"tbl_login\"},{\"db\":\"db_consultancy\",\"table\":\"tbl_area\"},{\"db\":\"db_consultancy\",\"table\":\"tbl_city\"},{\"db\":\"db_classified\",\"table\":\"tbl_area\"},{\"db\":\"db_classified\",\"table\":\"tbl_city\"},{\"db\":\"db_classified\",\"table\":\"tbl_state\"},{\"db\":\"db_classified\",\"table\":\"tbl_company\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_classified', 'tbl_company', '{\"sorted_col\":\"`tbl_company`.`email_id` ASC\"}', '2022-06-23 03:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-07-03 05:12:42', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `z_ajax`
--
CREATE DATABASE IF NOT EXISTS `z_ajax` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `z_ajax`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(30) NOT NULL,
  `site_url` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_url`) VALUES
(1, ' Google  ', 'http://www.google.com ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
