-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 10:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `code` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail_path` text NOT NULL,
  `video_path` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `total_views` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `uploads` (`id`, `code`, `title`, `description`, `thumbnail_path`, `video_path`, `user_id`, `total_views`, `date_created`) VALUES
(8, 'LUwzRtMgZDEG0YcN', 'Sample', 'Sample', '', 'LUwzRtMgZDEG0YcN.mp4', 1, 0, '2020-11-07 17:16:17');


CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, 'John', 'Smith', 'C', '+14526-5455-44', 'Sample Address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '1604716320_no-image-available.png', '2020-11-07 10:32:29'),
(2, 'Claire', 'Blake', '', '8747808787', 'Sample Address', 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', '', '2020-11-07 14:48:09'),
(3, 'George', 'Wilson', '', '+1234562623', 'Sample Address', 'gwilson@sample.com', 'gwilson123', '1604740200_avatar2.png', '2020-11-07 17:10:06');

CREATE TABLE `views` (
  `id` int(30) NOT NULL,
  `upload_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `views` (`id`, `upload_id`, `user_id`, `ip_address`, `date_created`) VALUES
(1, 2, 0, '::1', '2020-11-07 14:44:37'),
(2, 2, 2, '', '2020-11-07 14:48:16'),
(3, 1, 2, '', '2020-11-07 14:59:06'),
(4, 1, 0, '::1', '2020-11-07 15:48:14'),
(5, 4, 0, '::1', '2020-11-07 15:49:45'),
(6, 3, 0, '::1', '2020-11-07 17:08:36'),
(7, 5, 0, '::1', '2020-11-07 17:08:55');

ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `views`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
