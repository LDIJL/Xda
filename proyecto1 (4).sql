-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2023 a las 05:35:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `checkbox1` varchar(10) DEFAULT NULL,
  `checkbox2` varchar(10) DEFAULT NULL,
  `checkbox3` varchar(10) DEFAULT NULL,
  `radio` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id`, `name`, `email`, `subject`, `message`, `checkbox1`, `checkbox2`, `checkbox3`, `radio`) VALUES
(1, 'Jose', 'experimento@gmail.com', 'Muy buen lugar', 'xd', 'option1', 'option2', '', 'option1'),
(2, 'arturo', 'artur@gmail.com', 'Muy buen lugar', 'pues es un buen lugar para la famila', 'option1', 'option2', '', 'option1'),
(3, 'arturo', 'artur@gmail.com', 'excelente', 'pues es un lugar muy bonito', '', '', '', ''),
(4, 'arturo', 'artur@gmail.com', 'excelente', 'pues es un lugar muy bonito', '', '', '', ''),
(5, 'Jose', 'experimento@gmail.com', 'Muy buen lugar', 'pues es muy bonito atte:su servidor', 'Cabanas', 'Restaurant', '', 'Buena'),
(6, 'Jose', 'experimento@gmail.com', 'Muy buen lugar', 'Xd', 'Cabanas', '', 'atraccione', 'Buena'),
(7, 'Jose', 'experimento@gmail.com', 'Muy buen lugar', 'excelente', '', 'option2', 'option3', 'option2'),
(8, 'Jose', 'experimento@gmail.com', 'Muy buen lugar', 'excelente', '', 'option2', 'option3', 'option2'),
(9, 'Jose', 'experimento@gmail.com', 'excelente', 'xd', '', 'Restaurant', 'Atraccione', 'Buena'),
(10, 'Jose', 'suservidor@gmail.com', 'Bonito', 'Creo que es un muy buen lugar para visitar el bosque :v', 'Cabanas', 'Restaurant', '', 'Buena'),
(11, 'carlo', 'ervidor@gmail.com', 'no se', 'no es un muy buen lugar :u', '', 'Restaurant', 'Atraccione', 'Mala'),
(12, '', '', '', '', '', '', '', ''),
(13, 'Jose', 'experimento@gmail.com', 'excelente', 'xd', 'Cabanas', '', '', 'Mala'),
(14, 'carlo', 'ervidor@gmail.com', 'xd', 'xd', '', 'Restaurant', 'atraccione', 'Buena'),
(15, 'arturo', 'artur@gmail.com', 'no se', 'xd', '', 'Restaurant', 'atraccione', 'Mala'),
(16, 'x', 'experimento@gmail.com', 'x', 'x', 'Cabanas', '', '', 'Mala'),
(17, 'Jose', 'experimento@gmail.com', 'Muy buen lugar', 'xd', 'Cabanas', 'Restaurant', '', 'Mala');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
