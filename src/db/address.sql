-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Dez 2017 um 11:36
-- Server-Version: 10.1.26-MariaDB
-- PHP-Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `address`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address`
--

CREATE TABLE `address` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `registrationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `address`
--

INSERT INTO `address` (`id`, `firstname`, `lastname`, `phoneNumber`, `registrationDate`) VALUES
(1, 'Jonah', 'Barton', '069 978 6690', '2015-04-15 14:50:27'),
(2, 'Macey', 'House', '0041 32 367 3120', '2015-10-05 22:27:20'),
(3, 'Carl', 'Hernandez', '0041 59 104 3870', '2015-07-03 18:20:09'),
(4, 'Ainsley', 'Simon', '0041 77 413 4374', '2015-03-08 04:00:14'),
(5, 'Rama', 'Miles', '055 029 9596', '2016-02-05 11:06:49'),
(6, 'Fitzgerald', 'Peck', '0041 49 131 4292', '2015-12-19 06:54:40'),
(7, 'Wesley', 'Shaffer', '033 273 9416', '2015-12-01 23:27:05'),
(8, 'Dorian', 'Bray', '0041 54 552 6850', '2015-04-25 22:46:33'),
(9, 'Cherokee', 'Odom', '0041 25 507 7327', '2014-10-24 20:45:35'),
(10, 'Fuller', 'Robertson', '075 977 6254', '2015-10-27 14:18:59'),
(11, 'Branden', 'Lamb', '0041 60 659 7194', '2015-02-28 17:48:15'),
(12, 'Maia', 'Park', '0041 59 677 3862', '2016-09-01 19:45:17'),
(13, 'Brendan', 'Mendoza', '0041 94 669 5346', '2015-05-28 21:58:53'),
(14, 'Griffith', 'Nash', '058 715 4457', '2015-03-31 10:23:15'),
(15, 'William', 'Ashley', '081 185 4030', '2016-05-30 18:03:17'),
(16, 'Christine', 'Duran', '036 254 1619', '2015-08-09 16:15:44'),
(17, 'Hu', 'Guerrero', '0041 30 711 3932', '2016-09-09 14:18:32'),
(18, 'Jane', 'Miller', '0041 81 995 4996', '2016-04-03 12:41:40'),
(19, 'Doris', 'Henson', '0041 66 703 8151', '2016-04-19 23:42:23'),
(20, 'Idola', 'Rutledge', '0041 73 738 0040', '2015-12-01 00:42:38'),
(21, 'Cody', 'Rojas', '059 806 5071', '2016-07-27 07:17:00'),
(22, 'Blaze', 'Mercado', '003 273 8815', '2014-11-24 17:29:57'),
(23, 'Brooke', 'Massey', '081 345 7533', '2015-02-06 12:20:39'),
(24, 'Kasimir', 'Riddle', '050 007 4386', '2015-12-28 13:29:00'),
(25, 'Zoe', 'Preston', '079 667 3586', '2014-12-11 19:49:58'),
(26, 'Brendan', 'Clarke', '0041 94 518 5265', '2015-03-22 05:22:10'),
(27, 'Regan', 'Odonnell', '0041 13 998 4353', '2016-05-09 22:26:53'),
(28, 'Brianna', 'Turner', '001 431 7426', '2014-12-15 16:42:37'),
(29, 'Cameron', 'Dillon', '086 589 1667', '2015-03-14 01:40:04'),
(30, 'Amery', 'Short', '088 767 3820', '2015-09-13 16:05:40'),
(31, 'Lisandra', 'Campos', '043 160 7482', '2016-04-18 19:34:10'),
(32, 'Jael', 'Sellers', '005 134 7880', '2016-09-10 19:00:55'),
(33, 'Rooney', 'Joseph', '030 630 9250', '2015-12-25 08:46:40'),
(34, 'Amela', 'Vinson', '0041 70 841 0967', '2015-07-14 10:09:50'),
(35, 'Pamela', 'Miles', '029 019 3974', '2015-02-21 01:03:49'),
(36, 'Melodie', 'Phillips', '0041 12 142 2033', '2014-11-27 04:25:52'),
(37, 'Merritt', 'Byrd', '023 839 1047', '2016-04-29 17:21:21'),
(38, 'Zenaida', 'Adams', '058 861 3177', '2015-08-25 13:29:26'),
(39, 'Nora', 'Hull', '0041 54 661 5729', '2015-07-10 17:14:19'),
(40, 'Avye', 'Ward', '021 145 0809', '2016-03-21 14:45:05'),
(41, 'Jemima', 'Conway', '012 738 5353', '2015-07-10 17:30:03'),
(42, 'Miriam', 'Ramsey', '0041 61 259 9381', '2016-06-28 00:31:28'),
(43, 'Hasad', 'Wooten', '093 268 3176', '2014-11-18 15:33:23'),
(44, 'Alice', 'Alexander', '025 830 5345', '2014-11-02 09:16:27'),
(45, 'Jocelyn', 'Cote', '085 395 9597', '2015-06-24 12:44:49'),
(46, 'Zahir', 'Shannon', '038 010 0070', '2016-06-05 13:18:05'),
(47, 'Jessamine', 'Sherman', '003 134 8566', '2016-08-03 02:58:55'),
(48, 'Ishmael', 'Bradley', '0041 59 521 9991', '2015-07-13 10:52:02'),
(49, 'Cherokee', 'Brock', '079 714 6583', '2016-02-06 09:34:00'),
(50, 'Henry', 'Compton', '005 151 7419', '2015-08-28 22:56:56'),
(51, 'Vaughan', 'Mckenzie', '0041 02 595 0371', '2016-08-29 05:47:10'),
(52, 'Britanney', 'Eaton', '079 470 0515', '2015-08-21 08:27:45'),
(53, 'Vance', 'Mcbride', '0041 84 163 7959', '2016-03-16 23:53:20'),
(54, 'Xandra', 'Dickerson', '067 317 0104', '2016-05-07 09:56:58'),
(55, 'Garrett', 'Rodriquez', '027 211 8350', '2016-06-04 03:32:19'),
(56, 'Xena', 'Bullock', '0041 35 810 6080', '2016-07-10 07:19:10'),
(57, 'Jeanette', 'Schwartz', '085 327 0441', '2016-05-05 22:35:10'),
(58, 'Imani', 'Orr', '0041 55 190 2574', '2014-10-20 00:46:16'),
(59, 'Piper', 'Craft', '013 399 4392', '2016-03-06 15:06:48'),
(60, 'Lilah', 'Talley', '043 314 6551', '2014-12-17 05:40:55'),
(61, 'Jessamine', 'Osborn', '0041 30 337 3167', '2016-03-13 16:31:30'),
(62, 'Jenna', 'Farrell', '071 073 6230', '2014-10-11 21:00:18'),
(63, 'Libby', 'Grimes', '005 486 7455', '2016-02-08 18:28:53'),
(64, 'Colt', 'Randall', '020 282 9425', '2014-10-05 23:02:00'),
(65, 'Sybill', 'Sharp', '0041 68 755 5159', '2014-10-19 17:06:44'),
(66, 'Ryder', 'Prince', '051 742 9643', '2015-08-01 23:03:47'),
(67, 'Damon', 'Cote', '086 727 5716', '2014-12-07 16:00:51'),
(68, 'Tyler', 'Hogan', '0041 56 334 3778', '2014-11-11 20:24:16'),
(69, 'Elton', 'Rios', '0041 83 712 6701', '2016-04-11 11:06:48'),
(70, 'Arden', 'Gamble', '061 833 1119', '2015-02-02 01:17:01'),
(71, 'Belle', 'Acosta', '056 332 2663', '2015-11-24 07:02:29'),
(72, 'Felicia', 'Ortega', '079 564 8015', '2014-12-16 22:33:33'),
(73, 'Althea', 'Ramirez', '0041 66 820 4568', '2015-07-18 20:19:09'),
(74, 'Barrett', 'Carter', '065 736 7747', '2016-02-26 16:46:16'),
(75, 'Owen', 'Pope', '0041 67 842 5501', '2015-01-25 10:28:56'),
(76, 'Solomon', 'Stark', '015 502 1672', '2015-03-13 07:54:41'),
(77, 'Helen', 'Boyle', '069 484 0872', '2014-10-08 05:22:40'),
(78, 'Holmes', 'Cain', '063 362 0272', '2016-03-09 23:26:35'),
(79, 'Constance', 'Wright', '093 724 1278', '2016-05-13 14:16:56'),
(80, 'Lionel', 'Alvarado', '019 785 9662', '2015-03-15 16:43:20'),
(81, 'Chaney', 'Bradshaw', '0041 84 553 7032', '2015-01-22 14:16:04'),
(82, 'Nathan', 'Brennan', '0041 88 458 4582', '2015-05-16 21:45:35'),
(83, 'Lester', 'Small', '0041 74 103 7750', '2014-11-21 17:36:14'),
(84, 'Shoshana', 'Bradley', '080 861 2143', '2014-12-04 16:56:52'),
(85, 'Austin', 'Dickerson', '0041 08 961 7091', '2015-04-26 02:00:16'),
(86, 'Wesley', 'Battle', '0041 88 472 5975', '2015-12-18 07:25:51'),
(87, 'Merritt', 'Snyder', '023 814 4782', '2015-06-25 15:04:16'),
(88, 'Ivory', 'Hutchinson', '0041 79 402 5334', '2014-12-17 09:44:00'),
(89, 'Karen', 'Burke', '069 388 2505', '2016-05-25 00:17:02'),
(90, 'Wylie', 'Merritt', '049 447 8342', '2016-06-28 08:17:08'),
(91, 'Ryder', 'Valdez', '0041 71 699 8325', '2016-03-14 01:25:49'),
(92, 'MacKenzie', 'Kline', '047 250 0923', '2014-11-02 09:38:06'),
(93, 'Burke', 'Steele', '018 411 8401', '2015-10-20 00:16:05'),
(94, 'Kendall', 'Holcomb', '002 861 5172', '2015-05-17 17:06:00'),
(95, 'Wang', 'Suarez', '092 146 5048', '2015-07-02 04:16:43'),
(96, 'Dahlia', 'Mcfarland', '027 647 4362', '2015-10-15 19:06:58'),
(97, 'Zorita', 'York', '0041 96 403 8821', '2014-11-08 20:34:07'),
(98, 'Zephr', 'Black', '013 221 1984', '2015-10-22 21:59:21'),
(99, 'Oprah', 'Hays', '0041 16 178 1432', '2016-08-05 15:06:58'),
(100, 'Naomi', 'Davis', '014 527 9303', '2016-04-07 18:49:30');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `address`
--
ALTER TABLE `address`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
