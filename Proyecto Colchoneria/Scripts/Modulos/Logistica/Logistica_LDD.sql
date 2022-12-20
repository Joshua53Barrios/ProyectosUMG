create database bd_logistica;
drop database bd_logistica;
use bd_logistica;

/*Yordi Daniel Hernandez Perez 0901-19-3281*/
create table tbl_marca (
pk_codigo_marca int not null primary key auto_increment,
nombre_marca varchar(100),
estado_marca bool
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_linea (
pk_codigo_linea int not null primary key auto_increment,
nombre_linea varchar(100),
estado_linea bool
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_bodega (
pk_codigo_bodega int not null primary key auto_increment,
nombre_bodega varchar(100),
estado_bodega varchar(1)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_producto(
pk_codigo_producto int not null primary key auto_increment,
codigo_referencia varchar(100),
descripcion_producto varchar(100),
fk_linea_inventario int not null, 
tipo_producto varchar(50),
fk_marca int not null, 
existencia_producto float (100,2),
costo_compra int,
precio_venta int,
estado_producto varchar(1),
ultima_entrada_producto varchar(100),
ultima_Salida_producto varchar(100),
foreign key (fk_marca) references tbl_marca (pk_codigo_marca),
foreign key (fk_linea_inventario) references tbl_linea (pk_codigo_linea)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_traslados(
pk_codigo_traslado int not null primary key,
fk_bodega_entrada int not null,
fk_bodega_salida int not null,
fk_codigo_producto int not null,
cantidad_producto int,
foreign key (fk_bodega_entrada) references tbl_bodega (pk_codigo_bodega),
foreign key (fk_bodega_salida) references tbl_bodega (pk_codigo_bodega),
foreign key (fk_codigo_producto) references tbl_producto (pk_codigo_producto)
);

create table tbl_exisbodega (
fk_codigo_bodega int not null,
fk_codigo_producto int not null,
existencia_producto float (100,2),
foreign key (fk_codigo_bodega) references tbl_bodega (pk_codigo_bodega),
foreign key (fk_codigo_producto) references tbl_producto (pk_codigo_producto),
primary key (fk_codigo_bodega, fk_codigo_producto)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_movimientos(
pk_movimientos int not null primary key auto_increment,
fecha_movimientos date,
detalle_movimientos varchar(100),
fk_producto_movimiento int not null,
cantidad_producto_movimiento int not null,
foreign key (fk_producto) references tbl_producto(pk_codigo_producto)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_lote(
pk_codigo_lote int not null primary key auto_increment, -- uno a varios --
fk_codigo_producto int not null,
cantidad_producto_lote int not null,
foreign key (fk_codigo_producto) references tbl_producto (pk_codigo_producto)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_tipotransporte (
pk_codigo_tipot int not null primary key auto_increment,
descripscion_tipo_transporte varchar(100),
estado_tipo_transporte bool
);

create table tbl_transporte(
pk_codigo_transporte int not null primary key auto_increment,
marca_transporte varchar(100),
fk_tipo int not null,
peso_transporte int not null,
estado_transporte bool,
foreign key (fk_tipo) references tbl_tipotransporte (pk_codigo_tipot)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_ruta(
pk_codigo_ruta int not null primary key auto_increment,
zona varchar(100),
ciudad varchar(100),
descripcion_ruta varchar(100)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_trabajador (
pk_trabajador int not null primary key auto_increment,
nombre varchar(100)
);

create table tbl_transportista(
pk_transportista int not null,
fk_trabajador int not null,
nombre_transportista varchar(100),
estado_transportista bool,
foreign key (fk_trabajador) references tbl_trabajador (pk_trabajador),
primary key (pk_transportista)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_envio(
pk_envio int not null,
fk_transporte int not null,
fk_ruta int not null,
fk_transportista int not null,
tiempo_estimado varchar(100),
fecha_entrega datetime,
fk_lote int not null,
fk_bodega int not null,
cliente_envio varchar(100),
observaciones_envio varchar(100),
destino_envio varchar(100),
foreign key (fk_transporte) references tbl_transporte (pk_codigo_transporte),
foreign key (fk_ruta) references tbl_ruta (pk_codigo_ruta),
foreign key (fk_transportista) references tbl_transportista (fk_transportista),
foreign key (fk_lote) references tbl_lote (pk_codigo_lote),
foreign key (fk_bodega) references tbl_bodega (pk_codigo_bodega)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_ventap (
pk_venta int not null primary key auto_increment,
serie_fact varchar(100),
num_fact int not null,
cliente varchar(100),
fk_producto int not null,
cantidad int,
foreign key (fk_producto) references tbl_producto (pk_codigo_producto)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

create table tbl_comprap (
pk_compra int not null primary key auto_increment,
serie_fact varchar(100),
num_fact int not null,
proveedor varchar(100),
fk_producto int not null,
cantidad int,
foreign key (fk_producto) references tbl_producto (pk_codigo_producto)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- agregar (listo)multi bodegas, (triggers falta)/(tabla listo)movimientos(salidas, entradas), (listo)lineas, marcas
