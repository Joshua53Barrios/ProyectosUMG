CREATE DATABASE BELLAS_ARTES;
USE BELLAS_ARTES;

create table Estudiantes(  --NO FO
	Carnet_e int IDENTITY(100,1) primary key,
	Nombre_e varchar(25),
	Apellidos_e varchar(25),
	Fecha_N_e date,
	Fecha_insc date,
	Sexo_e varchar(10),
);
create table Disciplinas( --NO FO
	IdDisciplina int IDENTITY (200,1) primary key,
	Nombre_Disc varchar (15)
);
create table Cursos( --SI FO
	Idcurso int IDENTITY(301,1) primary key,
	Nombre_curso varchar(20),
	Horario_curso varchar(11),
	Jornada_curso varchar (15),
	Dias_curso int,
	idDisc_curso int,
	idsede_c int,   --foranea
	Costo_curso int
);
alter table Cursos add CONSTRAINT pk_Cursos FOREIGN KEY (idsede_c) REFERENCES Sede(idsede);
alter table Cursos add CONSTRAINT pk_Cursos1 FOREIGN KEY (idDisc_curso) REFERENCES  Disciplinas(IdDisciplina);

Create Table Puestos( --NO FO
	idPuestos int IDENTITY (00,1)primary key,
	Descr_puest varchar(20),
	Especial_puest varchar(20) 
);
Create Table Personal( --SI FO
	Carnet_Personal int IDENTITY (1000,1) primary key,
	Dpi_pers varchar(15),
	Nombres_pers varchar(20),
	Apellido_pers varchar(20),
	Sexo_pers varchar(10),
	FechaNac_pers date,
	idpuesto_pers int,
	Sueldo_pers varchar(7),
	FechaContra_pers date,
	idsede_pers int,-- foranea
	Direccion_pers varchar(50)
	);
 alter table Personal add CONSTRAINT pk_Personal1 FOREIGN KEY (idpuesto_pers) REFERENCES Puestos(idPuestos);
 alter table Personal add CONSTRAINT pk_Personal FOREIGN KEY (idsede_pers) REFERENCES Sede(idsede);

create table R_CEstudiante(
	idCestudiente int IDENTITY (400,1) primary key,
	Carnet_RCE int,--foraena
	idcurso_RCE int,--foranea
	FechaInicio_RCE date,
	FechaFin_RCE date
);
alter table R_CEstudiante add CONSTRAINT pk_R_CEst1 FOREIGN KEY (Carnet_RCE) REFERENCES Estudiantes(Carnet_e);
alter table R_CEstudiante add CONSTRAINT pk_R_CEst FOREIGN KEY (idcurso_RCE) REFERENCES Cursos(Idcurso);

create table Familiares(  ---Falta Correo y Telefono -- NO FO
    idFam int IDENTITY (500,1) primary key,
	Dpi_Fam varchar(15),
	Nombres_Fam varchar(25),
	Apellidos_Fam varchar (25),
	Fecha_N_F date,
	Sexo_F varchar (10),
	Profesion varchar (15),
	Parentesco varchar (10)
);

create table Contacto_Emergencia(
	id_ContE int IDENTItY (600,1) primary key,
	Dpi_CE varchar(15),
	Nombres_CE varchar(20),
	Apellidos_CE varchar(20),
	Telefono_CE varchar(9),
	Parentesco_CE varchar (10)
);


create table Relacion_Familia(
	idRF int IDENTITY (1100,1) primary key,
	CarnetE_RF int,--FORANEA
	CllaveP int--FORANEA
);
alter table Relacion_Familia add CONSTRAINT pk_R_Fam FOREIGN KEY (CarnetE_RF) REFERENCES Estudiantes(Carnet_E);
alter table Relacion_Familia add CONSTRAINT pk_R_Fam1 FOREIGN KEY (CllaveP) REFERENCES llaves_prim(Identificador_ll);

create table Sede(--NO FO
	idsede int IDENTITY (700,1) primary key,
	Nombre_Sede varchar(25),
	Departamento_Sede varchar (15),
	Municipio varchar (15),
	Direccion varchar(50),
	Capacidad int
);
create table Actividades(
	idact int IDENTITY (800,1) primary key,
	Nombre_Act varchar(20),
	idcurso_Act int, --FORANEA
	Horario_Act varchar (11),
	Fecha_Act date,
	Idsede_Act int --FORANEA
);
alter table Actividades add CONSTRAINT pk_Act1 FOREIGN KEY (idcurso_Act) REFERENCES Cursos(idcurso);
alter table Actividades add CONSTRAINT pk_Act2 FOREIGN KEY (Idsede_Act) REFERENCES Sede(idsede);


create table R_Inventario(
	idR_Inv int IDENTITY (900,1) primary key,
	IdconexInv_RINV int, --FORANEA
	fecha_Inv date,
	Horario varchar(11), 
	IdActInv int, --FORANEA
	CarnetE_Inv int, --FORANEA ---ACTIVIDAD PURA
	Personal_Inv int --FORANEA ---DOCENTE
);
alter table R_Inventario add CONSTRAINT pk_R_Inv FOREIGN KEY (CarnetE_Inv) REFERENCES Estudiantes(Carnet_E);
alter table R_Inventario add CONSTRAINT pk_R_Inv1 FOREIGN KEY (IdconexInv_RINV) REFERENCES ConexInventario(idconexInv);
alter table R_Inventario add CONSTRAINT pk_R_Inv2 FOREIGN KEY (IdActInv) REFERENCES Actividades(idact);
alter table R_Inventario add CONSTRAINT pk_R_Inv3 FOREIGN KEY (Personal_Inv) REFERENCES Personal(Carnet_Personal);

Create table MaterialArte(
	IdMArte int IDENTITY (1300,1) primary key,
	descripcion_MArte varchar (20),
	cantidad_MArte int,
	idproveedores_Art int --FORANEA
);
alter table MaterialArte add CONSTRAINT pk_MatArt FOREIGN KEY (idproveedores_Art) REFERENCES Proveedor(idProv);

Create table MaterialEscenagrofia(
	IdEsce int IDENTITY (1400,1) primary key,
	descripcion_MEsce varchar (20),
	cantidad_MEsce int, --FORANEA
	idproveedores_Esce int --FORANEA
);
alter table MaterialEscenagrofia add CONSTRAINT pk_MatEsc FOREIGN KEY (idproveedores_Esce) REFERENCES Proveedor(idProv);

Create table Vestuario(
	IdVest int IDENTITY (1500,1) primary key,
	descripcion_Vest varchar (40),
	Talla_Vest varchar(3),
	Color_Vest varchar(10),
	cantidad_Vest int,
	idproveedores_Vest int --FORANEA
);
alter table Vestuario add CONSTRAINT pk_Vest FOREIGN KEY (idproveedores_Vest) REFERENCES Proveedor(idProv);


Create table Instrumentos(
	IdInst int IDENTITY (1600,1) primary key,
	descripcion_MIns varchar (20),
	cantidad_MIns int,
	Tipo_Ins varchar(10),
	idproveedores_Ins int --FORANEA
);
alter table Instrumentos add CONSTRAINT pk_Ins FOREIGN KEY (idproveedores_Ins) REFERENCES Proveedor(idProv);

Create table MaterialCine(
	IdCine int IDENTITY (1700,1) primary key,
	descripcion_MCine varchar (20),
	cantidad_MCine int,
	idproveedores_Cine int --FORANEA
);
alter table MaterialCine  add CONSTRAINT pk_MC FOREIGN KEY (idproveedores_Cine) REFERENCES Proveedor(idProv);

Create table Reg_Mat_Esc(
	idReg_Mat_Esc int IDENTITY (1800,1) primary key,
	idEsc_RME int, --FORANEA
	idConexActi_RME int --FORANEA
);
alter table Reg_Mat_Esc  add CONSTRAINT pk_Rat_EsC FOREIGN KEY (idEsc_RME) REFERENCES MaterialEscenagrofia(IdEsce);
alter table Reg_Mat_Esc  add CONSTRAINT pk_Rat_EsC1 FOREIGN KEY (idConexActi_RME) REFERENCES ConexActividades(idConexActi);

Create table Instr_Danz(
	idInsDanz int IDENTITY (1900,1) primary key,
	CarnetE_InsDanz int, --FORANEA
	idAct_InsDanz int, --FORANEA solo actividades
	Coreografia Varchar(20)
);
alter table Instr_Danz  add CONSTRAINT pk_Instr_Danz FOREIGN KEY (CarnetE_InsDanz) REFERENCES Estudiantes(Carnet_E);
alter table Instr_Danz  add CONSTRAINT pk_Instr_Danz1 FOREIGN KEY (idAct_InsDanz) REFERENCES Actividades(idact);


Create Table Actuacion(
	IDActuacion int IDENTITY (2000,1) primary key,
	CarnetE_Actuacion int, --FORANEA
	idAct_Actuacion int,--FORANEA
	Papel varchar(20)
);
alter table Actuacion  add CONSTRAINT pk_Act FOREIGN KEY (CarnetE_Actuacion) REFERENCES Estudiantes(Carnet_E);
alter table Actuacion  add CONSTRAINT pk_Actu1 FOREIGN KEY (idAct_Actuacion) REFERENCES Actividades(idact);

Create Table Proveedor(  --Falta Correo y Telefono
	idProv int IDENTITY (2100,1)primary key,
	Nombre_Prov varchar(25),
	Direccion_Prov varchar(50)
);


Create Table Capacitaciones(
	idcapa int IDENTITY (2200,1) primary key,
	IdPers_Capa int, --FORANEA
	Nombre_Capa varchar(16),
	Horario varchar(11),
	Fecha_Capa date,
	NPersonas_capa int
);
alter table Capacitaciones  add CONSTRAINT pk_Capacit FOREIGN KEY (IdPers_Capa) REFERENCES Personal(Carnet_Personal);

Create table Obras(
	IdObras int IDENTITY (2300,1) primary key,
	Nombre_Ob varchar(30),
	Horario varchar(11),
	FechaI_Obra date,
	FechaF_Obra date,
	idsede_Obra int, --FORANEA
	idencargado_Obra int, --FORANEA
	NPersonas_Obra int
);
alter table Obras add CONSTRAINT pk_Ob1 FOREIGN KEY (idsede_Obra) REFERENCES Sede(idsede);
alter table Obras add CONSTRAINT pk_Ob2 FOREIGN KEY (idencargado_Obra) REFERENCES Encargado(Idencargado);

Create Table Encargado( --correo y telefono
	Idencargado int IDENTITY (2400,1) primary key,
	Nombres_Encargado varchar(20),
	Apellidos_Encargado varchar(20),
	DPI_Encargado varchar (15),
	FechaIn_Encargado date,
	FechaFn_Encargado date

);
Create Table Camarografos(
	idcgrafos int IDENTITY (2500,1) primary key,
	idconexper_cgrafos int,  --FORANEA
	idacti_cgrafos int,   --FORANEA
	Horario varchar(11)
);
alter table Camarografos add CONSTRAINT pk_Cam FOREIGN KEY (idconexper_cgrafos) REFERENCES llaves_prim(Identificador_ll);
alter table Camarografos add CONSTRAINT pk_Cam1 FOREIGN KEY (idacti_cgrafos) REFERENCES ConexActividades(idconexActi);

Create Table LucesYEfectos(
	idluefec int IDENTITY (2600,1) primary key,
	idconexper_luefec int,  --FORANEA
	idobra_luefec int,  --FORANEA
	Horario_luefec varchar(11)
);
alter table Camarografos add CONSTRAINT pk_luz FOREIGN KEY (idconexper_cgrafos) REFERENCES llaves_prim(Identificador_ll);
alter table Camarografos add CONSTRAINT pk_luz1 FOREIGN KEY (idacti_cgrafos) REFERENCES ConexActividades(idconexActi);

Create Table MusicaUtilizada(
	idmusiuti int IDENTITY (2700,1) primary key,
	idmusica_musiuti int, --FORANEA
	idacti_musiuti int,  --FORANEA
	Escena_musiuti varchar (8)
);
alter table MusicaUtilizada add CONSTRAINT pk_MuUt FOREIGN KEY (idacti_musiuti) REFERENCES ConexActividades(idconexActi);
alter table MusicaUtilizada add CONSTRAINT pk_MuUt1 FOREIGN KEY (idmusica_musiuti) REFERENCES Musica(idmusic);

Create Table Musica(
	idmusic int IDENTITY (2800,1) primary key,
	Nombre_music varchar(20),
	Artista_music varchar(20),
	Duracion_music varchar(5)
);

Create Table Escenografia(
	idescena int IDENTITY (2900,1) primary key,
	idacti_escena int,  --FORANEA
	Nluces_escena int,
	NCamara_escena int,
	NEfectos_escena int
);
alter table Escenografia add CONSTRAINT pk_Esce FOREIGN KEY (idacti_escena) REFERENCES ConexActividades(idconexActi);

Create table Boleto(
	idboleto int IDENTITY (3000,1) primary key,
	idActi_bol int, --FORANEA
	Costo varchar(5),
	Cantidad int,
	total int
);
alter table Boleto add CONSTRAINT pk_Bol FOREIGN KEY (idActi_bol) REFERENCES ConexActividades(idconexActi);
---PENDIENTE

Create table P_PrestacionEquip(
	idpEquip int IDENTITY (3100,1) primary key,
	idinv_pEquip int, --FORANEA
	Fecha_pEquip date,
	Tiempo_pEquip varchar(20),
	idconexPer_pEquip int,
	idconActi_pEquip int --FORANEA
	
);
alter table  P_PrestacionEquip add CONSTRAINT pk_pp1 FOREIGN KEY (idconexPer_pEquip) REFERENCES llaves_prim(Identificador_ll);
alter table  P_PrestacionEquip add CONSTRAINT pk_pp2 FOREIGN KEY (idconActi_pEquip) REFERENCES ConexActividades(idconexActi);
alter table  P_PrestacionEquip add CONSTRAINT pk_pp3 FOREIGN KEY (idinv_pEquip) REFERENCES ConexInventario(idconexInv);

Create table ExpoArte(
	idExpoArte int IDENTITY (3200,1) primary key,
	Nombre_ExpoArte varchar(20),
	FechaIn_ExpoArte date,
	FechaF_ExpoArte date,
	idCPers_ExpoArte int, --FORANEA
	idsede_ExpoArte int,--FORANEA
	Npersona_ExpoArte varchar(6),
	Nexposiciones_EArte varchar(5),
	NombreCreador_EArte varchar(40)
);
alter table Expoarte add CONSTRAINT pk_ExpoA FOREIGN KEY (idsede_ExpoArte) REFERENCES Sede(idsede);
alter table ExpoArte add CONSTRAINT pk_ExpoA1 FOREIGN KEY (idCPers_ExpoArte) REFERENCES llaves_prim(Identificador_ll);




Create table DescripArte(
	idDesArte int IDENTITY (3300,1) primary key,
	NombrePie_DA varchar(35),
	CPer_DA int, --FORANEA
	CAct_DA int,
	Categoria_DA varchar(20)
);
alter table DescripArte add CONSTRAINT pk_DesA FOREIGN KEY (CPer_DA) REFERENCES llaves_prim(Identificador_ll);
alter table DescripArte add CONSTRAINT pk_DesA1 FOREIGN KEY (CAct_DA) REFERENCES ConexActividades(idconexActi);

Create table EstadoEquip(
	idEEquip int IDENTITY (3400,1) primary key,
	idInv_EE int, --FORANEA
	Descripcion_EE varchar(20),
	ReCosto_EE varchar(6) --INFRACCION Q. 
);
alter table EstadoEquip add CONSTRAINT pk_EstEquip FOREIGN KEY (idInv_EE) REFERENCES ConexInventario(idconexInv);


Create table InciTeatro(
	idInciTe int IDENTITY (3500,1) primary key,
	idSede_ITea int, --FORANEA
	IdConexAct_ITea int, --FORANEA
	Descripcion_Itea varchar(50),
	Cantidad_Itea int,
	Costo_Itea varchar(5), 
	Total_Itea int 
);
alter table InciTeatro add CONSTRAINT pk_InciTeatro FOREIGN KEY (idSede_ITea) REFERENCES Sede(idsede);
alter table InciTeatro add CONSTRAINT pk_InciTeatro1 FOREIGN KEY (IdConexAct_ITea) REFERENCES ConexActividades(idconexActi);

Create table Particpacion (
	idpart int IDENTITY (3600,1) primary key,
	idCActi_part int,
	idCPers_part int ---directores, docentes, externos
);
alter table Particpacion add CONSTRAINT pk_Part1 FOREIGN KEY (idCActi_part) REFERENCES ConexActividades(idconexActi);
alter table Particpacion add CONSTRAINT pk_Part2 FOREIGN KEY (idCPers_part) REFERENCES llaves_prim(Identificador_ll);

Create table ArtePersona(
	idartP int IDENTITY (3700,1) primary key,
	Nombre_ArtP varchar(20),
	idCActi_ArtP int,
	idCPer_ArtP int--SOLO DIRECTORES 
);
alter table ArtePersona add CONSTRAINT pk_artp1 FOREIGN KEY (idCActi_ArtP) REFERENCES ConexActividades(idconexActi);
alter table ArtePersona add CONSTRAINT pk_artp2 FOREIGN KEY (idCPer_ArtP) REFERENCES llaves_prim(Identificador_ll);

Create table ArteStudent(
	idArteS int IDENTITY (3800,1) primary key,
	Nombre_ArtStu varchar(20),
	CarnetE_ArtStu int, 
	idActi_ArtStu int --SOLO ACTIVIDAD.. FORANEA
);
alter table ArteStudent  add CONSTRAINT pk_ARTS FOREIGN KEY (CarnetE_ArtStu) REFERENCES Estudiantes(Carnet_E);
alter table ArteStudent  add CONSTRAINT pk_ARTS1 FOREIGN KEY (idActi_ArtStu) REFERENCES Actividades(idact);

Create table Planilla(
	idPlanilla int IDENTITY (4600,1) primary key, 
	idCPersona_Plla  int, --foranea
	mes_Plla varchar(10),
	Sueldo_Plla float, 
	HorasEx_Plla float,
	Extraord_Pll float,
	Total_Pll float,
	idDes_Pll int, --foranea
	TotalDes_Pll float,
	TotalFin_PLL float
);

alter table Planilla  add CONSTRAINT pk_Planilla FOREIGN KEY (idCPersona_Plla) REFERENCES Personal(Carnet_Personal);
alter table Planilla  add CONSTRAINT pk_Planilla1 FOREIGN KEY (idDes_Pll) REFERENCES Descuentos(IdDes);

Create Table Descuentos(
	IdDes int IDENTITY (3900,1) primary key,
	IdCPers_Desc int, --Foranea
	Sueldo_Desc int,
	IGGS float,
	IRTRA float,
	ISR float,
	OtrDes float,
	TotalDes float
);
alter table Descuentos  add CONSTRAINT pk_Descuentos FOREIGN KEY (IdCPers_Desc) REFERENCES Personal(Carnet_Personal);

Create Table Premios(
	 IdPremio int IDENTITY (4000,1) primary key,
	 idCPers_Prem int, --Foranea
	 Nombre_Prem varchar(20),
	 Categoria_Prem varchar(10),
	 Fecha_Prem date
);
alter table Premios add CONSTRAINT pk_premios FOREIGN KEY (idCPers_Prem) REFERENCES llaves_prim(Identificador_ll);

Create table Limpieza(
	idLim int IDENTITY (4100,1) primary key,
	IdSed_LIM int, --FORANEA
	Horario_LIM varchar(11),
	Fecha_LIM date
);
alter table Limpieza add CONSTRAINT pk_lim FOREIGN KEY (IdSed_LIM) REFERENCES Sede(idsede);

Create table AsignacionLimpieza(
	idALim int IDENTITY (4200,1) primary key,
	idPers_ALim int, 
	IdLim_Alim int,
	LugarAsignado varchar(10)
);
alter table AsignacionLimpieza  add CONSTRAINT pk_AsignLimpieza FOREIGN KEY (idPers_ALim) REFERENCES Personal(Carnet_Personal);

Create Table RegistroDocente(
	idRegDocente int IDENTITY (4300,1) primary key,
	idCurso_RegDoc int, --foranea
	idPersonal_RegDoc int, --DOCENTES
	FechaIn_RegDoc date,
	FechaFn_RegDoc date
);
alter table RegistroDocente add CONSTRAINT pk_RegDocente FOREIGN KEY (idPersonal_RegDoc) REFERENCES Personal(Carnet_Personal);
alter table RegistroDocente add CONSTRAINT pk_RegDocente1 FOREIGN KEY (idCurso_RegDoc) REFERENCES Cursos(Idcurso);


Create Table AcontecimientosDocente(
	idAcoDocente int IDENTITY (4400,1) primary key,
	idPersonal_AcoDoc int, --DOCENTES
	Acontecimiento_AcoDoc varchar(20),
	Descripcion_AcoDoc varchar(50),
	Fecha_AcoDoc date
);
alter table AcontecimientosDocente add CONSTRAINT pk_AcoDocente FOREIGN KEY (idPersonal_AcoDoc) REFERENCES Personal(Carnet_Personal);

Create table ConexInventario(
	idconexInv int primary key,
	Nombre_CInv varchar(10),
);
Create table ConexActividades(
	idconexActi int primary key,
	Nombre_CActi varchar(10),
);

create table Correos(
	id_correo int IDENTITY(4500,1) primary key,
	correo_co varchar (30),
	Identificador_co int
);

create table llaves_prim(
Identificador_ll int not null primary key,
nombre_ll varchar(5)
); 

create table Numeros_Tel(
	id_telefono int IDENTITY(4700,1) primary key,
	telefono_tel varchar (12),
	Identificador_tel int ,
);

create table Covid (
	idcovid int IDENTITY (5000,1) primary key,
	idPersonas_Covid int,
	Vacunado varchar(2),
	N_Dosis int,
	Estado_Covid varchar(10)
);
alter table Covid add CONSTRAINT pk_covid FOREIGN KEY (idPersonas_Covid) REFERENCES llaves_prim(Identificador_ll);


insert into Proveedor  values('Megapaca','4ta calle 3-12 Ciudad de Guatemala');
insert into Proveedor  values('Nike','Local 341 Bodegas SA Carretera al Atlantico');
insert into Proveedor  values('Cuidado con el perro','3ra calle 3-20 Ciudad Cayala');
insert into Proveedor  values('Importadoras S.A.','7ma Avenida 5-13 Ciudad de Quetzaltenango');
insert into Proveedor  values('Vestuarios PTTDT','5ta calle 3-12 Villa Nueva Guatemala');

insert into Estudiantes values('Joshua Alejandro','Barrios Ortiz','2001-06-29','2021-10-02','Masculino')
insert into Estudiantes values('Mariana Andrea','Cruz Loaiza','2001-04-07','2018-09-20','Femenino');
insert into Estudiantes values('Ricardo Alexander','Miranda Vivar','2000-02-26','2017-10-10','Masculino');
insert into Estudiantes values('Velvet Eunice','Samayoa Aguilar','2000-04-01','2016-01-02','Femenino');
insert into Estudiantes values('Melanie Rocio','Morataya Ortiz','2002-04-02','2020-08-30','Femenino');
insert into Estudiantes values('Edgar Alex','Lopez Felipe','2003-05-23','2015-11-09','Masculino');
insert into Estudiantes values('Susana Patricia','Diaz Castro','2001-08-14','2018-02-28','Femenino');
insert into Estudiantes values('Estefani Alejandra','Lopez Lopez','1999-07-10','2017-05-24','Femenino');
insert into Estudiantes values('Mario Stuardo','Cobar Castillo','2000-08-12','2014-09-27','Masculino');
insert into Estudiantes values('Jose Jasiel','Fernandez Pensamiento','2002-10-02','2021-01-10','Masculino');

Insert into Disciplinas values('Teatro');
Insert into Disciplinas values('Danza');
Insert into Disciplinas values('Cine');
Insert into Disciplinas values('Musica');
Insert into Disciplinas values('Pintura');
Insert into Disciplinas values('Escultura');

Insert into Puestos values('Docente','Teatro');
Insert into Puestos values('Docente','Danza');
Insert into Puestos values('Docente','Cine');
Insert into Puestos values('Docente','Musica');
Insert into Puestos values('Docente','Pintura y Escultura');
Insert into Puestos values('Director','Administracion');
Insert into Puestos values('Conserje','Ninguna');
Insert into Puestos values('Secretaria','Ninguna');
Insert into Puestos values('Seguridad','Manejo de Armas');

Insert into Familiares values('7319 13841 0101','Jesus Alejandro','Barrios Ordoñez','1980-02-19','Masculino','Maestro','Padre');
Insert into Familiares values('3891 79313 0101','Jasiel Alexander','Miranda Perez','1979-07-07','Masculino','I. Quimico','Tio');
Insert into Familiares values('7319 13841 0101','Maria Jose','Morataya Luz','1970-09-10','Femenino','Gerente de RRHH','Madre');
Insert into Familiares values('8390 79130 0101','Maria Teresa ','Reyes Zepeda','1982-12-20','Femenino','Psicologa','Tia');
Insert into Familiares values('7319 33131 0101','Andrea Andriana ','Escobar Veliz','1980-11-20','Femenino','Maestra','Madre');
Insert into Familiares values('0824 13841 0101','Gerson Giselle','Polisea Ordoñez','1977-02-20','Masculino','Arquitecto','Padre');
Insert into Familiares values('3891 08481 0101','Alexander ','Morales Pineda','1989-11-27','Masculino','Ing. Sistemas','Tio');
Insert into Familiares values('8830 13841 0101','Maria Alejandra','Morales Morataya','1979-10-01','Femenino','Farmaceutico','Madre');
Insert into Familiares values('8390 68312 0101','Karla Maria ','Alvarez Aguilar','1988-10-14','Femenino','Psicologa','Madre');
Insert into Familiares values('5771 99012 0101','Gretina Cocoa ','Solorzano Castillo','1975-10-03','Femenino','Ing. Industrial','Hermana');

Insert into Sede values('Teatro ArribaGuate','Huehuetenango','Chiantla','5ta Avenida 4-21 Plaza',1000);
Insert into Sede values('Teatro BellasArtes','Guatemala','Guatemala','Avenida Elena 14-75, Ciudad de Guatemala',400);
Insert into Sede values('Teatro M.Quetzaltenango','Quetzaltenango','Quetzaltenango','1era calle 14 avenida Quezaltenango 9001',1050);

Insert into Encargado values('Juan Jose','Castillo Solorzano','4912 08313 0101','2021-12-03','2021-12-23');
Insert into Encargado values('Maria Fernanda','Lopez Ortiz','9012 08121 0101','2021-04-23','2021-05-01');
Insert into Encargado values('Gabriela Glenda','Arriaga Arroyo','6789 08412 0101','2021-03-03','2021-03-15');
Insert into Encargado values('Veronica Monica','Castillo Merida','5432 45678 0101','2021-05-15','2021-05-15');
Insert into Encargado values('Juan Paolo','Castro Solorzano','2431 64131 0101','2021-02-12','2021-02-28');

Insert into Musica values ('Cell Block Tango','John Kander','5:10');
Insert into Musica values ('Defying Gravity','Stepeh Schwartz','10:10');
Insert into Musica values ('T. Quetzaltecas','Victor Aguilar','3:37');
Insert into Musica values ('Dancing Queen','Catherine Johnson','10:18');
Insert into Musica values ('Ferrocarril Altos','Domingo Benthacourt','3:40');

Insert into Contacto_Emergencia values('9031 30949 0101','Arias Romero','Perez Alberto','0921 9833','Prima');
Insert into Contacto_Emergencia values('9381 08301 0101','Camilo Enrique','Hernandez Sanchez','8792 1243','Amigo');
Insert into Contacto_Emergencia values('1241 98231 0101','Daniela Liliana','Gomez Gomez','0894 9821','Tia');
Insert into Contacto_Emergencia values('1291 93013 0101','Daniela Delgado','Bravo Alberto','1234 3231','Prima');
Insert into Contacto_Emergencia values('9031 30949 0101','Deny Catalina','Foredo Peña','0121 1233','Hermana');
Insert into Contacto_Emergencia values('9031 30949 0101','Diego Alejandro','Perez Torres','1241 9133','Hermano');
Insert into Contacto_Emergencia values('9031 30949 0101','Gabriel Felipe','Mendoza Vargas','4121 5232','Tio');
Insert into Contacto_Emergencia values('9031 30949 0101','Hugo Romero','Ortega Cortes','0921 8492','Primo');
Insert into Contacto_Emergencia values('9031 30949 0101','Jenny Viviana','Jimenez Sanches','3081 0831','Tia');
Insert into Contacto_Emergencia values('9031 30949 0101','Natalia Melissa','Uribe Correa','4231 5323','Hermana');

Insert into Cursos values('Canto','07:00-09:00','Matutino',12,203,700,300);
Insert into Cursos values('Interpretacion','09:00-10:00','Matutino',30,200,701,250);
Insert into Cursos values('Expresion Palabra','14:00-15:00','Despertino',45,200,702,350);
Insert into Cursos values('Uso del color','07:00-09:00','Sabatino',35,204,702,450);
Insert into Cursos values('Escultura','10:00-18:00','Sabatino',34,205,700,550);
Insert into Cursos values('Edicion Video','07:00-10:00','Matutino',20,202,701,300);
Insert into Cursos values('Coreografia','12:00-15:00','Despertino',45,201,702,350);
Insert into Cursos values('Canto','17:00-18:00','Despertino',20,200,700,300);
Insert into Cursos values('Animacion','07:00-12:00','Matutino',12,202,701,450);

Insert into Personal values('4523 31232 0101','Maria David','Forero Pineda','Femenino','1990-02-02',3,'6,000','2020-09-19',700,'4 Calle 2-41 Zona 1 Aguacatan Huehuetenango');
Insert into Personal values('5232 52314 0101','Paola Andrea','Correra Larios','Femenino','1986-11-01',3,'6,200','2021-01-11',700,'5 Avenida 4-38 Zona 1 Chiantla, Huehuetenango');
Insert into Personal values('4523 31232 0101','Oscar David','Forero Pineda','Masculino','1979-05-02',3,'4,000','2020-09-19',700,'3 Avenida 3-04 Zona 1 Cuilco, Huehuetenango');
Insert into Personal values('1313 52322 0101','Juan Sebastian','Rodriguez Garcia','Masculino','1999-05-02',2,'5,400','2020-06-23',701,'6 Calle 14-55, Zona 1,Quetzaltenango');
Insert into Personal values('5231 42312 0101','July Laura','Novoa Garcia','Femenino','1972-06-20',2,'2,400','2021-01-14',701,'3a. Calle 10-56, Zona 1,Quetzaltenango');
Insert into Personal values('2341 63421 0101','Laura Fernanda','Rodriguez Rojas','Femenino','1995-11-22',4,'5,300','2021-03-22',701,'5ta Calle 14-55, Zona 2,Quetzaltenango');
Insert into Personal values('1231 39012 0101','Karen Liseth','Reyes Pineda','Femenino','1980-10-21',1,'7,000','2017-09-20',702,'4ta calle 4-23 Ciudad Guatemala');
Insert into Personal values('1231 39012 0101','Juan Francisco','Herrera Pineda','Masculino','1950-12-12',4,'5,000','2019-04-10',702,'3ta Calle 3-12 Ciudad Guatemala');
Insert into Personal values('1231 39012 0101','Juan Francisco','Herrera Pineda','Masculino','1950-12-12',0,'5,000','2019-04-10',702,'5ta calle 4-52 Ciudad Guatemala');
Insert into Personal values('4523 90889 0101','Laura Camila','Forero Pineda','Femenino','1980-07-24',6,'4,000','2020-09-19',700,'7 Calle 7-41 Zona 1 Aguacatan Huehuetenango');
Insert into Personal values('4560 42312 0101','Juana Maria','Orozco Garcia','Femenino','1972-09-29',6,'4,000','2021-01-14',701,'9nv. Calle 10-56, Zona 1,Quetzaltenango');
Insert into Personal values('8479 10675 0101','Luis Francisco','Diaz Mejia','Masculino','1950-11-24',6,'4,000','2016-04-10',702,'8ta calle 4-52 Ciudad Guatemala');

Insert into Personal values('8831 93889 0101','Maria Camila','Ordoñez Palacios','Femenino','1980-07-24',5,'4,000','2020-09-19',700,'8 Calle 7-41 Zona 1 Aguacatan Huehuetenango');
Insert into Personal values('8912 42312 0101','Juana Antonia','Fernandez Garcia','Femenino','1972-09-29',5,'4,000','2021-01-14',701,'10ma. Calle 10-56, Zona 1,Quetzaltenango');
Insert into Personal values('8912 13275 0101','Luisa Fernanda','Diaz Castillo','Feminino','1950-11-24',5,'4,000','2016-04-10',702,'4 calle 4-52 Ciudad Guatemala');

Insert into Personal values('4523 90889 0101','Raquel Ignaciana','Morataya','Femenino','1980-07-24',7,'4,000','2020-09-19',700,' 2 Calle 7-41 Zona 1 Aguacatan Huehuetenango');
Insert into Personal values('4560 42312 0101','Juana Maria','Orozco ','Femenino','1972-09-29',7,'4,000','2021-01-14',701,'9 Calle 10-56, Zona 1,Quetzaltenango');
Insert into Personal values('8479 10675 0101','Luis Francisco','Mejia','Masculino','1950-11-24',7,'4,000','2016-04-10',702,'12 calle 4-52 Ciudad Guatemala');

Insert into Personal values('4523 90889 0101','Luigi Mario','Pineda Gomez','Masculino','1980-07-24',8,'4,000','2020-09-19',700,'7 Calle 7-41 Zona 1 Aguacatan Huehuetenango');
Insert into Personal values('4560 42312 0101','Franciso Fernando','Orozco Barrios','Masculino','1972-09-29',8,'4,000','2021-01-14',701,'9nv. Calle 10-56, Zona 1,Quetzaltenango');
Insert into Personal values('8479 10675 0101','Luis Pedro','Diaz Herrera','Masculino','1950-11-24',8,'4,000','2016-04-10',702,'8ta calle 4-52 Ciudad Guatemala');

select * from Puestos
insert into R_CEstudiante values(100,301,'2021-01-01','2021-01-28');
insert into R_CEstudiante values(100,305,'2021-01-02','2021-02-2');
insert into R_CEstudiante values(100,308,'2021-01-03','2021-02-2');
insert into R_CEstudiante values(101,309,'2021-02-05','2021-03-30');
insert into R_CEstudiante values(101,306,'2021-02-14','2021-03-23');
insert into R_CEstudiante values(101,302,'2021-02-13','2021-03-25');
insert into R_CEstudiante values(102,303,'2021-03-15','2021-04-25');
insert into R_CEstudiante values(102,304,'2021-03-16','2021-04-26');
insert into R_CEstudiante values(102,307,'2021-03-16','2021-04-20');
insert into R_CEstudiante values(103,301,'2021-04-15','2021-05-21');
insert into R_CEstudiante values(103,305,'2021-04-15','2021-05-23');
insert into R_CEstudiante values(103,308,'2021-04-15','2021-05-26');
insert into R_CEstudiante values(104,309,'2021-05-12','2021-06-24');
insert into R_CEstudiante values(104,306,'2021-05-16','2021-06-22');
insert into R_CEstudiante values(104,302,'2021-05-16','2021-06-22');
insert into R_CEstudiante values(105,303,'2021-06-12','2021-07-21');
insert into R_CEstudiante values(105,304,'2021-06-16','2021-07-25');
insert into R_CEstudiante values(105,307,'2021-06-10','2021-07-28');
insert into R_CEstudiante values(106,301,'2021-07-12','2021-08-22');
insert into R_CEstudiante values(106,305,'2021-07-11','2021-08-22');
insert into R_CEstudiante values(106,308,'2021-07-11','2021-08-24');
insert into R_CEstudiante values(107,309,'2021-08-14','2021-09-25');
insert into R_CEstudiante values(107,306,'2021-08-14','2021-09-24');
insert into R_CEstudiante values(107,302,'2021-08-22','2021-09-25');
insert into R_CEstudiante values(108,303,'2021-09-21','2021-10-25');
insert into R_CEstudiante values(108,304,'2021-09-26','2021-10-23');
insert into R_CEstudiante values(108,307,'2021-09-23','2021-10-12');
insert into R_CEstudiante values(109,301,'2021-10-14','2021-11-21');
insert into R_CEstudiante values(109,305,'2021-10-19','2021-11-12');
insert into R_CEstudiante values(109,308,'2021-10-19','2021-11-30');

insert into llaves_prim values(2100,'PROV');
insert into llaves_prim values(2101,'PROV');
insert into llaves_prim values(2102,'PROV');
insert into llaves_prim values(2103,'PROV');
insert into llaves_prim values(2104,'PROV');
insert into llaves_prim values(500,'FAM');
insert into llaves_prim values(501,'FAM');
insert into llaves_prim values(502,'FAM');
insert into llaves_prim values(503,'FAM');
insert into llaves_prim values(504,'FAM');
insert into llaves_prim values(505,'FAM');
insert into llaves_prim values(506,'FAM');
insert into llaves_prim values(507,'FAM');
insert into llaves_prim values(508,'FAM');
insert into llaves_prim values(509,'FAM');
insert into llaves_prim values(600,'C.E.');
insert into llaves_prim values(601,'C.E.');
insert into llaves_prim values(602,'C.E.');
insert into llaves_prim values(603,'C.E.');
insert into llaves_prim values(604,'C.E.');
insert into llaves_prim values(605,'C.E.');
insert into llaves_prim values(606,'C.E.');
insert into llaves_prim values(607,'C.E.');
insert into llaves_prim values(608,'C.E.');
insert into llaves_prim values(609,'C.E.');
insert into llaves_prim values(100,'STU');
insert into llaves_prim values(101,'STU');
insert into llaves_prim values(102,'STU');
insert into llaves_prim values(103,'STU');
insert into llaves_prim values(104,'STU');
insert into llaves_prim values(105,'STU');
insert into llaves_prim values(106,'STU');
insert into llaves_prim values(107,'STU');
insert into llaves_prim values(108,'STU');
insert into llaves_prim values(109,'STU');
insert into llaves_prim values(1000,'PERS');
insert into llaves_prim values(1001,'PERS');
insert into llaves_prim values(1002,'PERS');
insert into llaves_prim values(1003,'PERS');
insert into llaves_prim values(1004,'PERS');
insert into llaves_prim values(1005,'PERS');
insert into llaves_prim values(1006,'PERS');
insert into llaves_prim values(1007,'PERS');
insert into llaves_prim values(1008,'PERS');
insert into llaves_prim values(1009,'PERS');
insert into llaves_prim values(1010,'PERS');
insert into llaves_prim values(1011,'PERS');
insert into llaves_prim values(1012,'PERS');
insert into llaves_prim values(1013,'PERS');
insert into llaves_prim values(1014,'PERS');
insert into llaves_prim values(1015,'PERS');
insert into llaves_prim values(1016,'PERS');
insert into llaves_prim values(1017,'PERS');
insert into llaves_prim values(1018,'PERS');
insert into llaves_prim values(1019,'PERS');
insert into llaves_prim values(1020,'PERS');
insert into llaves_prim values(2401,'ENCAR');
insert into llaves_prim values(2402,'ENCAR');
insert into llaves_prim values(2403,'ENCAR');
insert into llaves_prim values(2404,'ENCAR');
insert into llaves_prim values(2400,'ENCAR');



insert into Relacion_Familia values(100,500);
insert into Relacion_Familia values(101,501);
insert into Relacion_Familia values(102,502);
insert into Relacion_Familia values(103,503);
insert into Relacion_Familia values(104,504);
insert into Relacion_Familia values(105,505);
insert into Relacion_Familia values(106,506);
insert into Relacion_Familia values(107,507);
insert into Relacion_Familia values(108,508);
insert into Relacion_Familia values(109,509);
insert into Relacion_Familia values(100,600);
insert into Relacion_Familia values(101,601);
insert into Relacion_Familia values(102,602);
insert into Relacion_Familia values(103,603);
insert into Relacion_Familia values(104,604);
insert into Relacion_Familia values(105,605);
insert into Relacion_Familia values(106,606);
insert into Relacion_Familia values(107,607);
insert into Relacion_Familia values(108,608);
insert into Relacion_Familia values(109,609);

insert into Actividades values('Tejiendo Redes',307,'18:00-20:00','2021-02-14',702)
insert into Actividades values('Romeo y Julieta',308,'08:00-12:00','2021-03-13',702)
insert into Actividades values('Expo Artistica 2',304,'10:00-18:00','2021-04-12',702)
insert into Actividades values('Cineforo Cultural',306,'14:00-18:00','2021-05-11',700)
insert into Actividades values('Obras Esculturales',305,'09:00-17:00','2021-06-10',700)
insert into Actividades values('Danza Ballenato',307,'18:00-20:00','2021-07-24',700)
insert into Actividades values('Hamlet',302,'13:00-15:00','2021-08-23',701)
insert into Actividades values('Arte Barroco',304,'10:00-18:00','2021-09-12',701)
insert into Actividades values('Cine Nacional',309,'14:00-18:00','2021-10-11',701)
insert into Actividades values('Voces elevandose',301,'09:00-17:00','2021-11-10',701)

insert into MaterialArte values('Pinceles',20,2100)
insert into MaterialArte values('Papel',100,2101)
insert into MaterialArte values('Botes Acrilico',100,2102)
insert into MaterialArte values('Oberol',50,2103)
insert into MaterialArte values('Bote Tiner',10,2104)

insert into MaterialEscenagrofia values('Cortinas',10,2100);
insert into MaterialEscenagrofia values('Sillas',14,2102);
insert into MaterialEscenagrofia values('Arbustos',6,2103);
insert into MaterialEscenagrofia values('Cajas',44,2104);
insert into MaterialEscenagrofia values('Mesas',10,2101);

insert into Vestuario values('Difraz de princesa','10','Rosado',4,2100)
insert into Vestuario values('Oberol de Granjero','L','Azul',5,2101)
insert into Vestuario values('Disfraz de Bombero','M','RoJO',2,2102)
insert into Vestuario values('Falda Tipica','S','Multicolor',10,2103)
insert into Vestuario values('Abrigo de Peluche','XL','Celeste',4,2104)

insert into Instrumentos values('Tambor',10,'Percusion',2100);
insert into Instrumentos values('Trompeta',10,'Viento',2101);
insert into Instrumentos values('Flauta',10,'Viento',2102);
insert into Instrumentos values('Guitarra',10,'Cuerda',2103);
insert into Instrumentos values('Piano',1,'Cuerda',2104);

insert into MaterialCine values('Camaras',8,2101);
insert into MaterialCine values('Proyector',3,2100);
insert into MaterialCine values('Luces',14,2102);
insert into MaterialCine values('Silla',10,2103);
insert into MaterialCine values('Tirolina',2,2104);

insert into ConexInventario values(1300,'MAT.ARTE');
insert into ConexInventario values(1301,'MAT.ARTE');
insert into ConexInventario values(1302,'MAT.ARTE');
insert into ConexInventario values(1303,'MAT.ARTE');
insert into ConexInventario values(1304,'MAT.ARTE');
insert into ConexInventario values(1400,'MAT.ESCE');
insert into ConexInventario values(1401,'MAT.ESCE');
insert into ConexInventario values(1402,'MAT.ESCE');
insert into ConexInventario values(1403,'MAT.ESCE');
insert into ConexInventario values(1404,'MAT.ESCE');
insert into ConexInventario values(1500,'VESTUARIO');
insert into ConexInventario values(1501,'VESTUARIO');
insert into ConexInventario values(1502,'VESTUARIO')
insert into ConexInventario values(1503,'VESTUARIO');
insert into ConexInventario values(1504,'VESTUARIO');
insert into ConexInventario values(1600,'INSTR.');
insert into ConexInventario values(1601,'INSTR.');
insert into ConexInventario values(1602,'INSTR.');
insert into ConexInventario values(1603,'INSTR.');
insert into ConexInventario values(1604,'INSTR.');
insert into ConexInventario values(1700,'MAT.CINE');
insert into ConexInventario values(1701,'MAT.CINE');
insert into ConexInventario values(1702,'MAT.CINE');
insert into ConexInventario values(1703,'MAT.CINE');
insert into ConexInventario values(1704,'MAT.CINE');

insert into R_Inventario values(1500,'2021-09-12','12:00-17:00',807,101,1006)
insert into R_Inventario values(1701,'2021-01-30','07:00-19:00',808,104,1006)
insert into R_Inventario values(1602,'2021-10-11','10:00-14:00',800,108,1001)
insert into R_Inventario values(1503,'2021-09-12','12:00-14:00',807,107,1006)
insert into R_Inventario values(1604,'2021-01-30','14:00-15:00',804,103,1003)
insert into R_Inventario values(1703,'2021-01-30','09:00-17:00',803,106,1003)
insert into R_Inventario values(1502,'2021-09-12','06:00-18:00',807,109,1003)
insert into R_Inventario values(1301,'2021-09-12','08:00-12:00',807,107,1007)
insert into R_Inventario values(1700,'2021-05-11','07:00-15:00',803,100,1003)
insert into R_Inventario values(1600,'2021-01-30','05:00-16:00',802,105,1001)

insert into Obras values('Cine Revolucion siglo XIX','10:00-15:00','2021-10-10','2021-10-12',700,2400,300);
insert into Obras values('Esculturas Barrocas','09:00-17:00','2021-01-10','2021-01-20',701,2401,500);
insert into Obras values('El dia que Teco Temio','12:00-18:00','2021-11-10','2021-11-15',702,2402,800);
insert into Obras values('Festival Musica','08:00-15:00','2021-12-10','2021-12-19',700,2403,650);
insert into Obras values('Coreografia Salsa','07:00-19:00','2021-04-10','2021-10-12',702,2404,450);

select * from obras;
Select * from Actividades

insert into ConexActividades values(800,'Interina');
insert into ConexActividades values(801,'Interina');
insert into ConexActividades values(802,'Interina');
insert into ConexActividades values(803,'Interina');
insert into ConexActividades values(804,'Interina');
insert into ConexActividades values(805,'Interina');
insert into ConexActividades values(806,'Interina');
insert into ConexActividades values(807,'Interina');
insert into ConexActividades values(808,'Interina');
insert into ConexActividades values(809,'Interina');
insert into ConexActividades values(2300,'Externa');
insert into ConexActividades values(2301,'Externa');
insert into ConexActividades values(2302,'Externa');
insert into ConexActividades values(2303,'Externa');
insert into ConexActividades values(2304,'Externa');

select idconexActi,Nombre_Ob from ConexActividades ca INNER JOIN Obras ob on ca.idconexActi=ob.IdObras 
select idconexActi,Nombre_Act from ConexActividades ca INNER JOIN Actividades ac on ac.idact=ca.idconexActi

insert into Reg_Mat_Esc values(1400,801);
insert into Reg_Mat_Esc values(1401,801);
insert into Reg_Mat_Esc values(1402,801);
insert into Reg_Mat_Esc values(1403,806);
insert into Reg_Mat_Esc values(1404,806);
insert into Reg_Mat_Esc values(1400,806);
insert into Reg_Mat_Esc values(1402,2300);
insert into Reg_Mat_Esc values(1404,2300);
insert into Reg_Mat_Esc values(1403,2300);
insert into Reg_Mat_Esc values(1403,2302);
insert into Reg_Mat_Esc values(1401,2302);
insert into Reg_Mat_Esc values(1400,2302);

insert into Instr_Danz values(100,805,'Danza nacional');
insert into Instr_Danz values(101,809,'Ballenato');
insert into Instr_Danz values(103,805,'Danza nacional');
insert into Instr_Danz values(109,809,'Ballenato');
insert into Instr_Danz values(106,805,'Danza nacional');
insert into Instr_Danz values(104,809,'Ballenato');
insert into Instr_Danz values(100,805,'Danza nacional');

insert into Actuacion values(109,808,'Romeo');
insert into Actuacion values(107,808,'Julieta')
insert into Actuacion values(100,808,'Arbol')
insert into Actuacion values(106,808,'Arbusto')
insert into Actuacion values(102,808,'Lorenzo')

insert into RegistroDocente values(301,1001,'2021-01-01','2021-06-20');
insert into RegistroDocente values(302,1006,'2021-01-01','2021-06-20');
insert into RegistroDocente values(303,1000,'2021-01-01','2021-06-20');
insert into RegistroDocente values(304,1008,'2021-01-01','2021-06-20');
insert into RegistroDocente values(305,1002,'2021-01-01','2021-06-20');
insert into RegistroDocente values(306,1004,'2021-01-01','2021-06-20');
insert into RegistroDocente values(307,1007,'2021-01-01','2021-06-20');
insert into RegistroDocente values(308,1003,'2021-01-01','2021-06-20');
insert into RegistroDocente values(309,1003,'2021-01-01','2021-06-20');

insert into AcontecimientosDocente values(1000,'LLegada tarde','En las ultimas dos semanas se ha presentado tarde','2021-05-21');
insert into AcontecimientosDocente values(1004,'Grito a Alumno','Elevo la voz a un alumno','2021-09-14');
insert into AcontecimientosDocente values(1005,'Despido','Se le despidio por faltas con anterioridad','2021-11-21');

insert into Correos values('abc@gmail.com',2100);
insert into Correos values('dfg@yahoo.com',2101);
insert into Correos values('hij@outlook.com',2102);
insert into Correos values('dsfa@yahoo.com',2103);
insert into Correos values('asdj@outlook.com',2104);
insert into Correos values('pe1@outlook.com',1000);
insert into Correos values('pe2@outlook.com',1001);
insert into Correos values('pe3@outlook.com',1002);
insert into Correos values('pe4@outlook.com',1003);
insert into Correos values('pe5@outlook.com',1004);
insert into Correos values('pe6@outlook.com',1005);
insert into Correos values('pe7@outlook.com',1006);
insert into Correos values('pe8@outlook.com',1007);
insert into Correos values('pe9@outlook.com',1008);
insert into Correos values('pe10@outlook.com',1009);
insert into Correos values('pe11@outlook.com',1010);
insert into Correos values('pe0@outlook.com',1011);
insert into Correos values('fam0@outlook.com',500);
insert into Correos values('fam2@outlook.com',501);
insert into Correos values('fam3@outlook.com',502);
insert into Correos values('fam4@outlook.com',503);
insert into Correos values('fam5@outlook.com',504);
insert into Correos values('fam6@outlook.com',505);
insert into Correos values('fam7@outlook.com',506);
insert into Correos values('fam8@outlook.com',507);
insert into Correos values('fam9@outlook.com',508);
insert into Correos values('pefam10@outlook.com',509);

insert into Numeros_Tel values('3131 2313',2100);
insert into Numeros_Tel values('3131 2314',2101);
insert into Numeros_Tel values('3131 2315',2102);
insert into Numeros_Tel values('3131 2316',2103);
insert into Numeros_Tel values('3131 2317',2104);
insert into Numeros_Tel values('3131 2307',1000);
insert into Numeros_Tel values('3131 2312',1001);
insert into Numeros_Tel values('3131 2327',1002);
insert into Numeros_Tel values('3131 2337',1003);
insert into Numeros_Tel values('3131 2347',1004);
insert into Numeros_Tel values('3131 2357',1005);
insert into Numeros_Tel values('3131 2367',1006);
insert into Numeros_Tel values('3131 2377',1007);
insert into Numeros_Tel values('3131 2387',1008);
insert into Numeros_Tel values('3131 2397',1009);
insert into Numeros_Tel values('3131 2317',1010);
insert into Numeros_Tel values('3131 3317',1011);
insert into Numeros_Tel values('3521 2317',500);
insert into Numeros_Tel values('3531 2317',501);
insert into Numeros_Tel values('3541 2317',502);
insert into Numeros_Tel values('3551 2317',503);
insert into Numeros_Tel values('3561 2317',504);
insert into Numeros_Tel values('3551 2317',505);
insert into Numeros_Tel values('3521 2317',506);
insert into Numeros_Tel values('3551 2317',507);
insert into Numeros_Tel values('3521 2347',508);
insert into Numeros_Tel values('3551 2567',509);

insert into P_PrestacionEquip values(1300,'2021-03-31','20 Días',100,800);
insert into P_PrestacionEquip values(1301,'2021-03-31','20 Días',101,801);
insert into P_PrestacionEquip values(1302,'2021-03-31','20 Días',102,802);
insert into P_PrestacionEquip values(1303,'2021-03-31','20 Días',103,803);
insert into P_PrestacionEquip values(1304,'2021-03-31','20 Días',104,804);
insert into P_PrestacionEquip values(1500,'2021-03-31','20 Días',105,805);
insert into P_PrestacionEquip values(1501,'2021-03-31','20 Días',106,806);
insert into P_PrestacionEquip values(1502,'2021-03-31','20 Días',107,807);
insert into P_PrestacionEquip values(1503,'2021-03-31','20 Días',108,808);
insert into P_PrestacionEquip values(1504,'2021-03-31','20 Días',109,809);
insert into P_PrestacionEquip values(1600,'2021-03-31','20 Días',1000,801);
insert into P_PrestacionEquip values(1602,'2021-03-31','20 Días',1002,802);
insert into P_PrestacionEquip values(1603,'2021-03-31','20 Días',1003,803);
insert into P_PrestacionEquip values(1604,'2021-03-31','20 Días',1004,804);
insert into P_PrestacionEquip values(1700,'2021-03-31','20 Días',1005,806);
insert into P_PrestacionEquip values(1701,'2021-03-31','20 Días',2400,2300);
insert into P_PrestacionEquip values(1702,'2021-03-31','20 Días',2401,2301);
insert into P_PrestacionEquip values(1703,'2021-03-31','20 Días',2402,2302);
insert into P_PrestacionEquip values(1704,'2021-03-31','20 Días',2403,2304);

insert into Capacitaciones values(1000,'Instrumentos','6:00-8:00','2021-11-8',20);
insert into Capacitaciones values(1003,'Actores','7:00-9:00','2021-10-31',18);
insert into Capacitaciones values(1004,'Pel.Hechos H.','14:00-16:00','2021-11-9',22);
insert into Capacitaciones values(1007,'Esculturas Fam.','9:00-11:00','2021-09-10',25);
insert into Capacitaciones values(1008,'Obras Clasicas','12:00-14:00','2021-11-07',23);
insert into Capacitaciones values(1006,'Danzas Tipicas','6:00-9:00','2021-11-11',26);

insert into Camarografos values(101,800,'18:00-20:00');
insert into Camarografos values(103,801,'8:00-12:00');
insert into Camarografos values(106,806,'13:00-15:00');
insert into Camarografos values(1003,2301,'9:00-17:00');
insert into Camarografos values(1005,2302,'12:00-18:00');
insert into Camarografos values(1007,2300,'10:00-15:00');

insert into LucesYEfectos values(102,800,'18:00-20:00');
insert into LucesYEfectos values(103,801,'8:00-12:00');
insert into LucesYEfectos values(105,806,'13:00-15:00');
insert into LucesYEfectos values(1000,2301,'9:00-17:00');
insert into LucesYEfectos values(1001,2302,'12:00-18:00');
insert into LucesYEfectos values(1004,2300,'10:00-15:00');

insert into MusicaUtilizada values(2800,800,'Acto 1');
insert into MusicaUtilizada values(2802,801,'Acto 3');
insert into MusicaUtilizada values(2801,806,'Acto 4');
insert into MusicaUtilizada values(2804,2303,'Entrada');
insert into MusicaUtilizada values(2803,2302,'Salida');
insert into MusicaUtilizada values(2800,2300,'Receso');

insert into Escenografia values(800,4,1,3);
insert into Escenografia values(801,8,2,5);
insert into Escenografia values(806,10,1,6);
insert into Escenografia values(2303,10,2,4);
insert into Escenografia values(2301,5,1,4);
insert into Escenografia values(2302,8,3,2);
insert into Escenografia values(2300,6,1,4);

insert into ArteStudent values('Sueter colores',101,800);
insert into ArteStudent values('Pintura del mar',103,802);
insert into ArteStudent values('Mona Luisa',105,804);
insert into ArteStudent values('Cobija tejida',107,800);
insert into ArteStudent values('Pintura del cielo',109,802);

insert into Premios values (100,'Mejor Actuación','Actuación','2021-01-25');
insert into Premios values (102,'Mejor Actuación','Actuación','2021-03-17');
insert into Premios values (108,'Mejor Actuación','Actuación','2021-05-21');
insert into Premios values (1002,'Mejor Docente','Música','2021-07-03');
insert into Premios values (1003,'Mejor Docente','Cine','2021-09-10');
insert into Premios values (1005,'Mejor Docente','Pintura','2021-11-06');

insert into Limpieza values (700,'07:00-16:00','2021-02-20');
insert into Limpieza values (701,'08:00-17:00','2021-04-15');
insert into Limpieza values (702,'07:00-16:00','2021-06-27');
insert into Limpieza values (700,'10:00-18:00','2021-08-10');
insert into Limpieza values (701,'08:00-17:00','2021-09-09');
insert into Limpieza values (702,'09:00-17:00','2021-10-24');

insert into AsignacionLimpieza values (1009,4100,'Salones');
insert into AsignacionLimpieza values (1010,4101,'Escenarios');
insert into AsignacionLimpieza values (1011,4102,'Salones');
insert into AsignacionLimpieza values (1009,4103,'Escenarios');
insert into AsignacionLimpieza values (1010,4104,'Salones');
insert into AsignacionLimpieza values (1011,4105,'Escenarios');

insert into ExpoArte values('Estrella Oscura','2021/11/14','2021/12/04','2401','700','100','4','Luis Hernandez')
insert into ExpoArte values('El éxtasis del color','2021/03/02','2021/03/27','2403','701','80','5','Paola Ruiz')
insert into ExpoArte values('Melancolía','2021/08/01','2021/08/14','2400','702','50','2','Elizabeth Morales')
insert into ExpoArte values('Sueños Urbanos','2021/02/20','2021/03/15','2403','700','90','3','Cristopher Valenzuela')
insert into ExpoArte values('Monstruosismos','2021/05/04','2021/05/24','2401','702','110','3','Mariana Solis')
insert into ExpoArte values('Once Upon a Time','2021/10/03','2021/11/03','2402','701','85','4','Fernanda Lopez')
insert into ExpoArte values('Mind/Mirror','2021/06/13','2021/06/23','2400','701','90','2','Marta Garcia')
insert into ExpoArte values('Abstraction','2021/04/20','2021/05/01','2402','700','85','4','Velvet Samayoa')
insert into ExpoArte values('Lights','2021/07/28','2021/08/19','2404','702','95','3','Joshua Barrios')

insert into EstadoEquip values(1600,'En buen estado','Q0')
insert into EstadoEquip values(1603,'Cuerdas Rotas','Q100')
insert into EstadoEquip values(1602,'Golpe','Q50')
insert into EstadoEquip values(1601,'En buen estado','Q0')
insert into EstadoEquip values(1604,'Teclas Dañadas','Q50')
insert into EstadoEquip values(1702,'luz quebrada','Q250')
insert into EstadoEquip values(1700,'En buen estado','Q0')
insert into EstadoEquip values(1703,'En buen estado','Q0')
insert into EstadoEquip values(1701,'proyector dañado','Q300')
insert into EstadoEquip values(1704,'Tirolina dañada','Q50')


insert into Particpacion values(800,109)
insert into Particpacion values(801,108)
insert into Particpacion values(802,107)
insert into Particpacion values(803,106)
insert into Particpacion values(804,105)
insert into Particpacion values(805,104)
insert into Particpacion values(806,103)
insert into Particpacion values(807,102)
insert into Particpacion values(808,101)
insert into Particpacion values(809,100)
insert into Particpacion values(800,1000)
insert into Particpacion values(801,1001)
insert into Particpacion values(802,1002)
insert into Particpacion values(803,1003)
insert into Particpacion values(804,1004)
insert into Particpacion values(805,1005)
insert into Particpacion values(806,1006)
insert into Particpacion values(807,1007)
insert into Particpacion values(808,1008)
insert into Particpacion values(809,1009)
insert into Particpacion values(800,2403)
insert into Particpacion values(801,2402)
insert into Particpacion values(802,2404)
insert into Particpacion values(803,2401)
insert into Particpacion values(804,2400)

insert into ArtePersona values('Luis Garcia',800,1012);
insert into ArtePersona values('Celeste Lopez',802,1013);
insert into ArtePersona values('Luisa Martinez',801,1014);
insert into ArtePersona values('Alex Ruano',800,1015);
insert into ArtePersona values('Felipe Castro',803,1012);

insert into Covid values(100,'SI',2,'Negativo');
insert into Covid values(101,'NO',0,'Positivo');
insert into Covid values(102,'SI',1,'Positivo');
insert into Covid values(103,'NO',0,'Negativo');
insert into Covid values(104,'SI',2,'Negativo');
insert into Covid values(105,'NO',0,'Positivo');
insert into Covid values(106,'SI',1,'Positivo');
insert into Covid values(107,'NO',0,'Negativo');
insert into Covid values(108,'SI',2,'Negativo');
insert into Covid values(1000,'NO',0,'Positivo');
insert into Covid values(1001,'SI',1,'Positivo');
insert into Covid values(1002,'NO',0,'Negativo');
insert into Covid values(1003,'SI',2,'Negativo');
insert into Covid values(1004,'NO',0,'Positivo');
insert into Covid values(1005,'SI',1,'Positivo');
insert into Covid values(1006,'NO',0,'Negativo');
insert into Covid values(1007,'SI',2,'Negativo');
insert into Covid values(1008,'NO',0,'Positivo');
insert into Covid values(1009,'SI',1,'Positivo');
insert into Covid values(1010,'NO',0,'Negativo');
insert into Covid values(1011,'SI',2,'Negativo');
insert into Covid values(1012,'NO',0,'Positivo');
insert into Covid values(1013,'SI',1,'Positivo');
insert into Covid values(1014,'NO',0,'Negativo');
insert into Covid values(1015,'SI',2,'Negativo');
insert into Covid values(1016,'NO',0,'Positivo');
insert into Covid values(1017,'SI',1,'Positivo');
insert into Covid values(1018,'NO',0,'Negativo');
insert into Covid values(1019,'SI',2,'Negativo');
insert into Covid values(1020,'SI',2,'Negativo');

insert into DescripArte values ('Soñar no cuesta',500,2300,'Pintura');
insert into DescripArte values ('Libertad de amor',505,2301,'Escultura');
insert into DescripArte values ('Una montaña sola',600,2302,'Madera');
insert into DescripArte values ('Sin apreciar',606,2303,'Pintura');
insert into DescripArte values ('Cariño mío',509,2304,'Escultura');
insert into DescripArte values ('Soñando',607,2300,'Barro');

insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1000,6000,500.00);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1001,6200,0.00);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1002,4000,150.75);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1003,5400,20.10);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1004,2400,0.00);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1005,5300,0.00);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1006,7000,0.00);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1007,5000,300.25);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1008,5000,125.78);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1009,4000,0.00);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1010,4000,0.00);
insert into Descuentos (IdCPers_Desc,Sueldo_Desc,OtrDes) values (1011,4000,75.80);


CREATE PROCEDURE
calculo_descuentos
AS
BEGIN
update Descuentos set IGGS = (Sueldo_Desc*0.0483);
update Descuentos set IRTRA = (Sueldo_Desc*0.01);
update Descuentos set ISR = (((Sueldo_Desc*12+3000)-48000)*0.05)/12 where Sueldo_Desc>=4000;
update Descuentos set ISR = 0 where Sueldo_Desc<4000;
update Descuentos set TotalDes = IGGS + IRTRA + ISR + OtrDes;
END 
 
exec calculo_descuentos;



insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1000,'OCTUBRE',6000,15,3900,962.3);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1001,'OCTUBRE',6200,15,3901,483.96);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1002,'OCTUBRE',4000,15,3902,396.45);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1003,'OCTUBRE',5400,15,3903,417.42);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1004,'OCTUBRE',2400,15,3904,139.92);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1005,'OCTUBRE',5300,15,3905,386.49);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1006,'OCTUBRE',7000,15,3906,570.6);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1007,'OCTUBRE',5000,15,3907,654.25);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1008,'OCTUBRE',5000,15,3908,479.78);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1009,'OCTUBRE',6000,15,3909,245.7);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1010,'OCTUBRE',6000,15,3910,245.7);
insert into Planilla (idCPersona_Plla,mes_Plla,Sueldo_Plla,HorasEx_Plla,idDes_Pll,TotalDes_Pll) values (1011,'OCTUBRE',6000,15,3911,321.5);


CREATE PROCEDURE
calculo_planilla
AS
BEGIN
update Planilla set Extraord_Pll = (((Sueldo_Plla /30)/8)*1.5)*HorasEx_Plla;
update Planilla set Total_Pll = Sueldo_Plla + Extraord_Pll;
update Planilla set TotalFin_PLL = Total_Pll - TotalDes_Pll;
END
select * from Planilla
exec calculo_planilla;

-----------------------------
insert into Boleto (idActi_bol,Costo,Cantidad) values(801,100,3)
insert into Boleto (idActi_bol,Costo,Cantidad) values(807,100,4)
insert into Boleto (idActi_bol,Costo,Cantidad) values(806,60,2)
insert into Boleto (idActi_bol,Costo,Cantidad) values(808,70,3)
insert into Boleto (idActi_bol,Costo,Cantidad) values(801,120,4)
insert into Boleto (idActi_bol,Costo,Cantidad) values(802,60,2)
insert into Boleto (idActi_bol,Costo,Cantidad) values(805,80,3)
insert into Boleto (idActi_bol,Costo,Cantidad) values(804,100,4)
insert into Boleto (idActi_bol,Costo,Cantidad) values(800,140,2)
insert into Boleto (idActi_bol,Costo,Cantidad) values(805,100,3)
insert into Boleto (idActi_bol,Costo,Cantidad) values(806,100,3)
insert into Boleto (idActi_bol,Costo,Cantidad) values(800,100,4)
insert into Boleto (idActi_bol,Costo,Cantidad) values(801,60,2)
insert into Boleto (idActi_bol,Costo,Cantidad) values(802,70,3)
insert into Boleto (idActi_bol,Costo,Cantidad) values(809,120,4)
insert into Boleto (idActi_bol,Costo,Cantidad) values(807,60,2)
insert into Boleto (idActi_bol,Costo,Cantidad) values(804,80,3)
insert into Boleto (idActi_bol,Costo,Cantidad) values(805,100,4)
insert into Boleto (idActi_bol,Costo,Cantidad) values(800,140,2)


CREATE PROCEDURE
calculo_Total_B
AS
BEGIN
update Boleto set total = (Costo*Cantidad);

END 
 
exec calculo_Total_B;
select * from Boleto;

insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,800,'Sillas Quebradas',5,20)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,801,'Equipo dañado',1,200)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,802,'Vidrios rotos',2,50)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,805,'Sillas Quebradas',4,20)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,808,'proyector mojado',1,300)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,2301,'Sillas Quebradas',6,20)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,2302,'Golpe a equipo',1,100)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,2303,'Equipo dañado',1,200)
insert into InciTeatro (idSede_ITea,IdConexAct_ITea,Descripcion_Itea,Cantidad_Itea,Costo_Itea) values(700,2304,'Corto circuito debido al derrame de un liquido',2,350)



CREATE PROCEDURE
calculo_Total_IT
AS
BEGIN
update InciTeatro set Total_Itea = (Cantidad_Itea*Costo_Itea);

END 
 
exec calculo_Total_IT;
------CONSULTAS-----
--1
Select Carnet_e,Nombre_e,Apellidos_e,Nombre_curso,Jornada_curso From Estudiantes es Inner join R_CEstudiante re on
re.Carnet_RCE=es.Carnet_e inner join Cursos cu on cu.Idcurso=re.idcurso_RCE where Nombre_e like 'Melanie%'
--2
select SUM(Costo_curso) From Estudiantes es Inner join R_CEstudiante re on re.Carnet_RCE=es.Carnet_e inner join Cursos cu 
on cu.Idcurso=re.idcurso_RCE where Nombre_e like'Melanie%'
--3
Select count(*) from Cursos
--4
select Nombres_pers,Acontecimiento_AcoDoc,Fecha_AcoDoc from AcontecimientosDocente ad INNER JOIN Personal pr ON 
pr.Carnet_Personal=ad.idPersonal_AcoDoc where Fecha_AcoDoc between '2021-06-01' and '2021-10-28' 
--5
select Nombre_Act,Nombre_Disc,Fecha_Act from Actividades ac INNER JOIN Cursos cs on cs.Idcurso=ac.idcurso_Act 
inner join Disciplinas ds on ds.IdDisciplina=cs.idDisc_curso
--6
select * from  Estudiantes where Sexo_e like 'M%'
--7
select Carnet_Personal,Nombres_pers,Apellido_pers,Descr_puest,Sueldo_Plla from Personal pe inner join Planilla pl on 
pe.Carnet_Personal=pl.idCPersona_Plla inner join Puestos pt on pt.idPuestos=pe.idpuesto_pers where Sueldo_Plla between 3000 and 5000
--8
select descripcion_MIns,Descripcion_EE,ReCosto_EE from EstadoEquip ee inner join ConexInventario ci 
on ci.idconexInv=ee.idInv_EE inner join Instrumentos ins on ins.IdInst=ci.idconexInv where descripcion_MIns='Guitarra'
--9
select Nombres_pers,Apellido_pers,TotalDes from Descuentos ds inner join Personal pr on 
ds.IdCPers_Desc=pr.Carnet_Personal where Sexo_pers like 'F%' 
--10
select Nombre_e,Apellidos_e,Estado_Covid from Estudiantes es inner join Covid cd on 
es.Carnet_e=cd.idPersonas_Covid where Estado_Covid like 'P%'
--11
select Nombres_pers,Apellido_pers,Estado_Covid from Personal pr inner join Covid cd on 
pr.Carnet_Personal=cd.idPersonas_Covid where Estado_Covid like 'N%'
--12
select Nombres_pers,Apellido_pers,Descr_puest from Personal pr inner join Puestos pt on 
pr.idpuesto_pers=pt.idPuestos where Descr_puest like 'Sec%' 
--13
select Nombres_pers,Apellido_pers,Descr_puest,Nombre_Capa,Fecha_Capa from Personal pr inner join Puestos pt on 
pr.idpuesto_pers=pt.idPuestos inner join Capacitaciones cp on pr.Carnet_Personal=cp.IdPers_Capa where Descr_puest like 'Do%' 
--14
select Nombre_Act,Fecha_Act  from Actividades where Fecha_Act between '2021-05-01' and '2021-07-30'
--15
select Nombres_pers, Apellido_pers, TotalDes_Pll TotalFin_PLL from Planilla pla inner join personal per
on pla.idCPersona_Plla = per.Carnet_Personal where TotalDes_Pll >=300 and TotalDes_Pll<=500
--16
select Nombres_pers,Apellido_pers, Descr_puest,Sueldo_pers  from Puestos p
inner join Personal per on p.idPuestos = per.idpuesto_pers where idpuesto_pers = 5
--17
select SUM(TotalDes_Pll) from Planilla where idCPersona_Plla between 1005 and 1009
--18
select Nombre_Sede,Departamento_Sede from sede  where idsede=702
--19
select COUNT(*) from Estudiantes where Sexo_e='Femenino'
--20
select sum(Total) from Boleto where idActi_bol=800

select * from AcontecimientosDocente
select * from Actividades
select * from Actuacion
select * from ArtePersona
select * from ArteStudent
select * from AsignacionLimpieza
select * from Boleto
select * from Camarografos
select * from Capacitaciones
select * from ConexActividades
select * from Contacto_Emergencia
select *  from Correos
select * from Covid
select * from Cursos
select * from DescripArte
select * from Descuentos
select * from Disciplinas
select * from Encargado
select * from Escenografia
select * from EstadoEquip
select * from Estudiantes
select * from ExpoArte
select * from Familiares
select * from InciTeatro
select * from Instr_Danz
select * from Instrumentos
select * from Limpieza
select * from llaves_prim
select * from LucesYEfectos
select * from MaterialArte
select * from MaterialCine
select * from MaterialEscenagrofia
select * from Musica
select * from MusicaUtilizada
select * from Numeros_Tel
select * from Obras
select * from P_PrestacionEquip
select * from Particpacion
select * from Personal
select * from Planilla
select * from Premios
select * from Proveedor
select * from Puestos
select * from R_CEstudiante
select * from R_Inventario
select * from Reg_Mat_Esc
select * from RegistroDocente
select * from Relacion_Familia
select * from Sede
select * from Vestuario

Select * from Personal where FechaNac_pers <= '1960-11-08'

select SUM(total) from Boleto bl inner join ConexActividades ca on ca.idconexActi=bl.idActi_bol inner join Actividades act on act.idact=ca.idconexActi where Fecha_Act='2021-02-14'
select Nombre_Act,Fecha_Act from Boleto bl inner join ConexActividades ca on ca.idconexActi=bl.idActi_bol inner join Actividades act on act.idact=ca.idconexActi where Fecha_Act='2021-02-14'


select * from Actividades