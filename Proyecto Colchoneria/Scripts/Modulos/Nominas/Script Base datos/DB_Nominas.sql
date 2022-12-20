create database bd_nominas;
use bd_nominas;

/*DROP TABLE IF EXISTS `tbl_departamentos`; Mantenimiento*/
CREATE TABLE IF NOT EXISTS `tbl_departamentos` (
	pk_id_departamento  int auto_increment NOT NULL,
    nombre_departamento VARCHAR(50),
    descripcion  VARCHAR(50) NOT NULL,
    primary key (`pk_id_departamento`)
);

/*DROP TABLE IF EXISTS `tbl_puestos_trabajo`; Mantenimiento*/
CREATE TABLE IF NOT EXISTS `tbl_puestos_trabajo` (
	pk_id_puestos int auto_increment NOT NULL,
    nombre_puesto VARCHAR(50),
    descripcion  VARCHAR(50),
    primary key (`pk_id_puestos`)
);

/*DROP TABLE IF EXISTS `tbl_empleados`;*/
CREATE TABLE IF NOT EXISTS `tbl_trabajadores` (
	pk_clave INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido  VARCHAR(50),
    fecha_nacimiento  date,
    no_identificacion  VARCHAR(50) NOT NULL,
    codigo_postal  VARCHAR(50),
    fecha_alta  date,
    fecha_baja date,
    causa_baja  VARCHAR(50),
    estado_modulo TINYINT DEFAULT 1,
    fk_id_departamento INT NOT NULL, 
    fk_id_puestos INT NOT NULL, 
	FOREIGN KEY (`fk_id_departamento`) REFERENCES `tbl_departamentos` (`pk_id_departamento`),
    FOREIGN KEY (`fk_id_puestos`) REFERENCES `tbl_puestos_trabajo` (`pk_id_puestos`), 
	primary key (`pk_clave`)
);

/*DROP TABLE IF EXISTS `tbl_info_empleado`;*/
CREATE TABLE IF NOT EXISTS `tbl_info_empleado` (
	pk_id_info INT auto_increment NOT NULL,
    ubicacion_calle VARCHAR(50),
    ubicacion_colonia VARCHAR(50),
    ubicacion_zona VARCHAR(50),
    ubicacion_pais VARCHAR(50),
    correo VARCHAR(50),
    codigo_portal VARCHAR(50),
    no_telefono VARCHAR(50),
    estudios VARCHAR(100),
    profesion VARCHAR(50),
    estado_civil VARCHAR(50),
    tipo_sangre VARCHAR(50),
    fk_clave_empleado INT NOT NULL, 
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_trabajadores` (`pk_clave`),
    primary key (`pk_id_puestos`)
);

/*DROP TABLE IF EXISTS `tbl_contrato`;*/
CREATE TABLE IF NOT EXISTS `tbl_contrato` (
	pk_id_contrato INT auto_increment NOT NULL,
    fecha_creacion date NOT NULL,
    salario  decimal(10,2) NOT NULL,
    estado_contrato TINYINT DEFAULT 1,
    tipo_contrato varchar(35), /* Cn Prestasciones o sn Prestaciones  */
    fk_clave_empleado INT NOT NULL, 
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_empleados` (`pk_clave`),
    primary key (`pk_id_contrato`)
);

CREATE TABLE IF NOT EXISTS `tbl_asignacion_vacaciones` (
	pk_registro_vaciones int auto_increment not null,
    descripcion varchar(25),
    fecha_inicio date,
    fecha_fin date,
    fk_clave_empleado INT NOT NULL, 
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_empleados` (`pk_clave`),
    primary key (`pk_registro_vaciones`)
);

CREATE TABLE IF NOT EXISTS `tbl_control_horas_extra` (
	pk_registro_horas int auto_increment not null,
    mes varchar(25),
    cantidad_horas decimal(10,2),
    fk_clave_empleado INT NOT NULL, 
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_empleados` (`pk_clave`),
    primary key (`pk_registro_horas`)
);

CREATE TABLE IF NOT EXISTS `tbl_control_anticipos` (
	pk_registro_anticipos int auto_increment not null,
    cantidad decimal(10,2),
    descripcion decimal(10,2),
    mes varchar(25),
    fk_clave_empleado INT NOT NULL, 
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_empleados` (`pk_clave`),
    primary key (`pk_registro_anticipos`)
);

CREATE TABLE IF NOT EXISTS `tbl_control_faltas` (
	pk_registro_faltas int auto_increment not null,
    fecha_falta date,
    mes varchar(25),
    justificacion varchar(25),
    fk_clave_empleado INT NOT NULL, 
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_empleados` (`pk_clave`),
    primary key (`pk_registro_faltas`)
);

CREATE TABLE IF NOT EXISTS `tbl_Liquidacion_Trabajadores` (
	pk_registro_liquidacion int auto_increment not null,
    aguinaldo decimal (10,2) not null,
    bono_14 decimal (10,2) not null,
    vaciones decimal (10,2) not null,
    tipo_operacion varchar(25), /* Liquidacion o Indemnización */
    fk_clave_empleado INT NOT NULL, 
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_empleados` (`pk_clave`),
    primary key (`pk_registro_liquidacion`)
);

CREATE TABLE IF NOT EXISTS `tbl_planilla` (
	pk_registro_planilla int auto_increment not null,
    correlativo_planilla int not null, 
    fecha_inicio date,
    fecha_final date,
    /*Percepciones*/
    horas_extra decimal(10,2),
    comisiones decimal(10,2) default 0.00,
    bono_14 decimal(10,2) default 0.00,
    aguinaldo decimal(10,2) default 0.00,
    total_Percepciones decimal (10,2),
    /*Deducciones*/
    IGSS decimal (10,2),
    IRTRA decimal(10,2),
    ISR decimal(10,2),
    Anticipos decimal(10,2) default 0.00,
    faltas decimal(10,2) default 0.00,
    total_Deducciones decimal(10,2),
    /**/
    total_liquido decimal(10,2),
    /**/
    fk_clave_empleado int not null, 
    fk_id_contrato int not null,
    fk_registro_horas int not null,
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_empleados` (`pk_clave`),
    FOREIGN KEY (`fk_id_contrato`) REFERENCES `tbl_contrato` (`pk_id_contrato`),
    /*Informaacion a pagar*/
    FOREIGN KEY (`fk_registro_horas`) REFERENCES `tbl_control_horas_extra` (`pk_registro_horas`),
	/**/
    primary key (`pk_registro_planilla`)
);



