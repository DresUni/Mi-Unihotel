-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2024 a las 06:03:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unihotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleados` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `id_hotel1` int(50) NOT NULL,
  `salario` varchar(50) NOT NULL,
  `fecha_contratacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `Id_habitacion` int(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `subtipo` varchar(50) NOT NULL,
  `temporada` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel1`
--

CREATE TABLE `hotel1` (
  `id_hotel1` int(50) NOT NULL,
  `cartagena` varchar(50) NOT NULL,
  `eje_cafetero` varchar(50) NOT NULL,
  `san_andres` varchar(50) NOT NULL,
  `bogota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id_login` int(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `Id_habitacion` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(50) NOT NULL,
  `id_reservacion` varchar(50) NOT NULL,
  `metodo_de_pago` varchar(50) NOT NULL,
  `monto` varchar(50) NOT NULL,
  `fecha_checkin` varchar(50) NOT NULL,
  `fecha_chekout` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE `reservacion` (
  `id_reservacion` int(50) NOT NULL,
  `id_cliente` int(50) NOT NULL,
  `id_habitacion` int(50) NOT NULL,
  `fecha_reservacion` varchar(50) NOT NULL,
  `fecha_checkin` varchar(50) NOT NULL,
  `fecha_chekout` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `monto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `id_temporada` int(50) NOT NULL,
  `temporada_1` varchar(50) NOT NULL,
  `temporada_2` varchar(50) NOT NULL,
  `temporada_3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`Id_habitacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
