-- Store procedure produccion (ordenes agregar o editar)
DROP procedure IF EXISTS `pa_produccion_ordenes_agregareditar`;
DELIMITER $$
USE `colchoneria`$$
CREATE PROCEDURE `pa_produccion_ordenes_agregareditar` (
_pk_idordenes_tbl_ordenes int,
_fk_idrecetas_tbl_recetas int,
_prioridad_tbl_ordenes varchar(45),
_producto_fabricar_tbl_ordenes varchar(45),
_cantidad_tbl_ordenes int,
_fechaini_tbl_ordenes VARCHAR(25),
_fechaentrega_tbl_ordenes VARCHAR(25),
_fechacreacion_orden_tbl_ordenes varchar(45),
_detalle_tbl_ordenes varchar(300)
)
BEGIN
if _pk_idordenes_tbl_ordenes = 0 then
	insert into tbl_ordenes (fk_idrecetas_tbl_recetas,prioridad_tbl_ordenes,producto_fabricar_tbl_ordenes,cantidad_tbl_ordenes,fechaini_tbl_ordenes,fechaentrega_tbl_ordenes,fechacreacion_orden_tbl_ordenes,detalle_tbl_ordenes)
    values (_fk_idrecetas_tbl_recetas,_prioridad_tbl_ordenes,_producto_fabricar_tbl_ordenes,_cantidad_tbl_ordenes,_fechaini_tbl_ordenes,_fechaentrega_tbl_ordenes,_fechacreacion_orden_tbl_ordenes,_detalle_tbl_ordenes);
else
	update tbl_ordenes
    set
		fk_idrecetas_tbl_recetas = _fk_idrecetas_tbl_recetas,
        prioridad_tbl_ordenes = _prioridad_tbl_ordenes,
        producto_fabricar_tbl_ordenes = _producto_fabricar_tbl_ordenes,
        cantidad_tbl_ordenes = _cantidad_tbl_ordenes,
        fechaini_tbl_ordenes = _fechaini_tbl_ordenes,
        fechaentrega_tbl_ordenes = _fechaentrega_tbl_ordenes,
        fechacreacion_orden_tbl_ordenes =_fechacreacion_orden_tbl_ordenes,
        detalle_tbl_ordenes = _detalle_tbl_ordenes
        where pk_idordenes_tbl_ordenes = _pk_idordenes_tbl_ordenes;
end if;

END$$

DELIMITER ;

-- Store procedure produccion (ordenes ver)
DROP procedure IF EXISTS `pa_produccion_ordenes_ver`;

DELIMITER $$
USE `colchoneria`$$
CREATE PROCEDURE `pa_produccion_ordenes_ver` ()
BEGIN
	select *
    from tbl_ordenes;
END$$

DELIMITER ;