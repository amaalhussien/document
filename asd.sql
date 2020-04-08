-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 10:09 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asd`
--

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id_college` int(11) NOT NULL,
  `name_college` varchar(50) NOT NULL,
  `description` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id_college`, `name_college`, `description`) VALUES
(1, 'علوم الحاسوب وتكنلوجيا المعلومات', '');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id_degree` int(11) NOT NULL,
  `degree` int(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id_degree`, `degree`, `student_id`, `stage_id`, `subject_id`) VALUES
(16, 56, 1, 1, 9),
(17, 67, 2, 1, 9),
(18, 45, 3, 1, 9),
(19, 90, 4, 1, 9),
(20, 100, 5, 1, 9),
(21, 56, 1, 1, 10),
(22, 67, 2, 1, 10),
(23, 45, 3, 1, 10),
(24, 90, 4, 1, 10),
(25, 100, 5, 1, 10),
(26, 56, 1, 1, 11),
(27, 67, 2, 1, 11),
(28, 45, 3, 1, 11),
(29, 90, 4, 1, 11),
(30, 100, 5, 1, 11),
(31, 56, 1, 1, 12),
(32, 67, 2, 1, 12),
(33, 45, 3, 1, 12),
(34, 90, 4, 1, 12),
(35, 100, 5, 1, 12),
(36, 56, 1, 2, 3),
(37, 67, 2, 2, 3),
(38, 45, 3, 2, 3),
(39, 90, 4, 2, 3),
(40, 100, 5, 2, 3),
(41, 56, 1, 2, 4),
(42, 67, 2, 2, 4),
(43, 45, 3, 2, 4),
(44, 90, 4, 2, 4),
(45, 100, 5, 2, 4),
(46, 56, 1, 2, 7),
(47, 67, 2, 2, 7),
(48, 45, 3, 2, 7),
(49, 90, 4, 2, 7),
(50, 100, 5, 2, 7),
(51, 56, 1, 2, 8),
(52, 67, 2, 2, 8),
(53, 45, 3, 2, 8),
(54, 90, 4, 2, 8),
(55, 100, 5, 2, 8),
(56, 56, 1, 3, 15),
(57, 67, 2, 3, 15),
(58, 45, 3, 3, 15),
(59, 90, 4, 3, 15),
(60, 100, 5, 3, 15),
(61, 56, 1, 3, 16),
(62, 67, 2, 3, 16),
(63, 45, 3, 3, 16),
(64, 90, 4, 3, 16),
(65, 100, 5, 3, 16),
(66, 56, 1, 3, 17),
(67, 67, 2, 3, 17),
(68, 45, 3, 3, 17),
(69, 90, 4, 3, 17),
(70, 100, 5, 3, 17),
(71, 56, 1, 3, 18),
(72, 67, 2, 3, 18),
(73, 45, 3, 3, 18),
(74, 90, 4, 3, 18),
(75, 100, 5, 3, 18),
(76, 56, 1, 4, 19),
(77, 67, 2, 4, 19),
(78, 45, 3, 4, 19),
(79, 90, 4, 4, 19),
(80, 100, 5, 4, 19),
(81, 56, 1, 4, 21),
(82, 67, 2, 4, 21),
(83, 45, 3, 4, 21),
(84, 90, 4, 4, 21),
(85, 100, 5, 4, 21),
(86, 56, 1, 4, 22),
(87, 67, 2, 4, 22),
(88, 45, 3, 4, 22),
(89, 90, 4, 4, 22),
(90, 100, 5, 4, 22),
(91, 56, 1, 4, 20),
(92, 67, 2, 4, 20),
(93, 45, 3, 4, 20),
(94, 90, 4, 4, 20),
(95, 100, 5, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id_department` int(11) NOT NULL,
  `name_department` varchar(100) NOT NULL,
  `description` varchar(225) NOT NULL,
  `id_college` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id_department`, `name_department`, `description`, `id_college`) VALUES
(3, 'علوم الحاسوب', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `name_employee` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(300) NOT NULL,
  `level` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `id_college` int(11) NOT NULL,
  `groub_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id_employee`, `name_employee`, `email`, `password`, `level`, `task_id`, `id_college`, `groub_id`) VALUES
(9, 'ali', 'a@gmail.com', '$2y$10$WXlFTj6I9QAYUQUVb8tRseKqCgpLEKsA3v3J9gi74DgxRoSBfFdZK', 0, 1, 1, 0),
(10, 'a', 'b@gmail.com', '$2y$10$2w3fxhdT/ogreaqi3aKbh.qwGsL2Tq8Zs8.oK0yqJRMOSL4h3R/Yy', 0, 3, 1, 0),
(11, 'b', 'c@gmail.com', '$2y$10$K45e91YFeKHNuhQwICdt7u/hCF/Rej5aiT0gb2AaxbZbYq9U7TFuu', 0, 4, 1, 0),
(12, 'd', 'd@gmail.com', '$2y$10$4GII0i6PSDcn3pvV0JPsYeTe8qc1sOYELC7IDUqvS8OZZLsGoj666', 0, 5, 1, 0),
(13, 'f', 'f@gmail.com', '$2y$10$ISXvY12eW..DtkoJH25uCOrtSIoCwFk1vk1PIvjNarWMJnaHZTByW', 0, 6, 1, 0),
(14, 't', 't@gmail.com', '$2y$10$/fgyHxI3/5JfDNxHeKI9muAVfGZ1CyuNjsXoYuRG44bET14246p6O', 0, 7, 1, 0),
(15, 'e', 'e@gmail.com', '$2y$10$AVLR1olL3eRnx3XqlYyocuCwOKhozL7s.ENC/cR1ziiFtEcD7Ltqu', 0, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE `stage` (
  `stage_id` int(11) NOT NULL,
  `name_stage` varchar(50) NOT NULL,
  `id_department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stage`
--

INSERT INTO `stage` (`stage_id`, `name_stage`, `id_department`) VALUES
(1, 'frist', 3),
(2, 'second', 3),
(3, 'frist', 3),
(4, 'second', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `total` int(100) NOT NULL,
  `avarage` int(11) NOT NULL,
  `year` date NOT NULL,
  `id_college` int(11) NOT NULL,
  `id_departement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_student`, `full_name`, `total`, `avarage`, `year`, `id_college`, `id_departement`) VALUES
(1, 'احمد حميد ', 509, 89, '0000-00-00', 1, 3),
(2, 'اكرم فرحان', 567, 79, '0000-00-00', 1, 3),
(3, 'حسين سالم', 587, 89, '0000-00-00', 1, 3),
(4, 'حسين عقيل', 676, 90, '0000-00-00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id_subject` int(11) NOT NULL,
  `name_subject` varchar(50) NOT NULL,
  `year` date NOT NULL,
  `stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id_subject`, `name_subject`, `year`, `stage_id`) VALUES
(3, 'DataBase', '0000-00-00', 2),
(4, 'Business Statistical', '0000-00-00', 2),
(7, 'Business Statistical', '0000-00-00', 2),
(8, 'Financial Accounting', '0000-00-00', 2),
(9, 'c++', '0000-00-00', 1),
(10, 'Computer programming II', '0000-00-00', 1),
(11, 'Discrete Structures', '0000-00-00', 1),
(12, 'Information Technology Essential', '0000-00-00', 1),
(13, 'Mathematics for Information Systems', '0000-00-00', 1),
(14, 'Business Statistical', '0000-00-00', 1),
(15, 'Computer Graphics', '0000-00-00', 3),
(16, 'Marketing', '0000-00-00', 3),
(17, 'Web Programming', '0000-00-00', 3),
(18, 'Information Technology Essential', '0000-00-00', 3),
(19, 'Operation Systems', '0000-00-00', 4),
(20, 'Marketing', '0000-00-00', 4),
(21, 'Database Management Systems', '0000-00-00', 4),
(22, 'Financial Accounting', '0000-00-00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id_task` int(11) NOT NULL,
  `name_task` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id_task`, `name_task`) VALUES
(1, 'all'),
(2, 'nono'),
(3, 'stage_frist'),
(4, 'stage_seconed'),
(5, 'stage_three'),
(6, 'stage_four'),
(7, 'document');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id_college`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id_degree`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `stage_id` (`stage_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id_department`),
  ADD KEY `college_id` (`id_college`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `id_college` (`id_college`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`stage_id`),
  ADD KEY `department` (`id_department`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `id_college` (`id_college`),
  ADD KEY `id_departement` (`id_departement`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id_subject`),
  ADD KEY `stage` (`stage_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id_task`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id_college` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id_degree` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id_department` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stage`
--
ALTER TABLE `stage`
  MODIFY `stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id_subject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `degrees`
--
ALTER TABLE `degrees`
  ADD CONSTRAINT `degrees_ibfk_2` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`stage_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `degrees_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id_subject`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `college_id` FOREIGN KEY (`id_college`) REFERENCES `college` (`id_college`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `id_college` FOREIGN KEY (`id_college`) REFERENCES `college` (`id_college`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id_task`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `department` FOREIGN KEY (`id_department`) REFERENCES `department` (`id_department`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id_college`) REFERENCES `college` (`id_college`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`id_departement`) REFERENCES `department` (`id_department`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `stage` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`stage_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
