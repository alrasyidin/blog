-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 04:42 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `start_at` int(11) NOT NULL,
  `end_at` int(11) NOT NULL,
  `page` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `link`, `image`, `start_at`, `end_at`, `page`, `status`, `created`) VALUES
(3, 'test', 'https://www.google.com', '551d01f3e0e82c01bdaa71c89c09bb6314695745_c617ca802253bb40e40c77dbde2b1fd8a1e0ae93.jpg', 1523052000, 1526767200, '/', 'enabled', 1523052115);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `status`) VALUES
(6, 0, 'design', 'enabled'),
(7, 0, 'web development', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created`, `status`) VALUES
(1, 1, 2, 'fdasfads', 0, ''),
(2, 1, 1, 'fdasfasdfas', 0, ''),
(3, 1, 3, 'fdsafadsfs', 0, ''),
(4, 1, 3, 'fdsfadfsdf', 0, ''),
(5, 1, 10, 'Hello World 2', 1476168503, 'enabled'),
(6, 1, 10, 'Hello World', 1476168540, 'enabled'),
(7, 1, 10, 'Welcome Back', 1476168584, 'enabled'),
(8, 1, 10, 'Hashed ?', 1476168619, 'enabled'),
(9, 1, 9, 'Thanks', 1476168737, 'enabled'),
(10, 1, 9, 'Again', 1476168740, 'enabled'),
(11, 5, 10, 'm', 1522874578, 'enabled'),
(12, 0, 11, 'k', 1522955793, 'enabled'),
(13, 0, 11, 'jn', 1522955799, 'enabled'),
(14, 5, 13, 'mn', 1522984007, 'enabled'),
(15, 5, 13, 'nn', 1522984244, 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(96) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `reply` text NOT NULL,
  `replied_by` int(11) NOT NULL,
  `replied_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_users`
--

CREATE TABLE `online_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(1000) NOT NULL,
  `tags` text NOT NULL,
  `related_posts` text NOT NULL,
  `views` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `details`, `image`, `tags`, `related_posts`, `views`, `created`, `status`) VALUES
(12, 7, 5, 'test1', '&lt;p&gt;test1test1test1test1test1test1test1&lt;/p&gt;', '53f85b8a1eee40e36fa3f1e63a4223c82cc49c55_fefa7a11ff269a565bc8eb4dd6f62856a7998b94.jpg', 'd', '', 0, 1522895832, 'enabled'),
(13, 6, 5, 'test2', '&lt;p&gt;test2test2test2test2test2test2test2test2test2&lt;/p&gt;', '1fd5815e0b0a43175422dc88824f68c13a1c8377_74d1bb4388e4d49e7b1fe00afdcb44880af5b406.jpg', 'vv', '', 0, 1522895986, 'enabled'),
(14, 7, 5, 'test3', '&lt;p&gt;test3test3test3test3test3test3test3test3test3test3test3test3&lt;/p&gt;', 'd5fe82ee5a05417e940f8c383d4ea587556a87ce_171f0be43a2d7d853ea5b66b3578925801312e97.jpg', 'nb', '', 0, 1523033290, 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(13, 'site_name', 'super M soft | software house'),
(14, 'site_email', 'info@supermsoft.com'),
(15, 'site_status', 'enabled'),
(16, 'site_close_msg', '&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:48px&quot;&gt;Site Now Is IN Maintainance Mode&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(96) NOT NULL,
  `password` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users_group_id`, `first_name`, `last_name`, `email`, `password`, `image`, `gender`, `birthday`, `created`, `status`, `ip`, `code`) VALUES
(1, 1, 'super', 'msoft', 'supermsoft@gmail.com', '$2y$10$BpmrbYmq92URZabfURXm5.JdqVi9oFxBlmeG1Okz.NEebXhGhEtR2', 'bd26e304f903800972245fcff0953493d636bbcb_30285e4def918c5a14dd3d08f6e1ffb414d22e0e.jpg', 'male', 1014328800, 1471429381, 'disabled', '', '80a315d99d01b28e68e58c0c899bc4ce2197c524'),
(5, 1, 'Mohammed', 'Hassan', 'mohammedhassan1020303030@gmail.com', '$2y$10$ArJ.tRHt0AGTYaUBbgoDv.YQD9UqqbGI2VLlF/ntNwOufVoKWznnu', '996028851b059037db73e8af6ce6389ee7f7f0de_fba26684645820ad647353f8e210d94d1206384a.jpg', 'male', 1014328800, 1522350958, 'enabled', '', '85011d2016c9c4c6ecb0ea225c1b79577e8ab0e1');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `name`) VALUES
(1, 'Super Administrators'),
(2, 'Users');

-- --------------------------------------------------------

--
-- Table structure for table `users_group_permissions`
--

CREATE TABLE `users_group_permissions` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_group_permissions`
--

INSERT INTO `users_group_permissions` (`id`, `users_group_id`, `page`) VALUES
(46, 2, '/admin/login'),
(47, 2, '/admin/login/submit'),
(48, 0, '/admin/login'),
(49, 0, '/admin/login/submit'),
(50, 0, '/admin'),
(51, 0, '/admin/dashboard'),
(52, 0, '/admin/submit'),
(53, 0, '/admin/users'),
(54, 0, '/admin/users/add'),
(55, 0, '/admin/users/submit'),
(56, 0, '/admin/users/edit/:id'),
(57, 0, '/admin/users/save/:id'),
(58, 0, '/admin/users/delete/:id'),
(59, 0, '/admin/profile/update'),
(60, 0, '/admin/users-groups'),
(61, 0, '/admin/users-groups/add'),
(62, 0, '/admin/users-groups/submit'),
(63, 0, '/admin/users-groups/edit/:id'),
(64, 0, '/admin/users-groups/save/:id'),
(65, 0, '/admin/users-groups/delete/:id'),
(66, 0, '/admin/posts'),
(67, 0, '/admin/posts/add'),
(68, 0, '/admin/posts/submit'),
(69, 0, '/admin/posts/edit/:id'),
(70, 0, '/admin/posts/save/:id'),
(71, 0, '/admin/posts/delete/:id'),
(72, 0, '/admin/posts/:id/comments'),
(73, 0, '/admin/comments/edit/:id'),
(74, 0, '/admin/comments/save/:id'),
(75, 0, '/admin/comments/delete/:id'),
(76, 0, '/admin/categories'),
(77, 0, '/admin/categories/add'),
(78, 0, '/admin/categories/submit'),
(79, 0, '/admin/categories/edit/:id'),
(80, 0, '/admin/categories/save/:id'),
(81, 0, '/admin/categories/delete/:id'),
(82, 0, '/admin/settings'),
(83, 0, '/admin/settings/save'),
(84, 0, '/admin/contacts'),
(85, 0, '/admin/contacts/reply/:id'),
(86, 0, '/admin/contacts/send/:id'),
(87, 0, '/admin/ads'),
(88, 0, '/admin/ads/add'),
(89, 0, '/admin/ads/submit'),
(90, 0, '/admin/ads/edit/:id'),
(91, 0, '/admin/ads/save/:id'),
(92, 0, '/admin/ads/delete/:id'),
(93, 0, '/admin/logout'),
(94, 0, '/admin/login'),
(95, 0, '/admin/login/submit'),
(96, 0, '/admin'),
(97, 0, '/admin/dashboard'),
(98, 0, '/admin/submit'),
(99, 0, '/admin/users'),
(100, 0, '/admin/users/add'),
(101, 0, '/admin/users/submit'),
(102, 0, '/admin/users/edit/:id'),
(103, 0, '/admin/users/save/:id'),
(104, 0, '/admin/users/delete/:id'),
(105, 0, '/admin/profile/update'),
(106, 0, '/admin/users-groups'),
(107, 0, '/admin/users-groups/add'),
(108, 0, '/admin/users-groups/submit'),
(109, 0, '/admin/users-groups/edit/:id'),
(110, 0, '/admin/users-groups/save/:id'),
(111, 0, '/admin/users-groups/delete/:id'),
(112, 0, '/admin/posts'),
(113, 0, '/admin/posts/add'),
(114, 0, '/admin/posts/submit'),
(115, 0, '/admin/posts/edit/:id'),
(116, 0, '/admin/posts/save/:id'),
(117, 0, '/admin/posts/delete/:id'),
(118, 0, '/admin/posts/:id/comments'),
(119, 0, '/admin/comments/edit/:id'),
(120, 0, '/admin/comments/save/:id'),
(121, 0, '/admin/comments/delete/:id'),
(122, 0, '/admin/categories'),
(123, 0, '/admin/categories/add'),
(124, 0, '/admin/categories/submit'),
(125, 0, '/admin/categories/edit/:id'),
(126, 0, '/admin/categories/save/:id'),
(127, 0, '/admin/categories/delete/:id'),
(128, 0, '/admin/settings'),
(129, 0, '/admin/settings/save'),
(130, 0, '/admin/contacts'),
(131, 0, '/admin/contacts/reply/:id'),
(132, 0, '/admin/contacts/send/:id'),
(133, 0, '/admin/ads'),
(134, 0, '/admin/ads/add'),
(135, 0, '/admin/ads/submit'),
(136, 0, '/admin/ads/edit/:id'),
(137, 0, '/admin/ads/save/:id'),
(138, 0, '/admin/ads/delete/:id'),
(139, 0, '/admin/logout'),
(140, 1, '/admin/login'),
(141, 1, '/admin/login/submit'),
(142, 1, '/admin'),
(143, 1, '/admin/dashboard'),
(144, 1, '/admin/submit'),
(145, 1, '/admin/users'),
(146, 1, '/admin/users/add'),
(147, 1, '/admin/users/submit'),
(148, 1, '/admin/users/edit/:id'),
(149, 1, '/admin/users/save/:id'),
(150, 1, '/admin/users/delete/:id'),
(151, 1, '/admin/profile/update'),
(152, 1, '/admin/users-groups'),
(153, 1, '/admin/users-groups/add'),
(154, 1, '/admin/users-groups/submit'),
(155, 1, '/admin/users-groups/edit/:id'),
(156, 1, '/admin/users-groups/save/:id'),
(157, 1, '/admin/users-groups/delete/:id'),
(158, 1, '/admin/posts'),
(159, 1, '/admin/posts/add'),
(160, 1, '/admin/posts/submit'),
(161, 1, '/admin/posts/edit/:id'),
(162, 1, '/admin/posts/save/:id'),
(163, 1, '/admin/posts/delete/:id'),
(164, 1, '/admin/posts/:id/comments'),
(165, 1, '/admin/comments/edit/:id'),
(166, 1, '/admin/comments/save/:id'),
(167, 1, '/admin/comments/delete/:id'),
(168, 1, '/admin/categories'),
(169, 1, '/admin/categories/add'),
(170, 1, '/admin/categories/submit'),
(171, 1, '/admin/categories/edit/:id'),
(172, 1, '/admin/categories/save/:id'),
(173, 1, '/admin/categories/delete/:id'),
(174, 1, '/admin/settings'),
(175, 1, '/admin/settings/save'),
(176, 1, '/admin/contacts'),
(177, 1, '/admin/contacts/reply/:id'),
(178, 1, '/admin/contacts/send/:id'),
(179, 1, '/admin/ads'),
(180, 1, '/admin/ads/add'),
(181, 1, '/admin/ads/submit'),
(182, 1, '/admin/ads/edit/:id'),
(183, 1, '/admin/ads/save/:id'),
(184, 1, '/admin/ads/delete/:id'),
(185, 1, '/admin/logout');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_users`
--
ALTER TABLE `online_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_group_permissions`
--
ALTER TABLE `users_group_permissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_users`
--
ALTER TABLE `online_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_group_permissions`
--
ALTER TABLE `users_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
