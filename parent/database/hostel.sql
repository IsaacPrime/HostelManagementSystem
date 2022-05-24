-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 11:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'isaacnewtomtom@gmail.com', 'pass', '2022-04-05 20:31:45', '2022-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `landlord`
--

CREATE TABLE `landlord` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL,
  `idno` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `contact` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landlord`
--

INSERT INTO `landlord` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`, `idno`, `fname`, `mname`, `lname`, `gender`, `contact`) VALUES
(1, 'landlord', 'landlord1@gmail.com', '11223344', '2022-04-06 10:31:45', '2022-04-06', 11223344, 'James', 'Doe', 'Winstone', 'male', '+254722334456');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` varchar(111) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL,
  `personproom` int(11) NOT NULL,
  `roomtype` varchar(255) NOT NULL,
  `landlordphone` varchar(20) NOT NULL,
  `landlordname` varchar(88) NOT NULL,
  `hostel_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`, `personproom`, `roomtype`, `landlordphone`, `landlordname`, `hostel_id`) VALUES
(10, 'Mukaria Hostels', 105, 2500, '2022-04-09', 1, 'Bachelor  of Technology', 12345567, 'isaa', 'mmh', 'newton', 'male', 1234567, 'isaacnewtom@gmail.com', 1233456, 'qwer', '12wert', 45575, 'nairobi', 'nairobi', 'Nyeri County', 254, 'nairobi', 'nairobi', 'Nyeri County', 254, '2022-04-02 19:11:19', '', 2, '  Single  ', '254711223344', '  Mr. Stanley Winston  ', '11223344');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` varchar(111) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `hostel_image` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `pproom` int(11) NOT NULL,
  `roomtype` varchar(255) NOT NULL,
  `landlordphone` varchar(20) NOT NULL,
  `landlordname` varchar(88) NOT NULL,
  `hostellocation` varchar(50) NOT NULL,
  `proximity` varchar(50) NOT NULL,
  `amenities` varchar(2000) NOT NULL,
  `hostel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`, `hostel_image`, `pproom`, `roomtype`, `landlordphone`, `landlordname`, `hostellocation`, `proximity`, `amenities`, `hostel_id`) VALUES
(44, 20, 'Nchiru', 1230, '2022-04-13 17:17:07', 'uploads/121971.jpg', 2, '  Single  ', '+254711990044', 'Mwangi James', 'Nchiru', '1.2km', 'water', 11223344),
(45, 20, 'shaquil', 2345, '2022-04-14 10:11:51', 'uploads/host1.jpeg', 1, '  Single  ', '+254711990023', 'Mwangi James', 'Nchiru', '1.3km', 'free water and electricity', 11223344),
(46, 20, 'red', 6000, '2022-04-19 08:58:45', 'uploads/Abstract business card design For Assistant Manager.jpg', 1, 'Bedsitter', '+254711990044', 'Mwangi James', 'Nchiru', '1.2km', 'water', 11223344),
(47, 105, 'blue', 2345, '2022-04-19 09:00:20', 'uploads/Abstract business card design For Assistant Manager psd template.jpg', 2, '  Single  ', '+254711223344', '  Mr. Stanley Winston  ', 'Nchiru', '0.8 km', 'water', 11223344);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Mombasa County'),
(2, 'Kwale County'),
(3, 'Kilifi County'),
(4, 'Tana River County'),
(5, 'Lamu County'),
(6, 'Taita-Taveta County'),
(7, 'Garissa County'),
(8, 'Wajir County'),
(9, 'Mandera County'),
(10, 'Marsabit County'),
(11, 'Isiolo County'),
(12, 'Meru County'),
(13, 'Tharaka-Nithi County'),
(14, 'Embu County'),
(15, 'Kitui County'),
(16, 'Machakos County'),
(17, 'Makueni County'),
(18, 'Nyandarua County'),
(19, 'Nyeri County'),
(20, 'Kirinyaga County'),
(21, 'Murang’a County'),
(22, 'Kiambu County'),
(23, 'Turkana County'),
(24, 'West Pokot County'),
(25, 'Samburu County'),
(26, 'Trans Nzoia County'),
(27, 'Uasin Gishu County'),
(28, 'Elgeyo-Marakwet County'),
(29, 'Nandi County'),
(30, 'Baringo County'),
(31, 'Laikipia County'),
(32, 'Nakuru County'),
(33, 'Narok County'),
(34, 'Kajiado County'),
(35, 'Kericho County'),
(36, 'Bomet County'),
(37, 'Kakamega County'),
(38, 'Vihiga County'),
(39, 'Bungoma County'),
(40, 'Busia County'),
(41, 'Siaya County'),
(42, 'Kisumu County'),
(43, 'Homa Bay County'),
(44, 'Migori County'),
(45, 'Kisii County'),
(46, 'Nyamira County'),
(47, 'Nairobi County');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(11, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-30 15:39:12'),
(12, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-30 16:33:56'),
(13, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 06:51:19'),
(14, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 08:15:08'),
(15, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 20:01:03'),
(16, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 20:01:15'),
(17, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 20:01:20'),
(18, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 20:01:21'),
(19, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 20:01:23'),
(20, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 20:01:26'),
(21, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-03-31 21:45:37'),
(22, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-01 08:57:44'),
(23, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-01 09:08:55'),
(24, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-02 14:33:42'),
(25, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-02 17:15:37'),
(26, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-02 17:17:34'),
(27, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-02 18:55:34'),
(28, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-02 18:56:38'),
(29, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-02 19:00:42'),
(30, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-03 15:23:24'),
(31, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-03 15:25:22'),
(32, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-03 17:21:15'),
(33, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-05 16:08:43'),
(34, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-06 13:35:58'),
(35, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-06 14:48:57'),
(36, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-06 15:35:09'),
(37, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-06 17:01:52'),
(38, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-11 13:33:01'),
(39, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-11 13:33:13'),
(40, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-12 17:12:40'),
(41, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-13 16:04:12'),
(42, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-13 17:19:48'),
(43, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-13 17:49:27'),
(44, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-13 20:10:59'),
(45, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-04-13 20:47:35'),
(46, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-14 08:09:39'),
(47, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-14 09:22:56'),
(48, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-14 09:42:34'),
(49, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-14 10:01:49'),
(50, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-14 10:15:06'),
(51, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-14 11:39:25'),
(52, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-14 20:26:45'),
(53, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-16 21:53:12'),
(54, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-16 22:03:50'),
(55, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-16 22:17:06'),
(56, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-16 22:29:02'),
(57, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-18 13:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'isaac', 'me', 'info', 'male', 8467067344, 'test@gmail.com', 'Test@123', '2016-06-22 04:21:33', '06-04-2022 09:04:21', '22-06-2016 05:16:49'),
(19, '102355', 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', '6786786786', '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Benjamin', '', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', '8596185625', '2016-06-26 16:40:07', '', ''),
(22, 'qw23445', 'qqwqwq', 'qwer', 'newton', 'male', 1234567, 'isaacnewtom@gmail.com', 'qwerty', '2022-03-30 15:35:38', '', ''),
(23, '12345567t', 'isaa', 'mmh', 'newton', 'male', 1234567, 'isaacnewtom@gmail.com', 'qwe123', '2022-04-02 19:00:26', '14-04-2022 01:50:13', ''),
(24, '12345567t', 'isaa', 'mmh', 'newton', 'male', 1234567, 'isaacnewtom@gmail.com', 'qwe123', '2022-04-02 19:00:26', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landlord`
--
ALTER TABLE `landlord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `landlord`
--
ALTER TABLE `landlord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
