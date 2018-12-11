-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2018 a las 05:17:33
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectogdi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `idMatricula` int(11) NOT NULL,
  `idEmpleado` int(10) NOT NULL,
  `nombreEmpleado` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idAlumno` int(10) NOT NULL,
  `nombreAlumno` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idCurso` int(8) NOT NULL,
  `nombreCurso` varchar(45) NOT NULL,
  `idPagos` int(8) NOT NULL,
  `DNI_R` varchar(8) NOT NULL,
  `Fecha_Matricula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`idMatricula`, `idEmpleado`, `nombreEmpleado`, `idAlumno`, `nombreAlumno`, `idCurso`, `nombreCurso`, `idPagos`, `DNI_R`, `Fecha_Matricula`) VALUES
(2, 1, 'Oscar Manuel', 4, 'Daniel', 2, 'Ciencia  y Ambiente', 6, '73260012', '2018-12-20'),
(3, 1, 'Oscar Manuel', 4, 'Carlos', 3, 'Computo', 6, '73260012', '2019-01-02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`idMatricula`),
  ADD KEY `fk_Matricula_Alumno1_idx` (`idAlumno`),
  ADD KEY `fk_Matricula_Empleado1` (`idEmpleado`),
  ADD KEY `fk_Matricula_Pagos1` (`idPagos`),
  ADD KEY `fk_Matricula_Curso1` (`idCurso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `idMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_Matricula_Alumno1` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Matricula_Curso1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Matricula_Empleado1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Matricula_Pagos1` FOREIGN KEY (`idPagos`) REFERENCES `pagos` (`idPagos`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
