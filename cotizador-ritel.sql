-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cotizador_virtual
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria_valor_vivienda`
--

DROP TABLE IF EXISTS `categoria_valor_vivienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_valor_vivienda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_valor_vivienda`
--

LOCK TABLES `categoria_valor_vivienda` WRITE;
/*!40000 ALTER TABLE `categoria_valor_vivienda` DISABLE KEYS */;
INSERT INTO `categoria_valor_vivienda` VALUES (1,'Igual o inferior al definido para Vivienda VIS'),(2,'Superior al definido para  Vivienda VIS y hasta 280 SMMLV'),(3,'Superior a 280 SMMLV');
/*!40000 ALTER TABLE `categoria_valor_vivienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(255) NOT NULL,
  `nit` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `telefono_2` varchar(45) DEFAULT NULL,
  `telefono_3` varchar(45) DEFAULT NULL,
  `autorizado` int(11) DEFAULT 0,
  `estado` int(11) NOT NULL,
  `ingreso` datetime NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `contrasena_llave` varchar(255) NOT NULL,
  `contrasena_intento` int(11) NOT NULL,
  `contrasena_fecha` datetime NOT NULL,
  `auditoria_creado` datetime NOT NULL,
  `auditoria_usuario` int(11) NOT NULL,
  `auditoria_modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'JonatanLiscano@InnovacionInvaluablesas.com',1,'Jonatan Liscano','','JonatanLiscano@InnovacionInvaluablesas.com','3002589654',NULL,NULL,0,1,'2021-06-06 17:44:07','$2a$07$GSVs6pSNqiKLkHE6dOtZPejIUkb.m1aezlhAzsEYSSg7Wv0mcPl3e','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,'2021-06-06 22:44:07'),(2,'JonatanLiscano@InnovacionInvaluablesas.com',123,'Camila','','JulianRojas@InnovacionInvaluablesas.com','123456789',NULL,NULL,0,1,'2021-06-06 16:53:16','$2a$07$GSVs6pSNqiKLkHE6dOtZPejIUkb.m1aezlhAzsEYSSg7Wv0mcPl3e','',0,'0000-00-00 00:00:00','2021-06-04 09:57:08',2,'2021-06-06 21:53:16');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asignado` int(11) DEFAULT NULL,
  `proyecto` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT 2,
  `auditoria_usuario` int(11) DEFAULT NULL,
  `auditoria_creado` datetime DEFAULT NULL,
  `auditoria_modificado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_estado`
--

DROP TABLE IF EXISTS `cotizacion_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_estado`
--

LOCK TABLES `cotizacion_estado` WRITE;
/*!40000 ALTER TABLE `cotizacion_estado` DISABLE KEYS */;
INSERT INTO `cotizacion_estado` VALUES (1,'Sin asignar'),(2,'Asignado'),(3,'En ejecución'),(4,'Resuelto'),(5,'Cerrado');
/*!40000 ALTER TABLE `cotizacion_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_respuesta`
--

DROP TABLE IF EXISTS `cotizacion_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion_respuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cotizacion` int(11) NOT NULL,
  `respuesta` text NOT NULL,
  `auditoria_creado` datetime NOT NULL,
  `auditoria_usuario` int(11) NOT NULL,
  `auditoria_modificado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_respuesta`
--

LOCK TABLES `cotizacion_respuesta` WRITE;
/*!40000 ALTER TABLE `cotizacion_respuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Inactivo'),(2,'Activo'),(3,'Borrado');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(245) NOT NULL,
  `propietario_razon_social` varchar(245) NOT NULL,
  `constructor` varchar(245) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `direccion` varchar(245) NOT NULL,
  `latitud` varchar(245) NOT NULL,
  `longitud` varchar(245) NOT NULL,
  `cliente` int(11) NOT NULL,
  `categoria_valor_vivienda` int(11) NOT NULL,
  `tipo_construccion` int(11) NOT NULL,
  `revision_disenio_infrastructura` int(1) DEFAULT 0,
  `revision_disenio_red_tdt` int(1) DEFAULT 0,
  `inspeccion_infraestructura` int(1) DEFAULT 0,
  `inspeccion_red_tdt` int(1) DEFAULT 0,
  `observacion` text DEFAULT NULL,
  `estado` int(1) DEFAULT 2,
  `auditoria_creado` datetime NOT NULL,
  `auditoria_usuario` int(11) NOT NULL,
  `auditoria_modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_horizontal`
--

DROP TABLE IF EXISTS `proyecto_horizontal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto_horizontal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto` int(11) DEFAULT NULL,
  `cantidad_casa` int(11) DEFAULT NULL,
  `cantidad_píso` int(11) DEFAULT NULL,
  `cantidad_casa_tipo` int(11) DEFAULT NULL,
  `cantidad_zona_comun` int(11) DEFAULT NULL,
  `cantidad_local` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_horizontal`
--

LOCK TABLES `proyecto_horizontal` WRITE;
/*!40000 ALTER TABLE `proyecto_horizontal` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto_horizontal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_infrastructura`
--

DROP TABLE IF EXISTS `proyecto_infrastructura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto_infrastructura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto` int(11) DEFAULT NULL,
  `cantidad_camara_entrada` int(11) DEFAULT NULL,
  `cantidad_camara_enlace` int(11) DEFAULT NULL,
  `cantidad_seti` int(11) DEFAULT NULL,
  `cantidad_sets` int(11) DEFAULT NULL,
  `cantidad_setu` int(11) DEFAULT NULL,
  `cantidad_gabinete_piso` int(11) DEFAULT NULL,
  `cantidad_camara_distribucion` int(11) DEFAULT NULL,
  `cantidad_caja_paso_zona_comun` int(11) DEFAULT NULL,
  `cantidad_gabinete_tdt` int(11) DEFAULT NULL,
  `cantidad_caja_pau` int(11) DEFAULT NULL,
  `cantidad_caja_paso_vivienda` int(11) DEFAULT NULL,
  `cantidad_caja_tu` int(11) DEFAULT NULL,
  `cantidad_antena` int(11) DEFAULT NULL,
  `cantidad_equipo_cabecera` int(11) DEFAULT NULL,
  `cantidad_amplificador_senial` int(11) DEFAULT NULL,
  `cantidad_derivador` int(11) DEFAULT NULL,
  `cantidad_repartidor` int(11) DEFAULT NULL,
  `cantidad_tu_tdt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_infrastructura`
--

LOCK TABLES `proyecto_infrastructura` WRITE;
/*!40000 ALTER TABLE `proyecto_infrastructura` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto_infrastructura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_vertical`
--

DROP TABLE IF EXISTS `proyecto_vertical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto_vertical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto` int(11) DEFAULT NULL,
  `cantidad_torre` int(11) NOT NULL,
  `cantidad_piso` int(11) DEFAULT NULL,
  `cantidad_pisos_tipo` int(11) DEFAULT NULL,
  `cantidad_apartemento_tipo` int(11) DEFAULT NULL,
  `cantidad_caja_pau` int(11) DEFAULT NULL,
  `cantidad_local` int(11) DEFAULT NULL,
  `cantidad_vivienda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_vertical`
--

LOCK TABLES `proyecto_vertical` WRITE;
/*!40000 ALTER TABLE `proyecto_vertical` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto_vertical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Super administrador',1),(2,'Administrador',1),(3,'Agente',1);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_construccion`
--

DROP TABLE IF EXISTS `tipo_construccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_construccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_construccion`
--

LOCK TABLES `tipo_construccion` WRITE;
/*!40000 ALTER TABLE `tipo_construccion` DISABLE KEYS */;
INSERT INTO `tipo_construccion` VALUES (1,'Vertical'),(2,'Horizontal '),(3,'Mixta');
/*!40000 ALTER TABLE `tipo_construccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena_fecha` datetime NOT NULL,
  `contrasena_intento` int(1) NOT NULL,
  `contrasena_llave` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol` int(1) NOT NULL,
  `estado` int(1) NOT NULL,
  `ingreso` datetime NOT NULL,
  `auditoria_creado` datetime NOT NULL,
  `auditoria_usuario` int(11) NOT NULL,
  `auditoria_modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Julian Rojas Bustamante','julianrjs15@gmail.com','$2a$07$GSVs6pSNqiKLkHE6dOtZPeTI0WQn/iqLrvjtpv9a62SKqdTq7l8Re','2020-06-23 11:27:34',0,'','usuario.jpg',1,2,'2021-06-19 16:13:20','2021-06-19 16:13:20',1,'2021-06-19 21:13:51'),(2,'Jonatan Liscano','jonatanliscanox@gmail.com','$2a$07$GSVs6pSNqiKLkHE6dOtZPelYlIQQPV/f2H6on4TRJk3qk4W6fxuS2','0000-00-00 00:00:00',0,'','usuario.jpg',2,2,'0000-00-00 00:00:00','2021-06-19 16:13:20',1,'2021-06-19 21:14:21');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-19 16:37:09
