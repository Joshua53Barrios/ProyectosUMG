/*BASE DE DATOS COLCHONERÍA*/
CREATE DATABASE IF NOT EXISTS `colchoneria`;
USE `colchoneria`;
/********************SEGURIDAD********************/
DROP TABLE IF EXISTS `tbl_modulos`;
CREATE TABLE IF NOT EXISTS `tbl_modulos` (
	pk_id_modulos INT NOT NULL,
    nombre_modulo VARCHAR(50) NOT NULL,
    descripcion_modulo VARCHAR(150) NOT NULL,
    estado_modulo TINYINT DEFAULT 0,
    primary key (`pk_id_modulos`)
);

DROP TABLE IF EXISTS `tbl_aplicaciones`;
CREATE TABLE IF NOT EXISTS `tbl_aplicaciones` (
	pk_id_aplicacion INT NOT NULL,
    nombre_aplicacion VARCHAR(50) NOT NULL,
    descripcion_aplicacion VARCHAR(150) NOT NULL,
    estado_aplicacion TINYINT DEFAULT 0,
    primary key (`pk_id_aplicacion`)
);

DROP TABLE IF EXISTS `tbl_AsignacionModuloAplicacion`;
CREATE TABLE IF NOT EXISTS `tbl_AsignacionModuloAplicacion` (
  fk_id_modulos INT NOT NULL,
  fk_id_aplicacion INT NOT NULL, 
  PRIMARY KEY (`fk_id_modulos`,`fk_id_aplicacion` ),
  FOREIGN KEY (`fk_id_modulos`) REFERENCES `tbl_modulos` (`pk_id_modulos`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  pk_id_usuario INT AUTO_INCREMENT NOT NULL,
  nombre_usuario VARCHAR(50) NOT NULL,
  apellido_usuario VARCHAR(50) NOT NULL,
  username_usuario VARCHAR(20) NOT NULL,
  password_usuario VARCHAR(100) NOT NULL,
  email_usuario VARCHAR(50) NOT NULL,
  ultima_conexion_usuario DATETIME NULL DEFAULT NULL,
  estado_usuario TINYINT DEFAULT 0 NOT NULL,
  pregunta varchar(50) not null,
  respuesta varchar(50) not null,
  PRIMARY KEY (`pk_id_usuario`)
);

DROP TABLE IF EXISTS `tbl_perfiles`;
CREATE TABLE IF NOT EXISTS `tbl_perfiles` (
	pk_id_perfil INT AUTO_INCREMENT NOT NULL,
    nombre_perfil VARCHAR(50) NOT NULL,
    descripcion_perfil VARCHAR(150) NOT NULL,
    estado_perfil TINYINT DEFAULT 0,
    primary key (pk_id_perfil)
);

DROP TABLE IF EXISTS `tbl_permisosAplicacionesUsuario`;
CREATE TABLE IF NOT EXISTS `tbl_permisosAplicacionesUsuario` (
  fk_id_aplicacion INT NOT NULL, 
  fk_id_usuario INT NOT NULL, 
  guardar_permiso BOOLEAN DEFAULT FALSE,
  modificar_permiso BOOLEAN DEFAULT FALSE,
  eliminar_permiso BOOLEAN DEFAULT FALSE,
  buscar_permiso BOOLEAN DEFAULT FALSE,
  imprimir_permiso BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (`fk_id_aplicacion`,`fk_id_usuario`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_permisosAplicacionPerfil`;
CREATE TABLE IF NOT EXISTS `tbl_permisosAplicacionPerfil` (
  fk_id_perfil INT NOT NULL, 
  fk_id_aplicacion INT NOT NULL, 
  guardar_permiso BOOLEAN DEFAULT FALSE,
  modificar_permiso BOOLEAN DEFAULT FALSE,
  eliminar_permiso BOOLEAN DEFAULT FALSE,
  buscar_permiso BOOLEAN DEFAULT FALSE,
  imprimir_permiso BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (`fk_id_perfil`,`fk_id_aplicacion`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_asignacionesPerfilsUsuario`;
CREATE TABLE IF NOT EXISTS `tbl_asignacionesPerfilsUsuario` (
  fk_id_usuario INT NOT NULL, 
  fk_id_perfil INT NOT NULL,
  PRIMARY KEY (`fk_id_usuario`,`fk_id_perfil` ),
  FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_bitacoraDeEventos`;
CREATE TABLE IF NOT EXISTS `tbl_bitacoraDeEventos` (
  pk_id_bitacora INT AUTO_INCREMENT NOT NULL,
  fk_id_usuario INT NOT NULL,
  fk_id_aplicacion INT NOT NULL,
  fecha_bitacora DATE NOT NULL,
  hora_bitacora TIME NOT NULL,
  host_bitacora VARCHAR(45) NOT NULL,
  ip_bitacora VARCHAR(100) NOT NULL,
  accion_bitacora VARCHAR(50) NOT NULL,
  PRIMARY KEY (`pk_id_bitacora`),
  FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/********************CONSULTAS INTELIGENTES********************/
DROP TABLE IF EXISTS tbl_consultainteligente;
CREATE TABLE IF NOT EXISTS tbl_consultainteligente (
	nombre_consulta varchar(50) not null,
    tabla_consulta varchar(50) not null,
    campos_consultas varchar(50) not null,
    alias_consultas varchar(50) not null,
    cadena_consultas varchar(80) not null,
    PkId INT NOT NULL,
    PRIMARY KEY (`PkId`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS tbl_consultainteligente1; 
CREATE TABLE IF NOT EXISTS tbl_consultainteligente1 (
 operador_consulta varchar(50) not null,
    campos_consulta varchar(50) not null,
    valor_consultas varchar(50) not null,
    PkId INT NOT NULL,   
    metodo varchar(50) not null,
    PRIMARY KEY (`PkId`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS tbl_consultainteligente2;
CREATE TABLE IF NOT EXISTS tbl_consultainteligente2 (
    PkId INT NOT NULL,
    ordenar_consulta varchar(50) not null,
    campo_consulta varchar(50) not null,    
    metodo varchar(50) not null,
    PRIMARY KEY (`PkId`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/********************MODULOS*******************/
/********************LOGISTICA********************/
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

/********************COMPRAS********************/
/*George Mayén 0901-19-11383*/
create table tblClientes(
PkId_Clientes int not null,
Dpi_Clientes varchar(20),
Nit_Clientes varchar(20),
Nombre_Clientes varchar(20),
Domicilio_Clientes varchar(50),
Telefono_Cliente varchar(15),
Correo_Cliente varchar(50),
status_Cliente tinyint,
primary key(PkId_Clientes)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*George Mayén 0901-19-11383*/
create table tblProveedores(
PkId_Proveedores int not null,
Nombre_Proveedores varchar(30) not null,
Nit_Proveedores varchar(20) not null,
Telefono_Proveedores varchar(12) not null,
Domicilio_Proveedores varchar(30) not null,
Correo_Proveedores varchar(50),
RubroGiro_Proveedores varchar(20),
status_Proveedores tinyint,
primary key(PkId_Proveedores)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `tbl_trabajador` (
	pk_id_trabajador INT AUTO_INCREMENT NOT NULL,
    fechaAlta_departamento DATE NOT NULL,
    nombre_trabajador VARCHAR(100) NOT NULL,
    email_trabajador VARCHAR(20) NOT NULL,
    direccion_trabajador VARCHAR(50) NOT NULL,
    telefono_trabajador INT(8) NOT NULL,
    estado_trabajador TINYINT DEFAULT 0,
    primary key (`pk_id_trabajador`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `tbl_puestosdetrabajo` (
	pk_id_puesto INT AUTO_INCREMENT NOT NULL,
    nombre_puesto VARCHAR(50) NOT NULL,
    estado_puesto  TINYINT DEFAULT 0,
    primary key (`pk_id_puesto`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/*-----Jason Ortega 0901-19-22658--------*//*cambios---------------------------------------------------------------------------*/
create table tblAsociacion(
PkId_Asociacion varchar(25) not null,
fk_id_trabajador int not null,
FkId_Clientes int not null,
primary key(PkId_Asociacion),
foreign key(fk_id_trabajador) references tbl_trabajador(pk_id_trabajador),
foreign key(FkId_Clientes) references tblClientes(PkId_Clientes)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

/*-----Jason Ortega 0901-19-22658--------*/
create table tblSerie(
PkId_Serie int not null,
primary key(PkId_Serie)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*-----Jason Ortega 0901-19-22658--------*/
create table tblCertificacionFacturacion(
PkId_CertificacionFacturacion int not null,
NoDocumento_CertificacionFacturacion varchar(500),
Serie_CertificacionFacturacion int,
primary key(PkId_CertificacionFacturacion)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*tablas de logistica*//*cambios-------------------------------------------------------------*/
create table tbl_marcacom (
pk_codigo_marca int not null primary key auto_increment,
nombre_marca varchar(100)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/*tablas de logistica*//*cambios-------------------------------------------------------------*/
create table tbl_lineaCom (
pk_codigo_linea int not null primary key auto_increment,
nombre_linea varchar(100)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/*-----Jason Ortega 0901-19-22658--------*//*cambios-----------------------------------------------------------------------*/
create table tbl_producto(
pk_codigo_producto int not null primary key auto_increment,
codigo_referencia varchar(100),
descripcion varchar(100),
fk_linea_inventario int not null, 
tipo varchar(50),
fk_marca int not null, 
existencia float (100,2),
costo_compra int,
precio_venta int,
estado_producto varchar(1),
ultima_entrada datetime,
ultima_Salida datetime,
medidas varchar(25),
foreign key (fk_marca) references tbl_marcacom (pk_codigo_marca),
foreign key (fk_linea_inventario) references tbl_lineaCom (pk_codigo_linea)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/*George Mayén 0901-19-11383*/
create table tblEncabezadoOrdenCompra(
PkId_EncabezadoOrdenCompra int not null,
FkId_Proveedores int not null,
FechaEntrega_EncabezadoOrdenCompra date,
FechaVencimiento_EncabezadoOrdenCompra date,
Estatus_EncabezadoOrdenCompra tinyint,
primary key(PkId_EncabezadoOrdenCompra),
foreign key (FkId_Proveedores) references tblProveedores(PkId_Proveedores)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*Cristian Jocol 0901-19-17747-----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
create table tblComprasEncabezado(
PkId_ComprasEncabezado int not null,
FkId_EncabezadoOrdenCompra int not null,
FkId_Proveedores int  not null,
FechaCompra_ComprasEncabezado date,
Total_ComprasEncabezado float not null,
primary key (PkId_ComprasEncabezado),
foreign key (FkId_Proveedores) references tblProveedores(PkId_Proveedores),
foreign key (FkId_EncabezadoOrdenCompra) references tblEncabezadoOrdenCompra(PkId_EncabezadoOrdenCompra)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*George Mayén 0901-19-11383*//*cambios--------------------------------------------------------------*/
create table tblEncabezadoPedido(
PkId_EncabezadoPedido int not null,
FkIdAsociacion varchar(25),
FechaVencimineto_EncabezadoPedido date,
FechaEmision_EncabezadoPedido date,
Total_EncabezadoPedido float,
Estatus_EncabezadoPedido tinyint,
primary key(PkId_EncabezadoPedido),
foreign key (FkIdAsociacion) references tblAsociacion(PkId_Asociacion)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*Cristian Jocol 0901-19-17747*//*cambios----------------------------------------------------*/
create table tblVentasEncabezado(
PkId_VentasEncabezado int not null,
FKId_Pedido int not null,
FkId_Asociacion varchar(25),
FechaVenta_VentasEncabezado date,
Total_VentasEncabezado int,
primary key (PkId_VentasEncabezado),
foreign key (FkId_Asociacion) references tblAsociacion(PkId_Asociacion),
foreign key (FKId_Pedido) references tblEncabezadoPedido(PkId_EncabezadoPedido)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Cristian Jocol 0901-19-17747*/
create table tblDetalleVenta(
PkId_DetalleVenta int not null,
FkId_Producto int not null,
FkId_EncabezadoPedido int not null,
PrecioProducto_DetalleVenta float not null,
Cantidad_DetalleVenta int, 
Costo_DetalleVenta float not null,
Total_DetalleVenta float,
primary key (PkId_DetalleVenta),
foreign key (PkId_DetalleVenta) references tblVentasEncabezado(PkId_VentasEncabezado),
foreign key (FkId_Producto) references tbl_Producto(pk_codigo_producto)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*-----Jason Ortega 0901-19-22658--------*/
create table tblComision(
PkId_Comision int not null,
fk_id_trabajador int not null,
PorcentajeComision float not null,
FkId_VentasEncabezado int not null,
primary key(PkId_Comision),
foreign key (fk_id_trabajador) references tbl_trabajador(pk_id_trabajador),
foreign key (FkId_VentasEncabezado) references tblVentasEncabezado(PkId_VentasEncabezado)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Cristian Jocol 0901-19-17747*/
create table tblFacturaClientes(
PkId_FacturaClientes int not null, 
FkId_VentasEncabezado int not null,
FkId_CertificacionFacturacion int not null,
Serie_FacturaClientes int not null,
NoDocumento_FacturaClientes varchar(500),
Nit_FacturaClientes varchar(20),
FechaEmision_FacturaClientes date not null,
Total_FacturaClientes float,
primary key (PkId_FacturaClientes),
foreign key (FkId_VentasEncabezado) references tblVentasEncabezado(PkId_VentasEncabezado),
foreign key (FkId_CertificacionFacturacion) references tblCertificacionFacturacion(PkId_CertificacionFacturacion) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Cristian Jocol 0901-19-17747*//*cambios---------------------------------------------------------------------*/
create table tblDetalleFacturaClientes(
PkId_FacturaClientes int  not null,
FkId_Producto int,
CantidadProducto_DetalleFacturaClientes int,
PrecioProducto_DetalleFacturaClientes float not null,
Costo_DetalleFacturaClientes float not null,
IvaPorCobrar_DetalleFacturaCliente float,
Total_DetalleFacturaClientes float,
foreign key (PkId_FacturaClientes) references tblFacturaClientes(PkId_FacturaClientes),
foreign key (FkId_Producto) references tbl_Producto(pk_codigo_producto)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*-----Jason Ortega 0901-19-22658--------*/
create table tblCajaClientes(
PkId_CajaClientes int not null,
FKId_VentasEncabezado int not null,
abono_CajaClientes float not null,
SaldoAnterior_CajaClientes float not null,
SaldoActualizado_CajaClientes float not null,
FkId_FacturaClientes int not null,
primary key(PkId_CajaClientes),
foreign key(FKId_VentasEncabezado) references tblVentasEncabezado(PKId_VentasEncabezado),
foreign key(FkId_FacturaClientes) references tblFacturaClientes(PkId_FacturaClientes)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*Cristian Jocol 0901-19-17747-----------------------------------------------------------------------------------------------------------*/
create table tblReciboClientes(
PkId_ReciboClientes int auto_increment not null,
FkId_CajaClientes int not null,
Nit_ReciboClientes varchar(20) not null,
fechaEmision_ReciboClientes date not null,
primary key (PkId_ReciboClientes),
foreign key (FkId_CajaClientes) references tblCajaClientes(PkId_CajaClientes)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*George Mayén 0901-19-11383*//*cambios--------------------------------------------------------------------*/
create table tblDetallePedido(
PkId_EncabezadoPedido int not null,
FkId_Producto int not null,
CantidadDetalle_DetallePedido int,
PrecioDetalle_DetallePedido float,
CostoDetalle_DetallePedido float,
TotalDetalle_DetallePedido float,
linea int,
foreign key (PkId_EncabezadoPedido) references tblEncabezadoPedido(PkId_EncabezadoPedido),
foreign key (FkId_Producto) references tbl_Producto(pk_codigo_producto) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*George Mayén 0901-19-11383
create table tblMovimientoClientes(
PkId_Clientes int not null,
FkId_PagoClientes int not null,
Importe_MovimientoClientes float,
Abonos_MovimientoClientes float,
Saldo_MovimientoClientes float,
foreign key (PkId_Clientes) references tblClientes(PkId_Clientes),
foreign key (FkId_PagoClientes) references tblPagoClientes(PkId_PagoClientes)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;*/









/*Cristian Jocol 0901-19-17747*/
create table tblDetalleCompra(
PkId_ComprasEncabezado int  not null,
FkId_Producto int not null,
FkId_EncabezadoOrdenCompra int not null,
Precio_DetalleCompra float,
Cantidad_DetalleCompra int not null,
Costo_DetalleCompra float,
Total_DetalleCompra float,
foreign key (PkId_ComprasEncabezado) references tblComprasEncabezado(PkId_ComprasEncabezado),
foreign key (FkId_Producto) references tbl_Producto(pk_codigo_producto)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Cristian Jocol 0901-19-17747
create table tblFacturaProveedores(
PkId_FacturaProveedores int  not null,
FkId_ComprasEncabezado int,
Nit_FacturaProveedores varchar(20) not null,
fechaEmision_FacturaProveedor date,
/*FkId_Asociacion varchar(20),
total_FacturaProveedor float not null,
primary key (PkId_FacturaProveedores),
foreign key (FkId_ComprasEncabezado) references tblComprasEncabezado(PkId_ComprasEncabezado)
/*foreign key (FkId_Asociacion) references tblAsociacion(PkId_Asociacion)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Cristian Jocol 0901-19-17747
create table tblDetalleFacturaProveedores(
PkId_FacturaProveedores int  not null,
FkId_Producto int not null,
Cantidad_DetalleFacturaProveedores int not null,
IvaPorPagar_DetalleFacturaProveedores int,
Total_DetalleFacturaProveedores float,
foreign key (FkId_Producto) references tbl_Producto(pk_codigo_producto),
foreign key (PkId_FacturaProveedores) references tblFacturaProveedores(PkId_FacturaProveedores)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;*/

/*-----Jason Ortega 0901-19-22658--------*/
create table tblCajaProveedores(
PkId_CajaProveedores int not null,
FkId_ComprasEncabezado int not null,
Saldo_CajaProveedores float not null,/*
FkId_FacturaProveedores int not null,*/
primary key(PkId_CajaProveedores),
foreign key(FkId_ComprasEncabezado) references tblComprasEncabezado(PkId_ComprasEncabezado)/*
foreign key(FkId_FacturaProveedores) references tblFacturaProveedores(PkId_FacturaProveedores),*/
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*George Mayén 0901-19-11383*/
create table tblDetalleOrdenCompra(
PkId_EncabezadoOrdenCompra int not null,
FkId_Producto int not null,
Cantidad_DetalleOrdenCompra int,
Precio_DetalleOrdenCompra float,
Costo_DetalleOrdenCompra float,
Total_DetalleOrdenCompra float,
foreign key (PkId_EncabezadoOrdenCompra) references tblEncabezadoOrdenCompra(PkId_EncabezadoOrdenCompra),
foreign key (FkId_Producto) references tbl_Producto(pk_codigo_producto) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*George Mayén 0901-19-11383*//*cambios---------------------------------------------------------------------------------*/
create table tblCotizaciones(
PkId_Cotizaciones int not null,
FkId_Asociacion varchar(25) not null,
fk_codigo_producto int,
Descripcion_Cotizaciones varchar(50),
FechaEmision_Cotizaciones date,
FechaVencimiento_Cotizaciones date,
Cuotas_Cotizaciones float,
Total_Cotizaciones float,
primary key(PkId_Cotizaciones),
foreign key (FkId_Asociacion) references tblAsociacion(PkId_Asociacion),
foreign key (fk_codigo_producto ) references tbl_producto(pk_codigo_producto )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*George Mayén 0901-19-11383*/
create table tblDetalleCotizaciones(
PkId_Cotizaciones int not null,
FkId_Producto int not null,
Cantidad_DetalleCotizaciones float,
Total_DetalleCotizaciones float,
foreign key (PkId_Cotizaciones) references tblCotizaciones(PkId_Cotizaciones),
foreign key (FkId_Producto) references tbl_Producto(pk_codigo_producto)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*-----Luis Torres 0901-19-15851------22/10/22*/
create table tblEncabezadoReservacionPedido(
PkId_Reserva varchar(20),
FkId_pedido int,
estatus_Reserva tinyint,
primary key(PkId_Reserva),
foreign key (FkId_pedido) references tblEncabezadoPedido(PkId_EncabezadoPedido)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*-----Luis Torres 0901-19-15851------22/10/22*/
create table tblDetalleReservacionPedido(
Pk_Reserva varchar(20),
Id_producto int,
CantidadDescontar_DetalleReservacionPedido int,
ExistenciaAnterior_DetalleReservacionPedido int,
ExistenciaNueva_DetalleReservacionPedido int,
linea_DetalleReservacionPedido int,
foreign key (Pk_Reserva) references tblEncabezadoReservacionPedido(PkId_Reserva)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
/********************PRODUCCION********************/
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
/********************NOMINAS********************/
CREATE TABLE IF NOT EXISTS `tbl_departamentos` (
	pk_id_departamento  INT AUTO_INCREMENT NOT NULL,
    nombre_departamento VARCHAR(40) NOT NULL,
    descripcion_departamento  VARCHAR(75) NOT NULL,
    estado_departamento TINYINT DEFAULT 0,
    primary key (`pk_id_departamento`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_puestosdetrabajo`; -- LEONEL DOMINGUEZ
CREATE TABLE IF NOT EXISTS `tbl_puestosdetrabajo` (
	pk_id_puesto INT AUTO_INCREMENT NOT NULL,
    nombre_puesto VARCHAR(50) NOT NULL,
    estado_puesto  TINYINT DEFAULT 0,
    primary key (`pk_id_puesto`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_contrato`;
CREATE TABLE IF NOT EXISTS `tbl_contrato` (
	pk_id_contrato INT AUTO_INCREMENT NOT NULL,
    salario_contrato  FLOAT NOT NULL,
    tipoJornada_contrato TINYINT NOT NULL,
    cantdidadHorasMensuales_contrato INT NOT NULL,
    tipoPago_contrato TINYINT NOT NULL,
    estado_contrato TINYINT DEFAULT 0,
    primary key (`pk_id_contrato`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_percepciones`;
CREATE TABLE IF NOT EXISTS `tbl_percepciones` (
	pk_id_prestdeduc INT AUTO_INCREMENT NOT NULL,
    nombre_prestdeduc VARCHAR(40) NOT NULL,
    tipo_prestdeduc  TINYINT NOT NULL,
    porcentaje_prestdeduc FLOAT DEFAULT 0,
    valorFijo_prestdeduc FLOAT DEFAULT 0,
    estado_prestdeduc TINYINT DEFAULT 0,
    primary key (`pk_id_prestdeduc`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_trabajador`;-- LUIS LEE
CREATE TABLE IF NOT EXISTS `tbl_trabajador` (
	pk_id_trabajador INT AUTO_INCREMENT NOT NULL,
    fechaAlta_departamento DATE NOT NULL,
    nombre_trabajador VARCHAR(100) NOT NULL,
    email_trabajador VARCHAR(20) NOT NULL,
    direccion_trabajador VARCHAR(50) NOT NULL,
    telefono_trabajador INT(8) NOT NULL,
    estado_trabajador TINYINT DEFAULT 0,
    primary key (`pk_id_trabajador`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_horasextras`;
CREATE TABLE IF NOT EXISTS `tbl_horasextras` (
	fk_id_trabajador  INT NOT NULL,
    fecha_horasextras DATE NOT NULL,
    cantidadHorasr_horasextras FLOAT NOT NULL,
    primary key (`fk_id_trabajador`,`fecha_horasextras`),
    FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_controlfaltas`;
CREATE TABLE IF NOT EXISTS `tbl_controlfaltas` (
	pk_id_faltas INT AUTO_INCREMENT NOT NULL,
    fk_clave_empleado INT NOT NULL, 
    fecha_falta DATE NOT NULL,
    mes_falta INT NOT NULL,
    justificacion_falta VARCHAR(100),
    primary key (`pk_id_faltas`),
    FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_asignacion_puestodepartamento`;
CREATE TABLE IF NOT EXISTS `tbl_asignacion_puestodepartamento` (
	fk_id_puesto INT NOT NULL,
	fk_id_departamento  INT NOT NULL,
    primary key (`fk_id_puesto`, `fk_id_departamento`),
	FOREIGN KEY (`fk_id_puesto`) REFERENCES `tbl_puestosdetrabajo` (`pk_id_puesto`),
    FOREIGN KEY (`fk_id_departamento`) REFERENCES `tbl_departamentos` (`pk_id_departamento`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_asignacion_puestotrabajador`;
CREATE TABLE IF NOT EXISTS `tbl_asignacion_puestotrabajador` (
	fk_id_puesto INT NOT NULL,
	fk_id_trabajador  INT NOT NULL,
    primary key (`fk_id_puesto`, `fk_id_trabajador`),
	FOREIGN KEY (`fk_id_puesto`) REFERENCES `tbl_puestosdetrabajo` (`pk_id_puesto`),
    FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_asignacion_contratopercepciones`;
CREATE TABLE IF NOT EXISTS `tbl_asignacion_contratopercepciones` (
	fk_id_contrato INT NOT NULL,
	fk_id_prestdeduc  INT NOT NULL,
    primary key (`fk_id_contrato`, `fk_id_prestdeduc`),
	FOREIGN KEY (`fk_id_contrato`) REFERENCES `tbl_contrato` (`pk_id_contrato`),
    FOREIGN KEY (`fk_id_prestdeduc`) REFERENCES `tbl_percepciones` (`pk_id_prestdeduc`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_asignacion_contratotrabajador`;
CREATE TABLE IF NOT EXISTS `tbl_asignacion_contratotrabajador` (
	fk_id_contrato INT NOT NULL,
	fk_id_trabajador  INT NOT NULL,
    primary key (`fk_id_contrato`, `fk_id_trabajador`),
	FOREIGN KEY (`fk_id_contrato`) REFERENCES `tbl_contrato` (`pk_id_contrato`),
    FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_prestacionesindividuales`;
CREATE TABLE IF NOT EXISTS `tbl_prestacionesindividuales` (
	pk_id_prestdeducext INT AUTO_INCREMENT NOT NULL,
	fk_id_prestdeduc INT NOT NULL,
	fk_id_trabajador  INT NOT NULL,
    mes_prestdeducext INT NOT NULL,
    cantidad_prestdeducext FLOAT DEFAULT 0,
    primary key (`pk_id_prestdeducext`),
    FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`),
    FOREIGN KEY (`fk_id_prestdeduc`) REFERENCES `tbl_percepciones` (`pk_id_prestdeduc`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_encabezadoNominas`;
CREATE TABLE IF NOT EXISTS `tbl_encabezadoNominas` (
	pk_id_nomina INT NOT NULL,
    fechaPago_nomina DATE NOT NULL,
    tipoPago_nomina TINYINT NOT NULL,
    mesPagado_nomina VARCHAR(50) NOT NULL,
    anioPagado_nomina VARCHAR(50) NOT NULL,
    total_nomina FLOAT DEFAULT 0,
    primary key (`pk_id_nomina`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_detalleNominas`;
CREATE TABLE IF NOT EXISTS `tbl_detalleNominas` (
	pk_id_nomina INT NOT NULL,
    fk_id_trabajador INT NOT NULL,
    salario_nomina FLOAT NOT NULL,
    totalHorasExtras_nomina FLOAT NOT NULL,
    totalPercepciones_nomina FLOAT DEFAULT 0,
    totalDeducciones_nomina FLOAT DEFAULT 0,
    liquidez_nomina FLOAT NOT NULL,
    primary key (`pk_id_nomina`,`fk_id_trabajador`),
    FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;
/********************BANCOS********************/
USE `colchoneria`;
-- ----0901-19-6128 Velvet Samayoa -------  
CREATE TABLE IF NOT EXISTS `Tbl_bancos` (
  `Pk_idbancos` INT NOT NULL,
  `nombre_banco` VARCHAR(25) NULL,
  `direccion_banco` VARCHAR(45) NULL,
  `contacto_banco` VARCHAR(45) NULL,
  `Saldo_banco` FLOAT NOT NULL,
  `estado_banco` TINYINT DEFAULT 0,
  PRIMARY KEY (`Pk_idbancos`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 -- ---- 0901-19-3510 Joshua Barrios --------
CREATE TABLE IF NOT EXISTS `Tbl_ConceptosBancario` (
  `Pk_idConcepto` INT NOT NULL,
  `Nombre_cbancario` VARCHAR(50) NOT NULL,
  `PorcentajeIva_cbancario` float null,
  `Clasificacion_cbancario` VARCHAR(5) NOT NULL,
  `Estado_cbancario` TINYINT DEFAULT 0,
  PRIMARY KEY (`Pk_idConcepto`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----0901-19-6128 Velvet Samayoa -------  
CREATE TABLE IF NOT EXISTS `Tbl_Reg_tipoCambio` (
   `Pk_regTipoCambio` INT NOT NULL,
  `fecha_RtCambio` DATE NOT NULL,
  `compra_RtCambio` FLOAT NULL,
  `venta_RtCambio` FLOAT NULL,
  `Moneda_RtCambio` VARCHAR(20) NULL,
  PRIMARY KEY (`Pk_regTipoCambio`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----0901-19-6128 Velvet Samayoa -------  
CREATE TABLE IF NOT EXISTS `Tbl_Reportes` (
  `Pk_idReportes` INT NOT NULL,
  `fechas_Reportes` DATE NULL,
  `concepto_Reportes` VARCHAR(45) NULL,
  `Nombre_Reportes` VARCHAR(45) NULL,
  `ubicacion_Reportes` VARCHAR(45) NULL,
  `Banco_Reportes` INT NULL,
  PRIMARY KEY (`Pk_idReportes`),
  FOREIGN KEY (`Banco_Reportes`) REFERENCES  `Tbl_bancos` (`Pk_idbancos`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----0901-19-6128 Velvet Samayoa -------      
CREATE TABLE IF NOT EXISTS `Tbl_CuentasBancos` (
  `Pk_idCuentas` INT NOT NULL,
  `Nombre_cta` VARCHAR(45) NOT NULL,
  `estado_cta` VARCHAR(15) NOT NULL,
  `Saldos_cta` FLOAT NOT NULL,
  PRIMARY KEY (`Pk_idCuentas`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----0901-19-6128 Velvet Samayoa -------  
CREATE TABLE IF NOT EXISTS `Tbl_tiposPagos` (
  `Pk_idTipoPagos` INT NOT NULL,
  `Concepto_Tipo` VARCHAR(25) NULL,
  PRIMARY KEY (`Pk_idTipoPagos`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 -- ---- 0901-19-3510 Joshua Barrios --------
CREATE TABLE IF NOT EXISTS `Tbl_Movimientos_bancos` (
  `Pk_idMovimientos` INT NOT NULL,
  `fk_tipo_pago` INT NULL,
  `fk_id_concepto` INT NOT NULL,
  `fecha_mov` DATE NULL,
  `fk_Cuenta_banco` INT NULL,
  `fk_Cuenta_rela` INT NULL,
  `fk_tipomoneda` INT NULL,
  `Monto_mov` FLOAT NULL,
  `iva_mov` FLOAT NULL,
  `fk_Banco_Mov` INT NULL,
PRIMARY KEY (`Pk_idMovimientos`),
FOREIGN KEY (`fk_tipo_pago`) REFERENCES `Tbl_tiposPagos` (`Pk_idTipoPagos`),
FOREIGN KEY (`fk_id_concepto`) REFERENCES `Tbl_ConceptosBancario` (`Pk_idConcepto`),
FOREIGN KEY (`fk_tipomoneda`) REFERENCES `Tbl_Reg_tipoCambio` (`Pk_regTipoCambio`),
FOREIGN KEY (`fk_Cuenta_banco`) REFERENCES `Tbl_bancos` (`Pk_idbancos`),
 FOREIGN KEY (`fk_Cuenta_rela`) REFERENCES `Tbl_CuentasBancos` (`Pk_idCuentas`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----0901-19-6128 Velvet Samayoa -------  
CREATE TABLE IF NOT EXISTS `Tbl_Ctrl_cheques` (
  `Pk_idControl_cheques` INT NOT NULL,
  `fk_id_cuentabancaria` INT NOT NULL,
  `fk_id_concepto` INT NOT NULL,
  `montoNum_cheques` FLOAT NOT NULL ,
  `fechaReg_cheques` DATE NULL,
  `fechaAplicacion_cheques` DATE NULL,
  `MontoLet_cheques` VARCHAR (100) NULL,
  `fk_Banco_cheques` INT NULL,
  PRIMARY KEY (`Pk_idControl_cheques`),
  FOREIGN KEY (`fk_id_cuentabancaria`) REFERENCES `Tbl_CuentasBancos` (`Pk_idCuentas`),
    FOREIGN KEY (`fk_Banco_cheques`) REFERENCES `Tbl_bancos` (`Pk_idbancos`),
    FOREIGN KEY (`fk_id_concepto`) REFERENCES `Tbl_ConceptosBancario` (`Pk_idConcepto`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
CREATE TABLE IF NOT EXISTS `Tbl_Conciliacion` (
  `Pk_idConciliacion` INT NOT NULL,
  `fecha_reg_cnl` DATE NULL,
  `descripcion_cnl` VARCHAR(45) NULL,
  `movimientos_cnl` INT NULL,
  PRIMARY KEY (`Pk_idConciliacion`),
    FOREIGN KEY (`movimientos_cnl`) REFERENCES `Tbl_Movimientos_bancos` (`Pk_idMovimientos`)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----0901-19-6128 Velvet Samayoa -------  
CREATE TABLE IF NOT EXISTS `Tbl_Disponibilidad` (
  `Pk_idDispo` INT NOT NULL,
  `fecha_dispo` DATE NULL,
  `Saldo_Dispo` FLOAT NULL,
  `Comentario_Dispo` VARCHAR(45) NULL,
  `cuentaDispo` INT NULL,
  PRIMARY KEY (`Pk_idDispo`),
FOREIGN KEY (`cuentaDispo`) REFERENCES `Tbl_CuentasBancos` (`Pk_idCuentas`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
/********************CONTABILIDAD********************/
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
-- vistas ------------------------------------------------------------------------
CREATE 
VIEW `colchoneria`.`vista_aplicacion_perfil` AS 
    SELECT 
        `b`.`fk_id_perfil` AS `ID`,
        `a`.`nombre_perfil` AS `Perfil`,
        `b`.`fk_id_aplicacion` AS `Aplicacion`,
        `b`.`guardar_permiso` AS `Insertar`,
        `b`.`modificar_permiso` AS `Modificar`,
        `b`.`eliminar_permiso` AS `Eliminar`,
        `b`.`buscar_permiso` AS `Buscar`,
        `b`.`imprimir_permiso` AS `Reporte`
    FROM
        (`colchoneria`.`tbl_permisosaplicacionperfil` `b`
        JOIN `colchoneria`.`tbl_perfiles` `a` ON ((`a`.`pk_id_perfil` = `b`.`fk_id_perfil`)));
        
CREATE 
VIEW `colchoneria`.`vista_aplicacionusuario` AS
    SELECT 
        `b`.`fk_id_aplicacion` AS `Aplicacion`,
        `b`.`fk_id_usuario` AS `ID`,
        `a`.`nombre_usuario` AS `Usuario`,
        `b`.`guardar_permiso` AS `Insertar`,
        `b`.`modificar_permiso` AS `Editar`,
        `b`.`eliminar_permiso` AS `Eliminar`,
        `b`.`buscar_permiso` AS `Buscar`,
        `b`.`imprimir_permiso` AS `Reporte`
    FROM
        (`colchoneria`.`tbl_permisosaplicacionesusuario` `b`
        JOIN `colchoneria`.`tbl_usuarios` `a` ON ((`a`.`pk_id_usuario` = `b`.`fk_id_usuario`)));
        
CREATE 
VIEW `colchoneria`.`vista_modulo_aplicacion` AS
    SELECT 
        `b`.`fk_id_modulos` AS `ID`,
        `a`.`nombre_modulo` AS `Modulo`,
        `b`.`fk_id_aplicacion` AS `Aplicacion`,
        `c`.`nombre_aplicacion` AS `Nombre`,
        `c`.`descripcion_aplicacion` AS `Descripcion`
    FROM
        ((`colchoneria`.`tbl_asignacionmoduloaplicacion` `b`
        JOIN `colchoneria`.`tbl_modulos` `a` ON ((`a`.`pk_id_modulos` = `b`.`fk_id_modulos`)))
        JOIN `colchoneria`.`tbl_aplicaciones` `c` ON ((`c`.`pk_id_aplicacion` = `b`.`fk_id_aplicacion`)));
        
CREATE 
VIEW `colchoneria`.`vista_perfil_usuario` AS
    SELECT 
        `b`.`fk_id_usuario` AS `ID`,
        `a`.`nombre_usuario` AS `Usuario`,
        `a`.`username_usuario` AS `nickName`,
        `b`.`fk_id_perfil` AS `perfil`,
        `c`.`nombre_perfil` AS `Nombre`
    FROM
        ((`colchoneria`.`tbl_asignacionesperfilsusuario` `b`
        JOIN `colchoneria`.`tbl_usuarios` `a` ON ((`a`.`pk_id_usuario` = `b`.`fk_id_usuario`)))
        JOIN `colchoneria`.`tbl_perfiles` `c` ON ((`c`.`pk_id_perfil` = `b`.`fk_id_perfil`)));




