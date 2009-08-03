-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 27, 2009 at 05:07 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `fresh_cms`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `ci_sessions`
-- 

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(16) NOT NULL default '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

-- 
-- Table structure for table `groups`
-- 

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL default '',
  `description` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

-- 
-- Table structure for table `pages`
-- 

CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL default '100',
  `token` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `recover` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=6 ;

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES (NULL, 'home', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed libero consectetur arcu suscipit convallis. Sed accumsan dictum risus, sollicitudin eleifend velit mollis eget. Curabitur varius orci sagittis sapien elementum porta. Pellentesque interdum nulla quis purus luctus nec auctor sem venenatis. Vivamus ultrices odio sit amet metus faucibus suscipit. Morbi sed enim a sapien facilisis scelerisque. Duis facilisis leo quis sapien laoreet eget mollis ipsum condimentum. Etiam placerat accumsan leo, vel faucibus nunc ultrices vel. Aenean tristique mi vitae orci consequat id fermentum tortor accumsan. Donec adipiscing turpis sem. Mauris rhoncus tellus ac elit consequat consectetur. Maecenas elementum volutpat ligula at malesuada.', 'home');
