-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 06:47 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `bankid` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(5) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `state_id` int(2) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`, `state`) VALUES
(1, 'Port Blair', 1, 'Andaman and Nicobar Islands'),
(2, 'Anantapur', 2, 'Andhra Pradesh'),
(3, 'Eluru', 2, 'Andhra Pradesh'),
(4, 'Guntur', 2, 'Andhra Pradesh'),
(5, 'Hyderabad', 2, 'Andhra Pradesh'),
(6, 'Kakinada', 2, 'Andhra Pradesh'),
(8, 'Karnul', 2, 'Andhra Pradesh'),
(9, 'Khammam', 2, 'Andhra Pradesh'),
(10, 'Machilipatnam', 2, 'Andhra Pradesh'),
(13, 'Nellur', 2, 'Andhra Pradesh'),
(14, 'Nizamabad', 2, 'Andhra Pradesh'),
(16, 'Proddatur', 2, 'Andhra Pradesh'),
(17, 'Rajamahendri', 2, 'Andhra Pradesh'),
(18, 'Sikandarabad', 2, 'Andhra Pradesh'),
(19, 'Tirupati', 2, 'Andhra Pradesh'),
(20, 'Vijayawada', 2, 'Andhra Pradesh'),
(21, 'Visakhapatnam', 2, 'Andhra Pradesh'),
(22, 'Vizianagaram', 2, 'Andhra Pradesh'),
(23, 'Warangal', 2, 'Andhra Pradesh'),
(24, 'Itanagar', 3, 'Arunachal Pradesh'),
(25, 'Bongaigaon', 4, 'Assam'),
(26, 'Dibrugarh', 4, 'Assam'),
(27, 'Guwahati', 4, 'Assam'),
(28, 'Jorhat', 4, 'Assam'),
(29, 'Nagaon', 4, 'Assam'),
(30, 'Silchar', 4, 'Assam'),
(31, 'Asansol', 5, 'West Bengal'),
(32, 'Baharampur', 5, 'West Bengal'),
(33, 'Barddhaman', 5, 'West Bengal'),
(35, 'Durgapur', 5, 'West Bengal'),
(36, 'Ghatal', 5, 'West Bengal'),
(37, 'Gopalpur', 5, 'West Bengal'),
(39, 'Kharagpur', 5, 'West Bengal'),
(40, 'Puruliya', 5, 'West Bengal'),
(41, 'Raiganj', 5, 'West Bengal'),
(42, 'Ranaghat', 5, 'West Bengal'),
(43, 'Shiliguri', 5, 'West Bengal'),
(44, 'UttarparaKotrung', 5, 'West Bengal'),
(45, 'Arrah', 6, 'Bihar'),
(46, 'Aurangabad', 6, 'Bihar'),
(47, 'Begusarai', 6, 'Bihar'),
(48, 'Bettiah', 6, 'Bihar'),
(49, 'Bhabua', 6, 'Bihar'),
(50, 'Bhagalpur', 6, 'Bihar'),
(51, 'Buxar', 6, 'Bihar'),
(52, 'Chhapra', 6, 'Bihar'),
(53, 'Darbhanga', 6, 'Bihar'),
(54, 'Dehri', 6, 'Bihar'),
(55, 'Gaya', 6, 'Bihar'),
(56, 'Hajipur', 6, 'Bihar'),
(57, 'Jamalpur', 6, 'Bihar'),
(58, 'Katihar', 6, 'Bihar'),
(59, 'Kishanganj', 6, 'Bihar'),
(60, 'Madhubani', 6, 'Bihar'),
(61, 'Motihari', 6, 'Bihar'),
(62, 'Munger', 6, 'Bihar'),
(63, 'Muzaffarpur', 6, 'Bihar'),
(64, 'Nawada', 6, 'Bihar'),
(65, 'Patna', 6, 'Bihar'),
(66, 'Phulwari', 6, 'Bihar'),
(67, 'Purnia', 6, 'Bihar'),
(68, 'Saharsa', 6, 'Bihar'),
(69, 'Samastipur', 6, 'Bihar'),
(70, 'Sasaram', 6, 'Bihar'),
(71, 'Sitamarhi', 6, 'Bihar'),
(72, 'Siwan', 6, 'Bihar'),
(73, 'Chandigarh', 7, 'Chandigarh'),
(74, 'Ambikapur', 8, 'Chhattisgarh'),
(75, 'Bhilai', 8, 'Chhattisgarh'),
(76, 'Bilaspur', 8, 'Chhattisgarh'),
(77, 'Chirmiri', 8, 'Chhattisgarh'),
(78, 'Dhamtari', 8, 'Chhattisgarh'),
(79, 'Durg', 8, 'Chhattisgarh'),
(80, 'Jagdalpur', 8, 'Chhattisgarh'),
(81, 'Korba', 8, 'Chhattisgarh'),
(82, 'Raigarh', 8, 'Chhattisgarh'),
(83, 'Raipur', 8, 'Chhattisgarh'),
(84, 'Rajnandgaon', 8, 'Chhattisgarh'),
(85, 'Delhi', 9, 'Delhi'),
(86, 'Ni Dilli', 9, 'Delhi'),
(87, 'Madgaon', 10, 'Goa'),
(88, 'Mormugao', 10, 'Goa'),
(89, 'Panaji', 10, 'Goa'),
(90, 'Ahmadabad', 11, 'Gujarat'),
(91, 'Anand', 11, 'Gujarat'),
(92, 'Bhavnagar', 11, 'Gujarat'),
(93, 'Jamnagar', 11, 'Gujarat'),
(94, 'Junagadh', 11, 'Gujarat'),
(95, 'Morvi', 11, 'Gujarat'),
(96, 'Navsari', 11, 'Gujarat'),
(97, 'Porbandar', 11, 'Gujarat'),
(98, 'Rajkot', 11, 'Gujarat'),
(99, 'Surat', 11, 'Gujarat'),
(100, 'Vadodara', 11, 'Gujarat'),
(101, 'Ambala', 12, 'Haryana'),
(102, 'Ambala Sadar', 12, 'Haryana'),
(103, 'Bhiwani', 12, 'Haryana'),
(104, 'Faridabad', 12, 'Haryana'),
(105, 'Hisar', 12, 'Haryana'),
(106, 'Karnal', 12, 'Haryana'),
(107, 'Panchkula', 12, 'Haryana'),
(108, 'Panipat', 12, 'Haryana'),
(109, 'Rohtak', 12, 'Haryana'),
(110, 'Sirsa', 12, 'Haryana'),
(111, 'Sonipat', 12, 'Haryana'),
(112, 'Yamunanagar', 12, 'Haryana'),
(113, 'Shimla', 13, 'Himachal Pradesh'),
(114, 'Jammu', 14, 'Jammu and Kashmir'),
(115, 'Srinagar', 14, 'Jammu and Kashmir'),
(116, 'Udhampur', 14, 'Jammu and Kashmir'),
(117, 'Bokaro', 15, 'Jharkhand'),
(118, 'Chaibasa', 15, 'Jharkhand'),
(119, 'Daltenganj', 15, 'Jharkhand'),
(120, 'Devghar', 15, 'Jharkhand'),
(121, 'Dhanbad', 15, 'Jharkhand'),
(122, 'Hazaribag', 15, 'Jharkhand'),
(123, 'Jamshedpur', 15, 'Jharkhand'),
(124, 'Jhumri Tilaiya', 15, 'Jharkhand'),
(125, 'Lohardaga', 15, 'Jharkhand'),
(126, 'Phusro', 15, 'Jharkhand'),
(127, 'Ramgarh', 15, 'Jharkhand'),
(128, 'Ranchi', 15, 'Jharkhand'),
(129, 'Sahibganj', 15, 'Jharkhand'),
(130, 'Saunda', 15, 'Jharkhand'),
(131, 'Sindari', 15, 'Jharkhand'),
(132, 'Bangalore', 16, 'Karnataka'),
(133, 'Belgaum', 16, 'Karnataka'),
(134, 'Bellary', 16, 'Karnataka'),
(135, 'Bijapur', 16, 'Karnataka'),
(136, 'Davanagere', 16, 'Karnataka'),
(137, 'Gulbarga', 16, 'Karnataka'),
(138, 'Hubli', 16, 'Karnataka'),
(139, 'Mangaluru', 16, 'Karnataka'),
(140, 'Raichur', 16, 'Karnataka'),
(141, 'Ramanagaram', 16, 'Karnataka'),
(142, 'Shimoga', 16, 'Karnataka'),
(143, 'Alappuzha', 17, 'Kerala'),
(144, 'Kochi', 17, 'Kerala'),
(145, 'Kollam', 17, 'Kerala'),
(146, 'Kozhikkod', 17, 'Kerala'),
(147, 'Malappuram', 17, 'Kerala'),
(148, 'Manjeri', 17, 'Kerala'),
(149, 'Palakkad', 17, 'Kerala'),
(150, 'Ponnani', 17, 'Kerala'),
(151, 'Thalassery', 17, 'Kerala'),
(152, 'Thiruvananthapuram', 17, 'Kerala'),
(153, 'Thrissur', 17, 'Kerala'),
(154, 'Bhopal', 18, 'Madhya Pradesh'),
(155, 'Dewas', 18, 'Madhya Pradesh'),
(156, 'Gwalior', 18, 'Madhya Pradesh'),
(157, 'Indore', 18, 'Madhya Pradesh'),
(158, 'Jabalpur', 18, 'Madhya Pradesh'),
(159, 'Murwara', 18, 'Madhya Pradesh'),
(160, 'Ratlam', 18, 'Madhya Pradesh'),
(161, 'Rewa', 18, 'Madhya Pradesh'),
(162, 'Sagar', 18, 'Madhya Pradesh'),
(163, 'Satna', 18, 'Madhya Pradesh'),
(164, 'Ujjain', 18, 'Madhya Pradesh'),
(165, 'Amravati', 19, 'Maharashtra'),
(166, 'Aurangabad', 19, 'Maharashtra'),
(167, 'Badlapur', 19, 'Maharashtra'),
(168, 'Bhiwandi', 19, 'Maharashtra'),
(169, 'Mumbai', 19, 'Maharashtra'),
(170, 'Jalgaon', 19, 'Maharashtra'),
(171, 'Kolhapur', 19, 'Maharashtra'),
(172, 'Malegaon', 19, 'Maharashtra'),
(173, 'Nagpur', 19, 'Maharashtra'),
(174, 'Nashik', 19, 'Maharashtra'),
(175, 'Navi Mumbai', 19, 'Maharashtra'),
(176, 'Pune', 19, 'Maharashtra'),
(177, 'SangliMiraj', 19, 'Maharashtra'),
(178, 'Sholapur', 19, 'Maharashtra'),
(179, 'Thana', 19, 'Maharashtra'),
(180, 'Vasai', 19, 'Maharashtra'),
(181, 'Virar', 19, 'Maharashtra'),
(182, 'Imphal', 20, 'Manipur'),
(183, 'Shillong', 21, 'Meghalaya'),
(184, 'Tura', 21, 'Meghalaya'),
(185, 'Aizawl', 22, 'Mizoram'),
(186, 'Lunglei', 22, 'Mizoram'),
(187, 'Dimapur', 23, 'Nagaland'),
(188, 'Kohima', 23, 'Nagaland'),
(189, 'Wokha', 23, 'Nagaland'),
(190, 'Balangir', 24, 'Orissa'),
(191, 'Baleshwar', 24, 'Orissa'),
(192, 'Baripada', 24, 'Orissa'),
(193, 'Bhadrak', 24, 'Orissa'),
(194, 'Bhubaneswar', 24, 'Orissa'),
(195, 'Brahmapur', 24, 'Orissa'),
(196, 'Jaypur', 24, 'Orissa'),
(197, 'Jharsuguda', 24, 'Orissa'),
(198, 'Cuttak', 24, 'Orissa'),
(199, 'Puri', 24, 'Orissa'),
(200, 'Raurkela', 24, 'Orissa'),
(201, 'Rayagada', 24, 'Orissa'),
(202, 'Sambalpur', 24, 'Orissa'),
(203, 'Pondicherry', 25, 'Pondicherry'),
(204, 'Amritsar', 26, 'Punjab'),
(205, 'Batala', 26, 'Punjab'),
(206, 'Bathinda', 26, 'Punjab'),
(207, 'Dhuri', 26, 'Punjab'),
(208, 'Hoshiarpur', 26, 'Punjab'),
(209, 'Jalandhar', 26, 'Punjab'),
(210, 'Ludhiana', 26, 'Punjab'),
(211, 'Moga', 26, 'Punjab'),
(212, 'Pathankot', 26, 'Punjab'),
(213, 'Patiala', 26, 'Punjab'),
(214, 'Ajmer', 27, 'Rajasthan'),
(215, 'Alwar', 27, 'Rajasthan'),
(216, 'Bharatpur', 27, 'Rajasthan'),
(217, 'Bhilwara', 27, 'Rajasthan'),
(218, 'Bikaner', 27, 'Rajasthan'),
(219, 'Fatehpur', 27, 'Rajasthan'),
(220, 'Ganganagar', 27, 'Rajasthan'),
(221, 'Jaipur', 27, 'Rajasthan'),
(222, 'Jaisalmer', 27, 'Rajasthan'),
(223, 'Jodhpur', 27, 'Rajasthan'),
(224, 'Kota', 27, 'Rajasthan'),
(225, 'Pali', 27, 'Rajasthan'),
(226, 'Sikar', 27, 'Rajasthan'),
(227, 'Udaipur', 27, 'Rajasthan'),
(228, 'Dindigul', 28, 'Tamil Nadu'),
(229, 'Erode', 28, 'Tamil Nadu'),
(230, 'Kanchipuram', 28, 'Tamil Nadu'),
(231, 'Karur', 28, 'Tamil Nadu'),
(232, 'Koyampattur', 28, 'Tamil Nadu'),
(233, 'Chennai', 28, 'Tamil Nadu'),
(234, 'Namakkal', 28, 'Tamil Nadu'),
(235, 'Neyveli', 28, 'Tamil Nadu'),
(236, 'Salem', 28, 'Tamil Nadu'),
(237, 'Thanjavur', 28, 'Tamil Nadu'),
(238, 'Tirunelveli', 28, 'Tamil Nadu'),
(239, 'Tiruppur', 28, 'Tamil Nadu'),
(240, 'Velluru', 28, 'Tamil Nadu'),
(241, 'Agartala', 29, 'Tripura'),
(242, 'Agartala MCl', 29, 'Tripura'),
(243, 'Badharghat', 29, 'Tripura'),
(244, 'Agra', 30, 'Uttar Pradesh'),
(245, 'Aligarh', 30, 'Uttar Pradesh'),
(246, 'Allahabad', 30, 'Uttar Pradesh'),
(247, 'Ayodhya', 30, 'Uttar Pradesh'),
(248, 'Bareli', 30, 'Uttar Pradesh'),
(249, 'Fatehpur', 30, 'Uttar Pradesh'),
(250, 'Firozabad', 30, 'Uttar Pradesh'),
(251, 'Ghaziabad', 30, 'Uttar Pradesh'),
(252, 'Gorakhpur', 30, 'Uttar Pradesh'),
(253, 'Jhansi', 30, 'Uttar Pradesh'),
(254, 'Kanpur', 30, 'Uttar Pradesh'),
(255, 'Lucknow', 30, 'Uttar Pradesh'),
(256, 'Mathura', 30, 'Uttar Pradesh'),
(257, 'Mirat', 30, 'Uttar Pradesh'),
(258, 'Moradabad', 30, 'Uttar Pradesh'),
(259, 'Muzaffarnagar', 30, 'Uttar Pradesh'),
(260, 'Noida', 30, 'Uttar Pradesh'),
(261, 'Saharanpur', 30, 'Uttar Pradesh'),
(262, 'Varanasi', 30, 'Uttar Pradesh'),
(263, 'Dehra Dun', 31, 'Uttarakhand'),
(264, 'Haldwani', 31, 'Uttarakhand'),
(265, 'Haridwar', 31, 'Uttarakhand'),
(266, 'Kashipur', 31, 'Uttarakhand'),
(267, 'Pithoragarh', 31, 'Uttarakhand'),
(268, 'Rishikesh', 31, 'Uttarakhand'),
(269, 'Rudrapur', 31, 'Uttarakhand'),
(270, 'Rurki', 31, 'Uttarakhand'),
(38, 'Jalpaiguri', 5, 'West Bengal'),
(34, 'Kolkata', 5, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `uid` int(5) NOT NULL,
  `bgroup` varchar(4) NOT NULL,
  `lastdonated` date DEFAULT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`uid`, `bgroup`, `lastdonated`, `city`) VALUES
(1, 'op', '0000-00-00', 'Ranchi'),
(2, 'op', '2017-01-04', 'Ranchi'),
(3, 'op', '2017-03-03', 'Patna'),
(4, 'op', '2017-03-10', 'Ranchi');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospid` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `name` varchar(20) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`name`, `stock`, `price`) VALUES
('sugar', 10, 50),
('chocolate', 20, 10),
('rice', 50, 30),
('salt', 30, 20),
('biscuit', 20, 20),
('soap', 5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `msgid` int(6) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `msgtxt` varchar(1000) DEFAULT NULL,
  `msgdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uid` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `donor` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uid`, `email`, `name`, `sex`, `phone`, `donor`) VALUES
(3, 'aggu@xyz.com', 'AGGU', 'M', '12345', 'Y'),
(1, 'amiya@xyz.com', 'AMIYA', 'M', '12345', 'Y'),
(4, 'piku@xyz.com', 'PIKU', 'M', '12345', 'Y'),
(2, 'pogo@xyz.com', 'POGO', 'F', '12345', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `email`, `password`) VALUES
(1, 'amiya@xyz.com', '12345'),
(2, 'pogo@xyz.com', '12345'),
(3, 'aggu@xyz.com', '12345'),
(4, 'piku@xyz.com', '12345'),
(5, 'umang', '12345'),
(7, 'email', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospid`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
