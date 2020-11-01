-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'Ganesh', 550, '2020-11-02', '10:00:00', 1, 0),
(4, 2, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'Dinesh', 700, '2020-11-04', '10:00:00', 0, 1),
(4, 3, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'Amit', 1000, '2020-11-04', '03:00:00', 0, 1),
(11, 4, 'Leo', 'Messi', 'Male', 'leomessi@gmail.com', '1111122222', 'Ashok', 500, '2020-11-06', '20:00:00', 1, 1),
(4, 5, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'Dinesh', 700, '2020-11-12', '12:00:00', 1, 1),
(4, 6, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'Ganesh', 550, '2020-11-09', '15:00:00', 0, 1),
(2, 8, 'Kylian', 'Mbappe', 'Male', 'mbappeia@gmail.com', '1212121212', 'Ganesh', 550, '2020-11-04', '10:00:00', 1, 1),
(5, 9, 'Neymar', 'Junior', 'Male', 'neymar@gmail.com', '1234554321', 'Ganesh', 550, '2020-11-02', '20:00:00', 1, 0),
(4, 10, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'Ganesh', 550, '2020-11-04', '14:00:00', 1, 0),
(4, 11, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'Dinesh', 700, '2020-11-05', '15:00:00', 1, 1),
(9, 12, 'Cristiano', 'Ronaldo', 'Male', 'ronaldo@gmail.com', '9876598765', 'Kumar', 800, '2020-11-06', '12:00:00', 1, 1),
(9, 13, 'Cristiano', 'Ronaldo', 'Male', 'ronaldo@gmail.com', '9876598765', 'Tiwary', 1100, '2020-11-06', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Aryan', 'aryan2002.558@gmail.com', '8385875475', 'Amazing'),
('Messi', 'leomessi@gmail.com', '1111122222', 'Good service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('Arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Aditya', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Neurologist', 1100);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Aryan', 'Agarwal', 'Male', 'aryan2002.558@gmail.com', '8385875475', 'aryan123', 'aryan123'),
(2, 'Leo', 'Messi', 'Male', 'leomessi@gmail.com', '111122222', 'messi123', 'messi123'),
(3, 'Kylian', 'Mbappe', 'Male', 'mbappe@gmail.com', '12121212', 'mbappe123', 'mbappe123'),
(4, 'Donald', 'Trump', 'Male', 'trump69@gmail.com', '6969696969', 'trump123', 'trump123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dinesh', 4, 11, 'Aryan', 'Agarwal', '2020-11-12', '12:00:00', 'Cough', 'Brnchitis', 'Acolate twice daily.'),
('Ganesh', 2, 8, 'Kylian', 'Mbappe', '2020-11-04', '10:00:00', 'Fever', 'None', 'Rest and dolo 65.'),
('Kumar', 9, 12, 'Cristiano', 'Ronaldo', '2020-11-06', '12:00:00', 'Stomach Ache', 'None', 'Less spicy food and rest.'),
('Tiwary', 9, 13, 'Cristiano', 'Ronaldo', '2020-11-06', '14:00:00', 'Cramps', 'None', 'Ice pack.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;