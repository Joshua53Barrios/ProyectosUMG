USE `colchoneria`;
-- Tabla de tbl_ordenes
DROP TABLE IF EXISTS `tbl_ordenes`;
CREATE TABLE `tbl_ordenes` (
  `pk_idordenes_tbl_ordenes` int NOT NULL AUTO_INCREMENT,
  `fk_idrecetas_tbl_recetas` int NOT NULL,
  `prioridad_tbl_ordenes` varchar(45) NOT NULL,
  `producto_fabricar_tbl_ordenes` varchar(45) NOT NULL,
  `cantidad_tbl_ordenes` int NOT NULL,
  `fechaini_tbl_ordenes` varchar(25) NOT NULL,
  `fechaentrega_tbl_ordenes` varchar(25) NOT NULL,
  `fechacreacion_orden_tbl_ordenes` varchar(45) NOT NULL,
  `detalle_tbl_ordenes` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pk_idordenes_tbl_ordenes`),
  KEY `fk_idproducto_tbl_recetas_idx` (`fk_idrecetas_tbl_recetas`),
  CONSTRAINT `fk_idrecetas_tbl_recetas` FOREIGN KEY (`fk_idrecetas_tbl_recetas`) REFERENCES `tbl_recetas` (`pk_idrecetas_tbl_recetas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
-- Tabla de tbl_recetas
DROP TABLE IF EXISTS `tbl_recetas`;
CREATE TABLE `tbl_recetas` (
  `pk_idrecetas_tbl_recetas` int NOT NULL AUTO_INCREMENT,
  `producto_tbl_recetas` varchar(45) NOT NULL,
  `nombre_material_tbl_recetas` varchar(100) NOT NULL,
  `cantidad_tbl_recetas` varchar(100) NOT NULL,
  `medida_tbl_recetas` varchar(45) NOT NULL,
  PRIMARY KEY (`pk_idrecetas_tbl_recetas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `colchoneria`.`_tbl_procesoprod` (
  `pk_codigo_proceso` INT NOT NULL,
  `fk_idordenes_tbl_procesoprod` VARCHAR(45) NULL,
  `producto_fabricar_tbl_procesoprod` VARCHAR(60) NULL,
  `cantidad_fabricar_tbl_procesoprod` VARCHAR(60) NULL,
  `fecha_entrega_tbl_procesoprod` VARCHAR(20) NULL,
  `proceso_pro_tbl_procesoprod` VARCHAR(10) NULL,
  `estado_orden_tbl_procesoprod` TINYINT DEFAULT 0,
  PRIMARY KEY (`pk_codigo_proceso`));