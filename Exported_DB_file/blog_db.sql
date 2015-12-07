-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2015 at 04:10 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(5000) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created`, `modified`, `user_id`) VALUES
(93, 'Bell appeals CRTC ruling forcing company to sell fibre internet access to small ISPs', 'Competition among providers could make ultra-high-speed fibre internet packages more affordable and give consumers more choice. But there likely won''t be much of it anytime soon if Bell successfully appeals a ruling from Canada''s telecom regulator.\r\n\r\nThe Canadian Radio-television and Telecommunications Commission ruled in July that large telecom companies such as Bell must sell wholesale access to their fibre networks to independent internet providers. Those independent ISPs could then offer customers competing internet packages, theoretically forcing everyone to offer better prices and packages in order to win customers.\r\n\r\nCRTC says big telecoms must share high-speed networks with competitors\r\nBell is appealing the ruling to both the CRTC and directly to cabinet via a petition to the Governor in Council. That alarms small internet providers and Open Media, a Vancouver-based group that advocates for Canadian internet users.\r\n\r\n''The future of the internet is fibre and if small players don''t have fair access, they''re going to die.''\r\n- Josh Tabish, Open Media\r\n"The future of the internet is fibre and if small players don''t have fair access, they''re going to die," said Josh Tabish, Open Media''s campaigns manager. He said the loss of small ISPs would raise Canada''s already high internet prices and reduce choices available to customers. Open Media has filed a submission to the CRTC opposing Bell''s appeal.', '2015-12-07 13:41:40', '2015-12-07 13:41:40', 9),
(94, 'Gravitational waves: How LISA Pathfinder will help detect ripples in space-time', 'A satellite that will test technology to detect ripples in space-time left by colliding black holes has been launched successfully.\r\n\r\nThe European Space Agency''s LISA Pathfinder blasted off at 4:04 a.m. GMT Thursday (11:04 p.m. ET Wednesday). It''s designed to make test measurements for a technique that will be used to detect gravitational waves — something in which scientists are greatly interested.\r\n\r\nWhat''s all the excitement about? Here''s what you need to know.\r\n\r\nWhat are gravitational waves?\r\n\r\nAlbert Einstein''s general theory of relativity predicts that ripples in space-time will be produced by massive objects when they change shape in time — for example, when neutron stars or black holes collide.\r\n\r\n5 awesome things Einstein''s general theory of relativity gave us\r\nThose ripples, called gravitational waves, will propagate through space-time at the speed of light.\r\n\r\nSo far, gravitational waves have never been detected.', '2015-12-07 13:43:17', '2015-12-07 14:29:59', 9);

-- --------------------------------------------------------

--
-- Table structure for table `article_tag_relation`
--

CREATE TABLE `article_tag_relation` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_tag_relation`
--

INSERT INTO `article_tag_relation` (`id`, `article_id`, `tag_id`) VALUES
(2, 52, 1),
(3, 53, 1),
(4, 60, 1),
(5, 60, 2),
(8, 62, 1),
(9, 62, 2),
(10, 63, 1),
(11, 63, 2),
(12, 64, 1),
(13, 64, 2),
(14, 65, 1),
(15, 65, 2),
(16, 66, 1),
(17, 66, 2),
(18, 67, 1),
(19, 67, 2),
(20, 68, 1),
(21, 68, 2),
(70, 93, 1),
(71, 94, 1),
(72, 94, 3),
(73, 94, 4),
(74, 94, 5),
(75, 94, 6),
(76, 94, 7);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `article_id` int(11) NOT NULL,
  `isApproved` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'Technology'),
(3, 'Science'),
(4, 'Art'),
(5, 'Economy'),
(6, 'Food'),
(7, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(1, 'Jack', '123456', 'user', NULL, NULL),
(7, 'admin', '$2y$10$DbC6C9sNdk6xrLmDFwLHweBWR9.9VsZfZUPnHhwck9Ii0ZmQ.aDxC', 'admin', '2015-12-04 05:13:49', '2015-12-04 05:13:49'),
(8, 'alex', '$2y$10$HdTI/BsvWLC2.fwBF1W8We.gGFkV6L61AU1jSLSkfH0sIOSgYQQ0C', 'user', '2015-12-06 04:47:46', '2015-12-06 04:47:46'),
(9, 'james', '$2y$10$7tuNWlBPZ.INk0yQkEYyruxAniCFqrvi//pL3a2MVgAo0oOiy44ei', 'user', '2015-12-07 13:40:28', '2015-12-07 13:40:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_tag_relation`
--
ALTER TABLE `article_tag_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `article_tag_relation`
--
ALTER TABLE `article_tag_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
