-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2017 a las 20:14:51
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alquilercoches`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `idAlquiler` int(11) NOT NULL,
  `matricula` varchar(7) COLLATE utf8_spanish_ci NOT NULL,
  `dniCliente` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `fechaEntrega` date NOT NULL,
  `fechaDevolucion` date NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `dni` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `role` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `matricula` varchar(7) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `averias` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `extras` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`idAlquiler`),
  ADD KEY `FK_Cliente` (`dniCliente`) USING BTREE,
  ADD KEY `FK_Matricula` (`matricula`) USING BTREE;

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`matricula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `idAlquiler` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `alquiler_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `vehiculos` (`matricula`),
  ADD CONSTRAINT `alquiler_ibfk_2` FOREIGN KEY (`dniCliente`) REFERENCES `usuario` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
