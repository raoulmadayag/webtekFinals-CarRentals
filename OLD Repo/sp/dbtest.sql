-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2017 at 03:45 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `remarks` varchar(100) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `trace_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_activity_log_1` (`userId`),
  KEY `FK_activity_log_2` (`trace_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=585 ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `remarks`, `type`, `date`, `userId`, `trace_id`) VALUES
(584, NULL, 'edit_profile', '2016-12-21 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Block',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `created`, `modified`, `status`) VALUES
(6, 'dasfas', '2017-02-08', '2017-02-13 04:49:14', '2017-02-13 04:49:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `friend_request`
--

CREATE TABLE IF NOT EXISTS `friend_request` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `friend` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `messages` varchar(5000) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`userId`, `username`, `messages`) VALUES
(1, 'Kupal', 'kjskldjas'),
(2, 'Siyak', 'kadjlda'),
(3, 'fasfsdsfsdfs', 'sfdfsfs'),
(4, 'Feby', 'DENIIIISSSSEEEE!!!'),
(5, 'Denise', 'oooooohhhhh? bakit?');

-- --------------------------------------------------------

--
-- Table structure for table `my_friends`
--

CREATE TABLE IF NOT EXISTS `my_friends` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `friend` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `my_friends`
--

INSERT INTO `my_friends` (`id`, `username`, `friend`) VALUES
(14, 'feby', 'phoebe zarate'),
(15, 'phoebe zarate', 'feby');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `userType` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT 'serviceProvider',
  `userStatus` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT 'pending',
  `userImage` varchar(500) NOT NULL DEFAULT 'profile/big_avatar.jpg',
  `userFirstName` varchar(45) NOT NULL,
  `userLastName` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `userType`, `userStatus`, `userImage`, `userFirstName`, `userLastName`) VALUES
(4, 'feby', 'feby@gmail.com', 'd70e2b6923ba8eb735a5ded317684597f8b13423fe8ab43c8530f771808e220b', 'serviceProvider', 'pending', '80882-Koala.jpg', 'Feby', 'Zarate'),
(5, 'denise', 'denise@gmail.com', 'b0ee6afd12e7da9d94aabde4153fd8a3ec771002f11f038d359f30367ef1bc9b', 'serviceProvider', 'pending', 'images/big_avatar.jpg', 'Denise', 'Ducusin'),
(6, 'phoebe zarate', 'febz@gmail.com', 'd70e2b6923ba8eb735a5ded317684597f8b13423fe8ab43c8530f771808e220b', 'serviceProvider', 'pending', 'images/big_avatar.jpg', 'Phoebe', 'Zarate'),
(7, 'baltot', 'bale@gmail.com', 'c8388bbad0a1fe9561b945147794d1c8fb6cf8d388c20a865a1c6a1d72686767', 'serviceProvider', 'pending', 'images/big_avatar.jpg', 'Justine', 'Alina');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE IF NOT EXISTS `user_post` (
  `user_postid` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_time` datetime NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`user_postid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`user_postid`, `post`, `post_time`, `userId`) VALUES
(1, 'trying to run this', '2016-12-07 00:48:59', 1),
(2, 'trying to run this', '2016-12-07 00:49:16', 1),
(3, 'i saw what i wanted', '2016-12-07 01:13:06', 1),
(4, 'Hi!!! We are the Party People!! :-D', '2016-12-07 19:55:35', 2),
(5, 'Hello!', '2016-12-16 10:24:38', 4),
(6, 'WAZZUP!!', '2016-12-17 21:20:50', 4),
(7, 'testing testing!!!', '2017-01-28 20:06:28', 4),
(8, 'test test test!!!!', '2017-01-28 22:00:18', 6),
(9, 'nice', '2017-01-28 22:01:12', 4),
(10, 'yebah!!', '2017-01-28 22:05:26', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
