/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 10.4.20-MariaDB : Database - db_biblioteca
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_biblioteca`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `cod_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `contraseña` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

/*Table structure for table `autor` */

DROP TABLE IF EXISTS `autor`;

CREATE TABLE `autor` (
  `cod_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_autor` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cod_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `autor` */

/*Table structure for table `bibliotecario` */

DROP TABLE IF EXISTS `bibliotecario`;

CREATE TABLE `bibliotecario` (
  `cod_bibliotecario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `contraseña` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_bibliotecario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `bibliotecario` */

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `cod_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `categoria` */

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `identificacion` varchar(20) DEFAULT NULL,
  `fecha_nac` varchar(10) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `cliente` */

/*Table structure for table `editorial` */

DROP TABLE IF EXISTS `editorial`;

CREATE TABLE `editorial` (
  `cod_editorial` int(11) NOT NULL AUTO_INCREMENT,
  `editorial` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_editorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `editorial` */

/*Table structure for table `estado` */

DROP TABLE IF EXISTS `estado`;

CREATE TABLE `estado` (
  `cod_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `estado` */

/*Table structure for table `estado_exisencia` */

DROP TABLE IF EXISTS `estado_exisencia`;

CREATE TABLE `estado_exisencia` (
  `cod_existencia` int(11) DEFAULT NULL,
  `cod_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `estado_exisencia` */

/*Table structure for table `libro` */

DROP TABLE IF EXISTS `libro`;

CREATE TABLE `libro` (
  `cod_libro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `cod_editorial` int(11) DEFAULT NULL,
  `cod_categoria` int(11) DEFAULT NULL,
  `edicion` varchar(100) DEFAULT NULL,
  `fecha_lanzamiento` datetime DEFAULT NULL,
  PRIMARY KEY (`cod_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `libro` */

/*Table structure for table `libros_x_existencia` */

DROP TABLE IF EXISTS `libros_x_existencia`;

CREATE TABLE `libros_x_existencia` (
  `cod_existencia` int(11) NOT NULL AUTO_INCREMENT,
  `cod_libro` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_existencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `libros_x_existencia` */

/*Table structure for table `librosxautor` */

DROP TABLE IF EXISTS `librosxautor`;

CREATE TABLE `librosxautor` (
  `cod_libro` int(11) NOT NULL,
  `cod_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `librosxautor` */

/*Table structure for table `prestamo` */

DROP TABLE IF EXISTS `prestamo`;

CREATE TABLE `prestamo` (
  `cod_prestamo` int(11) NOT NULL AUTO_INCREMENT,
  `cod_existencia` int(11) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `fecha_prestamo` datetime DEFAULT NULL,
  `hora_prestamo` varchar(10) DEFAULT NULL,
  `cod_tipoprestamo` int(11) DEFAULT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  `hora_entrega` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cod_prestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `prestamo` */

/*Table structure for table `sede_region` */

DROP TABLE IF EXISTS `sede_region`;

CREATE TABLE `sede_region` (
  `cod_refgion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_refgion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sede_region` */

/*Table structure for table `tipo_prestamo` */

DROP TABLE IF EXISTS `tipo_prestamo`;

CREATE TABLE `tipo_prestamo` (
  `cod_tipoprestamo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_prestamo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_tipoprestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tipo_prestamo` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
