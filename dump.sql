-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:18889
-- Generation Time: Jun 07, 2017 at 04:29 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `le_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `actualStart` bigint(20) NOT NULL,
  `actualEnd` bigint(20) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `progressValue` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `actualStart`, `actualEnd`, `parent`, `progressValue`) VALUES
(1, 'Test parent task', 1493640000000, 1493719200000, NULL, '10%'),
(2, 'Child task 1', 1493640000000, 1493675769828, 1, '20%'),
(3, 'Child task 2', 1493686800000, 1493719200000, 1, '10%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;