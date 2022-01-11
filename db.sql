-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 08:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_newuser'),
(22, 'Can change user', 6, 'change_newuser'),
(23, 'Can delete user', 6, 'delete_newuser'),
(24, 'Can view user', 6, 'view_newuser'),
(25, 'Can add host', 7, 'add_host'),
(26, 'Can change host', 7, 'change_host'),
(27, 'Can delete host', 7, 'delete_host'),
(28, 'Can view host', 7, 'view_host'),
(29, 'Can add home', 8, 'add_home'),
(30, 'Can change home', 8, 'change_home'),
(31, 'Can delete home', 8, 'delete_home'),
(32, 'Can view home', 8, 'view_home'),
(33, 'Can add home is booked', 9, 'add_homeisbooked'),
(34, 'Can change home is booked', 9, 'change_homeisbooked'),
(35, 'Can delete home is booked', 9, 'delete_homeisbooked'),
(36, 'Can view home is booked', 9, 'view_homeisbooked'),
(37, 'Can add post', 10, 'add_post'),
(38, 'Can change post', 10, 'change_post'),
(39, 'Can delete post', 10, 'delete_post'),
(40, 'Can view post', 10, 'view_post'),
(41, 'Can add comment', 11, 'add_comment'),
(42, 'Can change comment', 11, 'change_comment'),
(43, 'Can delete comment', 11, 'delete_comment'),
(44, 'Can view comment', 11, 'view_comment');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-11 07:06:10.652345', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Full name\", \"Profile dp\", \"Mobile num\"]}}]', 6, 2),
(2, '2022-01-11 07:14:46.064805', '1', 'New Year Notice', 1, '[{\"added\": {}}]', 10, 2),
(3, '2022-01-11 07:17:44.412141', '2', 'c.dipu0 Jatrabari, Single Bed Room', 2, '[{\"changed\": {\"fields\": [\"Title\", \"CoverImg\"]}}]', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(11, 'myapp', 'comment'),
(8, 'myapp', 'home'),
(9, 'myapp', 'homeisbooked'),
(7, 'myapp', 'host'),
(6, 'myapp', 'newuser'),
(10, 'myapp', 'post'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-11 06:15:28.328139'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-01-11 06:15:28.395139'),
(3, 'auth', '0001_initial', '2022-01-11 06:15:28.663140'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-01-11 06:15:28.724139'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-01-11 06:15:28.733143'),
(6, 'auth', '0004_alter_user_username_opts', '2022-01-11 06:15:28.794147'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-01-11 06:15:28.807139'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-01-11 06:15:28.812142'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-01-11 06:15:28.822138'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-01-11 06:15:28.835140'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-01-11 06:15:28.845142'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-01-11 06:15:28.865142'),
(13, 'auth', '0011_update_proxy_permissions', '2022-01-11 06:15:28.876140'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-01-11 06:15:28.887141'),
(15, 'myapp', '0001_initial', '2022-01-11 06:15:29.201138'),
(16, 'admin', '0001_initial', '2022-01-11 06:15:29.339138'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-01-11 06:15:29.353141'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-11 06:15:29.368138'),
(19, 'myapp', '0002_auto_20211122_1658', '2022-01-11 06:15:29.700139'),
(20, 'myapp', '0003_auto_20211122_1804', '2022-01-11 06:15:30.025137'),
(21, 'myapp', '0004_home_homeimgs_homeisbooked', '2022-01-11 06:15:30.301141'),
(22, 'myapp', '0005_auto_20211206_1134', '2022-01-11 06:15:30.342137'),
(23, 'myapp', '0006_alter_newuser_profile_dp', '2022-01-11 06:15:30.359138'),
(24, 'myapp', '0007_alter_newuser_profile_dp', '2022-01-11 06:15:30.377138'),
(25, 'myapp', '0008_auto_20211206_1738', '2022-01-11 06:15:30.516138'),
(26, 'myapp', '0009_rename_host_home_host_id', '2022-01-11 06:15:30.637142'),
(27, 'myapp', '0010_rename_host_id_home_host', '2022-01-11 06:15:30.752138'),
(28, 'myapp', '0011_rename_pricepernight_home_pricepermonth', '2022-01-11 06:15:30.811142'),
(29, 'myapp', '0012_auto_20211222_1811', '2022-01-11 06:15:31.151142'),
(30, 'myapp', '0013_auto_20211222_1903', '2022-01-11 06:15:31.224140'),
(31, 'myapp', '0014_homeisbooked_hostid', '2022-01-11 06:15:31.258143'),
(32, 'myapp', '0015_post', '2022-01-11 06:15:31.307139'),
(33, 'myapp', '0016_comment', '2022-01-11 06:15:31.392139'),
(34, 'myapp', '0017_home_ishomeapproved', '2022-01-11 06:15:31.426139'),
(35, 'myapp', '0018_home_bookedstatus', '2022-01-11 06:15:31.463138'),
(36, 'sessions', '0001_initial', '2022-01-11 06:15:31.511136');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2e918bcjrm5k8fjtas3b2vt5wryzxz5h', '.eJxVjDsOwjAQBe_iGlm2Wf8o6XMGy59dHEC2FCcV4u4QKQW0b2bei4W4rTVsA5cwF3Zhkp1-txTzA9sOyj22W-e5t3WZE98VftDBp17weT3cv4MaR_3WlI2S6IoCQICEPkcDZI1wzmc0lEombaPWZAmc8CZZp0iRS17Is5Xs_QH3Fjf5:1n7Apu:4_8TBFRDV-HyVwKl2brlywt011bRmogflGCxLyfRhF4', '2022-01-25 06:40:50.591465'),
('ck8yqy3u6tuwyakzaim0ymezoqw60tcn', '.eJxVjEEOwiAQRe_C2hBhZgBduu8ZmgFGqRpISrsy3l2bdKHb_977LzXyupRx7TKPU1ZnZdXhd4ucHlI3kO9cb02nVpd5inpT9E67HlqW52V3_w4K9_KtOWaAhCZYYAKPZAGCI0TH0YNYE4MEF65HRkfei_MowZDEE1lERvX-ALarNo0:1n7BDn:hruAgwbcnI25FK9KpBBr6IaDZl2qV1brcZ9DomI-D7g', '2022-01-25 07:05:31.802116');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_comment`
--

CREATE TABLE `myapp_comment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_comment`
--

INSERT INTO `myapp_comment` (`id`, `name`, `email`, `body`, `date_added`, `post_id`) VALUES
(1, 'Md. Asad Chowdhury Dipu', 'c.dipu0@gmail.com', 'WOW!!\r\nGreat work done by the developer! <3!', '2022-01-11 07:15:57.391807', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_home`
--

CREATE TABLE `myapp_home` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `coverImg` varchar(100) DEFAULT NULL,
  `noOfRoom` int(11) NOT NULL,
  `noOfBed` int(11) NOT NULL,
  `noOfBath` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pricePerMonth` int(11) NOT NULL,
  `aboutHome` varchar(1000) NOT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `photofile1` varchar(100) DEFAULT NULL,
  `photofile2` varchar(100) DEFAULT NULL,
  `photofile3` varchar(100) DEFAULT NULL,
  `photofile4` varchar(100) DEFAULT NULL,
  `IsHomeApproved` tinyint(1) NOT NULL,
  `BookedStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_home`
--

INSERT INTO `myapp_home` (`id`, `title`, `coverImg`, `noOfRoom`, `noOfBed`, `noOfBath`, `address`, `pricePerMonth`, `aboutHome`, `host_id`, `photofile1`, `photofile2`, `photofile3`, `photofile4`, `IsHomeApproved`, `BookedStatus`) VALUES
(1, 'Dholairpar, Single Bed Room', 'assets/uploadedimg/img1.jpg', 1, 1, 1, 'Dholairpar, Jatrabari, Dhaka-1204', 6000, 'This is a sublet room. shared kitchen with other features.', 1, 'assets/uploadedimg/img4.jpg', 'assets/uploadedimg/img7.jpg', 'assets/uploadedimg/img1_BUa1yZx.jpg', 'assets/uploadedimg/img2.jpg', 1, 0),
(2, 'Jatrabari, Single Bed Room', 'assets/uploadedimg/img2_UPU0O2M.jpg', 1, 1, 1, 'Dholairpar, Jatrabari, Dhaka-1204', 6000, 'This is a sublet room. shared kitchen with other features.', 1, 'assets/uploadedimg/img4_IlriBPn.jpg', 'assets/uploadedimg/img7_mh54Mtg.jpg', 'assets/uploadedimg/img1_8bepIsF.jpg', 'assets/uploadedimg/img2_ABADSnP.jpg', 1, 0),
(3, 'Dholairpar, Single Bed Room', 'assets/uploadedimg/img1_JV6JvV7.jpg', 1, 1, 1, 'Dholairpar, Jatrabari, Dhaka-1204', 6000, 'This is a sublet room. shared kitchen with other features.', 1, 'assets/uploadedimg/img4_M2PfWgi.jpg', 'assets/uploadedimg/img7_4J5boW9.jpg', 'assets/uploadedimg/img1_bktGRxC.jpg', 'assets/uploadedimg/img2_NMerSTX.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_homeisbooked`
--

CREATE TABLE `myapp_homeisbooked` (
  `home_id` bigint(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `isBooked` tinyint(1) NOT NULL,
  `hostid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_host`
--

CREATE TABLE `myapp_host` (
  `username_id` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_host`
--

INSERT INTO `myapp_host` (`username_id`, `address`) VALUES
(1, 'Dholairpar, Jatrabari, Dhaka-1204');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_newuser`
--

CREATE TABLE `myapp_newuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `mobile_num` int(10) UNSIGNED DEFAULT NULL CHECK (`mobile_num` >= 0),
  `profile_dp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_newuser`
--

INSERT INTO `myapp_newuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `full_name`, `mobile_num`, `profile_dp`) VALUES
(1, 'pbkdf2_sha256$260000$zL2Gnry4UzKhatU19gZE8C$JLHXIkrufX/XF05DF+QzbiFtGpGvPbrvV9Zo9e/3g6I=', '2022-01-11 06:40:50.587717', 0, 'c.dipu0', '', '', 'dipu0@gmail.com', 0, 1, '2022-01-11 06:40:50.244785', 'Md. Asad Chowdhury Dipu', 1521583534, 'assets/uploadedimg/Dipu093.png'),
(2, 'pbkdf2_sha256$260000$QL48e3mD3qd1Eg3bqKSuLr$bgFpy/wkV1Qs25iixZWvsY1lI0qQqMtTzCOCiiXH5nA=', '2022-01-11 07:05:31.000000', 1, 'admin', 'Md. Asad', 'Dipu', 'c.dipu0@gmail.com', 1, 1, '2022-01-11 07:04:26.000000', 'Md. Asad Chowdhury Dipu', 1521583534, 'assets/uploadedimg/IMG_1696.png');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_newuser_groups`
--

CREATE TABLE `myapp_newuser_groups` (
  `id` bigint(20) NOT NULL,
  `newuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_newuser_user_permissions`
--

CREATE TABLE `myapp_newuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `newuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_post`
--

CREATE TABLE `myapp_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `intro` longtext NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_post`
--

INSERT INTO `myapp_post` (`id`, `title`, `slug`, `intro`, `body`, `date_added`) VALUES
(1, 'New Year Notice', '2022', 'Hello Everyone!!', 'We are glad to announce our new web application with hole new features. Please let us know about thoughts regarding this new look!', '2022-01-11 07:14:46.063806');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_myapp_newuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `myapp_comment`
--
ALTER TABLE `myapp_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_comment_post_id_37a1a45e_fk_myapp_post_id` (`post_id`);

--
-- Indexes for table `myapp_home`
--
ALTER TABLE `myapp_home`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_home_host_id_9f5ef389_fk_myapp_host_username_id` (`host_id`);

--
-- Indexes for table `myapp_homeisbooked`
--
ALTER TABLE `myapp_homeisbooked`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `myapp_host`
--
ALTER TABLE `myapp_host`
  ADD PRIMARY KEY (`username_id`);

--
-- Indexes for table `myapp_newuser`
--
ALTER TABLE `myapp_newuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `myapp_newuser_groups`
--
ALTER TABLE `myapp_newuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_newuser_groups_newuser_id_group_id_792a59a7_uniq` (`newuser_id`,`group_id`),
  ADD KEY `myapp_newuser_groups_group_id_74a4563a_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `myapp_newuser_user_permissions`
--
ALTER TABLE `myapp_newuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_newuser_user_permi_newuser_id_permission_id_660a3d81_uniq` (`newuser_id`,`permission_id`),
  ADD KEY `myapp_newuser_user_p_permission_id_ce6af480_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `myapp_post`
--
ALTER TABLE `myapp_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_post_slug_e560c150` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `myapp_comment`
--
ALTER TABLE `myapp_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myapp_home`
--
ALTER TABLE `myapp_home`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myapp_newuser`
--
ALTER TABLE `myapp_newuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myapp_newuser_groups`
--
ALTER TABLE `myapp_newuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_newuser_user_permissions`
--
ALTER TABLE `myapp_newuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_post`
--
ALTER TABLE `myapp_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_myapp_newuser_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_newuser` (`id`);

--
-- Constraints for table `myapp_comment`
--
ALTER TABLE `myapp_comment`
  ADD CONSTRAINT `myapp_comment_post_id_37a1a45e_fk_myapp_post_id` FOREIGN KEY (`post_id`) REFERENCES `myapp_post` (`id`);

--
-- Constraints for table `myapp_home`
--
ALTER TABLE `myapp_home`
  ADD CONSTRAINT `myapp_home_host_id_9f5ef389_fk_myapp_host_username_id` FOREIGN KEY (`host_id`) REFERENCES `myapp_host` (`username_id`);

--
-- Constraints for table `myapp_homeisbooked`
--
ALTER TABLE `myapp_homeisbooked`
  ADD CONSTRAINT `myapp_homeisbooked_home_id_48c2ea43_fk_myapp_home_id` FOREIGN KEY (`home_id`) REFERENCES `myapp_home` (`id`);

--
-- Constraints for table `myapp_host`
--
ALTER TABLE `myapp_host`
  ADD CONSTRAINT `myapp_host_username_id_d81a3d89_fk_myapp_newuser_id` FOREIGN KEY (`username_id`) REFERENCES `myapp_newuser` (`id`);

--
-- Constraints for table `myapp_newuser_groups`
--
ALTER TABLE `myapp_newuser_groups`
  ADD CONSTRAINT `myapp_newuser_groups_group_id_74a4563a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `myapp_newuser_groups_newuser_id_6cd378ae_fk_myapp_newuser_id` FOREIGN KEY (`newuser_id`) REFERENCES `myapp_newuser` (`id`);

--
-- Constraints for table `myapp_newuser_user_permissions`
--
ALTER TABLE `myapp_newuser_user_permissions`
  ADD CONSTRAINT `myapp_newuser_user_p_newuser_id_ed9dbd88_fk_myapp_new` FOREIGN KEY (`newuser_id`) REFERENCES `myapp_newuser` (`id`),
  ADD CONSTRAINT `myapp_newuser_user_p_permission_id_ce6af480_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
