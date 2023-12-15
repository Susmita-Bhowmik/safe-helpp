-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 02:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safe_helpp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked_appointment`
--

CREATE TABLE `booked_appointment` (
  `id` int(11) NOT NULL,
  `psychiatrist_id` varchar(255) NOT NULL,
  `psychiatrist_name` varchar(255) NOT NULL,
  `psychiatrist_email` varchar(255) NOT NULL,
  `psychiatrist_phone` varchar(255) NOT NULL,
  `booked_appointment_date` varchar(255) NOT NULL,
  `booked_appointment_time` varchar(255) NOT NULL,
  `booking_user_name` varchar(255) NOT NULL,
  `booking_user_phone` varchar(255) NOT NULL,
  `booking_user_email` varchar(255) NOT NULL,
  `booking_for` varchar(255) NOT NULL,
  `date` varchar(6) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked_appointment`
--

INSERT INTO `booked_appointment` (`id`, `psychiatrist_id`, `psychiatrist_name`, `psychiatrist_email`, `psychiatrist_phone`, `booked_appointment_date`, `booked_appointment_time`, `booking_user_name`, `booking_user_phone`, `booking_user_email`, `booking_for`, `date`, `status`) VALUES
(1, 'SH655f322253b57', 'Dr. Margaret William', 'susmita16032018@gmail.com', '9076543210', '2023-11-26', '18:35', 'Mou Bhowmik', '987654032', 'bpddev8@gmail.com', 'Trauma and Abuse', '2023-1', 'approved'),
(4, 'SH655f3529e39a2', 'Dr. Margaret William', 'bpddev8@gmail.com', '9076543210', '2023-12-01', '11:46', 'Susmita Bhowmik', '987654032', 'susmita16032018@gmail.com', 'Self Esteem', '2023-1', 'approved'),
(5, 'SH655f3529e39a2', 'Dr. Margaret William', 'bpddev8@gmail.com', '9076543210', '2023-12-01', '11:46', 'Mou Bhowmik', '987654032', 'bpddev8@gmail.com', 'Self Esteem', '2023-1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `therapist_information`
--

CREATE TABLE `therapist_information` (
  `id` int(11) NOT NULL,
  `therapist_id` varchar(255) NOT NULL,
  `therapist_name` varchar(255) NOT NULL,
  `therapist_email` varchar(255) NOT NULL,
  `therapist_phone` varchar(255) NOT NULL,
  `therapist_address` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `therapist_information`
--

INSERT INTO `therapist_information` (`id`, `therapist_id`, `therapist_name`, `therapist_email`, `therapist_phone`, `therapist_address`, `date`) VALUES
(8, 'SH655f322253b57', 'Dr. Margaret William', 'william@gmail.com', '9076543210', 'Washington, DC Rockville, MD', '2023-11-23'),
(9, 'SH655f33f0f1c19', 'Dr. Elizabeth Madison', 'madison@gmail.com', '0987654321', 'Washington, DC Rockville, MD', '2023-11-23'),
(11, 'SH655f3529e39a2', 'Dr. Margaret William', 'susmita16032018@gmail.com', '9076543210', 'Washington, DC Rockville, MD', '2023-11-23'),
(12, 'SH656d9a7cebc01', 'admin', 'admin@gmail.com', '9076543210', 'kolkata', '2023-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `therapist_profile`
--

CREATE TABLE `therapist_profile` (
  `id` int(11) NOT NULL,
  `therapist_id` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `about_therapist` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `y_o_exp` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `category_therapy` varchar(255) DEFAULT NULL,
  `therapist_specialty` varchar(255) DEFAULT NULL,
  `therapy_license` varchar(255) DEFAULT NULL,
  `christian_based_therapy` varchar(255) DEFAULT NULL,
  `accepted_insurance` varchar(255) DEFAULT NULL,
  `therapist_fees` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `therapist_profile`
--

INSERT INTO `therapist_profile` (`id`, `therapist_id`, `profile_picture`, `designation`, `about_therapist`, `state`, `city`, `y_o_exp`, `language`, `category_therapy`, `therapist_specialty`, `therapy_license`, `christian_based_therapy`, `accepted_insurance`, `therapist_fees`, `date`) VALUES
(8, 'SH655f322253b57', 'therapists-01.jpg', 'Psychiatrist', 'Fusce ac nulla consequat, auctor arcu at, bibendum justo. Nullam mollis, ligula ut ultricies consectetur, ante magna cursus eros, et faucibus turpis leo vitae lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius purus ante, a suscipi', 'Washington', 'DC Rockville', '5(five)', 'english', 'Individual Therapy, Couples Therapy, Child/Teenagers Therapy', 'Trauma and Abuse, Self Esteem, Depression, Compassion Fatigue', 'LICSW,LCSW-C', 'No', 'Aetna, Amwell', '4000', '2023-11-23'),
(9, 'SH655f33f0f1c19', 'therapists-04.jpg', 'Psychiatrist', 'Fusce ac nulla consequat, auctor arcu at, bibendum justo. Nullam mollis, ligula ut ultricies consectetur, ante magna cursus eros, et faucibus turpis leo vitae lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius purus ante, a suscipi', 'California', 'DC Rockville', '4', 'english', 'Individual Therapy', 'Trauma and Abuse, Self Esteem, Depression, Compassion Fatigue', 'LICSW,LCSW-C', 'Yes', 'Oscar Health, Talkspace', '5000', '2023-11-23'),
(11, 'SH655f3529e39a2', 'therapists-02.jpg', 'Psychiatrist', 'Fusce ac nulla consequat, auctor arcu at, bibendum justo. Nullam mollis, ligula ut ultricies consectetur, ante magna cursus eros, et faucibus turpis leo vitae lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius purus ante, a suscipi', 'Georgia', 'DC Rockville', '6', 'english', 'Couples Therapy, Child/Teenagers Therapy', 'Trauma and Abuse, Self Esteem, Depression, Compassion Fatigue', '', 'Yes', 'Oscar Health, Talkspace', '4000', '2023-11-23'),
(12, 'SH656d9a7cebc01', 'happy.jpg', 'abcd', 'test1', 'Indiana', 'test', '3', 'english', 'Individual Therapy', 'test', 'LICSW,LCSW-C', 'Yes', 'Oscar Health', '4000', '2023-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `therapist_register`
--

CREATE TABLE `therapist_register` (
  `id` int(11) NOT NULL,
  `therapist_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `register_username` varchar(255) NOT NULL,
  `register_email` varchar(255) NOT NULL,
  `register_pass` varchar(255) NOT NULL,
  `user_token` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `therapist_register`
--

INSERT INTO `therapist_register` (`id`, `therapist_id`, `user_type`, `register_username`, `register_email`, `register_pass`, `user_token`, `date`) VALUES
(8, 'SH655f322253b57', '', 'Dr. Margaret William', 'susmita16032018@gmail.com', '12345678', '21ca592445b755b25e63f0340aec46', '2023-11-23'),
(9, 'SH655f33f0f1c19', '', 'Dr. Elizabeth Madison', 'madison@gmail.com', '12345678', '21ca592445b755b25e63f0340aec46', '2023-11-23'),
(11, 'SH655f3529e39a2', '', 'Dr. Margaret William', 'bpddev8@gmail.com', '12345678', '21ca592445b755b25e63f0340aec46', '2023-11-23'),
(12, 'SH656d9a7cebc01', 'admin', 'admin', 'admin@gmail.com', '12345678', '', '2023-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `therapist_scheduled_session`
--

CREATE TABLE `therapist_scheduled_session` (
  `id` int(11) NOT NULL,
  `therapist_id` varchar(255) NOT NULL,
  `session_title` varchar(255) NOT NULL,
  `therapist_name` varchar(255) NOT NULL,
  `therapist_email` varchar(255) NOT NULL,
  `therapist_phone` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `session_date` varchar(255) NOT NULL,
  `scheduled_time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `therapist_scheduled_session`
--

INSERT INTO `therapist_scheduled_session` (`id`, `therapist_id`, `session_title`, `therapist_name`, `therapist_email`, `therapist_phone`, `speciality`, `session_date`, `scheduled_time`, `date`) VALUES
(25, 'SH655f322253b57', 'Trauma and Abuse', 'Dr. Margaret William', 'bpddev8@gmail.com', '9076543210', 'Trauma and Abuse', '2023-11-26', '18:35', '2023-11-24 14:03:26'),
(26, 'SH655f322253b57', 'Self Esteem', 'Dr. Margaret William', 'bpddev8@gmail.com', '9076543210', 'Self Esteem', '2023-12-03', '18:50', '2023-11-24 14:15:41'),
(27, 'SH655f322253b57', 'Depression', 'Dr. Margaret William', 'bpddev8@gmail.com', '9076543210', 'Depression', '2023-11-26', '20:48', '2023-11-24 14:16:26'),
(28, 'SH655f348f635c0', 'Compassion ', 'Dr. Harry Reece', 'reece@gmail.com', '9086521234', 'Compassion ', '2023-11-27', '04:25', '2023-11-27 08:54:11'),
(30, 'SH655f3529e39a2', 'Self Esteem', 'Dr. Margaret William', 'abc@gmail.com', '9076543210', 'Self Esteem', '2023-12-01', '11:46', '2023-12-13 07:14:53'),
(31, 'SH655f33f0f1c19', 'Self Esteem', 'Dr. Elizabeth Madison', 'susmita16032018@gmail.com', '9076543210', 'Trauma and Abuse', '2023-12-08', '13:57', '2023-12-14 09:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_pass`, `date`) VALUES
(4, 'User-6560a437', 'Susmita Bhowmik', 'bpddev8@gmail.com', 'bpddev8@gmail.com', '123', '2023-11-24 12:29:30'),
(5, 'User-6560a437c40b2', 'admin', 'admin@gmail.com', '1234566788', '123', '2023-11-24 14:25:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_appointment`
--
ALTER TABLE `booked_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapist_information`
--
ALTER TABLE `therapist_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapist_profile`
--
ALTER TABLE `therapist_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapist_register`
--
ALTER TABLE `therapist_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapist_scheduled_session`
--
ALTER TABLE `therapist_scheduled_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_appointment`
--
ALTER TABLE `booked_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `therapist_information`
--
ALTER TABLE `therapist_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `therapist_profile`
--
ALTER TABLE `therapist_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `therapist_register`
--
ALTER TABLE `therapist_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `therapist_scheduled_session`
--
ALTER TABLE `therapist_scheduled_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
