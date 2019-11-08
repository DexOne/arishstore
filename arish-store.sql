-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2019 at 11:55 PM
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
(6, 'سينما امريكية', '', 1, 0, 0, 0, 0);

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
(1, 'this is post one', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 21:09:01', 6, 1, 1, 1, NULL, 53),
(2, 'this is post two', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:37:20', 5.5, 1, 1, 1, NULL, 0),
(3, 'this is post three', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:37:24', 5.7, 1, 1, 1, NULL, 0),
(4, 'this is post four', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:37:27', 5, 1, 1, 1, NULL, 0),
(5, 'this is post five', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:37:29', 5, 1, 1, 1, NULL, 0),
(6, 'this is post s6', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:37:31', 5, 1, 2, 1, NULL, 0),
(7, 'this is post seven', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:37:34', 5, 1, 2, 1, NULL, 0),
(8, 'this is post eight', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:37:38', 5, 1, 2, 1, NULL, 0),
(9, 'this is post nine', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:37:41', 5, 1, 2, 1, NULL, 0),
(10, 'this is post ten', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:37:44', 5, 1, 2, 1, NULL, 0),
(11, 'this is post one.2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:37:48', 5, 1, 1, 1, NULL, 0),
(12, 'this is post two .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:37:51', 5, 1, 1, 1, NULL, 0),
(13, 'this is post three .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:37:54', 5, 1, 1, 1, NULL, 0),
(14, 'this is post four .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:37:57', 5, 1, 1, 1, NULL, 0),
(15, 'this is post five .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:38:00', 5, 1, 1, 1, NULL, 0),
(16, 'this is post s6.2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:38:03', 5, 1, 2, 1, NULL, 0),
(17, 'this is post seven .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:38:06', 5, 1, 2, 1, NULL, 0),
(18, 'this is post eight .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:38:10', 5, 1, 2, 1, NULL, 0),
(19, 'this is post nine .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:38:13', 5, 1, 2, 1, NULL, 0),
(20, 'this is post ten .2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:38:15', 5, 1, 2, 1, NULL, 0),
(21, 'this is Hog 1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:38:18', 5, 1, 3, 1, NULL, 0),
(22, 'this is Hog 2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:38:20', 5, 1, 3, 1, NULL, 0),
(23, 'this is Hog 3', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:38:23', 5, 1, 3, 1, NULL, 0),
(24, 'this is Hog 4', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:38:25', 5, 1, 3, 1, NULL, 0),
(25, 'this is Hog 5', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:38:27', 5, 1, 3, 1, NULL, 0),
(26, 'this is Hog 6', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:38:30', 5, 1, 3, 1, NULL, 0),
(27, 'this is Hog 7', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:38:39', 5, 1, 3, 1, NULL, 0),
(28, 'this is Hog 8', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:38:41', 5, 1, 3, 1, NULL, 0),
(29, 'this is Hog 9', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:38:45', 5, 1, 3, 1, NULL, 0),
(30, 'this is Hog 10', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:38:48', 5, 1, 3, 1, NULL, 0),
(31, 'this is Hog 11', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:38:50', 5, 1, 3, 1, NULL, 0),
(32, 'this is Hog 12', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:38:53', 5, 1, 3, 1, NULL, 0),
(33, 'this is Hog 13', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:38:56', 5, 1, 3, 1, NULL, 0),
(34, 'this is Hog 14', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:39:00', 5, 1, 3, 1, NULL, 0),
(35, 'this is Hog 15', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:39:06', 5, 1, 3, 1, NULL, 0),
(36, 'this is Hog 16', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:39:09', 5, 1, 3, 1, NULL, 0),
(37, 'this is Hog 17', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:39:12', 5, 1, 3, 1, NULL, 0),
(38, 'this is Hog 18', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:39:15', 9, 1, 3, 1, NULL, 0),
(39, 'this is Hog 19', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:39:22', 5, 1, 3, 1, NULL, 0),
(40, 'this is Hog 20', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:39:24', 5, 1, 3, 1, NULL, 0),
(41, 'this is NightKing 1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:39:26', 5, 1, 4, 1, NULL, 0),
(42, 'this is NightKing 2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:39:29', 5, 1, 4, 1, NULL, 0),
(43, 'this is NightKing 3', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:39:31', 5, 1, 4, 1, NULL, 0),
(44, 'this is NightKing 4', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:39:35', 5, 1, 4, 1, NULL, 0),
(45, 'this is NightKing 5', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:39:37', 5, 1, 4, 1, NULL, 0),
(46, 'this is NightKing 6', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:39:40', 5, 1, 4, 1, NULL, 0),
(47, 'this is NightKing 7', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:39:42', 5, 1, 4, 1, NULL, 0),
(48, 'this is NightKing 8', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:39:45', 5, 1, 4, 1, NULL, 0),
(49, 'this is NightKing 9', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:39:47', 5, 1, 4, 1, NULL, 0),
(50, 'this is NightKing 10', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:39:50', 5, 1, 4, 1, NULL, 0),
(51, 'this is NightKing 11', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:39:52', 5, 1, 4, 1, NULL, 0),
(52, 'this is NightKing 12', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:39:55', 5, 1, 4, 1, NULL, 0),
(53, 'this is NightKing 13', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:39:58', 5, 1, 4, 1, NULL, 0),
(54, 'this is NightKing 14', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:40:01', 5, 1, 4, 1, NULL, 0),
(55, 'this is NightKing 15', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:40:04', 5, 1, 3, 1, NULL, 0),
(56, 'this is NightKing 16', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:40:08', 5, 1, 4, 1, NULL, 0),
(57, 'this is NightKing 17', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:40:11', 5, 1, 4, 1, NULL, 0),
(58, 'this is NightKing 18', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:40:13', 5, 1, 4, 1, NULL, 0),
(59, 'this is NightKing 19', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:40:17', 5, 1, 4, 1, NULL, 0),
(60, 'this is NightKing 20', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:40:19', 5, 1, 4, 1, NULL, 0),
(61, 'post test 1.1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:40:23', 0, 1, 1, 2, NULL, 0),
(62, 'post test 1.1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:40:26', 5, 1, 1, 2, NULL, 0),
(63, 'post test 1.1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:40:28', 5, 1, 1, 2, NULL, 0),
(64, 'post test 1.2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:40:32', 5, 1, 1, 2, NULL, 0),
(65, 'post test 1.3', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:40:35', 5, 1, 1, 2, NULL, 0),
(66, 'post test 1.4', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:40:40', 5, 1, 1, 2, NULL, 0),
(67, 'post test 1.5', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:40:42', 5, 1, 1, 2, NULL, 0),
(68, 'post test 1.6', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:40:45', 5, 1, 1, 2, NULL, 0),
(69, 'post test 1.7', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:40:47', 5, 1, 1, 2, NULL, 0),
(70, 'post test 1.8', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:40:50', 5, 1, 1, 2, NULL, 0),
(71, 'post test 1.1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:40:52', 5, 1, 1, 2, NULL, 0),
(72, 'post test 1.9', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:40:54', 5, 1, 1, 2, NULL, 0),
(73, 'post test 1.10', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:40:57', 5, 1, 1, 2, NULL, 0),
(74, 'post test 2.1', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:40:58', 5, 1, 2, 2, NULL, 0),
(75, 'post test 2.2', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:41:00', 5, 1, 2, 2, NULL, 0),
(76, 'post test 2.3', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:41:04', 5, 1, 2, 2, NULL, 0),
(77, 'post test 2.4', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:41:06', 5, 1, 2, 2, NULL, 0),
(78, 'post test 2.5', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:41:09', 5, 1, 2, 2, NULL, 0),
(79, 'post test 2.6', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:41:11', 5, 1, 2, 2, NULL, 0),
(80, 'post test 2.7', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:41:14', 5, 1, 2, 2, NULL, 0),
(81, 'post test 2.8', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:41:16', 5, 1, 2, 2, 'prepare,this,not,tags', 0),
(82, 'post test 2.9', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:41:18', 5, 1, 2, 2, NULL, 0),
(83, 'post test 2.10', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'combo.jpg', '1', '2019-11-07 23:41:21', 9.5, 1, 2, 2, 'prepare , this , not , tags', 0),
(84, 'post test 1.50', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shopping.jpg', '1', '2019-11-07 23:41:23', 5, 1, 1, 2, NULL, 0),
(85, 'this is post f50.', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'clothes.jpg', '1', '2019-11-07 23:41:25', 6, 1, 1, 1, NULL, 0),
(86, 'post test dan nn_ru', 'هذا وصف تجريبى لوصف منتج تجريبى , فقط من أجل ذلك .', 'shop.jpg', '1', '2019-11-07 23:41:29', 9.5, 1, 2, 1, 'prepare , this , not , tags', 0);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
