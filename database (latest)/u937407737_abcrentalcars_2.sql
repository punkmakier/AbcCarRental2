-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 06:24 AM
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
(22, '', '', 'wdadw', 'awdwd', 'wadad', 'dwad@gmail.com', '09214619385', 'master', '$2y$10$1yF0cD/JhnhcMyruv5m9cetsVBwYZ0vn7umckwymx108eQDLAzduW', 'Customer', 0, 'license2.jpg', 0, '2022-06-24 08:34:51'),
(23, '', '', 'Pedro', 'Juan', 'Dela Cruz', 'juan@gmail.com', '09213849313', 'juan', '$2y$10$mby1yeQRHl14Ju4RKPFo2exAqhNguXyISMR9Q3hRG49Y5J31bhaAe', 'Customer', 0, 'UMID_EMV_sample.png', 1, '2022-10-01 02:39:42'),
(24, '', '', 'Ramos', 'Mari', 'Reyes', 'maria@gmail.com', '09213828374', 'maria', '$2y$10$ACb/Dpo/O.lVdMmHol4zOOXYRy8SkHoJ9HOX41MsFLHzCFHAh6CV2', 'Micro', 0, 'img_20191011_073704.jpg', 1, '2022-10-01 02:44:11'),
(25, '', '', 'Chan', 'Jackie', 'Torres', 'jackie@gmail.com', '09213456789', 'jackie', '$2y$10$Vh9Ejwm9bXhQkAJuhbwSSO2QKKuMYBr75oe3M8k9Xuby4Ue2.lW0m', 'Customer', 0, 'license1.jpg', 1, '2022-10-01 08:08:22'),
(28, '', '', 'Lacson', 'Ping', 'Marathon', 'ping@gmail.com', '09167762069', 'ping', '$2y$10$PqlwYnZynpl1zB1G6Jr5ieJIJxACEOG688IhasNOqJCMzHWmuHv/m', 'Micro', 0, 'permit3.jpg', 0, '2022-10-08 05:38:46'),
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

INSERT INTO `cars` (`id`, `accounts_id`, `images`, `manufacturer`, `no_of_doors`, `fuel_tank_capacity`, `seating_capacity`, `transmission_type`, `gear_box`, `model`, `color`, `year`, `rate`, `fuel_type`, `rulesandregulations`, `date`) VALUES
(51, 16, 'images_1672743612977.jpeg', 'Toyota', 5, '35', '5', 'Automatic', '4', 'Wigo', 'Yellow', 2022, 1300, 'Gas', '<p>Never go to flooded areas</p>\r\n', '2023-01-04 09:00:06'),
(54, 16, 'viosblack.jfif', 'Toyota', 4, '35', '5', 'Automatic', '4', 'Vios', 'Black', 2019, 1800, 'Gas', '<p>Do not go to offroad</p>\r\n', '2023-01-07 04:49:49'),
(59, 59, 'mirageg4.jpg', 'Mitsubishi', 5, '35L', '5', 'Automatic', '4', 'Mirage G4', 'Red', 2018, 1100, 'Gas', '<p>No to humps</p>\r\n', '2023-01-10 11:15:30'),
(60, 59, 'almera.jpg', 'Nissan', 4, '35L', '5', 'Manual', '4', 'Almera', 'Silver', 2018, 1900, 'Gas', '<p>No to offroading</p>\r\n', '2023-01-10 12:00:46'),
(101, 8, 'h5r.jfif&mhgm.jfif&', 'Mitsubishi', 5, '20', '4', 'Manual', 'test', 'test', 'blue', 2020, 5500, 'Gas', '<p>test</p>\r\n', '2023-01-19 13:23:08'),
(102, 8, 'mhgm.jfif&cscs.jpg&asa.jfif&', 'Isuzu', 5, '30', '6', 'Manual', 'sdg', 'asd', 'asd', 2019, 6000, 'Gas', '<p>asdasd</p>\r\n', '2023-01-19 13:23:42'),
(103, 8, '1.png&', 'MG', 4, '30', '8', 'Manual', 'asd', 'asf', 'as', 2019, 7000, 'Gas', '<p>gsdgf</p>\r\n', '2023-01-19 13:24:15'),
(104, 8, '3.jfif&images.jfif&thumb_B33AE747-184C-4B10-8EEF-4CA4D29F14BA.jpg&bluecar.jpg&', 'Mitsubishi', 4, '30', '4', 'Manual', 'asf', 'Cars', 'Red', 2020, 10000, 'Gas', '<p>treetestsrsrs</p>\r\n', '2023-01-19 13:26:20');

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
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `reference`, `sender`, `receiver`, `message`, `position`, `date`) VALUES
(1, 'ADL541944', 'John David Lozano', 'David James Sadia Lozano', 'Thank you for your reservation. Your reference code is ADL541944', 0, '2022-06-16 08:43:29'),
(8, 'ADL541944', 'David James Sadia Lozano', 'John David Lozano', 'zxczxc23213', 1, '2022-06-16 09:15:43'),
(9, 'ADL541944', 'David James Sadia Lozano', 'John David Lozano', 'This is it', 1, '2022-06-16 09:15:53'),
(10, 'ADL806694', 'David James Sadia Lozano', 'John David Lozano', 'Hello', 1, '2022-06-16 09:16:10'),
(11, 'ADL113174', 'John David Lozano', 'David James Sadia Lozano', 'Thank you for your reservation. Your reference code is ADL113174', 0, '2022-06-16 09:57:17'),
(12, 'ADL820584', 'John David Lozano', 'David James Sadia Lozano', 'Thank you for your reservation. Your reference code is ADL820584', 0, '2022-06-16 11:10:53'),
(13, 'ADL820584', 'John David Lozano2', 'John David Lozano', 'this is great', 1, '2022-06-16 11:46:24'),
(14, 'ADL820584', 'John David Lozano', 'John David Lozano', 'zxczxc', 0, '2022-06-16 11:54:25'),
(15, 'ADL820584', 'John David Lozano2', 'John David Lozano', '1231231231', 1, '2022-06-16 11:54:47'),
(16, 'ADL820584', 'John David Lozano', 'John David Lozano', 'Hello world', 0, '2022-06-16 12:03:50'),
(17, 'ADL820584', 'John David Lozano', 'John David Lozano', 'test', 0, '2022-06-16 12:04:12'),
(18, 'ADL820584', 'John David Lozano', 'John David Lozano', 'zxc', 0, '2022-06-16 12:21:48'),
(19, 'ADL724204', 'Nick Liwag Hernandez', 'Gian Pasusani Lorenzo', 'Thank you for your reservation. Your reference code is ADL724204', 0, '2022-06-22 02:15:46'),
(20, 'ADL724204', 'Gian Pasusani Lorenzo', 'Nick Liwag Hernandez', 'fsdfsdf', 1, '2022-06-22 02:16:03'),
(21, 'ADL724204', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'reter', 0, '2022-06-22 02:16:38'),
(22, 'ADL724204', 'Gian Pasusani Lorenzo', 'Nick Liwag Hernandez', 'hiii', 1, '2022-06-22 02:41:40'),
(23, 'ADL677815', 'Nick Liwag Hernandez', 'Calixto Olaaga Olago', 'Thank you for your reservation. Your reference code is ADL677815', 0, '2022-06-22 03:12:24'),
(24, 'ADL677815', 'Calixto Olaaga Olago', 'Nick Liwag Hernandez', 'hoy', 1, '2022-06-22 03:13:02'),
(25, 'ADL677815', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'hoy ka rin', 0, '2022-06-22 03:13:15'),
(26, 'ADL632685', 'Mary Marife Gagala', 'Joey Benitez Vergom', 'Thank you for your reservation. Your reference code is ADL632685', 0, '2022-06-22 03:25:42'),
(27, 'ADL632685', 'Joey Benitez Vergom', 'Mary Marife Gagala', 'Hi\r\n', 1, '2022-06-22 03:26:15'),
(28, 'ADL632685', 'Joey Benitez Vergom', 'Mary Marife Gagala', 'Hello', 1, '2022-06-22 03:26:23'),
(29, 'ADL632685', 'Mary Marife Gagala', 'Mary Marife Gagala', 'Thank you!', 0, '2022-06-22 03:26:32'),
(30, 'ADL632685', 'Joey Benitez Vergom', 'Mary Marife Gagala', 'I want to cancel', 1, '2022-06-22 03:27:02'),
(31, 'ADL632685', 'Mary Marife Gagala', 'Mary Marife Gagala', 'Okay Sir', 0, '2022-06-22 03:27:22'),
(32, 'ADL936555', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL936555', 0, '2022-06-22 10:32:22'),
(33, 'ADL632685', 'Mary Stephanie Roxas Ramos', 'Mary Stephanie Roxas Ramos', 'Hello', 0, '2022-06-22 12:55:36'),
(34, 'ADL995144', 'John Mark Lozano Reyes', 'Maria Francheska Divina Divina', 'Thank you for your reservation. Your reference code is ADL995144', 0, '2022-06-22 15:33:14'),
(35, 'ADL995144', 'Maria Francheska Divina Divina', 'John Mark Lozano Reyes', 'Hello', 1, '2022-06-22 15:34:26'),
(36, 'ADL995144', 'John Mark Lozano Reyes', 'John Mark Lozano Reyes', 'Hi', 0, '2022-06-22 15:34:37'),
(37, 'ADL995144', 'Maria Francheska Divina Divina', 'John Mark Lozano Reyes', 'can I pay in Gcash?', 1, '2022-06-22 15:35:45'),
(38, 'ADL195844', 'Maria Klorena Santos', 'Keane Ryane Manalad', 'Thank you for your reservation. Your reference code is ADL195844', 0, '2022-06-23 02:33:13'),
(39, 'ADL195844', 'Keane Ryane Manalad', 'Maria Klorena Santos', 'Hello Sir', 1, '2022-06-23 02:33:36'),
(40, 'ADL195844', 'Maria Klorena Santos', 'Maria Klorena Santos', 'Hi', 0, '2022-06-23 02:33:45'),
(41, 'ADL555308', 'Mae Ann Laguna Magsaysay', 'Keane Ryane Manalad', 'Thank you for your reservation. Your reference code is ADL555308', 0, '2022-06-23 02:55:24'),
(42, 'ADL755330', 'Mae Ann Laguna Magsaysay', 'Franzell Sales Placido', 'Thank you for your reservation. Your reference code is ADL755330', 0, '2022-06-24 02:26:27'),
(43, 'ADL755330', 'Mae Ann Laguna Magsaysay', 'Mae Ann Laguna Magsaysay', 'Hi', 0, '2022-06-24 02:26:54'),
(44, 'ADL755330', 'Franzell Sales Placido', 'Mae Ann Laguna Magsaysay', 'Hi\r\n', 1, '2022-06-24 02:26:59'),
(45, 'ADL161130', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL161130', 0, '2022-06-24 03:37:43'),
(46, 'ADL611690', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL611690', 0, '2022-06-24 03:38:05'),
(47, 'ADL662072', 'Johny Stephenson Bravo', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL662072', 0, '2022-06-24 03:39:43'),
(48, 'ADL613241', 'Mae Ann Laguna Magsaysay', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL613241', 0, '2022-06-24 03:45:24'),
(49, 'ADL545026', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL545026', 0, '2022-06-24 03:46:05'),
(50, 'ADL931135', 'Mae Ann Laguna Magsaysay', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL931135', 0, '2022-06-24 04:01:11'),
(51, 'ADL118638', 'Maria Klorena Santos', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL118638', 0, '2022-06-24 04:04:34'),
(52, '36400', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is 36400', 0, '2022-06-24 04:08:56'),
(53, '100100', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is 100100', 0, '2022-06-24 04:09:11'),
(54, '22000', 'Mary Stephanie Roxas Ramos', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is 22000', 0, '2022-06-24 04:10:26'),
(55, 'ADL620696', 'Maria Klorena Santos', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ADL620696', 0, '2022-06-24 04:10:46'),
(56, 'ADL791758', 'Mae Ann Laguna Magsaysay', 'Juan Dela Cruz Pedro', 'Thank you for your reservation. Your reference code is ADL791758', 0, '2022-10-01 02:46:56'),
(57, 'ADL791758', 'Juan Dela Cruz Pedro', 'Mae Ann Laguna Magsaysay', 'Thank you', 1, '2022-10-01 02:49:37'),
(58, 'ADL791758', 'Mae Ann Laguna Magsaysay', 'Mae Ann Laguna Magsaysay', 'Ok', 0, '2022-10-01 02:49:44'),
(59, 'ADL490889', 'Nick Liwag Hernandez', 'Jackie Torres Chan', 'Thank you for your reservation. Your reference code is ADL490889', 0, '2022-10-01 08:11:34'),
(60, 'ADL440110', 'Nick Liwag Hernandez', 'Jackie Torres Chan', 'Thank you for your reservation. Your reference code is ADL440110', 0, '2022-10-01 08:13:19'),
(61, 'ADL543034', 'Nick Liwag Hernandez', 'bryan sorar starl', 'Thank you for your reservation. Your reference code is ADL543034', 0, '2022-11-10 04:48:46'),
(62, 'ADL548164', 'Nick Liwag Hernandez', 'bryan sorar starl', 'Thank you for your reservation. Your reference code is ADL548164', 0, '2022-11-10 04:57:20'),
(63, 'ADL171682', 'Nick Liwag Hernandez', 'bryan sorar starl', 'Thank you for your reservation. Your reference code is ADL171682', 0, '2022-11-10 04:59:27'),
(64, 'ADL288334', 'Nick Liwag Hernandez', 'bryan sorar starl', 'Thank you for your reservation. Your reference code is ADL288334', 0, '2022-11-10 05:02:33'),
(65, 'ADL889514', 'Nick Liwag Hernandez', 'bryan sorar starl', 'Thank you for your reservation. Your reference code is ADL889514', 0, '2022-11-10 05:05:39'),
(66, 'ADL691198', 'Nick Liwag Hernandez', 'bryan sorar starl', 'Thank you for your reservation. Your reference code is ADL691198', 0, '2022-11-10 05:11:42'),
(67, 'ADL978939', 'Nick Liwag Hernandez', 'bryan sorar starl', 'Thank you for your reservation. Your reference code is ADL978939', 0, '2022-11-10 05:13:58'),
(68, 'ADL519484', 'Nick Liwag Hernandez', 'Raven Faith Santos Ricardo', 'Thank you for your reservation. Your reference code is ADL519484', 0, '2022-11-17 00:25:48'),
(69, 'ADL641488', 'Nick Liwag Hernandez', 'Raven Faith Santos Ricardo', 'Thank you for your reservation. Your reference code is ADL641488', 0, '2022-12-08 10:43:04'),
(70, 'ABC344946', 'Nick Liwag Hernandez', 'Raven Faith Santos Ricardo', 'Thank you for your reservation. Your reference code is ABC344946', 0, '2022-12-08 15:17:21'),
(71, 'ABC996649', 'Nick Liwag Hernandez', 'Raven Faith Santos Ricardo', 'Thank you for your reservation. Your reference code is ABC996649', 0, '2022-12-08 15:38:46'),
(72, 'ABC970222', 'Mae Ann Laguna Magsaysay', 'Louise Test Virtudazo', 'Thank you for your reservation. Your reference code is ABC970222', 0, '2022-12-12 02:17:37'),
(73, 'ABC970222', 'Louise Test Virtudazo', 'Mae Ann Laguna Magsaysay', 'Test Chat', 1, '2022-12-12 02:18:09'),
(74, 'ABC576494', 'testmicro testmicro testmicro', 'Louise Test Virtudazo', 'Thank you for your reservation. Your reference code is ABC576494', 0, '2022-12-12 03:20:11'),
(75, 'ABC244600', 'Nick Liwag Hernandez', 'c c c', 'Thank you for your reservation. Your reference code is ABC244600', 0, '2022-12-15 09:45:00'),
(76, 'ABC614028', 'm m macro', 'c c c', 'Thank you for your reservation. Your reference code is ABC614028', 0, '2022-12-15 09:54:58'),
(77, 'ABC614028', 'm m macro', 'm m macro', 'Hi', 0, '2022-12-15 09:55:48'),
(78, 'ABC614028', 'c c c', 'm m macro', 'hello', 1, '2022-12-15 09:56:01'),
(79, 'ABC709852', 'm m macro', 'c c c', 'Thank you for your reservation. Your reference code is ABC709852', 0, '2022-12-15 10:27:30'),
(80, 'ABC114914', 'Aj Sample Reroma', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC114914', 0, '2022-12-28 12:33:16'),
(81, 'ABC376492', 'm m macro', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC376492', 0, '2022-12-28 12:47:06'),
(82, 'ABC692453', 'm m macro', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC692453', 0, '2022-12-28 12:48:28'),
(83, 'ABC796139', 'Aj Sample Reroma', 's s s', 'Thank you for your reservation. Your reference code is ABC796139', 0, '2022-12-28 12:55:47'),
(84, 'ABC542379', 'Aj Sample Reroma', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC542379', 0, '2022-12-29 09:19:21'),
(85, 'ABC268147', 'Aj Sample Reroma', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC268147', 0, '2022-12-29 09:29:23'),
(86, 'ABC742038', 'Aj Sample Reroma', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC742038', 0, '2022-12-29 09:29:51'),
(87, 'ABC645965', 'm m macro', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC645965', 0, '2022-12-29 09:30:56'),
(88, 'ABC706413', 'Aj Sample Reroma', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC706413', 0, '2022-12-29 09:44:23'),
(89, 'ABC692561', 'm m macro', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC692561', 0, '2022-12-29 10:04:52'),
(90, 'ABC951235', 'Aj Sample Reroma', 'TestCustomer T Ctest', 'Thank you for your reservation. Your reference code is ABC951235', 0, '2022-12-29 10:05:17'),
(91, 'ABC899390', 'John David Torres Ramos', 'Juan Jimenez Dela Cruz', 'Thank you for your reservation. Your reference code is ABC899390', 0, '2023-01-07 06:07:18'),
(92, 'ABC899390', 'John David Torres Ramos', 'John David Torres Ramos', 'Hello', 0, '2023-01-07 06:08:19'),
(93, 'ABC899390', 'Juan Jimenez Dela Cruz', 'John David Torres Ramos', 'K.', 1, '2023-01-07 06:08:39'),
(94, 'ABC463953', 'John David Torres Ramos', 'Juan Jimenez Dela Cruz', 'Thank you for your reservation. Your reference code is ABC463953', 0, '2023-01-07 06:25:05'),
(95, 'ABC469841', 'John David Torres Ramos', 'Juan Jimenez Dela Cruz', 'Thank you for your reservation. Your reference code is ABC469841', 0, '2023-01-07 06:27:16'),
(96, 'ABC675904', 'Mae Ann Laguna Magsaysay', 'John Evan Dasig Ramos', 'Thank you for your reservation. Your reference code is ABC675904', 0, '2023-01-07 10:46:46'),
(97, 'ABC675904', 'Mae Ann Laguna Magsaysay', 'Mae Ann Laguna Magsaysay', 'Salamat sa pag rent idol', 0, '2023-01-07 10:48:15'),
(98, 'ABC680285', 'Mae Ann Laguna Magsaysay', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC680285', 0, '2023-01-07 10:49:08'),
(99, 'ABC675904', 'John Evan Dasig Ramos', 'Mae Ann Laguna Magsaysay', 'Idol talaga', 1, '2023-01-07 10:50:40'),
(100, 'ABC675904', 'John Evan Dasig Ramos', 'Mae Ann Laguna Magsaysay', 'Idol talaga', 1, '2023-01-07 10:50:40'),
(101, 'ABC675904', 'John Evan Dasig Ramos', 'Mae Ann Laguna Magsaysay', 'Kanino tong wigo? HAHAHAHA', 1, '2023-01-07 10:50:47'),
(102, 'ABC675904', 'Mae Ann Laguna Magsaysay', 'Mae Ann Laguna Magsaysay', 'Sa amin', 0, '2023-01-07 10:50:55'),
(103, 'ABC675904', 'Mae Ann Laguna Magsaysay', 'Mae Ann Laguna Magsaysay', 'may bago kaming wigo', 0, '2023-01-07 10:51:03'),
(104, 'ABC191133', 'Mae Ann Laguna Magsaysay', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC191133', 0, '2023-01-09 00:07:31'),
(105, 'ABC879071', 'Nick Liwag Hernandez', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC879071', 0, '2023-01-10 06:39:22'),
(106, 'ABC745289', 'Mae Ann Laguna Magsaysay', 'Jillian Marie Lopez Santos', 'Thank you for your reservation. Your reference code is ABC745289', 0, '2023-01-10 06:40:57'),
(107, 'ABC928982', 'John David Torres Ramos', 'Steven Santos Stone', 'Thank you for your reservation. Your reference code is ABC928982', 0, '2023-01-10 06:56:38'),
(108, 'ABC928982', 'John David Torres Ramos', 'John David Torres Ramos', 'Hello', 0, '2023-01-10 06:59:31'),
(109, 'ABC928982', 'Steven Santos Stone', 'John David Torres Ramos', 'How much', 1, '2023-01-10 06:59:43'),
(110, 'ABC928982', 'John David Torres Ramos', 'John David Torres Ramos', '5k hahaha', 0, '2023-01-10 07:00:00'),
(111, 'ABC477628', 'Nick Liwag Hernandez', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC477628', 0, '2023-01-12 11:24:02'),
(112, 'ABC691249', 'Nick Liwag Hernandez', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC691249', 0, '2023-01-12 11:34:21'),
(113, 'ABC704314', 'Nick Liwag Hernandez', 'Mary Mendoza Corminal', 'Thank you for your reservation. Your reference code is ABC704314', 0, '2023-01-12 14:46:24'),
(114, 'ABC704314', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'Yang', 0, '2023-01-12 14:48:56'),
(115, 'ABC267402', 'Nick Liwag Hernandez', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC267402', 0, '2023-01-12 14:49:19'),
(116, 'ABC566260', 'Nick Liwag Hernandez', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC566260', 0, '2023-01-12 14:50:59'),
(117, 'ABC917923', 'Nick Liwag Hernandez', 'Johny Stephenson Bravo', 'Thank you for your reservation. Your reference code is ABC917923', 0, '2023-01-12 14:52:42'),
(118, 'ABC704314', 'Mary Mendoza Corminal', 'Nick Liwag Hernandez', 'Ahh hakdog..', 1, '2023-01-12 14:55:39'),
(119, 'ABC359412', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC359412', 0, '2023-01-14 03:41:23'),
(120, 'ABC631756', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC631756', 0, '2023-01-14 04:26:13'),
(121, 'ABC433118', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC433118', 0, '2023-01-14 04:42:14'),
(122, 'ABC898248', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC898248', 0, '2023-01-14 08:28:55'),
(123, 'ABC719853', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC719853', 0, '2023-01-14 08:29:45'),
(124, 'ABC124152', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC124152', 0, '2023-01-14 08:32:18'),
(125, 'ABC708245', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC708245', 0, '2023-01-14 08:34:35'),
(126, 'ABC751472', 'John David Torres Ramos', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC751472', 0, '2023-01-18 10:31:05'),
(127, 'ABC595767', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC595767', 0, '2023-01-18 10:32:39'),
(128, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cvbcvbcvb', 1, '2023-01-18 10:33:54'),
(129, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cvbcvb', 0, '2023-01-18 10:34:01'),
(130, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'bvnvn', 1, '2023-01-18 10:34:06'),
(184, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-', 0, '2023-01-18 12:29:16'),
(185, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'dfgdfg', 1, '2023-01-18 12:31:27'),
(186, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'wewewew', 1, '2023-01-18 12:31:31'),
(187, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:31:40'),
(188, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:33:15'),
(189, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:33:26'),
(190, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:33:32'),
(191, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:33:59'),
(192, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 's', 1, '2023-01-18 12:34:47'),
(193, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:34:51'),
(194, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:35:27'),
(195, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:35:40'),
(196, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'asdasdasd', 1, '2023-01-18 12:37:08'),
(197, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:37:12'),
(198, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:37:49'),
(199, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:39:20'),
(200, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'fghfgkjfgj', 1, '2023-01-18 12:39:24'),
(201, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'asdasd', 1, '2023-01-18 12:40:13'),
(202, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'adfsdf', 1, '2023-01-18 12:40:32'),
(203, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'adfsdf', 1, '2023-01-18 12:40:57'),
(204, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'hello', 1, '2023-01-18 12:41:19'),
(205, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:41:24'),
(206, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'vcdsvsdv', 1, '2023-01-18 12:42:09'),
(207, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:42:13'),
(208, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'asdasd', 1, '2023-01-18 12:43:03'),
(209, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'sdcs', 1, '2023-01-18 12:43:06'),
(210, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:43:11'),
(211, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', '', 1, '2023-01-18 12:43:18'),
(212, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'helloasdascx', 1, '2023-01-18 12:48:36'),
(213, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-bluecar.jpg', 1, '2023-01-18 12:48:42'),
(214, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-bluecar.jpg', 1, '2023-01-18 12:49:03'),
(215, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'hiii', 1, '2023-01-18 12:49:18'),
(216, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'yess?', 0, '2023-01-18 12:50:25'),
(217, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-thumb_B33AE747-184C-4B10-8EEF-4CA4D29F14BA.jpg', 0, '2023-01-18 12:50:34'),
(218, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-bluecar.jpg', 0, '2023-01-18 12:50:40'),
(219, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-3.jfif', 0, '2023-01-18 12:51:05'),
(220, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-f.PNG', 0, '2023-01-18 12:51:15'),
(221, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-asa.jfif', 1, '2023-01-18 12:51:55'),
(222, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-cscs.jpg', 0, '2023-01-18 12:52:12'),
(223, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-1.png', 0, '2023-01-18 12:52:22'),
(224, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-1.png', 1, '2023-01-18 12:53:40'),
(225, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-Untitled.png', 0, '2023-01-18 12:53:59'),
(226, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-Untitled.png', 1, '2023-01-18 12:54:05'),
(227, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-cscs.jpg', 1, '2023-01-18 12:54:23'),
(228, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-thumb_B33AE747-184C-4B10-8EEF-4CA4D29F14BA.jpg', 1, '2023-01-18 12:54:39'),
(229, 'ABC595767', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-images.jfif', 1, '2023-01-18 12:54:51'),
(230, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-images.jfif', 0, '2023-01-18 12:55:34'),
(231, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-mhgm.jfif', 0, '2023-01-18 12:55:56'),
(232, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-mhgm.jfif', 0, '2023-01-18 12:56:23'),
(233, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-mbnm.jfif', 0, '2023-01-18 12:57:00'),
(234, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-h5r.jfif', 0, '2023-01-18 12:57:19'),
(235, 'ABC595767', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'hrhrhrhr', 0, '2023-01-18 12:57:35'),
(236, 'ABC684125', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC684125', 0, '2023-01-19 12:35:45'),
(237, 'ABC684125', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'hiii', 0, '2023-01-19 12:37:23'),
(238, 'ABC684125', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'ad', 1, '2023-01-19 12:37:38'),
(239, 'ABC684125', 'Ansel John Alolod Reroma', 'Nick Liwag Hernandez', 'cImg-1.png', 1, '2023-01-19 12:38:00'),
(240, 'ABC684125', 'Nick Liwag Hernandez', 'Nick Liwag Hernandez', 'cImg-h5r.jfif', 0, '2023-01-19 12:38:16'),
(241, 'ABC713821', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC713821', 0, '2023-01-19 12:39:38'),
(242, 'ABC608213', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC608213', 0, '2023-01-19 12:47:59'),
(243, 'ABC886295', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC886295', 0, '2023-01-19 12:51:14'),
(244, 'ABC737725', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC737725', 0, '2023-01-19 13:29:53'),
(245, 'ABC164418', 'Nick Liwag Hernandez', 'Ansel John Alolod Reroma', 'Thank you for your reservation. Your reference code is ABC164418', 0, '2023-01-20 11:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `cellphone` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `c_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `c_dayName` varchar(50) NOT NULL,
  `proof` text NOT NULL,
  `DateCreated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `customer_id`, `fullname`, `cellphone`, `amount`, `c_status`, `c_dayName`, `proof`, `DateCreated`) VALUES
(17, '8', 'AJ Reroma', '09156415411', 1000, 'Success', 'Saturday', '1.png', '2023-01-21');

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
(95, 7, 8, 104, 'Iloilo', 'asfasf', '01/20/2023', '01/23/2023', 10000, 4, 40000, 'ABC164418', 'Paid', 'Just cancel, this is test', '2023-01-20 11:20:27', 'Friday');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
