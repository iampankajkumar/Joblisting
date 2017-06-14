-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2017 at 10:00 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joblisting`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`name`, `email`, `phone`, `dob`, `password`, `branch`, `gender`, `status`) VALUES
('112', '111@y', '1111111111', '0044-04-04', 'rr', 'CS', 'Male', 'true'),
('111@y.com', '111@y.com', '2222222222', '01/01/2016', '111@y.com', 'CS', 'Male', 'true'),
('anshul kmar', 'anshulkmar@gg.com', '123456787', '1995-01-01', '123456787', 'EC', 'Male', 'true'),
('pankabjhgs', 'bjhdg@bdf.com', '123456789', '1995-01-01', '123456789', 'CS', 'Male', 'true'),
('ghhj', 'gjhgbj@bjhb.gh', '9999999988', '05/01/2017', 'gjhgbj@bjhb.gh', 'CS', 'Female', 'false'),
('hfgigfj', 'hxjc@gj.com', '1234567891', '1995-01-01', '1234567891', 'CS', 'Female', 'true'),
('bhfgh', 'jdb@nxcnv.cij', '7894561230', '0101-01-01', '7894561230', 'CS', 'Male', 'true'),
('pankaj kumar pra', 'pankaj@gmail.com', '8010215966', '05/01/2017', '8010215966', 'CS', 'Male', 'false'),
('PANKAJ KUMAR', 'pankajkumar.01869@gmail.coc', '8010215962', '1995-01-01', '8010215962', 'CS', 'Male', 'true'),
('PANKAJ KUMAR', 'pankajkumar.01869@gmail.com', '8010215963', '1995-01-01', '8010215963', 'CS', 'Male', 'true'),
('vivek seth', 'pankajkumar.01869@gmail.m', '9696299121', '0101-01-01', '9696299121', 'EC', 'Male', 'false'),
('pankaj kumar', 'pankajkumar.gniot@rediffmail.com', '7053414943', '1995-01-01', '7053414943', 'CS', 'Male', 'true'),
('rahul', 'rahul@rahul.com', '9234566789', '05/01/2017', 'datepicker', 'CS', 'Female', 'false'),
('cgjdsg', 'xy@gmail.com', '9889177287', '1995-01-01', '9889177287', 'CS', 'Female', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `employer_details`
--

CREATE TABLE `employer_details` (
  `name` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer_details`
--

INSERT INTO `employer_details` (`name`, `cname`, `email`, `phone`, `password`, `gender`) VALUES
('ficghvj', 'hjhxgfh', 'abc@abc.com', '49845644564', '49845644564', 'Female'),
('abc', 'abc techs', 'abc@gmail.com', '9876543210', '9876543210', 'Male'),
('re', 'fe', 'ffer3e@af', 'abc@gmail.com', '9876543210', 'Male'),
('Nikhil Kumar', 'Skilrock technologies', 'nikhiltuhar1818@gmail.com', '9958868415', 'nikhil@1', 'Male'),
('gsg', 'gjgj', 'pankajkumar.01869@gmail.co', '8010215961', '8010215963', 'Male'),
('guyghj', 'bhjbj', 'pankajkumar.01869@gmail.co.in', '2369845558', '2369845558', 'Male'),
('PANKAJ KUMAR', 'Skilrock technologies', 'pankajkumar.01869@gmail.com', '8010215963', '8010215963', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `job_details`
--

CREATE TABLE `job_details` (
  `job_title` varchar(50) DEFAULT NULL,
  `skills` varchar(100) DEFAULT NULL,
  `salary` float DEFAULT '0',
  `location` varchar(100) DEFAULT NULL,
  `last_date` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_details`
--

INSERT INTO `job_details` (`job_title`, `skills`, `salary`, `location`, `last_date`, `email`, `id`) VALUES
('software developer', 'java, struts, bpo, ', 320000, 'delhi', '2017-04-06', 'pankajkumar.01869@gmail.com', 3),
('software developer', 'java, php, c, bpo, ', 5520000, 'delhi', '1995-01-01', 'pankajkumar.01869@gmail.co', 4),
('software developer', 'java, bpo, ', 0, 'vhgv', '54564-01-01', 'abc@abc.com', 5),
('software developer', 'java, bpo, bpo, ', 10000, 'hvhj', '0165-03-02', 'abc@abc.com', 6),
('bpo', 'java, bpo, bpo, dotnet, cplusplus, asp, bpo, ', 120000, 'vhgv', '0115-02-01', 'abc@abc.com', 7),
('software developer', 'java, bpo, bpo, dotnet, cplusplus, asp, bpo, dotnet, c, cplusplus, asp, bpo, ', 250000, 'delhi', '4995-01-01', 'abc@gmail.com', 8),
('software developer', 'bpo, ', 400000, 'delhi', '4995-01-01', 'pankajkumar.01869@gmail.com', 9);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `email` varchar(50) NOT NULL,
  `score` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`email`, `score`) VALUES
('hxjc@gj.com', 40),
('pankajkumar.01869@gmail.com', 32),
('bjhdg@bdf.com', 0),
('pankajkumar.gniot@rediffmail.com', 28),
('anshulkmar@gg.com', 0),
('anshulkmar@gg.com', 0),
('anshulkmar@gg.com', 0),
('jdb@nxcnv.cij', 16),
('pankajkumar.01869@gmail.coc', 0),
('pankajkumar.01869@gmail.coc', 0),
('pankajkumar.01869@gmail.coc', 4),
('pankajkumar.01869@gmail.coc', 40),
('pankajkumar.01869@gmail.coc', 20),
('xy@gmail.com', 32),
('111@y', 4),
('111@y', 4),
('anshulkmar@gg.com', 28),
('111@y.com', 0),
('111@y.com', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `employer_details`
--
ALTER TABLE `employer_details`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_details`
--
ALTER TABLE `job_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
