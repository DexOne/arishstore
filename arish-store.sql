-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2019 at 01:03 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arish-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `parent` int(11) NOT NULL,
  `Ordering` int(11) DEFAULT NULL,
  `Visibility` tinyint(4) NOT NULL DEFAULT '0',
  `Allow_Comment` tinyint(4) NOT NULL DEFAULT '0',
  `Allow_Ads` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Name`, `Description`, `parent`, `Ordering`, `Visibility`, `Allow_Comment`, `Allow_Ads`) VALUES
(1, 'اكسسورارات', '', 0, 0, 1, 1, 1),
(2, 'احذية وساعات', '', 0, 0, 1, 1, 1),
(3, 'ملابس رجالى', '', 0, 0, 1, 1, 1),
(4, 'ملابس حريمى', '', 0, 0, 1, 1, 1),
(5, 'مسلسلات تلفزيونية', '', 1, 0, 0, 0, 0),
(6, 'سينما امريكية', '', 1, 0, 0, 0, 0),
(7, 'موبايلات', 'وصف الموبايلات', 0, NULL, 0, 0, 0),
(8, 'اجهزة كهربائية', 'وصف الأجهزة الكهربائية', 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `comment_date` date NOT NULL,
  `post-id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `comment`, `status`, `comment_date`, `post-id`, `user-id`) VALUES
(1, 'this is hot comment!', 1, '2019-08-10', 83, 2),
(2, 'madooooo', 1, '2019-08-10', 83, 2),
(3, 'dudee', 1, '2019-08-10', 82, 2),
(5, 'comment for comment', 1, '2019-08-11', 80, 2),
(6, 'hola ...', 1, '2019-08-11', 82, 2),
(7, 'mootaa', 1, '2019-08-11', 82, 2),
(8, 'dats full screen', 1, '2019-08-11', 80, 2),
(9, 'hola frol m alla ', 1, '2019-08-11', 80, 2),
(10, 'ohhhhhhhh thats nice', 1, '2019-08-11', 80, 2),
(11, 'dany man', 1, '2019-08-11', 83, 2),
(12, 'daa', 1, '2019-08-11', 83, 2),
(13, 'ffopp', 1, '2019-08-11', 83, 2),
(14, 'ffopp', 0, '2019-08-11', 83, 2),
(15, 'ffopp', 0, '2019-08-11', 83, 2),
(16, 'ffopp', 0, '2019-08-11', 83, 2),
(17, 'ffopp', 0, '2019-08-11', 83, 2),
(18, 'ffopp', 0, '2019-08-11', 83, 2),
(19, 'ffopp', 0, '2019-08-11', 83, 2),
(20, 'ffopp', 0, '2019-08-11', 83, 2),
(21, 'ffopp', 0, '2019-08-11', 83, 1),
(22, 'ffopp', 0, '2019-08-11', 83, 1),
(23, 'ffopp', 0, '2019-08-11', 83, 1),
(24, 'ffopp', 0, '2019-08-11', 83, 1),
(25, 'ffopp', 0, '2019-08-11', 83, 1),
(26, 'dang bang', 0, '2019-08-11', 83, 1),
(33, 'daaaaaa', 1, '2019-08-14', 72, 2),
(34, 'dad-sh hanty cant', 1, '2019-08-26', 81, 1),
(51, '', 0, '2019-09-04', 86, 1),
(52, '', 0, '2019-09-04', 85, 1),
(53, 'fds', 0, '2019-09-04', 85, 1),
(54, '', 0, '2019-09-04', 85, 1),
(55, 'هاى شات', 1, '2019-11-04', 68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Post_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Add_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Rating` float NOT NULL,
  `Approve` tinyint(4) NOT NULL DEFAULT '0',
  `Cat_ID` int(11) NOT NULL,
  `Member_ID` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Post_ID`, `Name`, `Description`, `Image`, `Status`, `Add_Date`, `Rating`, `Approve`, `Cat_ID`, `Member_ID`, `tags`, `Price`) VALUES
(1, 'منتج تجريبى 1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:28:45', 6, 1, 1, 1, NULL, 53),
(2, 'منتج تجريبى 2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:28:58', 5.5, 1, 1, 1, NULL, 0),
(3, 'منتج تجريبى 3', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:29:02', 5.7, 1, 1, 1, NULL, 0),
(4, 'منتج تجريبى 4', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:29:08', 5, 1, 1, 1, NULL, 0),
(5, 'منتج تجريبى 5', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:29:13', 5, 1, 1, 1, NULL, 0),
(6, 'منتج تجريبى 6', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:29:16', 5, 1, 2, 1, NULL, 0),
(7, 'منتج تجريبى 7', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:29:21', 5, 1, 2, 1, NULL, 0),
(8, 'منتج تجريبى 8', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:29:59', 5, 1, 2, 1, NULL, 0),
(9, 'منتج تجريبى 9', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:30:03', 5, 1, 2, 1, NULL, 0),
(10, 'منتج تجريبى 10', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:30:08', 5, 1, 2, 1, NULL, 0),
(11, 'منتج تجريبى 11', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:30:12', 5, 1, 1, 1, NULL, 0),
(12, 'منتج تجريبى 12', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:30:19', 5, 1, 1, 1, NULL, 0),
(13, 'منتج تجريبى 13', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:30:23', 5, 1, 1, 1, NULL, 0),
(14, 'منتج تجريبى 14', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:30:28', 5, 1, 1, 1, NULL, 0),
(15, 'منتج تجريبى 15', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:30:31', 5, 1, 1, 1, NULL, 0),
(16, 'منتج تجريبى 16', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:30:36', 5, 1, 2, 1, NULL, 0),
(17, 'منتج تجريبى 17', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:30:39', 5, 1, 2, 1, NULL, 0),
(18, 'منتج تجريبى 18', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:30:43', 5, 1, 2, 1, NULL, 0),
(19, 'منتج تجريبى 19', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:30:46', 5, 1, 2, 1, NULL, 0),
(20, 'منتج تجريبى 20', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:30:58', 5, 1, 2, 1, NULL, 0),
(21, 'منتج تجريبى 21', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:31:01', 5, 1, 3, 1, NULL, 0),
(22, 'منتج تجريبى 22', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:31:04', 5, 1, 3, 1, NULL, 0),
(23, 'منتج تجريبى 23', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:31:08', 5, 1, 3, 1, NULL, 0),
(24, 'منتج تجريبى 24', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:31:16', 5, 1, 3, 1, NULL, 0),
(25, 'منتج تجريبى 25', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:31:22', 5, 1, 3, 1, NULL, 0),
(26, 'منتج تجريبى 26', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:31:26', 5, 1, 3, 1, NULL, 0),
(27, 'منتج تجريبى 27', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:31:32', 5, 1, 3, 1, NULL, 0),
(28, 'منتج تجريبى 28', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:31:36', 5, 1, 3, 1, NULL, 0),
(29, 'منتج تجريبى 29', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:31:47', 5, 1, 3, 1, NULL, 0),
(30, 'منتج تجريبى 30', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:32:00', 5, 1, 3, 1, NULL, 0),
(31, 'منتج تجريبى 31', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:32:04', 5, 1, 3, 1, NULL, 0),
(32, 'منتج تجريبى 32', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:32:10', 5, 1, 3, 1, NULL, 0),
(33, 'منتج تجريبى 33', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:32:15', 5, 1, 3, 1, NULL, 0),
(34, 'منتج تجريبى 34', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:32:19', 5, 1, 3, 1, NULL, 0),
(35, 'منتج تجريبى 35', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:32:24', 5, 1, 3, 1, NULL, 0),
(36, 'منتج تجريبى 36', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:32:28', 5, 1, 3, 1, NULL, 0),
(37, 'منتج تجريبى 37', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:32:33', 5, 1, 3, 1, NULL, 0),
(38, 'منتج تجريبى 38', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:32:37', 9, 1, 3, 1, NULL, 0),
(39, 'منتج تجريبى 39', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:32:43', 5, 1, 3, 1, NULL, 0),
(40, 'منتج تجريبى 40', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:32:53', 5, 1, 3, 1, NULL, 0),
(41, 'منتج تجريبى 41', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:33:04', 5, 1, 4, 1, NULL, 0),
(42, 'منتج تجريبى 42', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:33:08', 5, 1, 4, 1, NULL, 0),
(43, 'منتج تجريبى 43', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:33:17', 5, 1, 4, 1, NULL, 0),
(44, 'منتج تجريبى 44', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:33:21', 5, 1, 4, 1, NULL, 0),
(45, 'منتج تجريبى 45', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:33:27', 5, 1, 4, 1, NULL, 0),
(46, 'منتج تجريبى 46', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:33:34', 5, 1, 4, 1, NULL, 0),
(47, 'منتج تجريبى 47', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:33:46', 5, 1, 4, 1, NULL, 0),
(48, 'منتج تجريبى 48', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:33:51', 5, 1, 4, 1, NULL, 0),
(49, 'منتج تجريبى 49', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:34:00', 5, 1, 4, 1, NULL, 0),
(50, 'منتج تجريبى 50', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:34:06', 5, 1, 4, 1, NULL, 0),
(51, 'منتج تجريبى 51', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:34:11', 5, 1, 4, 1, NULL, 0),
(52, 'منتج تجريبى 52', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:34:17', 5, 1, 4, 1, NULL, 0),
(53, 'منتج تجريبى 53', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:34:21', 5, 1, 4, 1, NULL, 0),
(54, 'منتج تجريبى 54', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:34:29', 5, 1, 4, 1, NULL, 0),
(55, 'منتج تجريبى 55', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:34:33', 5, 1, 3, 1, NULL, 0),
(56, 'منتج تجريبى 56', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:34:40', 5, 1, 4, 1, NULL, 0),
(57, 'منتج تجريبى 57', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:34:46', 5, 1, 4, 1, NULL, 0),
(58, 'منتج تجريبى 58', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:34:53', 5, 1, 4, 1, NULL, 0),
(59, 'منتج تجريبى 59', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:34:57', 5, 1, 4, 1, NULL, 0),
(60, 'منتج تجريبى 60', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:35:04', 5, 1, 4, 1, NULL, 0),
(61, 'منتج تجريبى 61', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:35:11', 0, 1, 1, 2, NULL, 0),
(62, 'منتج تجريبى 62', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:35:16', 5, 1, 1, 2, NULL, 0),
(63, 'منتج تجريبى 63', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:35:23', 5, 1, 1, 2, NULL, 0),
(64, 'منتج تجريبى 64', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:35:25', 5, 1, 1, 2, NULL, 0),
(65, 'منتج تجريبى 65', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:35:28', 5, 1, 1, 2, NULL, 0),
(66, 'منتج تجريبى 66', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:35:32', 5, 1, 1, 2, NULL, 0),
(67, 'منتج تجريبى 67', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:35:35', 5, 1, 1, 2, NULL, 0),
(68, 'منتج تجريبى 68', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:35:39', 5, 1, 1, 2, NULL, 0),
(69, 'منتج تجريبى 69', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:35:42', 5, 1, 1, 2, NULL, 0),
(70, 'منتج تجريبى 70', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:35:47', 5, 1, 1, 2, NULL, 0),
(71, 'منتج تجريبى 71', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:35:55', 5, 1, 1, 2, NULL, 0),
(72, 'منتج تجريبى 72', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:36:00', 5, 1, 1, 2, NULL, 0),
(73, 'منتج تجريبى 73', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:36:03', 5, 1, 1, 2, NULL, 0),
(74, 'منتج تجريبى 74', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:36:07', 5, 1, 2, 2, NULL, 0),
(75, 'منتج تجريبى 75', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:36:10', 5, 1, 2, 2, NULL, 0),
(76, 'منتج تجريبى 76', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:36:13', 5, 1, 2, 2, NULL, 0),
(77, 'منتج تجريبى 77', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:36:16', 5, 1, 2, 2, NULL, 0),
(78, 'منتج تجريبى 78', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:36:20', 5, 1, 2, 2, NULL, 0),
(79, 'منتج تجريبى 79', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:36:25', 5, 1, 2, 2, NULL, 0),
(80, 'منتج تجريبى 80', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:36:38', 5, 1, 2, 2, NULL, 0),
(81, 'منتج تجريبى 81', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:36:43', 5, 1, 2, 2, 'prepare,this,not,tags', 0),
(82, 'منتج تجريبى 82', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:36:45', 5, 1, 2, 2, NULL, 0),
(83, 'منتج تجريبى 83', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-08 19:36:49', 9.5, 1, 2, 2, 'prepare , this , not , tags', 0),
(84, 'منتج تجريبى 84', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-08 19:36:53', 5, 1, 1, 2, NULL, 0),
(85, 'منتج تجريبى 85', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-08 19:36:56', 6, 1, 1, 1, NULL, 0),
(86, 'منتج تجريبى 86', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-08 19:36:59', 9.5, 1, 2, 1, 'prepare , this , not , tags', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id_sub` int(11) NOT NULL,
  `name_sub` varchar(255) NOT NULL,
  `desc_sub` varchar(255) NOT NULL,
  `allow_comments` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id_sub`, `name_sub`, `desc_sub`, `allow_comments`, `category_id`) VALUES
(1, 'بوب', 'description', 1, 3),
(2, 'مسلسلات تلفيزيونية', 'description', 1, 1),
(3, 'فضاء', 'description', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL COMMENT 'To Identify User',
  `Username` varchar(255) NOT NULL COMMENT 'Username To Login',
  `Password` varchar(255) NOT NULL COMMENT 'Password To Login',
  `Email` varchar(255) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0' COMMENT 'Identify User Group',
  `TrustStatus` int(11) NOT NULL DEFAULT '0' COMMENT 'Seller Rank',
  `RegStatus` int(11) NOT NULL DEFAULT '0' COMMENT 'User Approval',
  `Date` date NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `FullName`, `GroupID`, `TrustStatus`, `RegStatus`, `Date`, `avatar`) VALUES
(1, 'emad', '1d18ebdd59271e9ec7a92337048508c5dc9a48be', 'o@elzero.info', 'Osama Mohamed', 1, 0, 1, '0000-00-00', '533524_15284026_574967966044150_4480134981897001657_n.jpg'),
(2, 'Kayla', '601f1889667efaebb33b8c12572835da3f027f78', 'ahmed@ahmed.com', 'Ahmed Sameh', 0, 0, 1, '2016-05-06', '30670_avatar.jpg'),
(3, 'shosho_two', '601f1889667efaebb33b8c12572835da3f027f78', 'ahmed@ahmed.com', 'Ahmed Sameh', 0, 0, 1, '2016-05-06', '787675_hannibal.png'),
(4, 'dody', '601f1889667efaebb33b8c12572835da3f027f78', 'dody@dody.com', 'dody elgbass', 0, 1, 1, '2019-10-28', '30670_avatar.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `comment_user` (`user-id`),
  ADD KEY `user-id` (`user-id`),
  ADD KEY `post-id` (`post-id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Post_ID`),
  ADD KEY `member_1` (`Member_ID`),
  ADD KEY `cat_1` (`Cat_ID`),
  ADD KEY `Post_ID` (`Post_ID`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'To Identify User', AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comment_user` FOREIGN KEY (`user-id`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_comment` FOREIGN KEY (`post-id`) REFERENCES `posts` (`Post_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `cat_1` FOREIGN KEY (`Cat_ID`) REFERENCES `categories` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_1` FOREIGN KEY (`Member_ID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_cat` FOREIGN KEY (`category_id`) REFERENCES `categories` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
