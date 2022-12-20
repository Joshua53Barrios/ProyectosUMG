use colchoneria;
/*Tabla Activos - Jonathan Xuyá 0901-18-11371*/
DROP TABLE IF EXISTS `tbl_ActivosFijos`;  
CREATE TABLE IF NOT EXISTS `tbl_ActivosFijos` (
	pk_ActivosFijos INT AUTO_INCREMENT NOT NULL,
    Edificaiones varchar(45) NOT NULL,
    Muebles varchar(45) NOT NULL,
    Equipos varchar(45) NOT NULL,
    Maquinaria varchar(45) NOT NULL,
    Herramientas varchar(45) NOT NULL,
    EquipoComputo varchar(45) NOT NULL,
    primary key (pk_ActivosFijos)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/*TABLAS CUENTAS - DIANA VICTORES 9959-19-1471*/
create table tbl_encabezadoclasecuenta(
pkid_encabezadocuenta int not null, 
nombre_tipocuenta varchar(50) not null,
estatus_clasecuenta TINYINT NOT NULL, 
primary key (pkid_encabezadocuenta) 
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

/* DIANA VICTORES 9959-19-1471*/
create table tbl_tipocuenta(
pkid_tipocuenta int not null, 
nombre_tipocuenta varchar(50) not null,
serie_tipocuenta varchar(50) not null,
estatus_tipocuenta TINYINT NOT NULL, 
primary key (pkid_tipocuenta ) 
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

/*DIANA VICTORES 9959-19-1471*/
create table tbl_cuentas(
pkid_cuenta int not null, 
pkid_tipocuenta int not null, 
pkid_encabezadocuenta int not null,
nombre_cuenta varchar(50) not null,
cargo_cuenta float default 0,
abono_cuenta float default 0,
saldo_cuenta float default 0,
status_cuenta TINYINT NOT NULL, 
pkid_cuentaa int not null, 
primary key (
pkid_cuenta,  
pkid_tipocuenta,
pkid_cuentaa,
pkid_encabezadocuenta) ,

FOREIGN KEY (`pkid_tipocuenta`) REFERENCES `tbl_tipocuenta` (`pkid_tipocuenta`),
FOREIGN KEY (`pkid_cuentaa`) REFERENCES `tbl_cuentas` (`pkid_cuenta`),
FOREIGN KEY (`pkid_encabezadocuenta`) REFERENCES `tbl_encabezadoclasecuenta` (`pkid_encabezadocuenta`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

/*TABLAS POLIZA - DIANA VICTORES */
create table tbl_tipoPoliza(
	Pk_TipoPoliza int not null, 
	descripcion varchar(65),
	status_tipoPoliza TINYINT NOT NULL, 
	primary key (Pk_TipoPoliza)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

/* DIANA VICTORES 9959-19-1471*/
create table tbl_polizaEncabezado(
	Pk_PolizaEncabezado int not null, 
	fechaPoliza date,
	Pk_TipoPoliza int not null, 
	primary key(Pk_PolizaEncabezado,
    Pk_TipoPoliza),
    foreign key (Pk_TipoPoliza) references tbl_tipoPoliza (Pk_TipoPoliza)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

/* DIANA VICTORES 9959-19-1471*/
create table tbl_tipoOperacion(
	Pk_TipoOperacion int not null,
	nombre varchar(65), 
	status_tipoOperacion TINYINT NOT NULL, 
	primary key (Pk_TipoOperacion)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

/*DIANA VICTORES 9959-19-1471*/
create table tbl_polizaDetalle(
	Pk_PolizaEncabezado int not null,
    Pk_TipoPoliza int not null,
    pkid_cuenta int not null ,
    fechaPoliza date,
	tbl_cuentas int not null,
	saldo float,
	Pk_TipoOperacion int not null, -- debe/haber
	concepto varchar(65),
	
	primary key(Pk_PolizaEncabezado, 
    Pk_TipoPoliza, 
    pkid_cuenta),
    
    foreign key (Pk_PolizaEncabezado) references tbl_polizaEncabezado (Pk_PolizaEncabezado),
	foreign key (pkid_cuenta) references tbl_cuentas (pkid_cuenta),
	foreign key (Pk_TipoOperacion) references tbl_tipoOperacion (Pk_TipoOperacion)
	
) ENGINE = InnoDB DEFAULT CHARSET=latin1;