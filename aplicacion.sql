-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2021 a las 01:59:06
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aplicacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contactos` int(11) NOT NULL,
  `id_dispositivo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cumple` date NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `idioma` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id_contactos`, `id_dispositivo`, `nombre`, `apellidos`, `cumple`, `telefono`, `ciudad`, `pais`, `idioma`, `email`, `foto`) VALUES
(1, 1, 'usuario 1', 'user 1', '1982-12-10', '698-0000001', 'Murcia', 'España', 'SPAIN.png', 'usuario1@gmail.com', '3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivo`
--

CREATE TABLE `dispositivo` (
  `id_dispositivo` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `version` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `marca` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `foto_dispositivo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `dispositivo`
--

INSERT INTO `dispositivo` (`id_dispositivo`, `id_usuarios`, `nombre`, `descripcion`, `version`, `marca`, `foto_dispositivo`) VALUES
(1, 1, 'Proyecto 21/22', 'Proyecto 21/22', 'v1', 'Samsung', 'SamsungG7.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `color` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `id_usuarios`, `title`, `start`, `end`, `color`, `description`) VALUES
(1, 3, 'Festivo', '2021-12-03 15:30:00', '2021-12-08 15:30:00', '#ff8080', 'Puente de la constitución'),
(2, 3, 'Fin de prácticas', '2021-12-14 18:20:00', '0000-00-00 00:00:00', '#3c72cc', 'Se acaban las prácticas...'),
(3, 3, 'Presentación', '2021-12-20 17:15:00', '0000-00-00 00:00:00', '#008040', 'Presentación del proyecto en el instituto Carlos III'),
(4, 1, 'Incorporación', '2021-12-22 09:10:00', '2021-12-22 10:30:00', '#408080', 'Nuevo trabajo !!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `privilegios` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `privilegios`) VALUES
(1, 'Administrador'),
(2, 'Colaborador'),
(3, 'Normal'),
(4, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `fijo` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `movil` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `foto_usuarios` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `id_rol`, `nombre`, `apellidos`, `email`, `password`, `descripcion`, `fijo`, `movil`, `foto_usuarios`, `direccion`) VALUES
(1, 1, 'admin', 'admin', 'admin@gmail.com', 'admin', 'usuario admin', '640-00000', '968-000000', '2.png', 'Murcia'),
(2, 2, 'usu_colaborador', 'colaborador', 'colaborador@gmail.com', '123', 'usuario colaborador', '968-000001', '698-000001', '1.png', 'Murcia'),
(3, 3, 'usu_normal', 'normal', 'normalito@gmail.com', '123', 'usuario normal', '968-000002', '698-000002', '3.png', 'Murcia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contactos`),
  ADD KEY `fk_dispositivo` (`id_dispositivo`);

--
-- Indices de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD PRIMARY KEY (`id_dispositivo`),
  ADD KEY `fk_usuarios` (`id_usuarios`) USING BTREE;

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarios` (`id_usuarios`) USING BTREE;

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD UNIQUE KEY `no se puede repetir` (`email`) USING BTREE,
  ADD KEY `fk_rol` (`id_rol`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contactos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  MODIFY `id_dispositivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD CONSTRAINT `contactos_ibfk_1` FOREIGN KEY (`id_dispositivo`) REFERENCES `dispositivo` (`id_dispositivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD CONSTRAINT `dispositivo_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
