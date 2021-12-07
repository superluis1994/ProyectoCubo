/*
SQLyog Ultimate
MySQL - 10.4.20-MariaDB : Database - db_biblioteca
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table ` editoral` */

CREATE TABLE ` editoral` (
  `ideditorial` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fechacreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ideditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table ` editoral` */

/*Table structure for table `autor` */

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nac` datetime DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `autor` */

/*Table structure for table `categoria` */

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fechaCreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `categoria` */

/*Table structure for table `detalle_prestamo` */

CREATE TABLE `detalle_prestamo` (
  `idestadoprestamo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fechacreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idestadoprestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `detalle_prestamo` */

/*Table structure for table `empleado` */

CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `empleado` */

/*Table structure for table `libro` */

CREATE TABLE `libro` (
  `idlibro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `rutaportada` varchar(100) DEFAULT NULL,
  `nombreportada` varchar(100) DEFAULT NULL,
  `idautor` int(11) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `ideditorial` int(11) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `ejemplares` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fechacreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idlibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `libro` */

/*Table structure for table `prestamo` */

CREATE TABLE `prestamo` (
  `idprestamo` int(11) DEFAULT NULL,
  `idestadorestamo` int(11) DEFAULT NULL,
  `idpersona` int(11) DEFAULT NULL,
  `idlibro` int(11) DEFAULT NULL,
  `fechadevolucion` datetime DEFAULT NULL,
  `fechaconfirmaciondevolucion` datetime DEFAULT NULL,
  `estadoentregado` varchar(100) DEFAULT NULL,
  `estadorecibido` varchar(100) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fechacreacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `prestamo` */

/*Table structure for table `tipo_usuario` */

CREATE TABLE `tipo_usuario` (
  `idtipopersona` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fechacreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idtipopersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tipo_usuario` */

/*Table structure for table `usuario` */

CREATE TABLE `usuario` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `idtipopersona` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `fechacreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuario` */

/* Procedure structure for procedure `actuEditorial` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `actuEditorial`(
    
           $ideditorial int,
           $descripcion VARCHAR(50),
           $estado BIT(1),
           $fechacreacion DATETIME
    )
BEGIN
             UPDATE editoral
             SET  descripcion = $descripcion, estado = $estado, fechacreacion = $fechacreacion
               WHERE ideditorial = $ideditorial;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminarAutor` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarAutor`(
    
           $id_autor INT
    )
BEGIN
             DELETE FROM autor WHERE  id_autor = $id_autor;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminarEditorial` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarEditorial`(
    
           $ideditorial int
    )
BEGIN
             DELETE FROM editoral WHERE  ideditorial = $ideditorial;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `insertAutor` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertAutor`(
    $nombre VARCHAR(50),
    $apellido VARCHAR(50),
    $fecha_nac DATETIME
    )
BEGIN
	INSERT INTO autor (nombre,apellido,fecha_nac)
VALUES
  ($nombre,$apellido,$fecha_nac);


	END */$$
DELIMITER ;

/* Procedure structure for procedure `insertEditorial` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertEditorial`( 
    
      Descripcion VARCHAR(50),
      Estado BIT(1),
      Fechacreacion DATETIME )
BEGIN
          INSERT INTO editorial (descripcion, estado, fechacreacion)
          VALUES(Descripcion, Estado, Fechacreacion);
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
