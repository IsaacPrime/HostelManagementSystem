-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 02:19 PM
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
(1, 'admin', 'admin@gmail.com', 'pass', '2022-04-05 20:31:45', '2022-04-25');

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
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19'),
(8, '', 'BAA', 'Bachelor of science in Applied Accounting', '2022-04-28 14:47:46'),
(9, '', 'BHRM', 'Bachelor of Science in Human Resource Management', '2022-04-28 14:48:13'),
(10, '', 'BA', 'Bachelor of Business Administration', '2022-04-28 14:48:55'),
(11, '', 'BF', 'Bachelor of Science in Finance', '2022-04-28 14:50:18'),
(12, '', 'BAS', 'Bachelor of Science in Actuarial Science', '2022-04-28 14:53:24'),
(13, '', 'BMC', 'Bachelor of Science in Mathematics and Computer Science', '2022-04-28 14:53:59'),
(14, '', 'BCHD', 'Bachelor of Science in Community Health and Development', '2022-04-28 14:54:55'),
(15, '', 'BHR', 'Bachelor of Science in Health Records and Information Systems', '2022-04-28 14:55:19'),
(16, '', 'BCS', 'Bachelor of Science in Computer Science', '2022-04-28 14:55:58'),
(17, '', 'BCT', 'Bachelor of Science in Computer Technology', '2022-04-28 14:56:18'),
(18, '', 'BIS', 'Bachelor of Science in Information Science', '2022-04-28 14:56:36'),
(19, '', 'BBIT', 'Bachelor of Business Information Technology', '2022-04-28 14:56:57'),
(20, '', 'BIT', 'Bachelor of Science in Information Technology', '2022-04-28 14:57:15'),
(22, '', 'BAM', 'Bachelor of Science in Agribusiness Management', '2022-04-28 14:58:12'),
(23, '', 'BAHP', 'Bachelor of Science in Animal Health and Production', '2022-04-28 14:58:45'),
(24, '', 'BH', 'Bachelor of Science in Horticulture', '2022-04-28 14:59:06'),
(25, '', 'BHN', 'Bachelor of Science in Human Nutrition and Dietetics', '2022-04-28 14:59:29'),
(26, '', 'BED', 'Bachelor of Science in Education Sciences', '2022-04-28 15:01:21'),
(27, '', 'BEED Arts', 'Bachelor of Science in Education Arts', '2022-04-28 15:01:48'),
(28, '', 'BSF', 'Bachelor of Science in Computer Security & Forensics', '2022-04-28 15:02:51');

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
  `stayto` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(38) NOT NULL,
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

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `stayfrom`, `stayto`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`, `personproom`, `roomtype`, `landlordphone`, `landlordname`, `hostel_id`) VALUES
(11, 'shaquil', 20, 2345, '0000-00-00', '0000-00-00', 8, 'Bachelor  of Technology', 'CT201/00678/17', 'Rodriguez', '', 'Kamau', 'male', 789065432, 'Rodriguez@gmail.com', 1233456, 'isaac', 'parent', 789096543, 'nairobi', 'nairobi', 'Nyeri County', 254, 'nairobi', 'nairobi', 'Nyeri County', 254, '2022-04-25 07:37:35', '', 1, '    Single    ', '254711223344', '  Mwangi James  ', '11223344'),
(12, 'shaquil', 20, 2345, '0000-00-00', '0000-00-00', 8, 'Master of Business Administration', 'BS204/10566/18', 'Laura', '', 'Grey', 'female', 745678912, 'laura@gmail.com', 767543217, 'Mary', 'mother', 790654321, 'nairobi', 'mrr', 'Makueni County', 254, 'nairobi', 'mrr', 'Makueni County', 254, '2022-04-25 07:39:40', '', 1, '    Single    ', '254711990023', '  Mwangi James  ', '11223344'),
(13, 'Green House Hostels', 39, 5500, '0000-00-00', '0000-00-00', 7, 'Bachelor of Engineering', 'ED204/10045/19', 'Clerk ', '', 'Kent', 'male', 745321567, 'clerk@gmail.com', 765432190, 'Christopher ', 'father', 789096543, 'NAKURU', 'Nakuru', 'Nakuru County', 254, 'NAKURU', 'Nakuru', 'Nakuru County', 254, '2022-04-25 07:50:38', '', 1, '  Bedsitter  ', '723567814', '  James Wainaina  ', '11223356'),
(14, 'Ntugi Hostels', 65, 6500, '0000-00-00', '0000-00-00', 6, 'Bachelor  of Technology', 'CT203/100834/19', 'Isaac', '', 'Mutio', 'male', 1234567, 'isaacnewtom@gmail.com', 767543217, 'Newton', 'parent', 78909698, 'KENYA', 'nairobi', 'Taita-Taveta County', 254, '', '', '', 0, '2022-04-25 08:01:44', '', 1, '  Bedsitter  ', '254711223344', '  John doe  ', '11223367'),
(15, 'Chali kundi Hostels', 20, 3000, '0000-00-00', '0000-00-00', 7, 'Bachelor Of commerce ', 'CT203/100824/19', 'Daniel', '', 'Gitau', 'male', 742345678, 'daniel@gmail.com', 78123489, 'Gitau', 'parent', 790654321, 'Kenya', 'nairobi', 'Samburu County', 254, '', '', '', 0, '2022-04-25 08:22:08', '', 1, '    Single    ', '254711223344', '  Chali kundi  ', '11220099'),
(16, 'Amerukhan Hostels', 25, 3000, '0000-00-00', '0000-00-00', 8, 'Bachelor  of Science', 'CT203/100818/19', 'John', '', 'Muriithi', 'male', 796921167, 'john@gmail.com', 754321289, 'Muriithi', 'parent', 790654321, 'KENYA', 'nairobi', 'Embu County', 254, '', '', '', 0, '2022-04-25 08:24:05', '', 2, '    Single    ', '254711223344', '  John Manuel  ', '11226677'),
(17, 'Must Hostel C (female hostels)', 98, 5500, '0000-00-00', '0000-00-00', 4, 'Master of Business Administration', 'CT203/1000844/19', 'Mercy', '', 'Chelangat', 'male', 745678912, 'mercy@gmail.com', 767543217, 'Chelangat', 'parent', 767543217, 'KENYA', 'Nakuru', 'Baringo County', 254, '', '', '', 0, '2022-04-25 08:29:25', '', 4, '    Single    ', '254711223344', '  MUST  ', '11224456'),
(18, 'Pink House Hostels', 51, 6300, '0000-00-00', '0000-00-00', 8, 'Master of Computer Application', 'CT203/1000856/19', 'Godfrey', '', 'Kiptoo', 'male', 789065432, 'godfrey@gmail.com', 765432190, 'kiptoo', 'parent', 790654321, 'KENYA', 'nairobi', 'Bomet County', 254, '', '', '', 0, '2022-04-25 08:31:38', '', 1, '  Bedsitter  ', '254711223344', '  Godfrey kiptoo  ', '11224456'),
(19, 'Elimu Hostels', 79, 4900, '0000-00-00', '0000-00-00', 8, 'Bachelor Of Computer Application', 'CT203/1000854/19', 'Emanuel', '', 'Kimutai', 'male', 742345678, 'emanuel@gmail.com', 754321289, 'kimutai', 'parent', 789096543, 'Kenya', 'nakuru', 'Kericho County', 254, '', '', '', 0, '2022-04-25 08:33:11', '', 2, '  Bedsitter  ', '2549001133', '  Kim tyson  ', '11556677');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` varchar(111) NOT NULL,
  `fees` varchar(50) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `hostel_image` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `pproom` int(11) NOT NULL,
  `roomtype` varchar(255) NOT NULL,
  `landlordphone` varchar(20) NOT NULL,
  `landlordname` varchar(88) NOT NULL,
  `hostellocation` varchar(50) NOT NULL,
  `proximity` varchar(100) NOT NULL,
  `amenities` varchar(2000) NOT NULL,
  `hostel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`, `hostel_image`, `pproom`, `roomtype`, `landlordphone`, `landlordname`, `hostellocation`, `proximity`, `amenities`, `hostel_id`) VALUES
(45, 2147483647, 'shaquil', '2345', '2022-04-14 10:11:51', 'uploads/host1.jpeg', 1, '  Single  ', '2345', 'Mwangi James', 'Nchiru', '1.3km', 'free water and electricity', 11223344),
(49, 39, 'Green House Hostels', '5500', '2022-04-21 07:17:59', 'uploads/20220414_092224.jpg', 1, 'Bedsitter', '0723567814', 'James Wainaina', 'Nchiru', '0.4', 'Token electricity\r\nFree water\r\nAvailable caretaker', 11223356),
(50, 98, 'Must Hostel C (female hostels)', '5500', '2022-04-21 08:20:54', 'uploads/20220414_105203.jpg', 4, '  Single  ', '+254711990023', 'MUST', 'Inside school', '0.0km', 'Free water and electricity', 11224456),
(51, 65, 'Ntugi Hostels', '6500', '2022-04-21 08:23:16', 'uploads/ntungi.JPG', 1, 'Bedsitter', '+254111902362', 'John doe', 'Nchiru', '0.9km to main campus', 'Free water and Token electricity', 11223367),
(53, 63, 'Orange House Hostels', '4800', '2022-04-21 08:35:42', 'uploads/Orange.JPG', 1, 'Bedsitter', '+254711223344', '  Mr. Stanley Winston  ', 'Limauru', '0.45 km to main campus', 'Free water and token electricity, 24/hrsecurity', 11223349),
(54, 51, 'Pink House Hostels', '6300', '2022-04-21 08:39:07', 'uploads/20220414_092418.jpg', 1, 'Bedsitter', '+254711223344', 'Godfrey kiptoo', 'Nchiru', '0.97km to main campus', 'Free water 24/hr security', 11224456),
(55, 25, 'Amerukhan Hostels', '3000', '2022-04-21 08:44:28', 'uploads/Amerukan.jpg', 2, '  Single  ', '  +254711990023  ', 'John Manuel', 'Aina', '1.67km to main campus', 'Bed, free water, 24/hr electricity and water ', 11226677),
(56, 96, 'MUST Block B Female Hostels', '5500 per semester', '2022-04-21 08:48:05', 'uploads/20220414_100942.jpg', 4, '  Single  ', '+25472345699', 'MUST', 'Inside school', '0.0km to main campus', 'Free water top security, and free electricity', 11223356),
(57, 32, 'Amka prayers Hostels', '3500', '2022-04-21 08:53:49', 'uploads/amka prayers.JPG', 1, '  Single  ', '+2541230099', 'Daniel Gitau', 'Maskan', '1.25km to main campus', 'Free water and token electricity', 11220093),
(58, 79, 'Elimu Hostels', '4900', '2022-04-21 08:56:19', 'uploads/Elimu.JPG', 2, 'Bedsitter', '+2549001133', 'Kim tyson', 'Maskan', '0.7km to main campus', 'Free water, room sharing, Token electricity ', 11556677),
(59, 20, 'Chali kundi Hostels', '3000', '2022-04-21 09:01:00', 'uploads/IMG20220418155849.jpg', 1, '  Single  ', '+254711990044', 'Chali kundi', 'Nchiru', '1.2km to main campus', 'Free water ', 11220099),
(60, 20, 'M.G Hostels', '3000', '2022-04-30 07:55:01', 'uploads/moris.JPG', 1, '  Single  ', '+254711223344', 'Justus Muthomi', 'Nchiru', '1.7 km to main campus', 'WIFI, Water,24/hr caretaker', 11223356),
(61, 129, 'Visioners Hostels', '5500', '2022-04-30 07:57:36', 'uploads/vis.JPG', 1, '  Bedsitter  ', '  +254711990023  ', 'Mary ', 'Kianjai', '5 km to main campus', 'WIFI, Water, 24/hr security and Token electricity', 37719994),
(62, 20, 'Morning Star Hostels', '6800', '2022-05-02 21:36:10', 'uploads/img-4.jpg', 1, ' Bedsitter  ', '+254711990044', 'Philip Gitau', 'Ebony', '3 km to main campus', 'Free water and Electricity', 37719994),
(63, 105, 'MUST Block A male hostels', '1230', '2022-05-02 21:41:00', 'uploads/20220414_101449.jpg', 2, '  Single  ', '+254711990023', 'MUST', 'Inside school', '0.0km to main campus', 'free water, electricity and 24/hr security', 11223344),
(64, 47, 'Fridah Hostels', '3500', '2022-05-02 21:44:00', 'uploads/IMG20220419123128.jpg', 1, '  Single  ', '+254711990023', 'Fridah', 'Nchiru', '0.7 km to main campus', 'Free water and electricity', 37719994);

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
(57, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-18 13:52:37'),
(58, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-20 09:58:55'),
(59, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-20 13:30:12'),
(60, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 07:21:32'),
(61, 25, 'isaac@gmail.com', 0x3a3a31, '', '', '2022-04-21 09:28:31'),
(62, 25, 'isaac@gmail.com', 0x3a3a31, '', '', '2022-04-21 09:43:53'),
(63, 25, 'isaac@gmail.com', 0x3a3a31, '', '', '2022-04-21 09:57:37'),
(64, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 09:57:45'),
(65, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 10:02:41'),
(66, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 10:08:13'),
(67, 23, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 11:14:40'),
(68, 24, '', 0x3a3a31, '', '', '2022-04-21 14:48:14'),
(69, 24, '', 0x3a3a31, '', '', '2022-04-21 15:46:47'),
(70, 24, '', 0x3a3a31, '', '', '2022-04-21 15:51:14'),
(71, 24, '', 0x3a3a31, '', '', '2022-04-21 16:03:16'),
(72, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 16:27:36'),
(73, 24, '', 0x3a3a31, '', '', '2022-04-21 16:27:51'),
(74, 24, '', 0x3a3a31, '', '', '2022-04-21 16:29:37'),
(75, 24, '', 0x3a3a31, '', '', '2022-04-21 16:45:50'),
(76, 24, '', 0x3a3a31, '', '', '2022-04-21 19:01:20'),
(77, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 19:05:36'),
(78, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 19:06:08'),
(79, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 19:22:49'),
(80, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 19:57:00'),
(81, 24, '', 0x3a3a31, '', '', '2022-04-21 20:00:22'),
(82, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 20:17:44'),
(83, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-21 22:08:40'),
(84, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 01:58:22'),
(85, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 02:02:44'),
(86, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 02:06:26'),
(87, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 02:08:27'),
(88, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 10:49:23'),
(89, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 11:25:11'),
(90, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 11:33:46'),
(91, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 11:46:36'),
(92, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 12:36:39'),
(93, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 14:01:50'),
(94, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 14:13:59'),
(95, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-22 19:19:55'),
(96, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-23 17:17:15'),
(97, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-23 20:00:43'),
(98, 25, 'isaac@gmail.com', 0x3a3a31, '', '', '2022-04-23 20:22:09'),
(99, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-23 20:31:26'),
(100, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-23 20:33:08'),
(101, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-23 20:39:55'),
(102, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-24 17:21:31'),
(103, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-04-24 23:33:37'),
(104, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-04-25 07:06:25'),
(105, 30, 'laura@gmail.com', 0x3a3a31, '', '', '2022-04-25 07:38:18'),
(106, 26, 'clerk@gmail.com', 0x3a3a31, '', '', '2022-04-25 07:48:07'),
(107, 24, 'isaacnewtom@gmail.com', 0x3a3a31, '', '', '2022-04-25 07:59:44'),
(108, 28, 'daniel@gmail.com', 0x3a3a31, '', '', '2022-04-25 08:20:40'),
(109, 29, 'john@gmail.com', 0x3a3a31, '', '', '2022-04-25 08:22:37'),
(110, 33, 'mercy@gmail.com', 0x3a3a31, '', '', '2022-04-25 08:28:13'),
(111, 32, 'godfrey@gmail.com', 0x3a3a31, '', '', '2022-04-25 08:30:19'),
(112, 31, 'emanuel@gmail.com', 0x3a3a31, '', '', '2022-04-25 08:31:52'),
(113, 32, 'godfrey@gmail.com', 0x3a3a31, '', '', '2022-04-25 08:37:19'),
(114, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-04-26 03:41:21'),
(115, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-01 15:20:48'),
(116, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-01 15:29:53'),
(117, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-01 15:55:22'),
(118, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-01 21:13:38'),
(119, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-01 21:29:10'),
(120, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 09:37:17'),
(121, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 10:13:21'),
(122, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 10:16:08'),
(123, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 12:00:34'),
(124, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 12:29:41'),
(125, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 13:11:54'),
(126, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 13:58:58'),
(127, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 14:13:28'),
(128, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 14:41:46'),
(129, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-02 21:52:46'),
(130, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-05 14:35:55'),
(131, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-05 15:23:55'),
(132, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-05 18:54:25'),
(133, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-07 16:10:03'),
(134, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-08 20:09:01'),
(135, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-08 21:48:57'),
(136, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-08 21:54:04'),
(137, 26, 'clerk@gmail.com', 0x3a3a31, '', '', '2022-05-08 21:57:33'),
(138, 34, 'jane@gmail.com', 0x3a3a31, '', '', '2022-05-08 21:59:53'),
(139, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-08 22:01:51'),
(140, 28, 'daniel@gmail.com', 0x3a3a31, '', '', '2022-05-09 10:27:08'),
(141, 28, 'daniel@gmail.com', 0x3a3a31, '', '', '2022-05-09 12:38:53'),
(142, 28, 'daniel@gmail.com', 0x3a3a31, '', '', '2022-05-09 12:39:04'),
(143, 28, 'daniel@gmail.com', 0x3a3a31, '', '', '2022-05-09 12:57:29'),
(144, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-09 13:32:36'),
(145, 35, 'isacjohn@gmail.com', 0x3a3a31, '', '', '2022-05-09 13:53:50'),
(146, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-23 07:01:48'),
(147, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-23 07:42:02'),
(148, 27, 'Rodriguez@gmail.com', 0x3a3a31, '', '', '2022-05-23 13:04:06');

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
(24, 'CT203/100834/19', 'Isaac', '', 'Mutio', 'male', 746345678, 'isaacnewtom@gmail.com', 'qwe123', '2022-04-02 19:00:26', '25-04-2022 01:35:09', ''),
(25, 'CT203/1000834/19', 'Isaac', '', 'Mutio', 'male', 74567890, 'isaac@gmail.com', '123456', '2022-04-21 09:27:52', '', ''),
(26, 'ED204/10045/19', 'Clerk ', '', 'Kent', 'male', 745321567, 'clerk@gmail.com', 'clerk', '2022-04-24 23:23:24', '', ''),
(27, 'CT201/00678/17', 'Rodriguez', '', 'Kamau', 'male', 789065432, 'Rodriguez@gmail.com', 'Rodriguez', '2022-04-24 23:27:21', '', ''),
(28, 'CT203/100824/19', 'Daniel', '', 'Gitau', 'male', 742345678, 'daniel@gmail.com', 'daniel', '2022-04-24 23:29:10', '', ''),
(29, 'CT203/100818/19', 'John', '', 'Muriithi', 'male', 796921167, 'john@gmail.com', 'john', '2022-04-24 23:30:19', '', ''),
(30, 'BS204/10566/18', 'Laura', '', 'Grey', 'female', 745678912, 'laura@gmail.com', 'laura', '2022-04-24 23:32:18', '', ''),
(31, 'CT203/1000854/19', 'Emanuel', '', 'Kimutai', 'male', 742345678, 'emanuel@gmail.com', 'emanue', '2022-04-25 08:26:17', '', ''),
(32, 'CT203/1000856/19', 'Godfrey', '', 'Kiptoo', 'male', 789065432, 'godfrey@gmail.com', 'godfrey', '2022-04-25 08:27:10', '', ''),
(33, 'CT203/1000844/19', 'Mercy', '', 'Chelangat', 'male', 745678912, 'mercy@gmail.com', 'mercy', '2022-04-25 08:28:02', '', ''),
(34, 'CT201/100678/19', 'Jane', '', 'Peter', 'female', 742345678, 'jane@gmail.com', 'jane', '2022-05-08 21:59:43', '', ''),
(35, 'CT210/100456/17', 'Isaac ', 'John', 'Mutio', 'male', 742345678, 'isacjohn@gmail.com', 'isaac', '2022-05-09 13:51:21', '', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `landlord`
--
ALTER TABLE `landlord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
