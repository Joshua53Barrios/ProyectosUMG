use bd_logistica;
alter table tbl_producto add column medida_producto float(100,2);
alter table tbl_producto modify medida_producto varchar(100);
alter table tbl_envio modify fecha_entrega_envio varchar(100);
alter table tbl_envio add primary key (pk_envio);