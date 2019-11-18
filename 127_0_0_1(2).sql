-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-11-2019 a las 23:09:41
-- Versión del servidor: 5.7.24
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_demo_java`
--
CREATE DATABASE IF NOT EXISTS `bd_demo_java` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_demo_java`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpersona`
--

DROP TABLE IF EXISTS `tbpersona`;
CREATE TABLE IF NOT EXISTS `tbpersona` (
  `codper` int(11) NOT NULL AUTO_INCREMENT,
  `dniper` varchar(10) DEFAULT NULL,
  `nomper` varchar(80) NOT NULL,
  `emlper` varchar(50) NOT NULL,
  `telper` varchar(12) NOT NULL,
  `fcper` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estper` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`codper`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbpersona`
--

INSERT INTO `tbpersona` (`codper`, `dniper`, `nomper`, `emlper`, `telper`, `fcper`, `estper`) VALUES
(1, NULL, 'ronald ramos gutierrez', 'ronald1781@gmail.com', '939295374', '2019-11-18 21:17:23', 'A'),
(2, NULL, 'James munoz', 'jmunoz@hotmail.com', '98965862', '2019-11-18 21:17:23', 'A'),
(3, NULL, 'Patricia Zapata', 'pzapata@mym.com.pe', '6532598890', '2019-11-18 21:17:23', 'A'),
(4, NULL, 'esto es para eleminar', 'correo@dominio.com', '98956234', '2019-11-18 21:17:23', 'A'),
(5, NULL, 'es un demo nuevo', 'correo2@gmail.com', '84569321', '2019-11-18 21:17:23', 'A'),
(6, '42264935', 'Ronald ramos', 'ronald1781@gmail.com', '26359365', '2019-11-18 21:17:23', 'A'),
(7, NULL, 'Ronald ramos', 'ronald1781@gmail.com', '26359365', '2019-11-18 21:18:18', 'A'),
(8, '99986586', 'NOMBRES Y APELLIDOS', 'CORRESO@DOMINIO', '999999999', '2019-11-18 21:19:59', 'A'),
(9, '99986586', 'NOMBRES Y APELLIDOS', 'CORRESO@DOMINIO', '999999999', '2019-11-18 22:23:47', 'A'),
(10, '99986586', 'NOMBRES Y APELLIDOS', 'CORRESO@DOMINIO', '999999999', '2019-11-18 22:23:53', 'A'),
(11, '99986586', 'NOMBRES Y APELLIDOS', 'CORRESO@DOMINIO', '999999999', '2019-11-18 22:31:59', 'A');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
