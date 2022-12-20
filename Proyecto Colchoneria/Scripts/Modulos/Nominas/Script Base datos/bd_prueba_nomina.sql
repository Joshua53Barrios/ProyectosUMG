create database bd_nominas;
use bd_nominas;

drop database bd_nominas;


create table tbl_empleados(
	pk_clave INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    no_identificacion VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(50),
    fecha_de_alta DATE NOT NULL,
    fecha_de_baja DATE,
    causa_de_baja VARCHAR(50),
    estado_modulo tinyint DEFAULT 0,
    fk_id_departamento INT NOT NULL,
    fk_id_puestos INT NOT NULL,
	FOREIGN KEY (`fk_id_departamento`) REFERENCES `tbl_departamentos` (`pk_id_departamento`),
    FOREIGN KEY (`fk_id_puestos`) REFERENCES `tbl_puestos_trabajo` (`pk_id_puestos`),
	primary key (`pk_clave`)
);

create table tbl_puestos_trabajo(
	pk_id_puestos int auto_increment not null,
    nombre_puesto varchar(50) not null,
    descripcion_puesto varchar(50) not null,
    primary key (pk_id_puestos)
);

create table tbl_departamentos(
	pk_id_departamento int auto_increment not null,
    nombre_departamento varchar(50) not null,
    descripcion varchar(50) not null,
    primary key (pk_id_departamento)
);

create table tbl_info_empleados(
	pk_id_info int auto_increment not null,
    ubicacion_pais varchar(50),
    ubicacion_calle varchar(50),
    ubicacion_colonia varchar(50),
    ubicacion_zona varchar(50),
	correo varchar(50),
    codigo_postal varchar(50),
    telefono varchar(50),
    estudios varchar(50),
    profesion varchar(50),
    estod_civil varchar(50),
    tipo_sangre varchar(50),
    fk_clave_empleado int not null,
    foreign key(fk_clave_empleado) references tbl_empleados (pk_clave),
    primary key (pk_id_info)
);

create table tbl_tipo_contrato(
	pk_id_tipo_contrato int auto_increment not null,
    nombre_tipo_contrato varchar(50) not null,
    descripcion varchar(50) not null,
    estado_modulo tinyint default 0,
    primary key(pk_id_tipo_contrato)
);

create table tbl_contrato(
	pk_id_contrato int auto_increment not null,
    fecha_creacion date not null,
    salario decimal(10,2) not null,
    estado_modulo tinyint default 0,
    fk_clave_empleado int not null,
    foreign key (fk_clave_empleado) references tbl_empleados (pk_clave),
	primary key (pk_id_contrato)
);

create table tbl_pagos(
	pk_id_pagos int auto_increment not null,
    hrs_extras decimal(10,2),
    bonificaciones decimal(10,2),
    igss decimal(10,2),
    vacaciones decimal(10,2),
    sueldo_total decimal(10,2),
    fk_clave_empleado int not null,
    foreign key (fk_clave_empleado) references tbl_empleados (pk_clave),
    primary key (pk_id_pagos)
);


