-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 10:44 AM
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
-- Database: `u937407737_abcrentalcars_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `license` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `Upgrade` int(2) NOT NULL DEFAULT 0,
  `requirement` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `license`, `profile`, `surname`, `firstname`, `middlename`, `email`, `contact`, `username`, `password`, `user_type`, `Upgrade`, `requirement`, `status`, `date`) VALUES
(1, '', '', 'Dela Cruz', 'Juan', 'Smith', 'juandelacruz@gmail.com', '09956425669', 'administrator', '$2y$10$mUhlzh2wmduOngliRT.oj.NI2Msbhxwx6Bde.HKPskDikimNmExca', 'Administrator', 0, '', 1, '2022-06-07 18:59:03'),
(7, '012001', '', 'Reroma', 'Ansel John', 'Alolod', 'carbamark@gmail.com', '09213782648', 'ajreroma', '$2y$10$3rLibf6KBFsClbO38BvB0..eVxrxRQC4qaD5GzvqezxGj7BsD7iKi', 'Customer', 0, 'id.jpg', 1, '2022-06-21 23:12:52'),
(8, '10987654321234567890', '', 'Hernandez', 'Nick', 'Liwag', 'punkmakier19@gmail.com', '09217384917', 'nickhernandez', '$2y$10$mGAHsziD4cqTHGy4Uobi4OZhwMYao/Vo2P4jlps8ePnd5wsNUb3X.', 'Macro', 2, 'id2.jpg', 1, '2022-06-21 23:15:47'),
(10, '', '', 'Lorenzo', 'Gian', 'Pasusani', 'Gian_lorenzo@gmail.om', '09217384917', 'gian123', '$2y$10$rKT1Kwt/fHcOJcvSxvRpHeeA.kENhqF8d/7hbLME4NtcSmt2pGUGy', 'Customer', 0, 'id2.jpg', 1, '2022-06-22 02:14:10'),
(11, '4-19', '', 'Ricardo', 'Raven Faith', 'Santos', 'raven@gmail.com', '09217384917', 'raven', '$2y$10$kvzcN2wmZxKl5fCmW57Tqe6WIRakE8WvW3UYqxz3PyuPuRRKfCPny', 'Customer', 0, 'id3.jpg', 1, '2022-06-22 03:09:30'),
(12, '', '', 'Ramos', 'Mary Stephanie', 'Roxas', 'mary@gmail.com', '09214619385', 'mary', '$2y$10$LFCptvhyo2OM8TJUeFM9CeJz3rJcPpooViU35Gfd.1lmspo0UqC2W', 'Macro', 0, 'permit1.jpg', 1, '2022-06-22 03:18:52'),
(13, '', '', 'Santos', 'Jillian Marie', 'Lopez', 'jillian@gmail.com', '09128461937', 'jillian', '$2y$10$7kVMwmxHPQwtJHamj47Ay.RWimVTDPfw20OU4j0Q3ojNsvTiAw2RK', 'Customer', 0, 'license1.jpg', 1, '2022-06-22 03:22:53'),
(14, '', '', 'Divina', 'Maria Francheska', 'Divina', 'mariafrancheska@gmail.com', '09214619385', 'mariafrancheska', '$2y$10$3nnJVIAq1eIPEH8vgI.LQeTQCO6/PVyHouIpgzNtp2lJqYZeFFElW', 'Customer', 0, 'id5.png', 1, '2022-06-22 15:26:40'),
(15, '', '', 'Reyes', 'John Mark', 'Lozano', 'johnmark@gmail.com', '09214619385', 'johnmarklozano', '$2y$10$wI/y7Do5i1JjcXJaKbDCee5CtTf.lLDtEHJ3WqCkaFMTPRYgbwyIC', 'Macro', 0, 'permit3.jpg', 1, '2022-06-22 15:29:31'),
(16, '1233456789', '', 'Magsaysay', 'Mae Ann', 'Laguna', 'mae@gmail.com', '09214619385', 'mae', '$2y$10$kQJrfBD6.z8VIcx2ekBNJe0caUmXVfpra3QQpZrFOiFDg2w.v4GpW', 'Micro', 0, 'id7.jpg', 1, '2022-06-23 01:57:10'),
(17, '', '', 'Manalad', 'Keane', 'Ryane', 'ryane@gmail.com', '09214619385', 'kay', '$2y$10$SdK5B4o4h.12w6eGNp8RXOBYgmzSSnNERLw7eiECJRTuolp1KDU4K', 'Customer', 0, 'id5.png', 1, '2022-06-23 02:26:37'),
(18, '', '', 'Santos', 'Maria', 'Klorena', 'maeannee@gmail.com', '09214619385', 'mayan', '$2y$10$cSaomZ1H.ZyMdV/ZteZEU.ZPvxM1AtOn8rw2MY88IVLe8aAO/kTX6', 'Micro', 0, 'permit1.jpg', 1, '2022-06-23 02:29:50'),
(19, '', '', 'Placido', 'Franzell', 'Sales', 'franzelle@gmail.com', '09214619385', 'franzelle', '$2y$10$HqbuT1beMNvzUBe1mXZj..geWa2ueDDcKD/aHAi14IeQqdc5Du7YG', 'Customer', 0, 'id7.jpg', 1, '2022-06-24 01:43:20'),
(20, '', '', 'Reyes', 'Kate', 'Flores', 'kate@gmail.com', '09214619385', 'kate', '$2y$10$FV038JxT7Lq2bdNFCEebION5pcXXPKq3feOhc7/HIMLHuYji61wwy', 'Macro', 0, 'permit4.jpg', 1, '2022-06-24 01:47:50'),
(21, '', '', 'Caranza', 'Cherry', 'Sonas', 'cherry@gmail.com', '09214619385', 'cherry', '$2y$10$nkhz6zHvlXRkhy6epSj7vuiKPT8R49ZPuS0bDkZ4Nrvu.odeyxuoq', 'Customer', 0, 'id6.jpg', 2, '2022-06-24 02:48:46'),
(22, '', '', 'wdadw', 'awdwd', 'wadad', 'dwad@gmail.com', '09214619385', 'master', '$2y$10$1yF0cD/JhnhcMyruv5m9cetsVBwYZ0vn7umckwymx108eQDLAzduW', 'Customer', 0, 'license2.jpg', 1, '2022-06-24 08:34:51'),
(23, '', '', 'Pedro', 'Juan', 'Dela Cruz', 'juan@gmail.com', '09213849313', 'juan', '$2y$10$mby1yeQRHl14Ju4RKPFo2exAqhNguXyISMR9Q3hRG49Y5J31bhaAe', 'Customer', 0, 'UMID_EMV_sample.png', 1, '2022-10-01 02:39:42'),
(24, '', '', 'Ramos', 'Mari', 'Reyes', 'maria@gmail.com', '09213828374', 'maria', '$2y$10$ACb/Dpo/O.lVdMmHol4zOOXYRy8SkHoJ9HOX41MsFLHzCFHAh6CV2', 'Micro', 0, 'img_20191011_073704.jpg', 1, '2022-10-01 02:44:11'),
(25, '', '', 'Chan', 'Jackie', 'Torres', 'jackie@gmail.com', '09213456789', 'jackie', '$2y$10$Vh9Ejwm9bXhQkAJuhbwSSO2QKKuMYBr75oe3M8k9Xuby4Ue2.lW0m', 'Customer', 0, 'license1.jpg', 1, '2022-10-01 08:08:22'),
(28, '', '', 'Lacson', 'Ping', 'Marathon', 'ping@gmail.com', '09167762069', 'ping', '$2y$10$PqlwYnZynpl1zB1G6Jr5ieJIJxACEOG688IhasNOqJCMzHWmuHv/m', 'Micro', 0, 'permit3.jpg', 1, '2022-10-08 05:38:46'),
(32, '', '', 'starl', 'bryan', 'sorar', 'staff@email.com', '09123456789', 'sorar', '$2y$10$hGbwcn1JWPBKyLWcVcXRJukfAEZbvHnOUYQez.IjWBRlrhtHuM9AK', 'Customer', 0, '1000_F_183484490_GjRqLzGxKSKsXhvX0HSZ48dAv28Cbo6i.jpg', 1, '2022-10-20 03:40:33'),
(35, '1234567909', '', 'Santos', 'Jillian', 'Lopez', 'jillianlopez@gmail.com', '0912345789', 'jillian', '$2y$10$MxYXyzoaqtgiQg1npwFeouxZ9qaZ7gIV5FDUHVK/WcN/KXg.AZ/4a', 'Customer', 0, 'images_1667221822038.jpeg', 0, '2022-11-30 01:02:23'),
(36, '9999', '', 'Doe', 'John', 'F', 'd@d.com', '', 'joe', '$2y$10$8Om5PoB7sZBmKo2aLI4iHOxeVBHTko8vPfsV3nLBzdd81Tpm.FCaK', 'Customer', 0, 'cat.jpg', 0, '2022-12-05 09:34:18'),
(37, '9999', '', 'Doe', 'John', 'F', 'jedriesie@gmail.com', '', 'dj', '$2y$10$QNEMaQ3H87bo/mUgBCOmmeQtHFKO6TX/Bu7iuAbic25fOxES3WSTe', 'Customer', 0, 'cat.jpg', 0, '2022-12-05 09:41:11'),
(38, 'Abctest1234', '', 'Virtudazo', 'Louise', 'Test', 'louisevirtudazo@gmail.com', '09214376236', 'testuser', '$2y$10$8hOAvvkAUNeHcu0cMJHpRegVYbHZOYGUK672dAdHODnwVH6NgXRWW', 'Customer', 0, 'inbound4508353513020999282.jpg', 1, '2022-12-12 02:11:28'),
(39, 'Abc123test', '', 'TestMacro Lastname', 'TestMacro Firstname', 'TestMacro Middlename', 'TestMacro@test.com', '123456789', 'testmacro', '$2y$10$GSykYpaylykk/rO0ALGZXO3KSBhUtxksJaDEziMejsn9qYbeDAgJW', 'Macro', 0, 'Maroon and Green Greyscale Photo Basketball Stats UAAPNCAA Instagram Post.png', 1, '2022-12-12 02:19:52'),
(40, 'testmacro', '', 'testmacro', 'testmacro', 'testmacro', 'testmacro1@test.com', '1234567', 'testmacro', '$2y$10$p3aPsvRL5XcEvh9zUEZrGujRhG81xZgMwsARLwStjKh7kUlgo.NVm', 'Macro', 0, 'Maroon and Green Greyscale Photo Basketball Stats UAAPNCAA Instagram Post.png', 1, '2022-12-12 02:24:02'),
(41, 'Abc123test', '', 'testmicro', 'testmicro', 'testmicro', 'testmicro@test.com', '12345', 'testmicro', '$2y$10$.RVRbOuqtPJcUAGUDf4FMe7l4.IxGc4sWiW4f9B8sl/FZTTIeqC8e', 'Micro', 0, 'Maroon and Green Greyscale Photo Basketball Stats UAAPNCAA Instagram Post.png', 1, '2022-12-12 03:17:03'),
(42, 'customer', '', 'c', 'c', 'c', 'carbamark123@gmail.com', '+639471559441', 'customer', '$2y$10$XcKGv41U7wTv9TKWuRSTNOFH02vpVe.HA1Lz5JiRzMxQS/IERWRqm', 'Customer', 0, 'Capture.PNG', 1, '2022-12-15 09:34:50'),
(43, '123', '', 'macro', 'm', 'm', 'punkmakier18@gmail.com', '123', 'macro', '$2y$10$mTd8hDqdKVSh4INh5TiqbuZTBEffK0OfGbgpjIJjOYzsYpDMEfixW', 'Macro', 0, 'f.PNG', 1, '2022-12-15 09:48:35'),
(58, '1234567890', '', 'Bravo', 'Johny', 'Stephenson', 'johnybravo242@gmail.com', '09213847592', 'johnybravo242', '$2y$10$Db4xgDG1lc0Pfo9QqEJXwexiAMNsZFoDolQI/1lB5yOvWMPjJs38a', 'Customer', 0, 'id.jpg', 1, '2023-01-03 00:54:52'),
(59, '1234567899', '', 'Ramos', 'John David', 'Torres', 'edwardhusson@gmail.com', '09123456789', 'edward', '$2y$10$gS29xUJOICfhbYLvRqIAveoZsSSVAu.QVmaYSRuqcpm4GdmgqeXXa', 'Micro', 0, 'JTP_DTIdoc-1-579x1024.jpg', 1, '2023-01-07 05:50:25'),
(60, '1234567899', '', 'Dela Cruz', 'Juan', 'Jimenez', 'lorenzogiannigel@gmail.com', '09123456789', 'gian', '$2y$10$2pkYMNGi65KIUCb/mzpOvO7WOGYMLX/aYutwgKAK9WFAEkLUn/6B.', 'Customer', 0, 'philippine-drivers-license-5fc9f1eb3b9f9.jpg', 1, '2023-01-07 05:58:16'),
(61, 'D18-19-013985', '', 'Ramos', 'John Evan', 'Dasig', 'ramosjohnevan@gmail.com', '09760331404', 'jecjec16', '$2y$10$NhWQnrOmHm9zvxBzdymB/uta5U4W.xjXTjJ7iOkTsDp9soX4yXxVm', 'Customer', 0, 'image.jpg', 1, '2023-01-07 10:39:37'),
(62, '12345678910', '', 'Stone', 'Steven', 'Santos', 'stevenstone561@gmail.com', '09123456789', 'stevenstone', '$2y$10$kW9/hMYqJeoG4/bq9lPpTu7MBA6pPNCMtnesOi535V4y1taJ8siTa', 'Customer', 0, 'license1.jpg', 1, '2023-01-10 06:51:59'),
(63, 'NO3-12-123456', '', 'Corminal', 'Mary', 'Mendoza', 'corminalmary16@gmail.com', '09754571959', 'Aerie7481', '$2y$10$SBumRM4KDdKpUzpoDrqd5u4vx2FD1ppFoEuGBKjupqBawS5QQoFRW', 'Customer', 0, 'images (1).jpeg', 1, '2023-01-12 14:04:00'),
(64, '012-345-678', '', 'Evangelista ', 'Stella', 'Medina', 'stella@gmail.com', '09983916085', 'ninuninuni1', '$2y$10$pDnKf5p/dFPuPGFBNdG81uBRfhD8/m7mj/IhqEhf8OkYJ9ecB6rzO', 'Micro', 0, 'inbound9015248195236468714.jpg', 1, '2023-01-12 15:08:17'),
(65, '012-345-678', '', 'gosmo', 'angge', 'bacaycay', 'angee.gosmo7@gmail.com', '09983916085', 'ninuninuni1 ', '$2y$10$OqofOAnpa4Kbqnnkl3FoU.yRqphwt87YZSI0rnnGst/.0xkFvianC', 'Micro', 0, 'inbound8527072736735332433.jpg', 1, '2023-01-12 15:14:57'),
(66, '123456test', '', 'Carba', 'Mark Allan', 'Laranjo', 'carbamark1212@gmail.com', '+639471559441', 'macro', '$2y$10$0S9iO3.9rixH4MkZQrICruNoKg98iV0OUeMe0Mssy2zR4cEAlBZWi', 'Macro', 0, 'f.PNG', 1, '2023-01-14 04:05:51'),
(67, '53244', '', 'c', 'c', 'c', 'punkmakier19@gmail.com', '2525252', 'customer', '$2y$10$vZbQQU2C6J6m4suRH87U8eNG6YBpTPwuXF3Db41dLR8Gvyp5b0TEG', 'Customer', 0, 'Capture.PNG', 1, '2023-01-14 04:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `accounts_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `no_of_doors` int(11) NOT NULL,
  `fuel_tank_capacity` varchar(255) NOT NULL,
  `seating_capacity` varchar(255) NOT NULL,
  `transmission_type` varchar(255) NOT NULL,
  `gear_box` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `fuel_type` varchar(255) NOT NULL,
  `rulesandregulations` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `accounts_id`, `images`, `location`, `manufacturer`, `no_of_doors`, `fuel_tank_capacity`, `seating_capacity`, `transmission_type`, `gear_box`, `model`, `color`, `year`, `rate`, `fuel_type`, `rulesandregulations`, `date`) VALUES
(51, 16, 'images_1672743612977.jpeg', '', 'Toyota', 5, '35', '5', 'Automatic', '4', 'Wigo', 'Yellow', 2022, 1300, 'Gas', '<p>Never go to flooded areas</p>\r\n', '2023-01-04 09:00:06'),
(54, 16, 'viosblack.jfif', '', 'Toyota', 4, '35', '5', 'Automatic', '4', 'Vios', 'Black', 2019, 1800, 'Gas', '<p>Do not go to offroad</p>\r\n', '2023-01-07 04:49:49'),
(59, 59, 'mirageg4.jpg', '', 'Mitsubishi', 5, '35L', '5', 'Automatic', '4', 'Mirage G4', 'Red', 2018, 1100, 'Gas', '<p>No to humps</p>\r\n', '2023-01-10 11:15:30'),
(60, 59, 'almera.jpg', '', 'Nissan', 4, '35L', '5', 'Manual', '4', 'Almera', 'Silver', 2018, 1900, 'Gas', '<p>No to offroading</p>\r\n', '2023-01-10 12:00:46'),
(101, 8, 'h5r.jfif&mhgm.jfif&', '', 'Mitsubishi', 5, '20', '4', 'Manual', 'test', 'test', 'blue', 2020, 5500, 'Gas', '<p>test</p>\r\n', '2023-01-19 13:23:08'),
(102, 8, 'mhgm.jfif&cscs.jpg&asa.jfif&', '', 'Isuzu', 5, '30', '6', 'Manual', 'sdg', 'asd', 'asd', 2019, 6000, 'Gas', '<p>asdasd</p>\r\n', '2023-01-19 13:23:42'),
(103, 8, '1.png&', '', 'MG', 4, '30', '8', 'Manual', 'asd', 'asf', 'as', 2019, 7000, 'Gas', '<p>gsdgf</p>\r\n', '2023-01-19 13:24:15'),
(104, 8, '3.jfif&images.jfif&thumb_B33AE747-184C-4B10-8EEF-4CA4D29F14BA.jpg&bluecar.jpg&', '', 'Toyota', 4, '30', '4', 'Manual', 'asf', 'Vios', 'Red', 2020, 10000, 'Gas', '<p>treetestsrsrs</p>\r\n', '2023-01-19 13:26:20'),
(105, 8, 'Untitled.png&', 'Bacoor', 'Mitsubishi', 3, '4', '2', 'Manual', 'asf', 'sdf', 'sdf', 0, 24, 'Gas', '<p>sadfs</p>\r\n', '2023-01-24 13:32:02'),
(106, 8, 'h5r.jfif&mhgm.jfif&cscs.jpg&asa.jfif&', 'Tagaytay', 'Mitsubishi', 6, '30', '4', 'Manual', 'test', 'Test Model', 'blue', 2020, 12000, 'Gas', '<p>test test</p>\r\n', '2023-01-25 14:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `position` int(11) NOT NULL,
  `CustomerID` varchar(50) NOT NULL,
  `ChatStatus` int(5) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `reference`, `sender`, `receiver`, `message`, `position`, `CustomerID`, `ChatStatus`, `date`) VALUES
(304, 'ABC219972', 'Ansel John Alolod Reroma', 'Administrator', 'Thank you for contacting us. How may I help you?', 0, '7', 0, '2023-01-25 14:19:51'),
(305, 'ABC219972', 'Ansel John Alolod Reroma', 'Administrator', 'Hello admin', 1, '7', 1, '2023-01-25 14:20:01'),
(306, 'ABC219972', 'Ansel John Alolod Reroma', 'Administrator', 'cImg-bluecar.jpg', 1, '7', 0, '2023-01-25 14:20:09'),
(307, 'ABC219972', 'Administrator', 'Nick Liwag Hernandez', 'Hi, customer', 0, '', 0, '2023-01-25 14:20:56'),
(308, 'ABC219972', 'Administrator', 'Nick Liwag Hernandez', 'cImg-cscs.jpg', 0, '', 0, '2023-01-25 14:21:03'),
(309, 'ABC854599', 'Nick Liwag Hernandez', 'Administrator', 'Thank you for contacting us. How may I help you?', 0, '8', 0, '2023-01-25 14:25:05'),
(310, 'ABC854599', 'Nick Liwag Hernandez', 'Administrator', 'hello admin, this is owner', 1, '8', 0, '2023-01-25 14:25:14'),
(311, 'ABC854599', 'Nick Liwag Hernandez', 'Administrator', 'cImg-bluecar.jpg', 1, '8', 1, '2023-01-25 14:25:19'),
(312, 'ABC854599', 'Administrator', 'Nick Liwag Hernandez', 'hello, owner this is admin', 0, '', 0, '2023-01-25 14:25:54'),
(313, 'ABC854599', 'Administrator', 'Nick Liwag Hernandez', '', 0, '', 0, '2023-01-25 14:26:03'),
(314, 'ABC854599', 'Administrator', 'Nick Liwag Hernandez', 'cImg-Untitled.png', 0, '', 0, '2023-01-25 14:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `referenceNumber` varchar(500) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `subId` varchar(250) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `cellphone` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `c_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `AccountType` varchar(50) NOT NULL,
  `c_dayName` varchar(50) NOT NULL,
  `proof` text NOT NULL,
  `DateCreated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `referenceNumber`, `customer_id`, `subId`, `fullname`, `cellphone`, `amount`, `c_status`, `AccountType`, `c_dayName`, `proof`, `DateCreated`) VALUES
(33, '250 351 254319', '99999', '8', 'AJ Reroma', 'test', 500, 'Expired', 'Micro', 'Wednesday', 'cscs.jpg', '2022-12-21'),
(34, '539 435 423512', '10000', '', 'AJ Reroma', 'test', 1000, 'Expired', 'Macro', 'Wednesday', 'mbnm.jfif', '2023-01-25'),
(38, '900 731 699501', '8', '', 'asdas', 'asf', 1000, 'Pending', 'Macro', 'Wednesday', 'Untitled.png', '2023-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `editpage`
--

CREATE TABLE `editpage` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `editpage`
--

INSERT INTO `editpage` (`id`, `content`) VALUES
(1, '<h1><strong><em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rates so low, you won&rsquo;t think twice.</em></strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><em><cite>We ,&nbsp; at&nbsp; ABC&nbsp; Car&nbsp; Rental ,&nbsp; are&nbsp; committed&nbsp; in&nbsp; providing&nbsp; you&nbsp; excellent&nbsp; cheap&nbsp; van&nbsp; and&nbsp; car&nbsp; rental&nbsp; in&nbsp; Sampaloc&nbsp; V&nbsp; ,&nbsp; Bucal ,&nbsp; Dasmari&ntilde;as&nbsp; City ,&nbsp; Cavite ,&nbsp; Philippines .&nbsp; We&nbsp; provide&nbsp; you&nbsp; flexible&nbsp; offerings&nbsp; including&nbsp; transport&nbsp; services ,&nbsp; car&nbsp; rental ,&nbsp; van rentals ,&nbsp; long&nbsp; and&nbsp; short&nbsp; term&nbsp; leases .</cite></em></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;The demand from the general public and the continuous growth of population makes transportation difficult to find and scarce. This makes traveling to destinations difficult for everyone who needs it.&nbsp;The researchers came up with ways on how to improve even-handed by giving micro and macro car rental businesses an equal chance of gaining customers. A web-based system that will give fair and equity for Micro and Macro Car Rental businesses and can solve the unnecessary feeling of being left behind.</h2>\r\n'),
(2, '<h1><img alt=\"\" src=\"https://d3ggoe3aghc7um.cloudfront.net/uploads/vehicles/12/001_12_1576118914773_000.png\" style=\"height:330px; width:875px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h1>\r\n\r\n<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>&nbsp;Contact ABC</strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"font-style:italic\"><cite><em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</em></cite><em>&nbsp;Don&#39;t hesitate to message us if you have concerns, problems, or inquiries about Car Rentals.</em></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><strong><span class=\"marker\">Address:</span></strong> Sampaloc V, Bucal, Dasmarinas City, Cavite</h3>\r\n	</li>\r\n	<li>\r\n	<h3><strong><span class=\"marker\">Phone:</span> </strong>09675712345</h3>\r\n	</li>\r\n	<li>\r\n	<h3><strong><span class=\"marker\">Email:</span></strong> carrentalcavite@gmail.com</h3>\r\n	</li>\r\n</ul>\r\n'),
(3, '<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Frequently Asked Questions (FAQs)</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Q: What documents are needed for account registration?</strong></p>\r\n\r\n<p>A: For customers, a valid and not expired Philippine Driver&#39;s license is required. For Car owners, a business permit is required. Take note that there is an account verification for account registration.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Q: What should I do if I damage the car?</strong></p>\r\n\r\n<p>A: Any damage or scratches will be charged to the customer.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Q: What do I need to rent a car?</strong></p>\r\n\r\n<p>A: Each person who intends to drive must bring a valid driver&#39;s license to be able to rent.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Q:&nbsp;Can anyone besides the reservation applicant drive the car?</strong></p>\r\n\r\n<p>A: Yes, the person who&#39;s planning to drive the car must present valid driver&#39;s license within the day the car will be picked up.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Q:&nbsp;Can I cancel my reservation?</strong></p>\r\n\r\n<p>A: Yes, as long as the rental days has&#39;nt started yet.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Q: Medium for payment?</strong></p>\r\n\r\n<p>A: payment methods will temporarily be handled outside the system by third parties and this will be discussed with the help of the system&rsquo;s built-in chat support.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Q: Can I rent motorcycle?</strong></p>\r\n\r\n<p>A:it only oprovides services to car rental businesses offering 4 wheeled vechicles.</p>\r\n'),
(4, '<p><strong>Personal information and data used in the form will be handled in accordance with the Data Privacy Act of 2012 (DPA), its Implementing Rules and Regulations (IRR), and other relevant laws.</strong></p>\r\n\r\n<p>By filling up this form, I agree that the information provided with this form are true, complete, and accurate.</p>\r\n'),
(5, '<p><strong>Personal information and data used in the form will be handled in accordance with the Data Privacy Act of 2012 (DPA), its Implementing Rules and Regulations (IRR), and other relevant laws.</strong></p>\r\n\r\n<p>By filling up this form, I agree that the information provided with this form are true, complete, and accurate.</p>\r\n'),
(6, '<p><strong>Personal information and data used in the form will be handled in accordance with the Data Privacy Act of 2012 (DPA), its Implementing Rules and Regulations (IRR), and other relevant laws.</strong></p>\r\n\r\n<p>By filling up this form, I agree that the information provided with this form are true, complete, and accurate.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturer`, `logo`) VALUES
(1, 'Mitsubishi', ''),
(2, 'Honda', ''),
(3, 'Toyota', ''),
(4, 'Suzuki', ''),
(5, 'Isuzu', ''),
(6, 'Nissan', ''),
(7, 'Kia', ''),
(8, 'Hyundai', ''),
(9, 'Foton', ''),
(10, 'Chevrolet', ''),
(11, 'Mazda', ''),
(12, 'Ford', ''),
(13, 'MG', ''),
(14, 'Chery', ''),
(15, 'BMW', ''),
(16, 'Audi', ''),
(17, 'Geely', ''),
(18, 'Volvo', ''),
(19, 'Volkswagen', '');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `owners_id` int(11) NOT NULL,
  `cars_id` int(11) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `rate_per_day` int(11) NOT NULL,
  `days_rented` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `reason` longtext DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `dayName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `owners_id`, `cars_id`, `destination`, `purpose`, `from`, `to`, `rate_per_day`, `days_rented`, `total`, `reference`, `status`, `reason`, `date`, `dayName`) VALUES
(52, 42, 43, 44, 'Moalboal', 'Going home', '12/15/2022', '12/20/2022', 6100, 5, 30500, 'ABC614028', 'Approved', 'test', '2022-12-16 09:54:58', ''),
(53, 42, 43, 44, 'Moalboal', 'Travel', '12/15/2022', '12/19/2022', 6100, 5, 20000, 'ABC709852', 'Approved', NULL, '2022-12-16 16:00:00', ''),
(54, 47, 46, 46, 'Moalboal', 'Unwind', '12/28/2022', '12/31/2022', 9500, 4, 38000, 'ABC114914', 'Pending', NULL, '2022-12-28 12:33:16', ''),
(55, 47, 43, 44, 'Iloilo', 'Travelling', '12/28/2022', '12/30/2022', 6100, 3, 18300, 'ABC376492', 'Pending', NULL, '2022-12-28 12:47:06', ''),
(56, 47, 43, 45, 'Moalboal', 'TOR,Hon. Dismissal,Good Moral and I like to ask my NSTP Serial Num req. sch', '01/01/2023', '01/07/2023', 2500, 7, 17500, 'ABC692453', 'Pending', NULL, '2022-12-28 12:48:28', ''),
(57, 45, 46, 46, 'Moalboal', 'Travel', '01/15/2023', '01/18/2023', 9500, 4, 38000, 'ABC796139', 'Cancelled', 'just cancel', '2022-12-28 12:55:47', ''),
(58, 47, 46, 46, 'Moalboal', 'Travel', '01/01/2023', '01/03/2023', 9500, 3, 28500, 'ABC542379', 'Pending', NULL, '2022-12-29 09:19:21', ''),
(59, 47, 46, 46, 'Iloilo', 'Going home', '01/24/2023', '01/31/2023', 9500, 8, 76000, 'ABC268147', 'Pending', NULL, '2022-12-29 09:29:23', ''),
(60, 47, 46, 46, 'Iloilo', 'Going home', '12/29/2022', '12/31/2022', 9500, 3, 28500, 'ABC742038', 'Pending', NULL, '2022-12-29 09:29:51', ''),
(61, 47, 43, 44, 'Moalboal', 'Going home', '01/01/2023', '01/31/2023', 6100, 31, 189100, 'ABC645965', 'Pending', NULL, '2022-12-29 09:30:56', ''),
(62, 47, 46, 46, 'Moalboal', 'Going home', '01/04/2023', '01/23/2023', 9500, 20, 190000, 'ABC706413', 'Pending', NULL, '2022-12-29 09:44:23', ''),
(63, 47, 43, 45, 'Moalboal', 'Travel', '01/08/2023', '01/10/2023', 2500, 3, 7500, 'ABC692561', 'Pending', NULL, '2022-12-29 10:04:52', 'Thursday'),
(64, 47, 46, 46, 'Moalboal', 'Going home', '02/01/2023', '02/03/2023', 9500, 3, 28500, 'ABC951235', 'Approved', NULL, '2022-12-29 10:05:17', 'Thursday'),
(65, 60, 59, 55, 'Batangas', 'Swimming', '02/12/2023', '02/15/2023', 1500, 4, 6000, 'ABC899390', 'Approved', NULL, '2023-01-07 06:07:18', 'Saturday'),
(66, 60, 59, 55, 'Batangas', 'Swimming', '02/05/2023', '02/09/2023', 1500, 5, 7500, 'ABC463953', 'Approved', NULL, '2023-01-07 06:25:05', 'Saturday'),
(67, 60, 59, 55, 'Batangas', 'Swimming', '02/06/2023', '02/10/2023', 1500, 5, 7500, 'ABC469841', 'Pending', NULL, '2023-01-07 06:27:16', 'Saturday'),
(68, 61, 16, 51, 'Sm tagaytay', 'Road trip', '01/07/2023', '01/07/2023', 1500, 1, 1500, 'ABC675904', 'Approved', NULL, '2023-01-07 10:46:46', 'Saturday'),
(69, 58, 16, 52, 'Dasma', 'Outing ', '01/08/2023', '01/10/2023', 1100, 3, 3300, 'ABC680285', 'Pending', NULL, '2023-01-07 10:49:08', 'Saturday'),
(70, 58, 16, 52, 'Imus', 'Vacation', '02/15/2023', '02/18/2023', 1200, 4, 4800, 'ABC191133', 'Approved', NULL, '2023-01-09 00:07:31', 'Monday'),
(72, 13, 16, 52, 'Imus', 'Outing', '02/13/2023', '02/15/2023', 1200, 3, 3600, 'ABC745289', 'Pending', NULL, '2023-01-10 06:40:57', 'Tuesday'),
(73, 62, 59, 55, 'Batangas Calatagan', 'Thesis Celebration', '01/17/2023', '01/20/2023', 1500, 4, 6000, 'ABC928982', 'Approved', NULL, '2023-01-10 06:56:38', 'Tuesday'),
(88, 7, 59, 60, 'Iloilo', 'cgnfgn', '02/01/2023', '02/07/2023', 1900, 7, 13300, 'ABC751472', 'Pending', NULL, '2023-01-18 10:30:31', 'Wednesday'),
(94, 7, 8, 101, 'Moalboal', 'Going home', '01/19/2023', '01/21/2023', 5500, 3, 16500, 'ABC737725', 'Paid', 'drgdfgdfg', '2023-01-19 13:29:50', 'Thursday'),
(95, 7, 8, 104, 'Iloilo', 'asfasf', '01/20/2023', '01/23/2023', 10000, 4, 40000, 'ABC164418', 'Paid', 'Just cancel, this is test', '2023-01-20 11:20:27', 'Friday'),
(96, 7, 8, 103, 'Iloilo', 'TOR,Hon. Dismissal,Good Moral and I like to ask my NSTP Serial Num req. sch', '01/24/2023', '01/24/2023', 7000, 1, 7000, 'ABC925604', 'Disapproved', NULL, '2023-01-24 09:58:02', 'Tuesday'),
(97, 7, 8, 104, 'testtt', 'test', '01/25/2023', '01/25/2023', 10000, 1, 10000, 'ABC271177', 'Paid', NULL, '2023-01-25 10:02:08', 'Wednesday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editpage`
--
ALTER TABLE `editpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `editpage`
--
ALTER TABLE `editpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
