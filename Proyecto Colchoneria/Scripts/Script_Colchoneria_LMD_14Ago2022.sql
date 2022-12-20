USE `colchoneria`;
insert into tbl_aplicaciones values (0, "x","y",1);
select * from tbl_aplicaciones;
-- -----MODULOS
INSERT INTO `tbl_modulos` VALUES 
('1000', 'Seguridad', 'Seguridad', 1),
('2000', 'Logistica', 'Logistica', 1),
('3000', 'Compras', 'Compras', 1),
('4000', 'Ventas', 'Ventas', 1),
('5000', 'Produccion', 'Produccion', 1),
('6000', 'Nominas', 'Nominas', 1),
('7000', 'Bancos', 'Bancos', 1),
('8000', 'Contabilidad', 'Contabilidad', 1);

-- -----APLICACIONES
INSERT INTO `tbl_aplicaciones` VALUES 
('1000', 'MDI', 'PARA SEGURIDAD', '1'), 
('2000', 'MDI', 'PARA LOGISTICA', '1'), 
('3000', 'MDI', 'PARA COMPRAS', '1'), 
('4000', 'MDI', 'PARA VENTAS', '1'), 
('5000', 'MDI', 'PARA', '1'), 
('6000', 'MDI', 'PARA', '1'), 
('7000', 'MDI', 'PARA', '1'), 
('8000', 'MDI', 'PARA', '1');

-- -----ASIGNACIÓNES MODULO A APLICACION
INSERT INTO `tbl_asignacionmoduloaplicacion` VALUES 
('1000', '1000'), 
('2000', '2000'), 
('3000', '3000'), 
('4000', '4000'), 
('5000', '5000');

-- -----USUARIOS
INSERT INTO `tbl_usuarios` VALUES 
(0, 'admin', 'admin', 'admin', 'HO0aGo4nM94=', 'esduardo@gmail.com', '2022-07-02 21:00:48', 1, ' ', ' '),
(0, 'leonel', 'dominguez', 'laionel', 'HO0aGo4nM94=', 'laionel@gmail.com', '2022-07-02 21:00:48', 1, ' ', ' ');

-- -----PERFILES
INSERT INTO `tbl_perfiles` VALUES 
('1', 'Administrador', 'contiene todos los permisos del programa', 1),
('2', 'Tester', 'tiene acceso a ciertas aplicaciones', 1);

-- -----PERMISOS DE APLICACIONES A PERFILES
INSERT INTO `tbl_permisosAplicacionPerfil` VALUES 
('1', '1000', '1', '1', '1', '1', '1'),
('1', '2000', '1', '1', '1', '1', '1'),
('1', '3000', '1', '1', '1', '1', '1'),
('1', '4000', '1', '1', '1', '1', '1'),
('1', '5000', '1', '1', '1', '1', '1');

-- -----ASIGNACIÓN DE PERFIL A USUARIO
INSERT INTO `tbl_asignacionesPerfilsUsuario` VALUES 
('1', '1'),('1', '2');
