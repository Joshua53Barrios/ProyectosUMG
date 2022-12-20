use colchoneria;

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



