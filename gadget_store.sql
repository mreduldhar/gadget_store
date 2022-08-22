-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 10:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadget_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(3, 'mridul1@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(4, 'dharr@gmail.com', '0192023a7bbd73250516f069df18b500'),
(5, 'mredul.mu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'avisheak1@gmail.com', '0192023a7bbd73250516f069df18b500'),
(7, 'utsho@gmail.com', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, 'Mobile'),
(7, 'Laptop'),
(9, 'Headphone'),
(10, 'Smart Watch'),
(11, 'Earbuds'),
(12, 'Keyboard'),
(13, 'Mouse'),
(14, 'Speaker & Home Theater'),
(15, 'Neckband');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `time`) VALUES
(6, 'Mredul Kanthy Dhar', 'mreduldhar187@gmail.com', 'hello ', '2022-07-27'),
(7, 'aviisheak', 'avisheak1@gmail.com', 'hi brother, how ae you?', '2022-08-20'),
(8, 'utsho', 'utsho@gmail.com', 'hello brother, where are you?', '2022-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_name`, `user_email`, `user_address`, `user_mobile`, `payment_method`, `transaction_id`, `cart`, `order_date`, `status`) VALUES
(1, 8, 'Tarek', 'tarek111@gmail.com', 'Sylhet, bangladesh', '0184655656', 'cash-on-delivery', '279929', 'a:4:{s:32:\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\";a:6:{s:2:\"id\";s:2:\"32\";s:4:\"name\";s:8:\"One Plus\";s:3:\"qty\";d:1;s:5:\"price\";d:40;s:5:\"rowid\";s:32:\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\";s:8:\"subtotal\";d:40;}s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:6:{s:2:\"id\";s:2:\"33\";s:4:\"name\";s:6:\"Walton\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:8:\"subtotal\";d:100;}s:32:\"4e732ced3463d06de0ca9a15b6153677\";a:6:{s:2:\"id\";s:2:\"26\";s:4:\"name\";s:5:\"Konka\";s:3:\"qty\";d:1;s:5:\"price\";d:120;s:5:\"rowid\";s:32:\"4e732ced3463d06de0ca9a15b6153677\";s:8:\"subtotal\";d:120;}s:32:\"34173cb38f07f89ddbebc2ac9128303f\";a:6:{s:2:\"id\";s:2:\"30\";s:4:\"name\";s:3:\"Fan\";s:3:\"qty\";d:1;s:5:\"price\";d:180;s:5:\"rowid\";s:32:\"34173cb38f07f89ddbebc2ac9128303f\";s:8:\"subtotal\";d:180;}}', '2021-06-26 08:54:13pm', 1),
(2, 8, 'Shovon', 'tarek111@gmail.com', 'Sylhet, bangladesh', '0184655656', 'cash-on-delivery', '297497', 'a:2:{s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";a:6:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:2:\"HP\";s:3:\"qty\";d:1;s:5:\"price\";d:150;s:5:\"rowid\";s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";s:8:\"subtotal\";d:150;}s:32:\"c16a5320fa475530d9583c34fd356ef5\";a:6:{s:2:\"id\";s:2:\"31\";s:4:\"name\";s:2:\"LG\";s:3:\"qty\";d:1;s:5:\"price\";d:80;s:5:\"rowid\";s:32:\"c16a5320fa475530d9583c34fd356ef5\";s:8:\"subtotal\";d:80;}}', '2021-06-26 09:03:48pm', 2),
(3, 8, 'Shovon', 'tarek111@gmail.com', 'Sylhet, bangladesh', '0184655656', 'cash-on-delivery', '133985', 'a:2:{s:32:\"8e296a067a37563370ded05f5a3bf3ec\";a:6:{s:2:\"id\";s:2:\"25\";s:4:\"name\";s:19:\"Educational Storage\";s:3:\"qty\";d:1;s:5:\"price\";d:120;s:5:\"rowid\";s:32:\"8e296a067a37563370ded05f5a3bf3ec\";s:8:\"subtotal\";d:120;}s:32:\"33e75ff09dd601bbe69f351039152189\";a:6:{s:2:\"id\";s:2:\"28\";s:4:\"name\";s:13:\"Floor Cleaner\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"33e75ff09dd601bbe69f351039152189\";s:8:\"subtotal\";d:100;}}', '2021-06-26 09:04:04pm', 1),
(4, 8, 'Shovon', 'tarek111@gmail.com', 'Sylhet, bangladesh', '0184655656', 'cash-on-delivery', '997485', 'a:2:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:4:\"Sony\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:100;}s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:6:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:6:\"Walton\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:100;}}', '2021-06-26 09:04:34pm', 2),
(5, 12, 'uday', 'uday@gmail.com', 'Sylhet, bangladesh', '0184655656', 'cash-on-delivery', '256111', 'a:2:{s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:6:{s:2:\"id\";s:2:\"33\";s:4:\"name\";s:6:\"Walton\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:8:\"subtotal\";d:100;}s:32:\"c16a5320fa475530d9583c34fd356ef5\";a:6:{s:2:\"id\";s:2:\"31\";s:4:\"name\";s:2:\"LG\";s:3:\"qty\";d:1;s:5:\"price\";d:80;s:5:\"rowid\";s:32:\"c16a5320fa475530d9583c34fd356ef5\";s:8:\"subtotal\";d:80;}}', '2021-06-27 10:04:48pm', 1),
(6, 13, 'sam', 'sam@gmail.com', 'Sylhet, bangladesh', '0184655656', 'cash-on-delivery', '289798', 'a:2:{s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:6:{s:2:\"id\";s:2:\"33\";s:4:\"name\";s:6:\"Walton\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:8:\"subtotal\";d:100;}s:32:\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\";a:6:{s:2:\"id\";s:2:\"32\";s:4:\"name\";s:8:\"One Plus\";s:3:\"qty\";d:1;s:5:\"price\";d:40;s:5:\"rowid\";s:32:\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\";s:8:\"subtotal\";d:40;}}', '2021-06-27 10:30:00pm', 2),
(7, 16, 'mridul1@gmail.com', 'dhar@gmail.com', 'Sylhet, bangladesh', '0184655656', 'cash-on-delivery', '870451', 'a:3:{s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:6:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:2:\"LG\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:100;}s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:4:\"Sony\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:100;}s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:6:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:6:\"Walton\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:100;}}', '2021-12-20 03:27:04pm', 1),
(8, 21, 'raj1', 'raj1@gmail.com', 'chatak', '0123655454', 'cash-on-delivery', '484756', 'a:1:{s:32:\"a5771bce93e200c36f7cd9dfd0e5deaa\";a:6:{s:2:\"id\";s:2:\"38\";s:4:\"name\";s:20:\"Smansung Galaxy Gear\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"a5771bce93e200c36f7cd9dfd0e5deaa\";s:8:\"subtotal\";d:100;}}', '2022-07-11 05:01:48pm', 2),
(9, 21, 'munna2', 'munna2@gmail.com', 'chhatak', '012544512', 'cash-on-delivery', '835757', 'a:2:{s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";a:6:{s:2:\"id\";s:1:\"5\";s:4:\"name\";s:2:\"LG\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"e4da3b7fbbce2345d7772b0674a318d5\";s:8:\"subtotal\";d:100;}s:32:\"8f14e45fceea167a5a36dedd4bea2543\";a:6:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:6:\"Walton\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"8f14e45fceea167a5a36dedd4bea2543\";s:8:\"subtotal\";d:100;}}', '2022-07-15 12:03:43pm', 2),
(10, 22, 'munna1', 'munna1@gmail.com', 'chatak', '01236548', 'cash-on-delivery', '713267', 'a:2:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:16:\"realme Narzo 50A\";s:3:\"qty\";d:1;s:5:\"price\";d:200;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:200;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:800;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:800;}}', '2022-07-17 12:22:30pm', 1),
(11, 23, 'Mredul Dhar', 'mreduldhar@gmail.com', 'Sylhet', '017653187', 'cash-on-delivery', '739108', 'a:3:{s:32:\"d9d4f495e875a2e075a1a4a6e1b9770f\";a:6:{s:2:\"id\";s:2:\"46\";s:4:\"name\";s:8:\"Moto G60\";s:3:\"qty\";d:1;s:5:\"price\";d:400;s:5:\"rowid\";s:32:\"d9d4f495e875a2e075a1a4a6e1b9770f\";s:8:\"subtotal\";d:400;}s:32:\"6c8349cc7260ae62e3b1396831a8398f\";a:6:{s:2:\"id\";s:2:\"45\";s:4:\"name\";s:18:\"Apple Macbook Air \";s:3:\"qty\";d:1;s:5:\"price\";d:1200;s:5:\"rowid\";s:32:\"6c8349cc7260ae62e3b1396831a8398f\";s:8:\"subtotal\";d:1200;}s:32:\"f7177163c833dff4b38fc8d2872f1ec6\";a:6:{s:2:\"id\";s:2:\"44\";s:4:\"name\";s:16:\"Asus ZenBook 14 \";s:3:\"qty\";d:1;s:5:\"price\";d:1000;s:5:\"rowid\";s:32:\"f7177163c833dff4b38fc8d2872f1ec6\";s:8:\"subtotal\";d:1000;}}', '2022-07-17 12:38:55pm', 0),
(12, 24, 'munna dhar', 'munnadhar@gmail.com', 'Sylhet', '01765553187', 'cash-on-delivery', '575951', 'a:2:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:16:\"realme Narzo 50A\";s:3:\"qty\";d:3;s:5:\"price\";d:200;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:600;}s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";a:6:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:9:\"Galaxy S9\";s:3:\"qty\";d:2;s:5:\"price\";d:600;s:5:\"rowid\";s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";s:8:\"subtotal\";d:1200;}}', '2022-07-17 12:59:17pm', 1),
(13, 25, 'rajdhar', 'rajdhar@gmail.com', 'Chhatak', '01765553187', 'cash-on-delivery', '729297', 'a:1:{s:32:\"1ff1de774005f8da13f42943881c655f\";a:6:{s:2:\"id\";s:2:\"24\";s:4:\"name\";s:9:\"iPhone 11\";s:3:\"qty\";d:3;s:5:\"price\";d:900;s:5:\"rowid\";s:32:\"1ff1de774005f8da13f42943881c655f\";s:8:\"subtotal\";d:2700;}}', '2022-07-17 01:10:07pm', 0),
(14, 21, 'raj1', 'raj1@gmail.com', 'sylhet', '01903552086', 'cash-on-delivery', '691598', 'a:6:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:16:\"realme Narzo 50A\";s:3:\"qty\";d:1;s:5:\"price\";d:200;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:200;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:800;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:800;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:250;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:250;}s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";a:6:{s:2:\"id\";s:2:\"19\";s:4:\"name\";s:17:\"iPhone 13 Pro Max\";s:3:\"qty\";d:1;s:5:\"price\";d:1200;s:5:\"rowid\";s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";s:8:\"subtotal\";d:1200;}s:32:\"98f13708210194c475687be6106a3b84\";a:6:{s:2:\"id\";s:2:\"20\";s:4:\"name\";s:17:\"iPhone 12 Pro Max\";s:3:\"qty\";d:1;s:5:\"price\";d:1000;s:5:\"rowid\";s:32:\"98f13708210194c475687be6106a3b84\";s:8:\"subtotal\";d:1000;}s:32:\"3c59dc048e8850243be8079a5c74d079\";a:6:{s:2:\"id\";s:2:\"21\";s:4:\"name\";s:2:\"HP\";s:3:\"qty\";d:1;s:5:\"price\";d:500;s:5:\"rowid\";s:32:\"3c59dc048e8850243be8079a5c74d079\";s:8:\"subtotal\";d:500;}}', '2022-07-25 01:56:07pm', 2),
(15, 21, 'raj1', 'raj1@gmail.com', 'sylhet', '014457578578', 'card-payment', '', 'a:3:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";a:6:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:9:\"Galaxy S9\";s:3:\"qty\";d:1;s:5:\"price\";d:90000;s:5:\"rowid\";s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";s:8:\"subtotal\";d:90000;}}', '2022-08-12 03:47:25pm', 0),
(16, 21, 'raj1', 'raj1@gmail.com', 'chatok', '01765553187', 'card-payment', '', 'a:1:{s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}}', '2022-08-12 03:49:56pm', 1),
(17, 21, 'raj1', 'raj1@gmail.com', 'chhatak', '01456524633', 'card-payment', '', 'a:2:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:16:\"realme Narzo 50A\";s:3:\"qty\";d:1;s:5:\"price\";d:16999;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:16999;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}}', '2022-08-15 11:27:56am', 0),
(18, 21, 'raj1', 'raj1@gmail.com', 'chhatak', '01456524633', 'card-payment', '', 'a:0:{}', '2022-08-15 11:33:52am', 0),
(19, 21, 'raj1', 'raj1@gmail.com', 'sylhet', '0175655531587', 'card-payment', '', 'a:2:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:16:\"realme Narzo 50A\";s:3:\"qty\";d:1;s:5:\"price\";d:16999;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:16999;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}}', '2022-08-17 07:34:26pm', 0),
(20, 21, 'raj1', 'raj1@gmail.com', 'sylhet', '01765553187', 'card-payment', '', 'a:0:{}', '2022-08-17 07:39:47pm', 0),
(21, 21, 'raj1', 'raj1@gmail.com', 'sylhet', '017655531487', 'BKASH-BKash', '2208172354251CLGi31RPHMiDqr', 'a:2:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}}', '2022-08-17 07:41:56pm', 0),
(22, 26, 'mredul', 'mredul.mu@gmail.com', 'Sylhet', '01765553187', 'cash-on-delivery', '878103', 'a:5:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:16:\"realme Narzo 50A\";s:3:\"qty\";d:1;s:5:\"price\";d:16999;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:16999;}s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";a:6:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:9:\"Galaxy S9\";s:3:\"qty\";d:1;s:5:\"price\";d:90000;s:5:\"rowid\";s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";s:8:\"subtotal\";d:90000;}s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";a:6:{s:2:\"id\";s:2:\"19\";s:4:\"name\";s:17:\"iPhone 13 Pro Max\";s:3:\"qty\";d:1;s:5:\"price\";d:162999;s:5:\"rowid\";s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";s:8:\"subtotal\";d:162999;}}', '2022-08-19 09:37:28am', 0),
(23, 26, 'mredul', 'mredul.mu@gmail.com', 'Sylhet', '01765553187', 'BKASH-BKash', '2208191343580dspHj3y9dimOR7', 'a:6:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}s:32:\"98f13708210194c475687be6106a3b84\";a:6:{s:2:\"id\";s:2:\"20\";s:4:\"name\";s:17:\"iPhone 12 Pro Max\";s:3:\"qty\";d:1;s:5:\"price\";d:150000;s:5:\"rowid\";s:32:\"98f13708210194c475687be6106a3b84\";s:8:\"subtotal\";d:150000;}s:32:\"3c59dc048e8850243be8079a5c74d079\";a:6:{s:2:\"id\";s:2:\"21\";s:4:\"name\";s:9:\"HP 250 G8\";s:3:\"qty\";d:1;s:5:\"price\";d:69000;s:5:\"rowid\";s:32:\"3c59dc048e8850243be8079a5c74d079\";s:8:\"subtotal\";d:69000;}s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";a:6:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:14:\"Dell Vostro 15\";s:3:\"qty\";d:1;s:5:\"price\";d:103500;s:5:\"rowid\";s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";s:8:\"subtotal\";d:103500;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";a:6:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:9:\"Galaxy S9\";s:3:\"qty\";d:1;s:5:\"price\";d:90000;s:5:\"rowid\";s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";s:8:\"subtotal\";d:90000;}}', '2022-08-19 09:40:08am', 0),
(24, 27, 'avisheak', 'avisheak1@gmail.com', 'Srimongol', '01765553187', 'cash-on-delivery', '368219', 'a:5:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}s:32:\"a5bfc9e07964f8dddeb95fc584cd965d\";a:6:{s:2:\"id\";s:2:\"37\";s:4:\"name\";s:17:\"Apple Smart Watch\";s:3:\"qty\";d:1;s:5:\"price\";d:200;s:5:\"rowid\";s:32:\"a5bfc9e07964f8dddeb95fc584cd965d\";s:8:\"subtotal\";d:200;}s:32:\"a5771bce93e200c36f7cd9dfd0e5deaa\";a:6:{s:2:\"id\";s:2:\"38\";s:4:\"name\";s:11:\"Galaxy Gear\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"a5771bce93e200c36f7cd9dfd0e5deaa\";s:8:\"subtotal\";d:100;}s:32:\"d645920e395fedad7bbbed0eca3fe2e0\";a:6:{s:2:\"id\";s:2:\"40\";s:4:\"name\";s:13:\"Apple airpods\";s:3:\"qty\";d:1;s:5:\"price\";d:200;s:5:\"rowid\";s:32:\"d645920e395fedad7bbbed0eca3fe2e0\";s:8:\"subtotal\";d:200;}}', '2022-08-20 06:52:45am', 0),
(25, 27, 'avisheak', 'avisheak1@gmail.com', 'srimongol', '017655531787', 'BKASH-BKash', '220820105657Cdj1GyUloxgpA96', 'a:4:{s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";a:6:{s:2:\"id\";s:1:\"6\";s:4:\"name\";s:16:\"realme Narzo 50A\";s:3:\"qty\";d:1;s:5:\"price\";d:16999;s:5:\"rowid\";s:32:\"1679091c5a880faf6fb5e6087eb1b2dc\";s:8:\"subtotal\";d:16999;}s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";a:6:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:14:\"Dell Vostro 15\";s:3:\"qty\";d:1;s:5:\"price\";d:103500;s:5:\"rowid\";s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";s:8:\"subtotal\";d:103500;}s:32:\"f7177163c833dff4b38fc8d2872f1ec6\";a:6:{s:2:\"id\";s:2:\"44\";s:4:\"name\";s:16:\"Asus ZenBook 14 \";s:3:\"qty\";d:1;s:5:\"price\";d:89000;s:5:\"rowid\";s:32:\"f7177163c833dff4b38fc8d2872f1ec6\";s:8:\"subtotal\";d:89000;}s:32:\"17e62166fc8586dfa4d1bc0e1742c08b\";a:6:{s:2:\"id\";s:2:\"43\";s:4:\"name\";s:11:\"HP Pavilion\";s:3:\"qty\";d:2;s:5:\"price\";d:76500;s:5:\"rowid\";s:32:\"17e62166fc8586dfa4d1bc0e1742c08b\";s:8:\"subtotal\";d:153000;}}', '2022-08-20 06:53:37am', 0),
(26, 28, 'utsho', 'utsho@gmail.com', 'srimongol', '01236548741', 'cash-on-delivery', '211607', 'a:2:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}}', '2022-08-20 07:14:17am', 0),
(27, 28, 'utsho', 'utsho@gmail.com', 'srimongol', '01254871464', 'NAGAD-Nagad', '2208201117501byy5v9uzI8o9SW', 'a:4:{s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";a:6:{s:2:\"id\";s:2:\"19\";s:4:\"name\";s:17:\"iPhone 13 Pro Max\";s:3:\"qty\";d:1;s:5:\"price\";d:162999;s:5:\"rowid\";s:32:\"1f0e3dad99908345f7439f8ffabdffc4\";s:8:\"subtotal\";d:162999;}s:32:\"3c59dc048e8850243be8079a5c74d079\";a:6:{s:2:\"id\";s:2:\"21\";s:4:\"name\";s:9:\"HP 250 G8\";s:3:\"qty\";d:1;s:5:\"price\";d:69000;s:5:\"rowid\";s:32:\"3c59dc048e8850243be8079a5c74d079\";s:8:\"subtotal\";d:69000;}s:32:\"98f13708210194c475687be6106a3b84\";a:6:{s:2:\"id\";s:2:\"20\";s:4:\"name\";s:17:\"iPhone 12 Pro Max\";s:3:\"qty\";d:2;s:5:\"price\";d:150000;s:5:\"rowid\";s:32:\"98f13708210194c475687be6106a3b84\";s:8:\"subtotal\";d:300000;}s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";a:6:{s:2:\"id\";s:2:\"27\";s:4:\"name\";s:14:\"Dell Vostro 15\";s:3:\"qty\";d:1;s:5:\"price\";d:103500;s:5:\"rowid\";s:32:\"02e74f10e0327ad868d138f2b4fdd6f0\";s:8:\"subtotal\";d:103500;}}', '2022-08-20 07:15:01am', 1),
(28, 28, 'utsho', 'utsho@gmail.com', 'sylhet', '01458765', 'NAGAD-Nagad', '22082113445hgcWsD5CDs1yHhl', 'a:3:{s:32:\"d3d9446802a44259755d38e6d163e820\";a:6:{s:2:\"id\";s:2:\"10\";s:4:\"name\";s:10:\"Galaxy S10\";s:3:\"qty\";d:1;s:5:\"price\";d:89900;s:5:\"rowid\";s:32:\"d3d9446802a44259755d38e6d163e820\";s:8:\"subtotal\";d:89900;}s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";a:6:{s:2:\"id\";s:2:\"12\";s:4:\"name\";s:8:\"OPPO A95\";s:3:\"qty\";d:1;s:5:\"price\";d:24990;s:5:\"rowid\";s:32:\"c20ad4d76fe97759aa27a0c99bff6710\";s:8:\"subtotal\";d:24990;}s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";a:6:{s:2:\"id\";s:2:\"15\";s:4:\"name\";s:9:\"Galaxy S9\";s:3:\"qty\";d:1;s:5:\"price\";d:90000;s:5:\"rowid\";s:32:\"9bf31c7ff062936a96d3c8bd1f8f2ff3\";s:8:\"subtotal\";d:90000;}}', '2022-08-20 09:31:25pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `review` int(255) NOT NULL,
  `total_rating` int(255) NOT NULL,
  `avg_rating` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `category_id`, `description`, `price`, `image`, `review`, `total_rating`, `avg_rating`) VALUES
(6, 'realme Narzo 50A', 2, 'Product details of realme Narzo 50A Prime - 4GB RAM / 128GB ROM<br />\r\nNO RETURN applicable if the seal is broken<br />\r\nRAM : 4GB LPDDR4X<br />\r\nROM:128GB UFS 2.2<br />\r\nDisplay:16.7cm FHD+ Fullscreen<br />\r\nResolution: 2408 * 1080<br />\r\nScreen-to-body ratio: 90.7 Percent<br />\r\nTouch sampling rate: 180Hz<br />\r\nPeak Brightness: 600nits<br />\r\nPPI: 401<br />\r\n50MP AI Triple Camera<br />\r\n8MP AI Selfie<br />\r\n5000mAh Massive Battery<br />\r\nProcessor: Unisoc T612Processor<br />\r\nCPU: Octa-core, 12nm, up to 1.82GHz<br />\r\nGPU: ARM Mali-G57<br />\r\nOS:realme UI R Edition, Based on Android 11', 16999, 'realme-narzo-50a-prime.jpg', 2, 2, 5),
(10, 'Galaxy S10', 2, 'GPU : Mali-G76 MP12<br />\r\nChipset Model : 9820<<br />\r\nChipset Series : Exynos<br />\r\nCPU : 2.7?GHz<br />\r\nBrowser Supports : HTML5<br />\r\nGPS : Yes<br />\r\nSensors : Accelerometer, Gyro, Proximity, Compass, Barometer, Heart Rate, SpO2<br />\r\nFace Unlock : Yes<br />\r\nFingerprint Sensor : Yes<br />\r\n3.5mm Headphone Jack : Yes<br />\r\nRAM : 8?GB<br />\r\nStorage : 128?GB<br />\r\nCard Slot : Yes<br />\r\nExpandable Storage Upto : Upto 512?GB<br />\r\nRear Camera : 16?MP + 12?MP + 12?MP Triple<br />\r\nFront Camera : 10?MP<br />\r\nFeatures : Face detection, Smile detection, Geo tagging, Panorama, Touch to focus<br />\r\nVideo Recording : 4K?@?60?fps UHD<br />\r\nSize : 3400?mAh<br />\r\nType : Li-ion Battery<br />\r\nFast Charging : Yes<br />\r\nRemovable Battery : No<br />\r\nAspect Ratio : 18.5:9<br />\r\nSize : 6.1 inch<br />\r\nPPI : ~551?PPI<br />\r\nDisplay Resolution : 1440?x?3040?pixels<br />\r\nScreen to Body Ratio : ~?88.3%<br />\r\n', 89900, 'galaxy_s10.png', 2, 2, 5),
(12, 'OPPO A95', 2, 'NO RETURN applicable if the seal is broken<br /><br />\r\nDimensions: 160.3 x 73.8 x 8 mm (6.31 x 2.91 x 0.31 in)<br /><br />\r\nWeight: 175 g (6.17 oz)<br /><br />\r\nSIM: Dual SIM (Nano-SIM, dual stand-by)<br /><br />\r\nDisplay Type: AMOLED, 430 nits (typ), 800 nits (peak)<br /><br />\r\nSize: 6.43 inches<br /><br />\r\nOS: Android 11, ColorOS 11.1<br /><br />\r\nChipset: Qualcomm SM6115 Snapdragon 662 (11 nm)<br /><br />\r\nCPU: Octa-core<br /><br />\r\nGPU: Adreno 618<br /><br />\r\nMemory Card slot: microSDXC<br /><br />\r\nInternal: 128GB 8GB RAM<br /><br />\r\nMain Camera (Quad): 48MP+2MP+2MP<br /><br />\r\nAI Front Camera : 16MP<br /><br />\r\nUSB: USB Type-C 2.0, USB On-The-Go<br /><br />\r\nSensors: Fingerprint (under display, optical), accelerometer, gyro, proximity, compass<br /><br />\r\nBattery Type:Li-Po 5000 mAh, non-removable<br /><br />\r\nCharging: Fast charging 33W, 54% in 30 min (advertised)<br /><br />\r\n', 24990, 'Oppo_A95_5G.png', 0, 0, 0),
(15, 'Galaxy S9', 2, 'OS : Android<br /><br />\r\nGPU : Mali-G72 MP18<br /><br />\r\nBrowser : Yes<br /><br />\r\ncpuCores : Octa Core<br /><br />\r\nChipset : Samsung<br /><br />\r\nChipset Model : 9810<br /><br />\r\nChipset Series : Exynos<br /><br />\r\nCPU : 2.8?GHz<br /><br />\r\nBrowser Supports : HTML5<br /><br />\r\nGPS : Yes<br /><br />\r\nSensors : Accelerometer, Gyroscope, Compass<br /><br />\r\nFace Unlock : Yes<br /><br />\r\nFingerprint Sensor : Yes<br /><br />\r\n3.5mm Headphone Jack : Yes<br /><br />\r\nRAM : 4?GB<br /><br />\r\nStorage : 64?GB<br /><br />\r\nCard Slot : Yes<br /><br />\r\nExpandable Storage Upto : Upto 512?GB<br /><br />\r\nFlash : Yes<br /><br />\r\nRear Camera : 12?MP<br /><br />\r\nflashType : Dual LED<br /><br />\r\nFront Camera : 8?MP<br /><br />\r\nFeatures : Face detection, Smile detection, Geo tagging, Panorama, Touch to focus<br /><br />\r\nVideo Recording : 4K?@?60?fps UHD<br /><br />\r\nAspect Ratio : 18.5:9<br /><br />\r\nSize : 5.8?in<br /><br />\r\nType : Color<br /><br />\r\nPPI : ~568?PPI<br /><br />\r\n', 90000, 'Samsung_S9.png', 0, 0, 0),
(19, 'iPhone 13 Pro Max', 2, 'Operating System: iOS 15<br /><br />\r\nScreen size: 6.7 inches<br /><br />\r\nResolution: 2778 x 1284 pixels<br /><br />\r\nNumber of sim card: single<br /><br />\r\nProcessor: Apple A15 Bionic - Hexa-core 2x3.22 GHz<br /><br />\r\nRAM: 6 GB<br /><br />\r\nInternal memory: 128 GB<br /><br />\r\nMemory Card Slot: None<br /><br />\r\nFingerprint: face recognition feature<br /><br />\r\nFront camera: 12 megapixels<br /><br />\r\nBack camera: 12 + 12 + 12 megapixels<br /><br />\r\nBattery type: Non-removable Li-ion battery<br /><br />\r\nBattery size: 4352 mAh<br /><br />\r\nFast Charging: Yes - 27W<br /><br />\r\nCharging port type: Lightning<br /><br />\r\nInputs - Outputs: WiFi, Bluetooth, GPS, USB<br /><br />\r\nDimensions: Width x 78.1 Height x 160.8 Depth 7.7 mm<br /><br />\r\nWeight: 0.240 kg', 162999, '13_pro_max.png', 0, 0, 0),
(20, 'iPhone 12 Pro Max', 2, 'Operating System: iOS 14.1<br /><br />\r\n<br /><br />\r\nScreen size: 6.7 inches<br /><br />\r\n<br /><br />\r\nResolution: 2778 x 1284 pixels<br /><br />\r\n<br /><br />\r\nNumber of sim card: single<br /><br />\r\n<br /><br />\r\nProcessor: Apple A14 Bionic - Hexa-core 2x3.1 GHz<br /><br />\r\n<br /><br />\r\nRAM: 6 GB<br /><br />\r\n<br /><br />\r\nInternal memory: 256 GB<br /><br />\r\n<br /><br />\r\nMemory Card Slot: None<br /><br />\r\n<br /><br />\r\nFingerprint: face recognition feature<br /><br />\r\n<br /><br />\r\nFront camera: 12 megapixels<br /><br />\r\n<br /><br />\r\nBack camera: 12 + 12 + 12 megapixels<br /><br />\r\n<br /><br />\r\nBattery type: Non-removable Li-ion battery<br /><br />\r\n<br /><br />\r\nBattery size: 3687 mAh<br /><br />\r\n<br /><br />\r\nFast Charging: Yes - 20W<br /><br />\r\n<br /><br />\r\nCharging port type: Lightning<br /><br />\r\n<br /><br />\r\nInputs - Outputs: WiFi, Bluetooth, GPS, USB<br /><br />\r\n<br /><br />\r\nDimensions: Width x 78.1 Height x 160.8 Depth 7.4 mm<br /><br />\r\n<br /><br />\r\nWeight: 0.228 kg<br /><br />\r\n<br /><br />\r\nColor: Black, Blue, Gold, Silver', 150000, '12_pro_max.png', 0, 0, 0),
(21, 'HP 250 G8', 7, 'Processor: Intel Core i5-1135G7 Processor (8M Cache, 2.40 GHz up to 4.20 GHz)<br />\r\nDisplay: 15.6\" diagonal, FHD, IPS, Anti-Glare WLED, 250nits eDP micro-edge, 45% NTSC (1920 x 1080)<br />\r\nMemory: 8GB DDR4 RAM<br />\r\nStorage: 1 TB 5400 RPM SATA HDD (2.5 in)<br />\r\nGraphics: Intel UHD Graphics<br />\r\nOperating System: Windows 10 Home<br />\r\nBattery: HP Long Life 3-cell, 41 Wh Li-ion<br />\r\nAdapter: 45 W Smart AC power adapter<br />\r\nAudio: Integrated stereo speakers<br />\r\n       Integrated dual digital microphone<br />\r\nSpecial Feature: Trusted Platform Module (TPM)<br />\r\nInput Devices:<br />\r\nKeyboard: Full-size island-style keyboard<br />\r\nWebCam: HP TrueVision HD camera<br />\r\nNetwork & Wireless Connectivity:<br />\r\nWi-Fi: Intel AX201 Wi-Fi 6 (2x2)<br />\r\nBluetooth: Bluetooth 5<br />\r\nPorts, Connectors & Slots<br />\r\nUSB (s): 3x USB-A 3.2 Gen1 Type-A ports<br />\r\n         1x USB 3.2 Gen1 Type-C (data transfer only)<br />\r\nHDMI: 1x HDMI v1.4b<br />\r\nAudio Jack Combo: 1x Headphone/microhone combo<br />\r\nExtra M.2 Slot: Yes<br />\r\nPhysical Specification:<br />\r\nDimensions (W x D x H): 35.79 x 24.21 x 1.98 cm<br />\r\nWeight: Starting at 1.74 kg<br />\r\nColor(s): Black<br />\r\n<br />\r\nWarranty:<br />\r\nManufacturing Warranty: 3 years International Limited Warranty (Terms & Conditions Apply As Per HP)', 69000, 'HP_250_G8.jpg', 0, 0, 0),
(24, 'iPhone 11', 2, 'Operating System: iOS 13<br />\r\nDisplay Size: 6.1 Inch<br />\r\nResolution: 1792x828 Pixels<br />\r\nSIM Count: Single<br />\r\nCPU: A13 Bionic - Hexa Core 2x2.65 GHz<br />\r\nRAM: 4 GB<br />\r\nInternal Memory: 128 GB<br />\r\nMemory Card Slot: No<br />\r\nFingerprint: Face Recognition<br />\r\nFront Camera: 12 MP<br />\r\nRear Camera: 12+12+12 MP<br />\r\nBattery Type: Non-removable Li-Ion<br />\r\nBattery Size: 3110 mAh<br />\r\nFast Charge: Yes - 18W<br />\r\nCharger Compatibility: Lightning<br />\r\nInputs - Outputs: Wifi, Bluetooth, GPS, USB, NFC<br />\r\nDimension: 75.7Wx150.9Hx8.3D mm<br />\r\nWeight: 0.194 Kg<br />\r\nColor: White<br />\r\n1 Year Warrant', 900, 'iPhone_11.png', 0, 0, 0),
(27, 'Dell Vostro 15', 7, 'Processor: Intel Core i7-1165G7 Processor (12M Cache, 2.80 GHz up to 4.70 GHz, with IPU)<br /><br />\r\nDisplay: 15.6\", FHD 1920x1080, 60Hz, Non-Touch, AG, WVA, LED-Backlit, Narrow Border<br /><br />\r\nMemory: 8GB DDR4 RAM<br /><br />\r\nStorage: 512 GB PCIe NVMe M.2 SSD<br /><br />\r\nGraphics: NVIDIA GeForce MX350 with 2GB GDDR5 Graphics<br /><br />\r\nOperating System: Free DOS<br /><br />\r\nBattery:  3-cell, 41 Wh Li-ion<br /><br />\r\nAdapter: 45 W Smart AC power adapter<br /><br />\r\nAudio: Stereo speakers, 2 W x 2 = 4 W total<br /><br />\r\nSpecial Feature: Fingerprint<br /><br />\r\nInput Devices:<br /><br />\r\nKeyboard: Non-Backlit Keyboard, English<br /><br />\r\nWebCam: 720p at 30 fps HD camera, single-integrated microphone<br /><br />\r\nNetwork & Wireless Connectivity:<br /><br />\r\nLAN : 1 Flip-Down RJ-45 port 10/100/1000 Mbps<br /><br />\r\nWi-Fi: 802.11ac 1x1 WiFi<br /><br />\r\nBluetooth: Yes<br /><br />\r\nPorts, Connectors & Slots:<br /><br />\r\nUSB (s): 2 USB 3.2 Gen 1 port<br /><br />\r\n         1 USB 2.0 port<br /><br />\r\nHDMI: 1x HDMI v1.4b<br /><br />\r\nAudio Jack Combo: 1x Headphone/microhone combo<br /><br />\r\nExtra M.2 Slot: Yes<br /><br />\r\nPhysical Specification:<br /><br />\r\nDimensions (W x D x H): 35.79 x 24.21 x 1.98 cm<br /><br />\r\nWeight: (1.69 kg)<br /><br />\r\nColor(s): Black<br /><br />\r\n<br /><br />\r\nWarranty:<br /><br />\r\nManufacturing Warranty: 02 Years Warranty (Battery and Adapter 2 Years)', 103500, 'dell-vostro-15.jpg', 0, 0, 0),
(29, 'HUAWEI Nova 9SE ', 2, 'Display:<br /><br />\r\nScreen Size: 6.78 inches<br /><br />\r\nColour: 16.7 million colours<br /><br />\r\nType TFT LCD (IPS), up to 90 Hz frame refresh rate, 270 Hz touch sampling rate<br /><br />\r\nResolution: FHD + 2388 x 1080 Pixels<br /><br />\r\nProcessor:<br /><br />\r\nQualcomm Snapdragon™ 680<br /><br />\r\nCPU: Octa-core, 4 x Cortex-A73@2.4 GHz + 4 x Cortex-A53@1.9 GHz<br /><br />\r\nGPU: Adreno™ 610<br /><br />\r\nOperating System: EMUI 12<br /><br />\r\nMemory:8 GB RAM + 128 GB ROM<br /><br />\r\nRear Camera:<br /><br />\r\n108 MP High-Resolution Camera (f/1.9 aperture)<br /><br />\r\n8 MP Ultra Wide Angle Camera (f/2.2 aperture)<br /><br />\r\n2 MP Depth Camera (f/2.4 aperture)<br /><br />\r\n2 MP Macro Camera (f/2.4 aperture)<br /><br />\r\n*The photo pixels may vary depending on the shooting mode.<br /><br />\r\nVideo Resolution:<br /><br />\r\nSupport up to 1920 x 1080 pixels<br /><br />\r\nFront Camera:16 MP Front Camera (f/2.2 aperture)<br /><br />\r\nImage Resolution:<br /><br />\r\nSupport up to 4608 x 3456 pixels<br /><br />\r\nBattery: 4000 mAh<br /><br />\r\nConnectivity:<br /><br />\r\nWLAN:2.4 GHz and 5 GHz, 802.11a/b/g/n/ac<br /><br />\r\nBluetooth:Bluetooth 5.0<br /><br />\r\nUSB:USB Type-C, USB 2.0<br /><br />\r\nEarjack:USB Type-C earjack<br /><br />\r\n', 89000, 'Huawei-nova-9-SE-5G-4.png', 0, 0, 0),
(31, 'Realme 9 Pro', 2, 'Operating System : Android v12<br />\r\nSim Slots : Dual SIM, GSM+GSM<br />\r\nNetwork : 4G 3G, 2G<br />\r\nFingerprint Sensor : Yes<br />\r\nQuick Charging : Yes <br />\r\nRear Camera : 64 MP + 8 MP + 2 MP<br />\r\nFront Camera : 16 MP<br />\r\nWeight : 195 grams<br />\r\nScreen Size : 6.6 inches (16.76 cm)<br />\r\nScreen Resolution : 2412: x 1080 Pixels<br />\r\nAspect Ratio : 20:1.9<br />\r\nDisplay Type : Full HD<br />\r\nRefresh Rate :120 Hz<br />\r\nChipset : Qualcomm Snapdragon 695<br />\r\nProcessor : Octa core (2.2 GHz, 1.8 GHz)<br />\r\nGraphics : Adreno GPU 619<br />\r\nRam : 6 GB<br />\r\nInternal Memory: 128 GB<br />\r\nExpandable Memory : Yes, Upto 256 GB<br />\r\nWarranty ; 1 Year Manufacturer Warranty<br />\r\n', 300, 'Realme-9-Pro-5.png', 0, 0, 0),
(32, 'Realme 9 ', 2, 'NO RETURN applicable if the seal is broken<br />\r\nPrices are subject to change upon direction on 5% VAT from Government<br />\r\nDisplay 90Hz Super AMOLED Display<br />\r\nScreen size: 6.4 Inch<br />\r\nResolution: FHD+ 1080x2400<br />\r\nCamera 108MP AI Triple Camera<br />\r\n4cm Macro Camera<br />\r\n16MP Selfie Camera<br />\r\n33WDartCharge<br />\r\nStorage and RAM 8GB + 128GB<br />\r\nUp to 256GB Maximum External memory<br />\r\nProcessor Snapdragon 680 Processor<br />\r\n5000mAh (Typical) Massive Battery', 300, 'realme-9i-3.png', 0, 0, 0),
(34, 'Redmi Note 11', 2, 'Prices are subject to change upon direction on 5% VAT from Government<br />\r\nNO RETURN applicable if the seal is broken<br />\r\nDisplay: Type: 6.43 inches, 99.8 cm2<br />\r\nResolution 1080 x 2400 pixels, 20:9 ratio<br />\r\nProtection Corning Gorilla Glass 3<br />\r\nPLATFORM: OS Android 11, MIUI 13<br />\r\nChipset Qualcomm SM6225 Snapdragon 680 4G (6 nm)<br />\r\nCPU Octa-core (4x2.4 GHz Kryo 265 Gold & 4x1.9 GHz Kryo 265 Silver)<br />\r\nGPU Adreno 610<br />\r\nMemory: Card slot microSDXC (dedicated slot)<br />\r\nInternal 64GB 4GB RAM UFS 2.2<br />\r\nRAM and ROM: 4+64GB<br />\r\nSupports expandable storage up to 1TB<br />\r\nRear camera: 50 MP, f/1.8, 26mm (wide), 1/2.76\", 0.64µm, PDAF<br />\r\nFront camera: Single 13 MP, f/2.4, (wide), 1/3.1\", 1.12µm<br />\r\nVideo 1080p@30fps<br />\r\nBattery: Li-Po 5000 mAh, non-removable<br />\r\nCharging: Fast charging 33W, 100% in 60 min (advertised)<br />\r\nPower Delivery 3.0<br />\r\nQuick Charge 3+', 300, 'Redmi-Note-11-3.png', 0, 0, 0),
(35, 'Apple Headphone', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis purus vel dolor vehicula tristique. Nam aliquam felis quis nisi faucibus, ut porttitor dui vehicula. Nam volutpat dui a enim facilisis, ac tempus velit tempus. Nam ac neque velit. Maecenas condimentum urna id posuere vulputate. Quisque rutrum lorem sed mi varius auctor. Integer at sollicitudin velit, sed dignissim odio. Quisque et lacinia libero, eu consectetur magna. Mauris id urna elit. Nullam tempus pharetra pharetra. Vivamus molestie nibh orci, ac molestie risus luctus id.', 200, 'apple-headphone1.png', 0, 0, 0),
(36, 'Xiaomi Pro 2', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis purus vel dolor vehicula tristique. Nam aliquam felis quis nisi faucibus, ut porttitor dui vehicula. Nam volutpat dui a enim facilisis, ac tempus velit tempus. Nam ac neque velit. Maecenas condimentum urna id posuere vulputate. Quisque rutrum lorem sed mi varius auctor. Integer at sollicitudin velit, sed dignissim odio. Quisque et lacinia libero, eu consectetur magna. Mauris id urna elit. Nullam tempus pharetra pharetra. Vivamus molestie nibh orci, ac molestie risus luctus id.', 50, 'xiaomi-headphone.png', 0, 0, 0),
(37, 'Apple Smart Watch', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis purus vel dolor vehicula tristique. Nam aliquam felis quis nisi faucibus, ut porttitor dui vehicula. Nam volutpat dui a enim facilisis, ac tempus velit tempus. Nam ac neque velit. Maecenas condimentum urna id posuere vulputate. Quisque rutrum lorem sed mi varius auctor. Integer at sollicitudin velit, sed dignissim odio. Quisque et lacinia libero, eu consectetur magna. Mauris id urna elit. Nullam tempus pharetra pharetra. Vivamus molestie nibh orci, ac molestie risus luctus id.', 200, 'apple-watch2.png', 0, 0, 0),
(38, 'Galaxy Gear', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis purus vel dolor vehicula tristique. Nam aliquam felis quis nisi faucibus, ut porttitor dui vehicula. Nam volutpat dui a enim facilisis, ac tempus velit tempus. Nam ac neque velit. Maecenas condimentum urna id posuere vulputate. Quisque rutrum lorem sed mi varius auctor. Integer at sollicitudin velit, sed dignissim odio. Quisque et lacinia libero, eu consectetur magna. Mauris id urna elit. Nullam tempus pharetra pharetra. Vivamus molestie nibh orci, ac molestie risus luctus id.', 100, 'Samsung-galaxy-gear.png', 0, 0, 0),
(39, 'Galaxy Gear 2', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis purus vel dolor vehicula tristique. Nam aliquam felis quis nisi faucibus, ut porttitor dui vehicula. Nam volutpat dui a enim facilisis, ac tempus velit tempus. Nam ac neque velit. Maecenas condimentum urna id posuere vulputate. Quisque rutrum lorem sed mi varius auctor. Integer at sollicitudin velit, sed dignissim odio. Quisque et lacinia libero, eu consectetur magna. Mauris id urna elit. Nullam tempus pharetra pharetra. Vivamus molestie nibh orci, ac molestie risus luctus id.', 150, 'Samsung-galaxy-gear21.png', 0, 0, 0),
(40, 'Apple airpods', 11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, 'airpods.png', 0, 0, 0),
(41, 'Airpod Pro', 11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, 'pngegg.png', 0, 0, 0),
(42, 'Huawei Watch', 10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 150, 'Huawei_Watch_GT_2e.png', 0, 0, 0),
(43, 'HP Pavilion', 7, 'Processor: Intel Core i5-1135G7 Processor (8M Cache, 2.40 GHz up to 4.20 GHz)<br />\r\nDisplay: 15.6\" diagonal, FHD, IPS, Anti-Glare WLED, 250nits eDP micro-edge, 45% NTSC (1920 x 1080)<br />\r\nMemory: 8GB DDR4 RAM<br />\r\nStorage: 512 GB PCIe NVMe M.2 SSD<br />\r\nGraphics: Intel Iris Xe Graphics<br />\r\nOperating System: Windows 11 Home<br />\r\nBattery:  3-cell, 41 Wh Li-ion<br />\r\nAdapter: 45 W Smart AC power adapter<br />\r\nAudio: Integrated stereo speakers<br />\r\n       Integrated dual digital microphone<br />\r\nSpecial Feature: Trusted Platform Module (TPM)<br />\r\nInput Devices:<br />\r\nKeyboard: Full-size island-style keyboard<br />\r\nWebCam: HP TrueVision HD camera<br />\r\nNetwork & Wireless Connectivity:<br />\r\nWi-Fi: Intel AX201 Wi-Fi 6 (2x2)<br />\r\nBluetooth: Bluetooth 5<br />\r\nPorts, Connectors & Slots<br />\r\nUSB (s): 3x USB-A 3.2 Gen1 Type-A ports<br />\r\n         1x USB 3.2 Gen1 Type-C (data transfer only)<br />\r\nHDMI: 1x HDMI v1.4b<br />\r\nAudio Jack Combo: 1x Headphone/microhone combo<br />\r\nExtra M.2 Slot: Yes<br />\r\nPhysical Specification:<br />\r\nDimensions (W x D x H): 35.79 x 24.21 x 1.98 cm<br />\r\nWeight: Starting at 1.74 kg<br />\r\nColor(s): Black<br />\r\n<br />\r\nWarranty:<br />\r\nManufacturing Warranty: 3 years International Limited Warranty (Terms & Conditions Apply As Per HP)', 76500, 'pavilion-13-01-500x5001.jpg', 0, 0, 0),
(44, 'Asus ZenBook 14 ', 7, 'Brand: Asus<br /><br /><br />\r\nModel: UX425EA<br /><br /><br />\r\nProduct No: KC302T<br /><br /><br />\r\nColor: Pine Grey<br /><br /><br />\r\nProcessor- Intel Core i5-1135G7 Processor (2.4 to 4.2GHz, 8M Cache)<br /><br /><br />\r\nDisplay- 14.0” FHD (1920X1080) LED Backlit Display 16:9, IPS-Level, Anti Grare Display, 300 NITS, 100% sRGB, 90% Screen TO Body Rartio<br /><br /><br />\r\nMemory- 8GB 3200MHz RAM<br /><br /><br />\r\nStorage- 512GB PCIeG3 NVMe SSD<br /><br /><br />\r\nGraphics- Intel Iris Plus Graphics with 1.30GHz<br /><br /><br />\r\nOperating System- Windows 10 Home<br /><br /><br />\r\nBattery- 67WHrs, 4S1P, 4-cell Li-ion<br /><br /><br />\r\nAdapter- 65W AC Adapter,<br /><br /><br />\r\nAudio- Smart Amp Technology, Built-in array microphone, harman/kardon (Premium), with Cortana and Alexa voice-recognition support<br /><br /><br />\r\n<br /><br /><br />\r\nInput Devices- Keyboard: Illuminated Keyboard with NumPad<br /><br /><br />\r\n<br /><br /><br />\r\nWebCam- CMOS HD IR RGB WebCam<br /><br /><br />\r\n<br /><br /><br />\r\nCard Reader- Micro SD card reader x 1<br /><br /><br />\r\n<br /><br /><br />\r\nWi-Fi: Wi-Fi 6 (802.11ax) 2 x 2<br /><br /><br />\r\n<br /><br /><br />\r\nBluetooth- Bluetooth 5.0USB (s): 1x USB 3.2 Gen 1 Type-A, 2x Thunderbolt 4 supports display/power delivery<br /><br /><br />\r\n<br /><br /><br />\r\nHDMI: 1x HDMI 2.0b<br /><br /><br />\r\nAudio Jack Combo: Built-in array microphone<br /><br /><br />\r\nSupported SSD Type: PCIeG3 NVMe<br /><br /><br />\r\nDimensions (W x D x H): 31.90 x 20.80 x 1.39 cm<br /><br /><br />\r\nWeight: 1.13 kg (2.49 lbs)<br /><br /><br />\r\nWarranty: 02 Years Warranty (01 year warranty of Battery and Adapter)', 89000, 'asus_14.png', 0, 0, 0),
(45, 'Apple Macbook Air ', 7, '<b>Model:X515EA</b><br /><br /><br />\r\nColor:Slate Grey<br /><br /><br />\r\nProcessor:Intel Core i3-1115G4 Processor (6M Cache, 3.00 GHz up to 4.10 GHz)<br /><br /><br />\r\nDisplay:15.6-inch, FHD (1920 x 1080)<br /><br /><br />\r\nMemory:4GB DDR4 3200MHz RAM<br /><br /><br />\r\nStorage:512GB PCIe G3 SSD<br /><br /><br />\r\nGraphics:Intel UHD Graphics<br /><br /><br />\r\nBattery:37WHrs, 2S1P, 2-cell Li-ion<br /><br /><br />\r\nAdapter:45W AC Adapter<br /><br /><br />\r\nAudio:SonicMaster,Built-in speaker,Built-in microphonewith Cortana support<br /><br /><br />\r\nKeyboard:Chiclet Keyboard with Num-key,1.4mm Key-travel<br /><br /><br />\r\nWebCam:VGA camera Without privacy shutter<br /><br /><br />\r\nCard Reader:Micro SD card reader<br /><br /><br />\r\nWi-Fi:Wi-Fi 5(802.11ac)<br /><br /><br />\r\nBluetooth:Bluetooth 4.1<br /><br /><br />\r\nUSB (s):1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 2x USB 2.0 Type-A<br /><br /><br />\r\nHDMI:1x HDMI 1.4<br /><br /><br />\r\nAudio Jack Combo:1x 3.5mm Combo Audio Jack<br /><br /><br />\r\nExtra RAM Slot:Yes (upgrade up to 16GB)<br /><br /><br />\r\nExtra M.2 Slot:1x M.2 2280<br /><br /><br />\r\nSupported SSD Type:PCIe 3.0x2<br /><br /><br />\r\nExtra HDD Slot:1x STD 2.5” SATA HDD<br /><br /><br />\r\nDimensions (W x D x H):36.02 x 23.49 x 1.99cm<br /><br /><br />\r\nWeight:1.8 kg<br /><br /><br />\r\nWarranty:02 years', 121000, 'macbook_air.jpg', 2, 2, 5),
(46, 'Moto G60', 2, 'NO RETURN applicable if the seal is broken<br /><br /><br />\r\nPrices are subject to change upon direction on 5% VAT from Government<br /><br /><br />\r\nETWORK Technology<br /><br /><br />\r\nGSM / HSPA / LTE<br /><br /><br />\r\nLAUNCH Announced 2021, April 20<br /><br /><br />\r\nStatus Available. Released 2021, April 27<br /><br /><br />\r\nBODY Dimensions 169.6 x 75.9 x 9.8 mm (6.68 x 2.99 x 0.39 in)<br /><br /><br />\r\nWeight 225 g (7.94 oz)<br /><br /><br />\r\nBuild Glass front, plastic frame, plastic back<br /><br /><br />\r\nSIM Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)<br /><br /><br />\r\nWater repellent design<br /><br /><br />\r\nDISPLAY Type IPS LCD, 120Hz, HDR10<br /><br /><br />\r\nSize 6.8 inches, 109.8 cm2 (85.3% screen-to-body ratio)<br /><br /><br />\r\nResolution 1080 x 2460 pixels (395 ppi density)<br /><br /><br />\r\nPLATFORM OS Android 11<br /><br /><br />\r\nChipset Qualcomm SM7150 Snapdragon 732G (8 nm)<br /><br /><br />\r\nCPU Octa-core (2x2.3 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)<br /><br /><br />\r\nGPU Adreno 618<br /><br /><br />\r\nMEMORY Card slot microSDXC (uses shared SIM slot)<br /><br /><br />\r\nInternal 128GB 6GB RAM<br /><br /><br />\r\nUFS 2.1<br /><br /><br />\r\nMAIN CAMERA Triple 108 MP, f/1.9, (wide), 1/1.52\", 0.7Âµm, PDAF<br /><br /><br />\r\n8 MP<br /><br /><br />\r\n2 MP\\', 400, 'Motorola-Moto-G60-.jpg', 0, 0, 0),
(47, 'Hp laptop', 7, 'orem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque turpis neque, sed efficitur erat laoreet quis. Phasellus lobortis arcu diam, eget aliquet diam venenatis et. Cras lacinia, metus vel porta porttitor, tellus enim tincidunt dui, a fermentum augue metus vitae est. Ut mollis sed ligula eget porta. Vestibulum condimentum laoreet ligula, a egestas felis posuere cursus. Pellentesque volutpat finibus aliquam. Aenean laoreet elit cursus mollis feugiat. Aenean vulputate consectetur suscipit. Sed hendrerit porta arcu. Vivamus aliquam eros vel interdum scelerisque. Aliquam lobortis, ante a hendrerit maximus, nisl arcu pellentesque neque, ac imperdiet quam nibh a ipsum. Phasellus nisl turpis, dictum vitae feugiat quis, interdum ut augue. Donec nec laoreet dui. Etiam sit amet blandit sem, in sagittis lectus. Nunc mollis, massa non pulvinar auctor, eros sem cursus ipsum, vel scelerisque dui ante at sapien. Integer eget nisl fermentum, bibendum nisl at, mattis nulla.', 70000, 'Hp_Laptop1.png', 0, 0, 0),
(48, 'asus laptop', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque turpis neque, sed efficitur erat laoreet quis. Phasellus lobortis arcu diam, eget aliquet diam venenatis et. Cras lacinia, metus vel porta porttitor, tellus enim tincidunt dui, a fermentum augue metus vitae est. Ut mollis sed ligula eget porta. Vestibulum condimentum laoreet ligula, a egestas felis posuere cursus. Pellentesque volutpat finibus aliquam. Aenean laoreet elit cursus mollis feugiat. Aenean vulputate consectetur suscipit. Sed hendrerit porta arcu. Vivamus aliquam eros vel interdum scelerisque. Aliquam lobortis, ante a hendrerit maximus, nisl arcu pellentesque neque, ac imperdiet quam nibh a ipsum. Phasellus nisl turpis, dictum vitae feugiat quis, interdum ut augue. Donec nec laoreet dui. Etiam sit amet blandit sem, in sagittis lectus. Nunc mollis, massa non pulvinar auctor, eros sem cursus ipsum, vel scelerisque dui ante at sapien. Integer eget nisl fermentum, bibendum nisl at, mattis nulla.<br />\r\n<br />\r\n', 79000, 'Asus_Zenbook_3_.png', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_id`, `product_id`, `review`, `rating`) VALUES
(1, 21, 10, 'nice product', 5),
(2, 21, 6, 'Good Product', 5),
(3, 23, 45, 'nice product', 5),
(4, 24, 6, 'Nice Product', 5),
(5, 25, 45, 'Good Product', 5),
(6, 28, 10, 'good product', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `status`) VALUES
(16, 'mridul1@gmail.com', 'dhar@gmail.com', '1844156d4166d94387f1a4ad031ca5fa', 1),
(20, 'mredul1', 'mredul1@gmail.com', '0038d1bcbbb76870733e9f2ae0739faa', 1),
(21, 'raj1', 'raj1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(22, 'munna1', 'munna1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(23, 'Mredul Dhar', 'mreduldhar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(24, 'munna dhar', 'munnadhar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(25, 'rajdhar', 'rajdhar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(26, 'mredul', 'mredul.mu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(27, 'avisheak', 'avisheak1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(28, 'utsho', 'utsho@gmail.com', '0192023a7bbd73250516f069df18b500', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
