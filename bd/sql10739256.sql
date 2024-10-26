-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql10.freemysqlhosting.net
-- Tiempo de generación: 26-10-2024 a las 01:44:42
-- Versión del servidor: 5.5.62-0ubuntu0.14.04.1
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sql10739256`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `zoom_link` varchar(255) DEFAULT NULL,
  `max_asistentes` int(11) DEFAULT '100',
  `registrados` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `fecha`, `zoom_link`, `max_asistentes`, `registrados`) VALUES
(1, 'Cata de Vinos Navideña 2024', '2024-11-01 00:00:00', 'https://zoom.us/j/1234567890', 20, 1),
(7, 'Turismo Enológico en Argentina', '2024-12-18 00:00:00', 'https://zoom.us/j/1234567896', 60, 0),
(8, 'Vinos Orgánicos y Naturales', '2024-12-22 00:00:00', 'https://zoom.us/j/1234567897', 40, 0),
(9, 'Impacto del Cambio Climático en el Vino', '2024-12-27 00:00:00', 'https://zoom.us/j/1234567898', 150, 0),
(10, 'Cosechas y Añadas Memorables', '2024-12-31 00:00:00', 'https://zoom.us/j/1234567899', 300, 0),
(11, 'Cata de Vinos Veraniega', '2026-01-05 00:00:00', 'https://zoom.us/j/2234567890', 200, 0),
(12, 'Exportación de Vinos Premium', '2026-01-10 00:00:00', 'https://zoom.us/j/2234567891', 100, 0),
(13, 'Nuevas Tendencias en Vinos Blancos', '2026-01-08 00:00:00', 'https://zoom.us/j/2234567892', 150, 0),
(14, 'Elaboración de Espumantes', '2026-01-12 00:00:00', 'https://zoom.us/j/2234567893', 50, 0),
(15, 'Introducción al Mundo del Rosado', '2026-01-15 00:00:00', 'https://zoom.us/j/2234567894', 30, 0),
(16, 'Vinos y Gastronomía Regional', '2026-01-20 00:00:00', 'https://zoom.us/j/2234567895', 80, 0),
(17, 'Certificaciones de Vinos Internacionales', '2026-01-18 00:00:00', 'https://zoom.us/j/2234567896', 70, 0),
(18, 'Barricas: Tipos e Impacto en el Vino', '2026-01-22 00:00:00', 'https://zoom.us/j/2234567897', 100, 0),
(20, 'Futuro del Vino Argentino', '2026-01-30 00:00:00', 'https://zoom.us/j/2234567899', 250, 0),
(122, 'Evento Navideño', '2024-12-15 00:00:00', 'https://zoom.us/j/1234567890', 100, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(11) NOT NULL,
  `evento_id` int(11) DEFAULT NULL,
  `nombre_asistente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `evento_id`, `nombre_asistente`) VALUES
(44, 1, 'Angela paz');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evento_id` (`evento_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;
--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
