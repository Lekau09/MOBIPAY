-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2025 at 10:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobipay`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `AgentId` int(11) NOT NULL,
  `AgentName` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`AgentId`, `AgentName`, `Location`, `Phone`, `Status`) VALUES
(1, 'Thabo Mokoena', 'Maseru', '62010001', 'Active'),
(2, 'Naledi Mokoena', 'Hlotse', '62010002', 'Active'),
(3, 'Tsepo Moeketsi', 'Teyateyaneng', '62010003', 'Active'),
(4, 'Refiloe Khabo', 'Mafeteng', '62010004', 'Active'),
(5, 'Palesa Nthunya', 'Mohale\'s Hoek', '62010005', 'Active'),
(6, 'Katleho Ramonate', 'Qacha\'s Nek', '190', 'Inactive'),
(7, 'Mpho Ralethe', 'Leribe', '62010007', 'Active'),
(8, 'Khumo Ramohapi', 'Butha-Buthe', '62010008', 'Active'),
(9, 'Lebohang Phoka', 'Quthing', '62010009', 'Active'),
(10, 'Teboho Mofokeng', 'Mokhotlong', '62010010', 'Active'),
(11, 'Ntjanyana', 'Mohalalitoe', '1000000000', 'Active'),
(12, 'ThekoRamonate', 'Qacha\'s Nek', '5898829000', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `user_id`, `amount`, `date`, `type`, `description`) VALUES
(1, 2, 500.00, '2025-04-08', 'topup', 'nwenwe'),
(2, 2, 20.00, '2025-04-22', 'topup', 'nwenwe'),
(3, 2, 500.00, '2025-04-22', 'topup', 'nwenwe'),
(4, 5, 500.00, '2025-04-22', 'topup', 'nwenwe'),
(5, 6, 500.00, '2025-04-22', 'topup', 'nwenwe'),
(6, 6, 25.00, '2025-04-22', 'send', 'hello'),
(7, 5, 25.00, '2025-04-22', 'received', 'hello'),
(8, 6, 5.00, '2025-04-22', 'cashout', 'Cash out to Lebohang Phoka - haha'),
(9, 5, 30.00, '2025-04-22', 'send', 'yello'),
(10, 6, 30.00, '2025-04-22', 'received', 'yello'),
(11, 5, 100.00, '2025-04-22', 'send', 'hello'),
(12, 6, 100.00, '2025-04-22', 'received', 'hello'),
(13, 5, 70.00, '2025-04-22', 'send', 'biscuit'),
(14, 1, 70.00, '2025-04-22', 'received', 'biscuit'),
(15, 5, 100.00, '2025-04-22', 'cashout', 'Cash out to Naledi Mokoena - haha'),
(16, 5, 30.00, '2025-04-23', 'cashout', 'Cash out to Naledi Mokoena - haha'),
(17, 5, 50.00, '2025-04-22', 'send', 'hello'),
(18, 6, 50.00, '2025-04-22', 'received', 'hello'),
(19, 5, 50.00, '2025-04-22', 'send', 'hello'),
(20, 6, 50.00, '2025-04-22', 'received', 'hello'),
(21, 5, 50.00, '2025-04-22', 'cashout', 'Cash out to Mpho Ralethe'),
(22, 5, 100.00, '2025-04-22', 'topup', 'nwenwe'),
(23, 5, 10.00, '2025-04-25', 'send', 'biscuit'),
(24, 6, 10.00, '2025-04-25', 'received', 'biscuit'),
(25, 18, 100.00, '2025-04-23', 'send', 'here'),
(26, 5, 100.00, '2025-04-23', 'received', 'here'),
(27, 18, 500.00, '2025-04-25', 'topup', 'nwenwe'),
(28, 18, 250.00, '2025-04-23', 'send', 'here'),
(29, 6, 250.00, '2025-04-23', 'received', 'here'),
(30, 5, 10.00, '2025-04-30', 'cashout', 'Cash out to Khumo Ramohapi - cashout'),
(31, 19, 1000000.00, '2025-04-23', 'topup', 'ZamaZama'),
(32, 20, 100000.00, '2025-04-23', 'topup', 'Topup'),
(33, 20, 50.00, '2025-04-23', 'cashout', 'Cash out to Katleho Ramatla - Refreshments'),
(34, 20, 100.00, '2025-04-23', 'send', 'Buy Refreshments'),
(35, 5, 100.00, '2025-04-23', 'received', 'Buy Refreshments'),
(36, 25, 1.00, '2025-04-24', 'cashout', 'Cash out to Katleho Ramonate - dot'),
(37, 25, 100.00, '2025-04-24', 'cashout', 'Cash out to Teboho Mofokeng - haha'),
(38, 25, 12.00, '2025-04-24', 'cashout', 'Cash out to Palesa Nthunya - cashout'),
(39, 25, 192.00, '2025-04-24', 'cashout', 'Cash out to Katleho Ramonate - haha'),
(40, 6, 12.00, '2025-04-24', 'cashout', 'Cash out to Khumo Ramohapi'),
(41, 6, 50.00, '2025-04-24', 'cashout', 'Cash out to Palesa Nthunya'),
(42, 25, 10000.00, '2025-04-24', 'topup', 'nwenwe'),
(43, 25, 509000.00, '2025-04-26', 'topup', 'Topup'),
(44, 25, 50000.00, '2025-04-23', 'topup', 'for fun'),
(45, 6, 88.00, '2025-04-22', 'cashout', 'Cash out to Katleho Ramonate - cashout'),
(46, 6, 10.00, '2025-04-21', 'cashout', 'Cash out to Katleho Ramonate - cashout'),
(47, 6, 25.00, '2025-04-20', 'cashout', 'Cash out to Katleho Ramonate - transport'),
(48, 6, 66.00, '2025-04-23', 'cashout', 'Cash out to Katleho Ramonate - ...'),
(49, 6, 10000.00, '2025-04-24', 'topup', 'kk'),
(50, 26, 10000.00, '2025-04-24', 'topup', 'jo'),
(51, 26, 20.00, '2025-04-25', 'cashout', 'Cash out to Katleho Ramonate - dot'),
(52, 26, 80.00, '2025-06-05', 'cashout', 'Cash out to Khumo Ramohapi - transport'),
(53, 26, 23.00, '2025-04-25', 'cashout', 'Cash out to Katleho Ramonate - Refreshments'),
(54, 26, 79.00, '2025-04-25', 'cashout', 'Cash out to Refiloe Khabo - jog'),
(55, 26, 100.00, '2025-04-25', 'cashout', 'Cash out to Mpho Ralethe - lipopae'),
(56, 6, 100.00, '2024-04-28', 'cashout', 'Cash out to Lebohang Phoka'),
(57, 6, 100.00, '2025-06-28', 'cashout', 'Cash out to Tsepo Moeketsi'),
(58, 38, 1000.00, '2025-01-02', 'send', 'Birthday money'),
(59, 36, 1000.00, '2025-01-02', 'received', 'Birthday money'),
(60, 38, 100.00, '2025-02-05', 'cashout', 'Cash out to Khumo Ramohapi - mines'),
(61, 38, 100000.00, '2021-07-24', 'topup', 'Top up'),
(62, 37, 1000.00, '2024-01-10', 'send', 'Car Money'),
(63, 34, 1000.00, '2024-01-10', 'received', 'Car Money'),
(64, 37, 2000.00, '2025-01-01', 'cashout', 'Cash out to Lebohang Phoka - Nthoe Ngata'),
(65, 37, 1500.00, '2023-02-04', 'cashout', 'Cash out to Teboho Mofokeng - Cashout'),
(66, 37, 10956.00, '2025-01-14', 'topup', 'Top up'),
(67, 37, 45000.00, '2023-08-09', 'topup', 'montlhy expenses'),
(68, 37, 50000.00, '2024-10-01', 'cashout', 'Cash out to Thabo Mokoena - loan payment'),
(69, 37, 100000.00, '2025-03-11', 'topup', 'expenses'),
(70, 37, 5000.00, '2024-12-19', 'send', 'mortgage'),
(71, 28, 5000.00, '2024-12-19', 'received', 'mortgage'),
(72, 37, 3000.00, '2025-03-31', 'send', 'spar day'),
(73, 29, 3000.00, '2025-03-31', 'received', 'spar day'),
(74, 37, 200.00, '2025-04-26', 'cashout', 'Cash out to Ntjanyana - transport'),
(75, 37, 100.00, '2025-04-29', 'topup', 'TOPTUP'),
(76, 37, 100000.00, '2025-04-29', 'topup', 'TOP UP'),
(77, 37, 10000.00, '2025-04-29', 'cashout', 'Cash out to Mpho Ralethe - Refreshments'),
(78, 28, 1000.00, '2025-04-29', 'send', 'send'),
(79, 35, 1000.00, '2025-04-29', 'received', 'send'),
(80, 28, 1000.00, '2025-04-29', 'send', 'send'),
(81, 19, 1000.00, '2025-04-29', 'received', 'send'),
(82, 42, 10000000.00, '2025-05-19', 'topup', 'Topup');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `pin_hash` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `phone_number`, `password_hash`, `pin_hash`, `role`, `status`) VALUES
(8, 'Rethabile Matela', 'r.matela@gmail.com', '63192634', '$2y$10$7sEKSV4/FVrR7XU7MoDViuo2bwHjgQ/YZwD8CuoLUPgMpFxMcMtbq', '$2y$10$Wev56ec.Q5qS.79IDMiYzOyLML8ojhikS0EdKPiCGH4qPRvnqYHVq', 'admin', 'Active'),
(9, 'Boitumelo Lekau', 'boitumelo@gmail.com', '58398399', '$2y$10$6TiyoJsPhHuQ4bRNXi3/5.Ow3ji.P/gI7aqJb55WZwnz93wMpqPIC', '$2y$10$vlIivVIp7a.e/jUxW/Pl0.uXvX9WHLIg.rmhIg.rcbYADiva85hLi', 'admin', 'Active'),
(10, 'Tsita Makhele', 'tsitasmakhele@gmail.com', '58328405', '$2y$10$1wUFPNNGWz29hbYmEugdjOaUi9WjM6Url3GiqKJuJUS9uPSYx/j12', '$2y$10$d6BAF/sdK9HSrcnAqNm6X.Oi9ASJ1hitl9iJJS1Oh5Ii.giJ3u0IK', 'admin', 'Active'),
(11, 'Khotsofalang', 'Tlhoni@gmail.com', '53687999', '$2y$10$bp7JGEjzmMa1xqq5dFDYMOc3Tkkr4zqgHs6ivH79hmXzRSRNPezEa', '$2y$10$mQw.IBix.qJlx6LYyCkX9.sB/Xj/FPg02Twi3sNyvVh9Ikpzbgh2G', 'admin', 'Inactive'),
(19, 'Jase', 'Jase09@gmail.com', '63019697', '$2y$10$UsyxBZTBJNb.nrb6zGXveuAaLjlpjV.5bKjYt0nuOATFsdqRUujBK', '$2y$10$j08D1tTc8gKZ55Clu4jBu.HS1.kuyaJBCvF7SGEVWAnlYCvhj80l.', 'user', 'Active'),
(28, 'Uncle', 'uncle@gmail.com', '58988290', '$2y$10$yhpocv1h.JVGR5CjPpVQqOw4tTGNMXlfrW9C/7Mks6QzmIqhR9qK2', '$2y$10$pnXcusyW.szJl/qAl0k.q.FXwlBqdaBvGxxC9E9dL1CCkqXD4LryW', 'user', 'Active'),
(29, 'Retha', 'lola@gmail.com', '57571000', '$2y$10$tTj18CXDI8ix32FR7RnBL.zd/KMrcdH6Yl0T9NLxSq/33GLjzd8ay', '$2y$10$KUPJwpPszos49gm.OMGFBOe.F0O.Gf5Ghjgx2HWaT3iSIqJ2kw0TS', 'user', 'Active'),
(34, 'Makhele ', 'Makhele@gmail.com', '56738940', '$2y$10$PhEn/VMj3GoigII3//E0G.7YsJBomU8t63Fx5.MtM3uL4NuUF3HkW', '$2y$10$vHmnHrmp.tF8BlgEox0qx.rW1ygmeaBcexH5GTBiIC9q.HJihKco6', 'user', 'Active'),
(35, 'Bongiwe Topo', 'Bongiwe@gmail.com', '63278450', '$2y$10$Zaeiq86WHqD0fliR2ZNZcux6cXKduc4MTUaD9/Kg7vOtUrgqcRWU2', '$2y$10$lVHnNRAZ5DEmsMa4/rl5re8iwrj9Ltb3mxcFB3Yc//UZSbm/cKaiO', 'user', 'Active'),
(36, 'Nkatana', 'N.tana@gmail.com', '68543786', '$2y$10$pzpAHD2dMNZ1EX.95qQNgOSQQYs8KIQhcFWPkD6WQT57KAS/qgZN6', '$2y$10$09ZzzRuJKQuRfOFnIQfoie6x8QD/rYVKoSpQCRobDdHCq0qiFudJK', 'user', 'Active'),
(37, 'Khotsofalang Chaka', 'Khotsofalang@gmail.com', '58950645', '$2y$10$DCEPYLn1xxhx5IWzqPLDje2EJgilHwxMXHPHvB9FiJ/xBHReU9e/m', '$2y$10$3OE3IvKq/vX/w6SW1Eow0O5PYlBemRYYVC0JkHwTtj9oTyCuQv8Lm', 'user', 'Active'),
(38, 'Lekuku', 'Lekaota@gmail.com', '59503058', '$2y$10$HHRRRurpMlGT0ZaVieXKku3BFs/8w7TtLQzgGxAXK93D9TxHv6Ofq', '$2y$10$vcHNGK7BlbKrFZq4Riypa.jA3aybQiOKht5t7YYDdtjrv0JSxYhrO', 'user', 'Active'),
(42, 'katleho', 'k@gmail.com', '5656', '$2y$10$SSOJzUed0R1.Qlzr6qfFGOIWXZSZicQWU0CtT.6cwY9efnLQ1peBK', '$2y$10$k/D.hchFSwYyzcxZiZZGMu8hgCgXq54ePRrgJIPRQpFJLGIGbX1ta', 'user', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user_agent_bridge`
--

CREATE TABLE `user_agent_bridge` (
  `user_id` int(11) NOT NULL,
  `AgentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_agent_bridge`
--

INSERT INTO `user_agent_bridge` (`user_id`, `AgentId`) VALUES
(37, 1),
(37, 7),
(37, 9),
(37, 10),
(37, 11),
(38, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `wallet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `current_balance` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`wallet_id`, `user_id`, `current_balance`) VALUES
(4, 8, 0.00),
(5, 9, 0.00),
(6, 10, 0.00),
(7, 11, 0.00),
(15, 19, 1010.00),
(21, 28, 3010.00),
(22, 29, 8000.00),
(27, 34, 101000.00),
(28, 35, 51000.00),
(29, 36, 71000.00),
(30, 37, 190355.00),
(31, 38, 101245.00),
(33, 42, 10000000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`AgentId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `user_agent_bridge`
--
ALTER TABLE `user_agent_bridge`
  ADD PRIMARY KEY (`user_id`,`AgentId`),
  ADD KEY `AgentId` (`AgentId`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`wallet_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `AgentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `wallet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_agent_bridge`
--
ALTER TABLE `user_agent_bridge`
  ADD CONSTRAINT `user_agent_bridge_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_agent_bridge_ibfk_2` FOREIGN KEY (`AgentId`) REFERENCES `agents` (`AgentId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
