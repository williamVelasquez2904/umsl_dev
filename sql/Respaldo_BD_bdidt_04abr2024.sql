-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: bdidt
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_empresa`
--

DROP TABLE IF EXISTS `tbl_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empresa` (
  `empresa_ide` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_rif` varchar(13) NOT NULL COMMENT 'rif de la empresa',
  `empresa_nombre` text COMMENT 'nombre de la empresa',
  `empresa_nombre2` varchar(100) NOT NULL,
  `empresa_direccion` text COMMENT 'direccion de la empresa',
  `empresa_telefono` varchar(200) DEFAULT NULL COMMENT 'telefonos de la empresa',
  `empresa_email` varchar(100) DEFAULT NULL COMMENT 'correo de la empresa',
  `fact_cont` int(11) NOT NULL COMMENT 'contador de numeros de factura',
  `ctrol_cont` int(11) NOT NULL COMMENT 'contador de numeros de control',
  `noen_cont` int(11) NOT NULL COMMENT 'contador de numeros de nota de entrega',
  `empresa_logo` varchar(255) NOT NULL DEFAULT 'logo_cliente.png',
  `empresa_encabezado` varchar(255) NOT NULL,
  `empresa_pie` varchar(255) NOT NULL,
  `empresa_principal` int(11) NOT NULL DEFAULT '0',
  `valor_dolar` decimal(11,2) DEFAULT '0.00' COMMENT 'Precio del Dolar en Bolivares Fuertes',
  `empresa_bg_encabezado` varchar(8) DEFAULT '' COMMENT 'Color de fondo de encabezado de Sistema',
  `empresa_col_nombre` varchar(24) DEFAULT '' COMMENT 'Color de letra de encabezado de Sistema',
  `empresa_bg_menu` varchar(8) DEFAULT '' COMMENT 'Color de fondo del menu de Sistema',
  `empresa_col_ele_menu` varchar(24) DEFAULT '' COMMENT 'Color de elemento del menu de Sistema',
  `empresa_col_ele_menu_alt` varchar(24) DEFAULT '' COMMENT 'Color de elemento interno del menu de Sistema',
  `empresa_borrado` int(11) DEFAULT '0',
  PRIMARY KEY (`empresa_ide`),
  KEY `empresa_rif` (`empresa_rif`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empresa`
--

LOCK TABLES `tbl_empresa` WRITE;
/*!40000 ALTER TABLE `tbl_empresa` DISABLE KEYS */;
INSERT INTO `tbl_empresa` VALUES (1,'J-00000000-0','INSTITUTO DEL DEPORTE TACHIRENSE','','SC','02763000000','',0,0,0,'logo_cliente.png','logo_cliente.png','pie1.jpg',0,0.00,'8a9eb3','white','b0c2d5','blue','blue',0);
/*!40000 ALTER TABLE `tbl_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modulos`
--

DROP TABLE IF EXISTS `tbl_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modulos` (
  `modu_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `modu_descrip` varchar(30) DEFAULT NULL COMMENT 'Descripción',
  `modu_icono` varchar(20) DEFAULT NULL COMMENT 'Icono',
  `modu_visible` int(11) DEFAULT '1' COMMENT 'Visibilidad (1 visible, 0 oculto)',
  `modu_orden` int(11) DEFAULT NULL COMMENT 'Orden',
  PRIMARY KEY (`modu_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Esquema de opciones, categoría principal del menú del sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modulos`
--

LOCK TABLES `tbl_modulos` WRITE;
/*!40000 ALTER TABLE `tbl_modulos` DISABLE KEYS */;
INSERT INTO `tbl_modulos` VALUES (1,'Usuarios','lock',1,1),(2,'Maestros','folder',1,2),(3,'Procesos','cogs ',1,3),(4,'Mantenimiento','list-ul ',1,4),(5,'Reportes','file-text',1,5);
/*!40000 ALTER TABLE `tbl_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permisos` (
  `perm_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador',
  `perm_tius` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_tipousua',
  `perm_sumo` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_submodul',
  `perm_estado` int(11) DEFAULT NULL COMMENT 'Estado de acceso (1 permitido, 2 denegado)',
  PRIMARY KEY (`perm_ide`),
  KEY `perm_tius` (`perm_tius`) USING BTREE,
  KEY `perm_sumo` (`perm_sumo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Almacena la información correspondiente a los permisos de acceso para cada tipo de usuario y cada módulo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (1,1,1,1),(2,1,2,1),(6,1,3,1),(7,1,4,1),(8,1,5,1);
/*!40000 ALTER TABLE `tbl_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_submodul`
--

DROP TABLE IF EXISTS `tbl_submodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_submodul` (
  `sumo_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `sumo_modu` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_modulos',
  `sumo_descrip` varchar(50) DEFAULT NULL COMMENT 'Descripción',
  `sumo_orden` int(11) DEFAULT NULL COMMENT 'Orden',
  `sumo_icono` varchar(20) DEFAULT NULL COMMENT 'icono',
  `sumo_visible` int(11) DEFAULT NULL COMMENT 'Visibilidad (1 visible, 0 oculto)',
  `sumo_url` varchar(100) DEFAULT NULL COMMENT 'Ruta de acceso',
  PRIMARY KEY (`sumo_ide`),
  KEY `modu_ide` (`sumo_modu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Almacena información de todas las opciones o submódulos de los que dispone el sistema para moverse dentro del mismo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_submodul`
--

LOCK TABLES `tbl_submodul` WRITE;
/*!40000 ALTER TABLE `tbl_submodul` DISABLE KEYS */;
INSERT INTO `tbl_submodul` VALUES (1,1,'Usuarios',1,'user',1,'app/usuarios/vst/admin.php'),(2,1,'Niveles y Permisos',2,'unlock',1,'app/tipousua/vst/admin.php'),(3,2,'Proveedores',1,'user',1,'app/proveedor/vst/admin.php'),(4,3,'Registrar Compras',3,'download',1,'app/compra/vst/admin.php'),(5,5,'Inventario',15,'desktop',1,'app/producto/vst/listainventario.php'),(6,5,'Servicios',18,'television',1,'app/producto/vst/listaservicio.php'),(7,3,'Facturacion',6,'money ',1,'app/facturacion/vst/admin.php'),(8,3,'Anulacion de Factura',12,'times',1,'app/facturacion/vst/adminfactura.php'),(9,3,'Reimprimir Factura',18,'print',1,'app/facturacion/vst/adminimprefactura.php'),(10,4,'Tipo',7,'group',1,'app/tipclien/vst/admin.php'),(11,3,'Nota de Entrega',9,'money',1,'app/notaentre/vst/admin.php'),(12,3,'Anulacion de Nota de Entrega',15,'times',1,'app/notaentre/vst/adminnotaentre.php'),(13,5,'Consulta de Precio',12,'barcode',1,'app/producto/vst/listaprecio.php'),(14,4,'Bancos',22,'bank',1,'app/banco/vst/admin.php'),(15,5,'Cuentas por Cobrar',6,'inbox',1,'app/reportes/vst/listacuentaporcobrar.php'),(16,5,'Cuentas por Pagar',9,'book',0,''),(17,4,'Marcas',10,'bookmark',1,'app/marca/vst/admin.php'),(18,4,'Modelos',13,'external-link',1,'app/modelo/vst/admin.php'),(19,4,'Impuesto',16,'credit-card',1,'app/impuesto/vst/admin.php'),(20,4,'Unidades de Medida',19,'dashboard',1,'app/unidmed/vst/admin.php'),(21,5,'Cuadre de Caja',3,'edit',1,'app/reportes/vst/admincuadrecaja.php'),(22,2,'Productos',10,'product-hunt',1,'app/producto/vst/admin.php'),(23,5,'Listado de Clientes',30,'group',1,'app/cliente/vst/lista.php'),(24,5,'Mercancia con Existencia Baja',21,'file-text',1,'app/producto/vst/listainventariobajostock.php'),(25,4,'Tienda',4,'university',1,'app/tienda/vst/admin.php'),(26,5,'Listado de Compras',33,'bookmark',1,'app/compra/vst/listacompraverifica.php'),(27,5,'Libro de Ventas',39,'book',1,'app/reportes/vst/adminlibroventa.php'),(28,3,'Retiro y Auto-Consumo',21,'external-link',1,'app/producto/vst/adminretiro.php'),(29,3,'Movimiento de Productos',24,'exchange',1,'app/producto/vst/listakardex.php'),(30,5,'Libro de Compras',36,'book',1,'app/reportes/vst/adminlibrocompra.php'),(31,3,'Facturacion Pago Electronico',30,'money ',0,'app/facturacion10/vst/admin.php'),(32,5,'Libro de Inventario Mensual',42,'book',1,'app/reportes/vst/adminlibroinventariomensual.php'),(33,5,'Registro de Auditoria de Sistema',60,'eye',1,'app/auditoria/vst/admin.php'),(34,3,'Registrar Deposito en Efectivo',27,'edit',0,'app/deposito/vst/admin.php'),(35,3,'Reimprimir Factura Pago Electronico',33,'print',0,'app/facturacion10/vst/adminimprefactura.php'),(36,2,'Vendedores',4,'user',1,'app/vendedor/vst/admin.php'),(37,2,'Clientes',7,'user',1,'app/cliente/vst/admin.php'),(38,5,'Listado de Proveedores',24,'group',1,'app/proveedor/vst/lista.php'),(39,5,'Listado de Vendedores',27,'group',1,'app/vendedor/vst/lista.php'),(40,4,'Zonas',25,'globe',1,'app/zona/vst/admin.php'),(41,3,'Generar Requisicion',39,'book',1,'app/requisicion/vst/admin.php'),(42,3,'Registrar Compra (Comisiones)',45,'download',1,'app/compracom/vst/admin.php'),(43,3,'Ordenes',42,'check',1,'app/orden/vst/admin.php'),(44,5,'Listado de Requisiciones',45,'list',1,'app/reportes/vst/adminlistareq.php'),(45,4,'Monedas',24,'money',1,'app/moneda/vst/admin.php'),(46,3,'Referencia Moneda',36,'money',1,'app/moneda/vst/adminmonval.php'),(47,3,'Distribuir Compra',48,'money',1,'app/compracom/vst/admin_compra_dist.php'),(48,2,'Empleados',49,'money',1,'app/banco/vst/admin.php');
/*!40000 ALTER TABLE `tbl_submodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipousua`
--

DROP TABLE IF EXISTS `tbl_tipousua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipousua` (
  `tius_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `tius_descrip` varchar(40) DEFAULT NULL COMMENT 'Descripción',
  `tius_borrado` int(11) DEFAULT '0' COMMENT '1 si, 0 no',
  PRIMARY KEY (`tius_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Información acerca de los tipos de usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipousua`
--

LOCK TABLES `tbl_tipousua` WRITE;
/*!40000 ALTER TABLE `tbl_tipousua` DISABLE KEYS */;
INSERT INTO `tbl_tipousua` VALUES (1,'ADMINISTRADOR DEL SISTEMA',0),(2,'ASISTENTE',0),(3,'ADMINISTRADOR DE TIENDA',0);
/*!40000 ALTER TABLE `tbl_tipousua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `usua_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `usua_login` varchar(10) DEFAULT NULL COMMENT 'Nombre de usuario',
  `usua_clave` varchar(32) DEFAULT NULL COMMENT 'Clave de acceso',
  `usua_tipo` varchar(2) DEFAULT NULL,
  `usua_numiden` int(11) DEFAULT NULL,
  `usua_nombre` varchar(50) DEFAULT '',
  `usua_apelli` varchar(50) DEFAULT '',
  `usua_fecnaci` date DEFAULT NULL,
  `usua_direcci` varchar(255) DEFAULT '',
  `usua_telmovi` varchar(64) DEFAULT '',
  `usua_correo` varchar(100) DEFAULT '',
  `usua_estado` int(11) DEFAULT NULL COMMENT '1 activo, 2 inactivo, 0 borrado',
  `usua_visible` int(11) DEFAULT NULL COMMENT '1 visible en lista de usuario, 0 no',
  `usua_tius` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_tipousua',
  `usua_tienda` int(11) DEFAULT '1' COMMENT 'foranea de empresas',
  PRIMARY KEY (`usua_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Información de usuarios que tienen acceso al sistema de IDT';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'ADMIN','569bbb11f1df07c575d6dd1a708fa273','V',13303247,'ADMIN','SISTEMA','1979-03-09','SAN CRISTOBAL','584247627193','JGILMER79@GMAIL.COM',1,1,1,1),(2,'demo','569bbb11f1df07c575d6dd1a708fa273','V',11491975,'ADMIN','william','1972-04-29','sc','','',1,1,1,1);
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_permisos`
--

DROP TABLE IF EXISTS `vw_permisos`;
/*!50001 DROP VIEW IF EXISTS `vw_permisos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_permisos` AS SELECT 
 1 AS `perm_ide`,
 1 AS `perm_tius`,
 1 AS `perm_estado`,
 1 AS `sumo_ide`,
 1 AS `sumo_descrip`,
 1 AS `sumo_orden`,
 1 AS `sumo_icono`,
 1 AS `sumo_visible`,
 1 AS `sumo_url`,
 1 AS `modu_ide`,
 1 AS `modu_descrip`,
 1 AS `modu_icono`,
 1 AS `modu_visible`,
 1 AS `modu_orden`,
 1 AS `perm_sumo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usuarios`
--

DROP TABLE IF EXISTS `vw_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vw_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_usuarios` AS SELECT 
 1 AS `usua_ide`,
 1 AS `usua_numiden`,
 1 AS `usua_nombre`,
 1 AS `usua_apelli`,
 1 AS `usua_fecnaci`,
 1 AS `usua_direcci`,
 1 AS `usua_telmovi`,
 1 AS `usua_tipo`,
 1 AS `usua_correo`,
 1 AS `usua_login`,
 1 AS `usua_clave`,
 1 AS `usua_estado`,
 1 AS `usua_visible`,
 1 AS `usua_tius`,
 1 AS `tius_descrip`,
 1 AS `tius_ide`,
 1 AS `usua_tienda`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'bdidt'
--

--
-- Final view structure for view `vw_permisos`
--

/*!50001 DROP VIEW IF EXISTS `vw_permisos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_permisos` AS select `a`.`perm_ide` AS `perm_ide`,`a`.`perm_tius` AS `perm_tius`,`a`.`perm_estado` AS `perm_estado`,`b`.`sumo_ide` AS `sumo_ide`,`b`.`sumo_descrip` AS `sumo_descrip`,`b`.`sumo_orden` AS `sumo_orden`,`b`.`sumo_icono` AS `sumo_icono`,`b`.`sumo_visible` AS `sumo_visible`,`b`.`sumo_url` AS `sumo_url`,`c`.`modu_ide` AS `modu_ide`,`c`.`modu_descrip` AS `modu_descrip`,`c`.`modu_icono` AS `modu_icono`,`c`.`modu_visible` AS `modu_visible`,`c`.`modu_orden` AS `modu_orden`,`a`.`perm_sumo` AS `perm_sumo` from ((`tbl_permisos` `a` join `tbl_submodul` `b` on((`a`.`perm_sumo` = `b`.`sumo_ide`))) join `tbl_modulos` `c` on((`b`.`sumo_modu` = `c`.`modu_ide`))) where ((`c`.`modu_visible` = 1) and (`b`.`sumo_visible` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `vw_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuarios` AS select `a`.`usua_ide` AS `usua_ide`,`a`.`usua_numiden` AS `usua_numiden`,`a`.`usua_nombre` AS `usua_nombre`,`a`.`usua_apelli` AS `usua_apelli`,`a`.`usua_fecnaci` AS `usua_fecnaci`,`a`.`usua_direcci` AS `usua_direcci`,`a`.`usua_telmovi` AS `usua_telmovi`,`a`.`usua_tipo` AS `usua_tipo`,`a`.`usua_correo` AS `usua_correo`,`a`.`usua_login` AS `usua_login`,`a`.`usua_clave` AS `usua_clave`,`a`.`usua_estado` AS `usua_estado`,`a`.`usua_visible` AS `usua_visible`,`a`.`usua_tius` AS `usua_tius`,`m`.`tius_descrip` AS `tius_descrip`,`m`.`tius_ide` AS `tius_ide`,`a`.`usua_tienda` AS `usua_tienda` from (`tbl_usuarios` `a` left join `tbl_tipousua` `m` on((`a`.`usua_tius` = `m`.`tius_ide`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 22:41:21
