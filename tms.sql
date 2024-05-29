-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2018 at 12:28 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_task`
--

CREATE TABLE IF NOT EXISTS `admin_task` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_title`
--

CREATE TABLE IF NOT EXISTS `group_title` (
  `group_name` varchar(50) NOT NULL,
  `group_leader` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_title`
--

INSERT INTO `group_title` (`group_name`, `group_leader`) VALUES
('admin', 'admin'),
('server', 'philip'),
('computer_lab_tech', 'reintje'),
('telephone_tech', 'brian'),
('admin_tech', 'lyndon'),
('audit', ''),
('nwe', '');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `groups` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `group_task` varchar(50) NOT NULL,
  `individ_task` varchar(50) NOT NULL,
  `task_status_indi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`username`, `password`, `groups`, `position`, `group_task`, `individ_task`, `task_status_indi`) VALUES
('admin', 'admin', 'admin', 'admin', '', '', ''),
('philip', '1234', 'server', 'leader', 'server_maintenace', '', ''),
('amoy', '1234', 'computer_lab_tech', 'member', '', 'network_ict_dept', '20'),
('boyit', '1234', 'computer_lab_tech', 'member', '', 'network_simlab', '60'),
('alex', 'admin', 'admin', 'admin', '', '', ''),
('lyndon', '1234', 'admin_tech', 'leader', 'admin_task', '', ''),
('reintje', '1234', 'computer_lab_tech', 'leader', 'networking', '', ''),
('brian', '1234', 'telephone_tech', 'leader', 'resolve_telephone', '', ''),
('rex', '1234', 'telephone_tech', 'member', '', '', ''),
('smith', '1234', 'admin_tech', 'member', '', '', ''),
('bryan', '1234', 'server', 'member', '', '', '100'),
('mendoza', '1234', 'admin_tech', 'member', '', '', ''),
('liberty', '1234', 'server', 'member', '', 'bggg', '20'),
('ad', 'ad', 'computer_lab_tech', 'member', '', '', ''),
('uybgsdi', '22333', 'admin_tech', 'member', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE IF NOT EXISTS `messaging` (
  `ctrl_no` int(255) NOT NULL,
  `date_send` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_receiver` varchar(50) NOT NULL,
  `from_sender` varchar(50) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `mail_subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messaging`
--

INSERT INTO `messaging` (`ctrl_no`, `date_send`, `to_receiver`, `from_sender`, `opened`, `mail_subject`, `message`) VALUES
(298, '2018-02-06 14:34:59', 'philip', 'liberty', 0, '', 'yvuhvhyuiviyvuiy'),
(297, '2018-02-06 14:34:26', 'philip', 'liberty', 0, 'agency cnt complete work i am sick ', 'sick cnt do task \r\ncan i do after my recovery ,,,,,'),
(295, '2018-02-05 20:00:43', 'brian', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(296, '2018-02-06 11:42:33', 'brian', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(258, '2009-10-15 18:13:45', 'brian', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(259, '2009-10-15 18:26:19', 'amoy', 'reintje', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(262, '2018-02-05 11:43:45', 'lyndon', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(263, '2018-02-05 11:44:07', 'lyndon', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(266, '2018-02-05 11:48:26', 'admin', 'philip', 1, 'task noted', 'thankx on progress now'),
(271, '2018-02-05 18:25:48', 'liberty', 'philip', 1, 'work in progress', 'notfy mi when u finish the task'),
(268, '2018-02-05 11:58:42', 'brian', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(269, '2018-02-05 13:39:18', 'reintje', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(270, '2018-02-05 18:23:32', 'philip', 'liberty', 1, 'task noted', 'i got it sir '),
(299, '2018-02-08 20:43:25', 'lyndon', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(300, '2018-02-08 20:43:32', 'philip', 'admin', 1, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(301, '2018-02-08 20:44:54', 'admin', 'philip', 1, 'task noted sir', 'uyuuuuuu'),
(294, '2017-10-02 03:33:59', 'liberty', 'philip', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(293, '2018-02-05 19:28:13', 'bryan', 'philip', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.');

-- --------------------------------------------------------

--
-- Table structure for table `networking`
--

CREATE TABLE IF NOT EXISTS `networking` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `network_simlab` varchar(255) NOT NULL,
  `network_ict_dept` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networking`
--

INSERT INTO `networking` (`username`, `accepted`, `network_simlab`, `network_ict_dept`) VALUES
('boyit', 1, 'working', ''),
('amoy', 1, '', 'working');

-- --------------------------------------------------------

--
-- Table structure for table `resolve_telephone`
--

CREATE TABLE IF NOT EXISTS `resolve_telephone` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sent_items`
--

CREATE TABLE IF NOT EXISTS `sent_items` (
  `ctrl_no` int(255) NOT NULL,
  `date_send` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_receiver` varchar(50) NOT NULL,
  `from_sender` varchar(50) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `mail_subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_items`
--

INSERT INTO `sent_items` (`ctrl_no`, `date_send`, `to_receiver`, `from_sender`, `opened`, `mail_subject`, `message`) VALUES
(59, '2009-10-15 18:26:20', 'boyit', 'reintje', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(58, '2009-10-15 18:26:19', 'amoy', 'reintje', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(56, '2009-10-15 18:13:44', 'philip', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(57, '2009-10-15 18:13:45', 'brian', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(54, '2009-10-15 18:13:43', 'lyndon', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(55, '2009-10-15 18:13:44', 'reintje', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(61, '2018-02-05 11:43:45', 'lyndon', 'admin', 1, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(62, '2018-02-05 11:44:07', 'lyndon', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(63, '2018-02-05 11:46:26', 'philip', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(64, '2018-02-05 11:46:29', 'philip', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(65, '2018-02-05 11:48:26', 'admin', 'philip', 1, 'task noted', 'thankx on progress now'),
(66, '2018-02-05 11:58:39', 'philip', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(67, '2018-02-05 11:58:42', 'brian', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(68, '2018-02-05 13:39:18', 'reintje', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(69, '2018-02-05 18:23:32', 'philip', 'liberty', 0, 'task noted', 'i got it sir '),
(70, '2018-02-05 18:25:48', 'liberty', 'philip', 0, 'work in progress', 'notfy mi when u finish the task'),
(99, '2018-02-08 20:43:32', 'philip', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(100, '2018-02-08 20:44:54', 'admin', 'philip', 0, 'task noted sir', 'uyuuuuuu'),
(92, '2018-02-05 19:28:13', 'bryan', 'philip', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(98, '2018-02-08 20:43:26', 'lyndon', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(94, '2018-02-05 20:00:43', 'brian', 'admin', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(95, '2018-02-06 11:42:33', 'brian', 'admin', 1, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(96, '2018-02-06 14:34:26', 'philip', 'liberty', 0, 'agency cnt complete work i am sick ', 'sick cnt do task \r\ncan i do after my recovery ,,,,,');

-- --------------------------------------------------------

--
-- Table structure for table `server_maintenace`
--

CREATE TABLE IF NOT EXISTS `server_maintenace` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `backup_all_files` varchar(255) NOT NULL,
  `gfg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server_maintenace`
--

INSERT INTO `server_maintenace` (`username`, `accepted`, `backup_all_files`, `gfg`) VALUES
('', 0, 'pending', ''),
('', 0, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE IF NOT EXISTS `task_list` (
  `taskname` varchar(50) NOT NULL,
  `ds` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`taskname`, `ds`) VALUES
('networking', 'network all desktop computer in campus (MUST)'),
('resolve_telephone', 'resolve telephone line in ICT department'),
('server_maintenace', 'maintain server...upgrade server'),
('admin_task', 'network all computers in admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `groups` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`email`, `username`, `password`, `groups`, `position`, `fname`, `lname`) VALUES
('sgggggggggggg', 'ad', 'ad', '', '', 'ad', 'ad'),
('aquarius_1727@yahoo.com', 'admin', 'admin', '', '', 'admin', 'admin'),
('.....', 'alex', 'admin', '', '', 'alex', 'maureal'),
('b', 'brian', '1234', '', '', 'brian', 'torres'),
('aa@ffagag', 'dfffgggghjkk', 'g', '', '', 'g', 'g'),
('t@tgmail.com', 'fgfyhg', 'polo', '', '', 'kvuvujv', 'yhfguguy'),
('d', 'lyndon', '1234', '', '', 'lydon', 'baylin'),
('c', 'philip', '1234', '', '', 'philip', 'abamonga'),
('a', 'reintje', '1234', '', '', 'reintje', 'francisco'),
('wrerw@gmail.com', 'ssrrrrrrr', 'a', '', '', 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_title`
--
ALTER TABLE `group_title`
  ADD PRIMARY KEY (`group_name`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`ctrl_no`);

--
-- Indexes for table `sent_items`
--
ALTER TABLE `sent_items`
  ADD PRIMARY KEY (`ctrl_no`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`taskname`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`username`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `ctrl_no` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT for table `sent_items`
--
ALTER TABLE `sent_items`
  MODIFY `ctrl_no` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
