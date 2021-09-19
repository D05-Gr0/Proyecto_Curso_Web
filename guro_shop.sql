-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2021 a las 02:18:34
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guro_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(6) NOT NULL,
  `size` enum('A6','A5','A4','A3') DEFAULT NULL,
  `pic_id` int(6) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE `order` (
  `order_id` int(6) NOT NULL,
  `status` enum('sent','cancelled','processing','received') DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL,
  `cart_id` int(6) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `picture`
--

CREATE TABLE `picture` (
  `pic_id` int(6) NOT NULL,
  `reference` varchar(15) NOT NULL,
  `title` varchar(30) NOT NULL,
  `finish` enum('Lustre') DEFAULT NULL,
  `category` enum('break','snap','travel') DEFAULT NULL,
  `thumbnail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `picture`
--

INSERT INTO `picture` (`pic_id`, `reference`, `title`, `finish`, `category`, `thumbnail`) VALUES
(1, 'PIC1_PRINT_B', 'Struggle', 'Lustre', 'break', './img/break/b1.jpg'),
(2, 'PIC2_PRINT_B', 'Keeping it cool on da floor', 'Lustre', 'break', './img/break/b2.jpg'),
(3, 'PIC3_PRINT_B', 'Freeze', 'Lustre', 'break', './img/break/b3.jpg'),
(4, 'PIC4_PRINT_B', 'Made of ashes', 'Lustre', 'break', './img/break/b4.jpg'),
(5, 'PIC5_PRINT_B', 'Showing off', 'Lustre', 'break', './img/break/b5.jpg'),
(6, 'PIC6_PRINT_B', 'Feeling the groove', 'Lustre', 'break', './img/break/b6.jpg'),
(7, 'PIC7_PRINT_B', 'Abstract forms', 'Lustre', 'break', './img/break/b7.jpg'),
(8, 'PIC8_PRINT_B', 'Energy shots', 'Lustre', 'break', './img/break/b8.jpg'),
(9, 'PIC9_PRINT_B', 'Eternal rose', 'Lustre', 'break', './img/break/b9.jpg'),
(10, 'PIC10_PRINT_B', 'Click bang bang', 'Lustre', 'break', './img/break/b10.jpg'),
(11, 'PIC11_PRINT_B', 'The freshest kid', 'Lustre', 'break', './img/break/b11.jpg'),
(12, 'PIC12_PRINT_B', 'Rockin the cyphers', 'Lustre', 'break', './img/break/b12.jpg'),
(13, 'PIC13_PRINT_B', 'Waackin', 'Lustre', 'break', './img/break/b13.jpg'),
(14, 'PIC14_PRINT_B', 'Mini Joe flying', 'Lustre', 'break', './img/break/b14.jpg'),
(15, 'PIC15_PRINT_B', 'Reverse chair', 'Lustre', 'break', './img/break/b15.jpg'),
(16, 'PIC1_PRINT_T', 'Above the world', 'Lustre', 'travel', './img/travel/t1.jpg'),
(17, 'PIC2_PRINT_T', 'Observer', 'Lustre', 'travel', './img/travel/t2.jpg'),
(18, 'PIC3_PRINT_T', 'Dialogue', 'Lustre', 'travel', './img/travel/t3.jpg'),
(19, 'PIC4_PRINT_T', 'Pyramids', 'Lustre', 'travel', './img/travel/t4.jpg'),
(20, 'PIC5_PRINT_T', 'My own way', 'Lustre', 'travel', './img/travel/t5.jpg'),
(21, 'PIC6_PRINT_T', 'Wat Arun', 'Lustre', 'travel', './img/travel/t6.jpg'),
(22, 'PIC7_PRINT_T', 'Intimacy', 'Lustre', 'travel', './img/travel/t7.jpg'),
(23, 'PIC8_PRINT_T', 'Decisions', 'Lustre', 'travel', './img/travel/t8.jpg'),
(24, 'PIC9_PRINT_T', 'Observer observed', 'Lustre', 'travel', './img/travel/t9.jpg'),
(25, 'PIC10_PRINT_T', 'Faith', 'Lustre', 'travel', './img/travel/t10.jpg'),
(26, 'PIC11_PRINT_T', 'Bayon', 'Lustre', 'travel', './img/travel/t11.jpg'),
(27, 'PIC12_PRINT_T', 'Vatican', 'Lustre', 'travel', './img/travel/t12.jpg'),
(28, 'PIC13_PRINT_T', 'Saint Angelo', 'Lustre', 'travel', './img/travel/t13.jpg'),
(29, 'PIC14_PRINT_T', 'Saint Barbara', 'Lustre', 'travel', './img/travel/t14.jpg'),
(30, 'PIC15_PRINT_T', 'Piazza Bocca della Verita', 'Lustre', 'travel', './img/travel/t15.jpg'),
(31, 'PIC1_PRINT_S', 'Pain', 'Lustre', 'snap', './img/snap/s1.jpg'),
(32, 'PIC2_PRINT_S', 'Disagreements', 'Lustre', 'snap', './img/snap/s2.jpg'),
(33, 'PIC3_PRINT_S', 'Dancing in the dark', 'Lustre', 'snap', './img/snap/s3.jpg'),
(34, 'PIC4_PRINT_S', 'Genious', 'Lustre', 'snap', './img/snap/s4.jpg'),
(35, 'PIC5_PRINT_S', 'Constrast lines', 'Lustre', 'snap', './img/snap/s5.jpg'),
(36, 'PIC6_PRINT_S', 'Subconscious reflections', 'Lustre', 'snap', './img/snap/s6.jpg'),
(37, 'PIC7_PRINT_S', 'Drawning', 'Lustre', 'snap', './img/snap/s7.jpg'),
(38, 'PIC8_PRINT_S', 'The team', 'Lustre', 'snap', './img/snap/s8.jpg'),
(39, 'PIC9_PRINT_S', 'What you can feel', 'Lustre', 'snap', './img/snap/s9.jpg'),
(40, 'PIC10_PRINT_S', 'Pureness', 'Lustre', 'snap', './img/snap/s10.jpg'),
(41, 'PIC11_PRINT_S', 'Church of distress', 'Lustre', 'snap', './img/snap/s11.jpg'),
(42, 'PIC12_PRINT_S', 'Dopelganger', 'Lustre', 'snap', './img/snap/s12.jpg'),
(43, 'PIC13_PRINT_S', 'Wanderer', 'Lustre', 'snap', './img/snap/s13.jpg'),
(44, 'PIC14_PRINT_S', 'Sense', 'Lustre', 'snap', './img/snap/s14.jpg'),
(45, 'PIC15_PRINT_S', 'Curious observer', 'Lustre', 'snap', './img/snap/s15.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pic_taxonomy`
--

CREATE TABLE `pic_taxonomy` (
  `pic_tax_id` int(6) NOT NULL,
  `tax_id` int(6) DEFAULT NULL,
  `pic_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pic_taxonomy`
--

INSERT INTO `pic_taxonomy` (`pic_tax_id`, `tax_id`, `pic_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 1, 2),
(6, 2, 2),
(7, 3, 2),
(8, 4, 2),
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 4, 3),
(13, 1, 4),
(14, 2, 4),
(15, 3, 4),
(16, 4, 4),
(17, 1, 5),
(18, 2, 5),
(19, 3, 5),
(20, 4, 5),
(21, 1, 6),
(22, 2, 6),
(23, 3, 6),
(24, 4, 6),
(25, 1, 7),
(26, 2, 7),
(27, 3, 7),
(28, 4, 7),
(29, 1, 8),
(30, 2, 8),
(31, 3, 8),
(32, 4, 8),
(33, 1, 9),
(34, 2, 9),
(35, 3, 9),
(36, 4, 9),
(37, 1, 10),
(38, 2, 10),
(39, 3, 10),
(40, 4, 10),
(41, 1, 11),
(42, 2, 11),
(43, 3, 11),
(44, 4, 11),
(45, 1, 12),
(46, 2, 12),
(47, 3, 12),
(48, 4, 12),
(49, 1, 13),
(50, 2, 13),
(51, 3, 13),
(52, 4, 13),
(53, 1, 14),
(54, 2, 14),
(55, 3, 14),
(56, 4, 14),
(57, 1, 15),
(58, 2, 15),
(59, 3, 15),
(60, 4, 15),
(61, 1, 16),
(62, 2, 16),
(63, 3, 16),
(64, 4, 16),
(65, 1, 17),
(66, 2, 17),
(67, 3, 17),
(68, 4, 17),
(69, 1, 18),
(70, 2, 18),
(71, 3, 18),
(72, 4, 18),
(73, 1, 19),
(74, 2, 19),
(75, 3, 19),
(76, 4, 19),
(77, 1, 20),
(78, 2, 20),
(79, 3, 20),
(80, 4, 20),
(81, 1, 21),
(82, 2, 21),
(83, 3, 21),
(84, 4, 21),
(85, 1, 22),
(86, 2, 22),
(87, 3, 22),
(88, 4, 22),
(89, 1, 23),
(90, 2, 23),
(91, 3, 23),
(92, 4, 23),
(93, 1, 24),
(94, 2, 24),
(95, 3, 24),
(96, 4, 24),
(97, 1, 25),
(98, 2, 25),
(99, 3, 25),
(100, 4, 25),
(101, 1, 26),
(102, 2, 26),
(103, 3, 26),
(104, 4, 26),
(105, 1, 27),
(106, 2, 27),
(107, 3, 27),
(108, 4, 27),
(109, 1, 28),
(110, 2, 28),
(111, 3, 28),
(112, 4, 28),
(113, 1, 29),
(114, 2, 29),
(115, 3, 29),
(116, 4, 29),
(117, 1, 30),
(118, 2, 30),
(119, 3, 30),
(120, 4, 30),
(121, 1, 31),
(122, 2, 31),
(123, 3, 31),
(124, 4, 31),
(125, 1, 32),
(126, 2, 32),
(127, 3, 32),
(128, 4, 32),
(129, 1, 33),
(130, 2, 33),
(131, 3, 33),
(132, 4, 33),
(133, 1, 34),
(134, 2, 34),
(135, 3, 34),
(136, 4, 34),
(137, 1, 35),
(138, 2, 35),
(139, 3, 35),
(140, 4, 35),
(141, 1, 36),
(142, 2, 36),
(143, 3, 36),
(144, 4, 36),
(145, 1, 37),
(146, 2, 37),
(147, 3, 37),
(148, 4, 37),
(149, 1, 38),
(150, 2, 38),
(151, 3, 38),
(152, 4, 38),
(153, 1, 39),
(154, 2, 39),
(155, 3, 39),
(156, 4, 39),
(157, 1, 40),
(158, 2, 40),
(159, 3, 40),
(160, 4, 40),
(161, 1, 41),
(162, 2, 41),
(163, 3, 41),
(164, 4, 41),
(165, 1, 42),
(166, 2, 42),
(167, 3, 42),
(168, 4, 42),
(169, 1, 43),
(170, 2, 43),
(171, 3, 43),
(172, 4, 43),
(173, 1, 44),
(174, 2, 44),
(175, 3, 44),
(176, 4, 44),
(177, 1, 45),
(178, 2, 45),
(179, 3, 45),
(180, 4, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `price_variants`
--

CREATE TABLE `price_variants` (
  `price_id` int(6) NOT NULL,
  `pic_tax_id` int(6) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `price_variants`
--

INSERT INTO `price_variants` (`price_id`, `pic_tax_id`, `price`) VALUES
(1, 1, '50.00'),
(2, 2, '35.00'),
(3, 3, '25.00'),
(4, 4, '20.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sign`
--

CREATE TABLE `sign` (
  `sub_id` int(6) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxonomy`
--

CREATE TABLE `taxonomy` (
  `tax_id` int(6) NOT NULL,
  `type` varchar(16) DEFAULT NULL,
  `value` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `taxonomy`
--

INSERT INTO `taxonomy` (`tax_id`, `type`, `value`) VALUES
(1, 'size', 'A3'),
(2, 'size', 'A4'),
(3, 'size', 'A5'),
(4, 'size', 'A6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  `type` enum('employee','user') DEFAULT 'user',
  `admin` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `type`, `admin`) VALUES
(1, 'admin_user@gmail.com', 'da9a0852598ce30c6ad05399c40134769eb9f092a9ab04d7d1cf03f6ff7150c67bec255a062da4f7b63a544059a57381ecf47a73c955b98a9fdd6ee4e637b065', 'employee', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_data`
--

CREATE TABLE `user_data` (
  `user_id` int(6) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `second_name` varchar(40) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `gender` enum('Male','Female','Undefined') DEFAULT NULL,
  `id_card` varchar(9) DEFAULT NULL,
  `birth_date` timestamp NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `fk_cart_picture` (`pic_id`),
  ADD KEY `fk_cart_user` (`user_id`);

--
-- Indices de la tabla `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_user` (`user_id`),
  ADD KEY `fk_order_cart` (`cart_id`);

--
-- Indices de la tabla `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indices de la tabla `pic_taxonomy`
--
ALTER TABLE `pic_taxonomy`
  ADD PRIMARY KEY (`pic_tax_id`);

--
-- Indices de la tabla `price_variants`
--
ALTER TABLE `price_variants`
  ADD PRIMARY KEY (`price_id`);

--
-- Indices de la tabla `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indices de la tabla `taxonomy`
--
ALTER TABLE `taxonomy`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `picture`
--
ALTER TABLE `picture`
  MODIFY `pic_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `pic_taxonomy`
--
ALTER TABLE `pic_taxonomy`
  MODIFY `pic_tax_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `price_variants`
--
ALTER TABLE `price_variants`
  MODIFY `price_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sign`
--
ALTER TABLE `sign`
  MODIFY `sub_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taxonomy`
--
ALTER TABLE `taxonomy`
  MODIFY `tax_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_data`
--
ALTER TABLE `user_data`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_picture` FOREIGN KEY (`pic_id`) REFERENCES `picture` (`pic_id`),
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Filtros para la tabla `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Filtros para la tabla `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `fk_user_data_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
