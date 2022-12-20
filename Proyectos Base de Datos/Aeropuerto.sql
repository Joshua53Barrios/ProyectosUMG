CREATE DATABASE AEROPUERTO;
USE AEROPUERTO;

create table Registro_Vuelo(
	IdVuelo int IDENTITY(100,1) primary key,
	Destino_R varchar(25),
	Partida_R varchar(25),
	Hora_R varchar(5),
	N_Avión_R int,
	N_Puerta_R varchar(3),
	Fecha_R varchar(10),
	C_Aeropuerto_R int,
	Idaero_R int
);

create table EstadoVuelo(
	idregistro_E int IDENTITY(200,1) primary key,
descripcion_E varchar(15),
idvuelo_E int
);
create table Aerolinea(
	Idaero int IDENTITY(300,1) primary key,
	nombre_linea varchar(40),
	licencia_linea varchar(15),
	web_linea varchar(30),
);

create table Pasajeros(
	N_Pasaporte int IDENTITY(400,1) primary key,
	Nombre_Pas varchar(25),
	Apellido_Pas varchar(25),
	F_Nacimiento_Pas varchar(10),
	sexo_Pas varchar(11),
	direccion_Pas varchar(100),
	Vacuna_Pas varchar(10),
	N_Visa_Pas int,
	N_boleto_Pas int
);

create table Equipaje(
idequipaje_Equi int IDENTITY(500,1) primary key,
N_boleto_Equi int, 
N_maleta_Equi int,
descripcion_Equi varchar (20)
);

create table Boletos(
N_boleto int IDENTITY(600,1) primary key,
Tipo_bol varchar(10),
idaerolinea_bol int,
Asiento_bol varchar(5),
Clase_bol varchar(10),
Precio_Q_bol varchar(10),
idVuelo_bol int,
Cabina_bol int
);
create table Visa(
	N_Visa int IDENTITY(700,1) primary key,
	NControl_v varchar(8),
	N_Formulario_v int,
	F_Emision_v varchar (15),
	F_Exp_v varchar(15),
	Tipo_v varchar (15),
);
create table P_Puerto(
	C_Carnet int IDENTITY(800,1) primary key,
	Nombre_pers varchar(15),
	Apellidos_pers varchar(15),
	Puesto_pers varchar (10),
	DPI_pers varchar(15),
	direccion_pers varchar(100),
	Jornada_pers varchar (10),
	Sueldo_pers varchar (12),
	N_medico_pers varchar (5),
	C_departamento_pers int
);

create table Departamento(
	C_departamento int IDENTITY(900,1) primary key,
	nombre_depa varchar (20),
	Maquinaria_A_depa int
);
create table Maquinaria(
	idmaquinaria int IDENTITY(1000,1) primary key,
	nombre_maqui varchar (20),
	C_departamento_maqui int,
	idproveedor_maqui int
);
create table MaquinaPersonal(
C_Carnet_mp int,
idmaquina_mp int,
fecha_mp varchar(10),
hora_mp varchar(11)
);
create table Azafatas(
	idAza int IDENTITY(1100,1) primary key,
	Nombre_aza varchar(25),
	Apellido_aza varchar(25),
	FechaNac_aza varchar(15),
	sexo_aza varchar(11),
	N_Pasaporte_aza int,
	N_Visa_aza int,
	altura_Metros_aza varchar(4) 
);
create table Piloto(
	idPiloto int IDENTITY(1200,1) primary key,
	Nombre_pil varchar(25),
	Apellido_pil varchar(25),
	FechaNac_pil varchar(15),
	sexo_pil varchar(11),
	N_Pasaporte_pil int,
	N_Visa_pil int,
	Rango_pil varchar(14),
	licencia_pil varchar(10)
);
create table Visa_Aero(
	N_Visa int IDENTITY(1300,1) primary key,
	T_Visa_va varchar(12),
	F_Emision_va varchar (15),
	F_Exp_va varchar(15)
);
create table Idiomas(
	N_RIdioma int IDENTITY(1400,1) primary key,
	Idioma_idi varchar (20),
	IdAza_idi int
);
create table AcademiaA(
	N_RAcademia int IDENTITY(1500,1) primary key,
	nombre_acaA varchar (20),
	Idaza_acaA int
);
create table AcademiaP(
	N_RAcademia int IDENTITY(1600,1) primary key,
	nombre_acaP varchar (20),
	Idpiloto_acaP int
);
create table P_Cabina(
	N_RCabina int IDENTITY(1700,1) primary key,
	idpiloto_pcab int,
	idvuelo_pcab int,
	Asignacion_pcab varchar(10)
);
create table P_Aza(
	N_RAzaf int IDENTITY(1800,1) primary key,
	ipaza_paza int,
	idvuelo_paza int
);
create table Aeropuerto (
	C_Aeropuerto int IDENTITY(1900,1) primary key,
	nombre_aep varchar(20),
	web_aep varchar(20),
	direccion_aep varchar(100)
);

create table Avion (
NAvion int IDENTITY(2000,1) primary key,
T_Avion_a varchar(10),
Capacidad_a varchar (10),
Marca_a varchar (15),
Modelo_a varchar (15),
N_Caja_Negra_a int,
Peso_Kilo_a varchar(4),
idproveedor_a int
);

create table EstadoAvion(
idregistro int IDENTITY(2100,1) primary key,
descripcion_ea varchar(15),
NAvion_ea int
);
create table infovuelo(
idvuelo_info int,
NAvion_info int,
Descripcion_info varchar(20),
Clase_vuelo_info varchar (10) 
);

create table botiquin(
idboti int IDENTITY(2200,1) primary key,
idvuelo_boti int,
descripcion_boti varchar(20),
idproveedor_boti int
);

create table Alimentos(
 N_Ali int IDENTITY(2300,1) primary key,
 idvuelo_ali int,
 descripcion_ali varchar(20),
 idproveedor_ali int
);

create table Proveedores(
idproveedor int IDENTITY(2400,1) primary key,
nombre_pro varchar(20),
direccion_pro varchar(100)
);

create table Numeros_Tel(
	id_telefono int IDENTITY(2500,1) primary key,
	telefono_tel varchar (12),
	Identificador_tel int ,
);

create table Distraccion(
N_Distra int IDENTITY(2600,1) primary key,
idvuelo_dis int,
nombre_dis varchar(35),
Tipo_dis varchar(20)
);
create table tienda(
idventa int IDENTITY(2700,1) primary key,
cantidad_ti int,
descripcion_ti varchar(25),
precio_ti varchar(9),
idproveedor_ti int
);
create table asistencia(
idregistro_asis int IDENTITY(2800,1) primary key,
N_pasaporte_asis int,
Razon_asis varchar(20),
fecha_asis varchar(11),
hora_asis varchar(5),
Idaero_asis int
);

create table carga(
registro_c int IDENTITY(2900,1) primary key,
idvuelo_c int,
tipo_c varchar(20),
peso_c varchar(10)
);

create table Aduana(
registro_adu int IDENTITY(3000,1) primary key,
idvuelo_adu int,
tipo_adu varchar(20),
peso_adu varchar(10),
impuesto_adu varchar(10),
valor_adu varchar(20)
);

create table migracion(
idmigracion int IDENTITY(3100,1) primary key,
nombre_mi varchar(20),
apellido_mi varchar(20),
Fecha_mi varchar(10),
Causa_mi varchar(20),
Dpi_mi varchar(19),
idvuelo_mi int
);

create table cuarentena(
idcuarentena int IDENTITY(3200,1) primary key,
N_pasaporte_cua int,
Dias_cua int,
Ubicación_cua varchar(25),
isopado_cua varchar(14)
);

create table Correos(
	id_correo int IDENTITY(3300,1) primary key,
	correo_co varchar (30),
	Identificador_co int
);

create table llaves_prim(
Identificador_ll int not null primary key,
nombre_ll varchar(5)
); 

alter table carga add CONSTRAINT pk_carga1 FOREIGN KEY (idvuelo_c) REFERENCES Registro_Vuelo(Idvuelo);
alter table Aduana add CONSTRAINT pk_Aduana1 FOREIGN KEY (idvuelo_adu) REFERENCES Registro_Vuelo(Idvuelo);
alter table migracion add CONSTRAINT pk_migracion1 FOREIGN KEY (idvuelo_mi) REFERENCES Registro_Vuelo(Idvuelo);
alter table EstadoVuelo add CONSTRAINT pk_E1 FOREIGN KEY (idvuelo_E) REFERENCES Registro_Vuelo(Idvuelo);
alter table Boletos  add CONSTRAINT pk_B1 FOREIGN KEY (idVuelo_bol) REFERENCES Registro_Vuelo(Idvuelo);
alter table P_Cabina add CONSTRAINT pk_pc2 FOREIGN KEY (idvuelo_pcab) REFERENCES Registro_Vuelo(Idvuelo);
alter table P_Aza add CONSTRAINT pk_pa2 FOREIGN KEY (idvuelo_paza) REFERENCES Registro_Vuelo(Idvuelo);
alter table Alimentos add CONSTRAINT pk_a11 FOREIGN KEY (idvuelo_ali) REFERENCES Registro_Vuelo(Idvuelo);
alter table Distraccion add CONSTRAINT pk_d FOREIGN KEY (idvuelo_dis) REFERENCES Registro_Vuelo(Idvuelo);
alter table botiquin add CONSTRAINT pk_boti1 FOREIGN KEY (idvuelo_boti) REFERENCES Registro_Vuelo(Idvuelo);
alter table infovuelo add CONSTRAINT pk_iv FOREIGN KEY (idvuelo_info) REFERENCES Registro_Vuelo(Idvuelo);
alter table Registro_Vuelo add CONSTRAINT pk_avion2 FOREIGN KEY (N_Avión_R) REFERENCES Avion(NAvion);
alter table Registro_Vuelo add CONSTRAINT pk_v1 FOREIGN KEY (C_Aeropuerto_R) REFERENCES Aeropuerto(C_Aeropuerto);
alter table Registro_Vuelo add CONSTRAINT pk_caero1 FOREIGN KEY (Idaero_R) REFERENCES Aerolinea(Idaero);
alter table cuarentena add CONSTRAINT pk_cuarentena1 FOREIGN KEY (N_Pasaporte_cua) REFERENCES Pasajeros(N_Pasaporte);
alter table Pasajeros add CONSTRAINT pk_P2 FOREIGN KEY (N_boleto_Pas) REFERENCES Boletos(N_boleto);
alter table Pasajeros add CONSTRAINT pk_P3 FOREIGN KEY (N_Visa_Pas) REFERENCES Visa(N_Visa);
alter table AcademiaP add CONSTRAINT pk_AP FOREIGN KEY (Idpiloto_acaP) REFERENCES Piloto(idPiloto);
alter table AcademiaA add CONSTRAINT pk_AA FOREIGN KEY (Idaza_acaA) REFERENCES Azafatas(idAza);
alter table Equipaje add CONSTRAINT pk_E2 FOREIGN KEY (N_boleto_Equi) REFERENCES Boletos(N_boleto);
alter table P_Puerto add CONSTRAINT pk_pp1 FOREIGN KEY (C_departamento_pers) REFERENCES Departamento(C_departamento);
alter table Maquinaria add CONSTRAINT pk_M1 FOREIGN KEY (C_departamento_maqui) REFERENCES Departamento(C_departamento);
alter table Azafatas add CONSTRAINT pk_A1 FOREIGN KEY (N_Visa_aza) REFERENCES Visa_Aero(N_Visa);
alter table Piloto add CONSTRAINT pk_Piloto1 FOREIGN KEY (N_Visa_pil) REFERENCES Visa_Aero(N_Visa);
alter table Idiomas add CONSTRAINT pk_I1 FOREIGN KEY (IdAza_idi) REFERENCES Azafatas(idAza);
alter table P_Cabina add CONSTRAINT pk_pc1 FOREIGN KEY (idpiloto_pcab) REFERENCES Piloto(idPiloto);
alter table P_Aza add CONSTRAINT pk_pa1 FOREIGN KEY (ipaza_paza) REFERENCES Azafatas(idAza);
alter table EstadoAvion add CONSTRAINT pk_EA FOREIGN KEY (NAvion_ea) REFERENCES Avion(NAvion);
alter table infovuelo add CONSTRAINT pk_iv2 FOREIGN KEY (NAvion_info) REFERENCES Avion(NAvion);
alter table asistencia add CONSTRAINT pk_as FOREIGN KEY (N_pasaporte_asis) REFERENCES Pasajeros(N_Pasaporte);
alter table MaquinaPersonal add CONSTRAINT pk_MP FOREIGN KEY (C_Carnet_mp) REFERENCES P_Puerto(C_Carnet);
alter table MaquinaPersonal add CONSTRAINT pk_MP2 FOREIGN KEY (idmaquina_mp) REFERENCES Maquinaria(idmaquinaria);
alter table Avion add CONSTRAINT pk_avion1 FOREIGN KEY (idproveedor_a) REFERENCES Proveedores(idproveedor);
alter table Alimentos add CONSTRAINT pk_a FOREIGN KEY (idproveedor_ali) REFERENCES Proveedores(idproveedor);
alter table tienda add CONSTRAINT pk_t12 FOREIGN KEY (idproveedor_ti) REFERENCES Proveedores(idproveedor);
alter table Maquinaria add CONSTRAINT pk_M2 FOREIGN KEY (idproveedor_maqui) REFERENCES Proveedores(idproveedor);
alter table botiquin add CONSTRAINT pk_boti2 FOREIGN KEY (idproveedor_boti) REFERENCES Proveedores(idproveedor);
alter table Numeros_Tel add CONSTRAINT pk_tels1 FOREIGN KEY (Identificador_tel) REFERENCES llaves_prim(Identificador_ll);
alter table Correos add CONSTRAINT pk_cor1 FOREIGN KEY (Identificador_co) REFERENCES llaves_prim(Identificador_ll);
alter table asistencia add CONSTRAINT pk_caer2 FOREIGN KEY (Idaero_asis) REFERENCES Aerolinea(Idaero);


insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Canada','Guatemala','5:00',2000,'P01','05/09/2021',1900,300); 
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Honduras','Guatemala','6:00',2001,'P02','25/07/2021',1901,301);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Nicaragua','Guatemala','8:00',2002,'P03','05/09/2021',1902,300);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Panama','Guatemala','11:00',2003,'P04','25/07/2021',1903,302);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Ecuador','Guatemala','13:00',2004,'P05','04/03/2021',1904,303);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('El Salvador','Guatemala','12:00',2005,'P06','05/01/2021',1905,304);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','Mexico','8:00',2001,'P06','01/09/2021',1901,303);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','USA','16:00',2000,'P06','03/09/2021',1904,305);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','España','12:00',2003,'P06','25/07/2021',1904,305);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','','16:00',2004,'P06','04/04/2021',1900,300);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','España','12:00',2005,'P06','15/02/2021',1903,302);

insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Argentina','Guatemala','10:00',2005,'P06','25/09/2021',1900,306);

insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Ecuador','Guatemala','13:00',2004,'P05','04/01/2021',1904,303);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('El Salvador','Guatemala','12:00',2005,'P06','05/01/2021',1905,304);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','Mexico','8:00',2001,'P06','11/01/2021',1901,303);


insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','Panama','22:00',2005,'P06','18/09/2021',1903,302);
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Guatemala','Panama','22:00',2005,'P06','02/02/2021',1903,302);

insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Mexico','Guatemala','02:00',2001,'P06','15/03/2021',1903,307);


insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Brasil','Guatemala','8:00',2001,'P06','01/09/2021',1901,305);


insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Canada','Guatemala','5:00',2000,'P01','20/09/2021',1900,300); 
insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Honduras','Guatemala','6:00',2001,'P02','20/09/2021',1901,301);
select *from Registro_Vuelo

insert into EstadoVuelo (descripcion_E, idvuelo_E) values('Despegando',100); 
insert into EstadoVuelo (descripcion_E, idvuelo_E) values('Retrasado',101);
insert into EstadoVuelo (descripcion_E, idvuelo_E) values('En Tierra',102);
insert into EstadoVuelo (descripcion_E, idvuelo_E) values('Aterrizando',103);
insert into EstadoVuelo (descripcion_E, idvuelo_E) values('Despegando',104);
insert into EstadoVuelo (descripcion_E, idvuelo_E) values('En Tierra',105);

insert into EstadoVuelo (descripcion_E, idvuelo_E) values('Retrasado',112);
insert into EstadoVuelo (descripcion_E, idvuelo_E) values('Retrasado',113);

insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('TAG Airlines','TA123','https\\:Tagairlines.com.gt'); 
insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('InterJet','4OI','https\\:Interjet.com.gt'); 
insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('United','UA120','https\\:United.com.gt');
insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('Frontier','F978','https\\:Frontier.com.gt');
insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('Volaris','Y471','https\\:Volaris.com.gt');
insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('Spirit Airlines','NK102','https\\:Spiritairlines.com.gt');

insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('American','JF942','https\\:FlightAmerican.com.mx');
insert into Aerolinea (nombre_linea, licencia_linea, web_linea) values('AUnited','MK842','https\\:AUnited.com.tx');
select * from Aerolinea

insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Velvet','Samayoa','01/05/2000','Femenino','1ra Calle 3era avenida zona 6 1-35','Moderna',700,600); 
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Ricardo','Miranda','26/02/2001','Masculino','3ra calle 1ra avenida zona 8 3-18','Pfizer',701,601);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Joshua','Barrios','29/06/2001','Masculino','7ma calle 5ta avenida zona 5 7-75','astrazenea',702,602);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Melanie','Morataya','20/04/2002','Femenino','4ta calle 7ma avenida Zona 7 4-75','sputnick',703,603);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Jose','Luna','10/01/1990','Masculino','2da calle 4ta avenida Zona 6 2-45','Moderna',704,604);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Augusto','Fernandez','19/05/1995','Masculino','5ta calle 2da avenida Zona 2 5-26','sputnick',705,605);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Fernando','Fernandez','11/05/1990','Masculino','4ta calle 3ra avenida Zona 6','sputnick',706,605);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Rodrigo','Rodriguez','21/05/1980','Masculino','3ra calle 2da avenida Zona 8','sputnick',707,605);
select * from Pasajeros
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Jose','Luna','10/01/1990','Masculino','2da calle 4ta avenida Zona 6 2-45','Moderna',704,608);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Augusto','Fernandez','19/05/1995','Masculino','5ta calle 2da avenida Zona 2 5-26','sputnick',705,609);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Fernando','Fernandez','11/05/1990','Masculino','4ta calle 3ra avenida Zona 6','sputnick',706,610);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Rodrigo','Rodriguez','21/05/1980','Masculino','3ra calle 2da avenida Zona 8','sputnick',707,611);

insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Velvet','Samayoa','01/05/2005','Femenino','1ra Calle 3era avenida zona 6 1-35','Moderna',700,612); 
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Ricardo','Miranda','26/02/2006','Masculino','3ra calle 1ra avenida zona 8 3-18','Pfizer',701,613);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Joshua','Barrios','29/06/2009','Masculino','7ma calle 5ta avenida zona 5 7-75','astrazenea',702,614);


insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Melanie','Morataya','20/04/2002','Femenino','4ta calle 7ma avenida Zona 7 4-75','sputnick',703,616);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Jose','Luna','10/01/1990','Masculino','2da calle 4ta avenida Zona 6 2-45','Moderna',704,617);

insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Alejandro','Ortiz','29/06/2004','Masculino','7ma calle 5ta avenida zona 5 7-75','astrazenea',702,618);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Mario','Morataya','20/04/2005','Femenino','4ta calle 7ma avenida Zona 7 4-75','sputnick',703,619);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Jose','Fernandez','10/01/2006','Masculino','2da calle 4ta avenida Zona 6 2-45','Moderna',704,620);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Edgar','Fernandez','19/05/206','Masculino','5ta calle 2da avenida Zona 2 5-26','sputnick',705,621);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Fernando','Castillo','11/05/2008','Masculino','4ta calle 3ra avenida Zona 6','sputnick',706,622);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Rodrigo','Franco','21/05/2009','Masculino','3ra calle 2da avenida Zona 8','sputnick',707,623);


insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Velvet','Samayoa','01/05/2000','Femenino','1ra Calle 3era avenida zona 6 1-35','Moderna',700,624); 
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Ricardo','Miranda','26/02/2001','Masculino','3ra calle 1ra avenida zona 8 3-18','Pfizer',701,625);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Joshua','Barrios','29/06/2001','Masculino','7ma calle 5ta avenida zona 5 7-75','astrazenea',702,626);
insert into Pasajeros (Nombre_Pas,Apellido_Pas,F_Nacimiento_Pas,sexo_Pas,direccion_Pas,Vacuna_Pas,N_Visa_Pas,N_boleto_Pas) values('Melanie','Morataya','20/04/2002','Femenino','4ta calle 7ma avenida Zona 7 4-75','sputnick',703,627);



insert into Equipaje (N_boleto_Equi,N_maleta_Equi,descripcion_Equi) values(600,41,'Extraviada');
insert into Equipaje (N_boleto_Equi,N_maleta_Equi,descripcion_Equi) values(601,42,'Extraviada');
insert into Equipaje (N_boleto_Equi,N_maleta_Equi,descripcion_Equi) values(602,43,'Extraviada');
insert into Equipaje (N_boleto_Equi,N_maleta_Equi,descripcion_Equi) values(603,44,'Extraviada');
insert into Equipaje (N_boleto_Equi,N_maleta_Equi,descripcion_Equi) values(604,45,'Extraviada');
insert into Equipaje (N_boleto_Equi,N_maleta_Equi,descripcion_Equi) values(605,46,'Extraviada');

insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',300,'A01','P.Clase','Q3500.00',100,1);  
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('B',301,'B02','Ejecutivo','Q2500.00',101,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('C',302,'C03','Economico','Q1500.00',102,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('D',303,'A15','Economico','Q1500.00',103,1);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',304,'C26','P.Clase','Q3500.00',104,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('F',305,'B17','Ejecutivo','Q2500.00',105,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',304,'C26','P.Clase','Q3500.00',106,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('F',305,'B17','Ejecutivo','Q2500.00',107,2);

insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',306,'B17','P.Clase','Q2500.00',111,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('B',306,'B17','Ejecutivo','Q2500.00',111,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('D',306,'B17','Economico','Q2500.00',111,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('D',306,'B17','Economico','Q2500.00',111,1);
select *from Boletos
--612 a 615
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',306,'B17','P.Clase','Q2500.00',115,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('B',306,'B17','Ejecutivo','Q2500.00',115,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('D',306,'B17','Economico','Q2500.00',115,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('D',306,'B17','Economico','Q2500.00',115,1);

--616 a 617
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',306,'B17','P.Clase','Q2500.00',116,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('B',306,'B17','Ejecutivo','Q2500.00',116,2);

--618 a 623
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('C',302,'C03','Economico','Q1500.00',117,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('D',303,'A15','Economico','Q1500.00',117,1);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',304,'C26','P.Clase','Q3500.00',117,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('F',305,'B17','Ejecutivo','Q2500.00',117,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',304,'C26','P.Clase','Q3500.00',117,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('F',305,'B17','Ejecutivo','Q2500.00',117,2);

--624 a 627
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',300,'A01','P.Clase','Q3500.00',118,1);  
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('B',301,'B02','Ejecutivo','Q2500.00',118,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('C',302,'C03','Economico','Q1500.00',118,3);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('D',303,'A15','Economico','Q1500.00',118,1);



insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0001',401,'01/05/2021','02/05/2031','B-2(Visita)'); 
insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0002',402,'26/02/2020','26/02/2030','B-1(Negocio)');
insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0003',403,'29/06/2021','29/06/2031','M-1(Estudio)');
insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0004',404,'28/06/2019','28/06/2029','M-1(Estudio)');
insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0005',405,'18/08/2020','18/08/2030','B-2(Visita)');
insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0006',406,'13/09/2021','13/09/2031','B-1(Negocio)');
insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0006',408,'07/09/2020','07/09/2031','B-1(Negocio)');
insert into Visa (NControl_v,N_Formulario_v,F_Emision_v,F_Exp_v,Tipo_v) values('0006',407,'10/09/2017','07/09/2031','B-1(Negocio)');

insert into P_Puerto (Nombre_pers,Apellidos_pers,Puesto_pers,DPI_pers,direccion_pers,Jornada_pers,Sueldo_pers,N_medico_pers,C_departamento_pers) values('Juan','Garcia','Guardia','2001-32145-0101','1ra calle 2da ave Zona 7 1-25','Matutina','Q4500.00',1234,900); 
insert into P_Puerto (Nombre_pers,Apellidos_pers,Puesto_pers,DPI_pers,direccion_pers,Jornada_pers,Sueldo_pers,N_medico_pers,C_departamento_pers) values('Jose','Marquez','Tecnico','3002-12354-0001','5ta calle 1ra ave Zona 6 5-15','Matutina','Q8500.00',2345,901);
insert into P_Puerto (Nombre_pers,Apellidos_pers,Puesto_pers,DPI_pers,direccion_pers,Jornada_pers,Sueldo_pers,N_medico_pers,C_departamento_pers) values('Dulce','Miranda','Agente','3006-35458-0111','7ma calle 5ta ave Zona 8 7-56','Vespertino','Q7500.00',3456,902);
insert into P_Puerto (Nombre_pers,Apellidos_pers,Puesto_pers,DPI_pers,direccion_pers,Jornada_pers,Sueldo_pers,N_medico_pers,C_departamento_pers) values('Luis','Gutierrez','Auxiliar','2211-35151-0007','6ta calle 4ta ave Zona 1 6-41','Nocturno','Q5500.00',4567,903);
insert into P_Puerto (Nombre_pers,Apellidos_pers,Puesto_pers,DPI_pers,direccion_pers,Jornada_pers,Sueldo_pers,N_medico_pers,C_departamento_pers) values('Maria','Vivar','Tecnico','2002-45697-0005','3ra calle 7ma ave Zona 3 3-78','Matutina','Q85000.00',5678,904);
insert into P_Puerto (Nombre_pers,Apellidos_pers,Puesto_pers,DPI_pers,direccion_pers,Jornada_pers,Sueldo_pers,N_medico_pers,C_departamento_pers) values('Carlos','Hernandez','Agente', '2001-32145-0101','2da calle 2da ave Zona 2 2-25','Matutina','Q7500.00',6789,905);
insert into P_Puerto (Nombre_pers,Apellidos_pers,Puesto_pers,DPI_pers,direccion_pers,Jornada_pers,Sueldo_pers,N_medico_pers,C_departamento_pers) values('Juan','Jimenez','Tecnico', '2001-32145-0101','2da calle 2da ave Zona 2 2-25','Matutina','Q7500.00',6789,905);


insert into Departamento (nombre_depa,Maquinaria_A_depa) values('Seguridad',10); 
insert into Departamento (nombre_depa,Maquinaria_A_depa) values('Administracion',1);
insert into Departamento (nombre_depa,Maquinaria_A_depa) values('Servicios',2);
insert into Departamento (nombre_depa,Maquinaria_A_depa) values('Tripulacion',3);
insert into Departamento (nombre_depa,Maquinaria_A_depa) values('Adminsitracion',4);
insert into Departamento (nombre_depa,Maquinaria_A_depa) values('Servicios',5);

insert into Maquinaria (nombre_maqui,C_departamento_maqui,idproveedor_maqui) values('Detector',900,2400); 
insert into Maquinaria (nombre_maqui,C_departamento_maqui,idproveedor_maqui) values('Computador',901,2401);
insert into Maquinaria (nombre_maqui,C_departamento_maqui,idproveedor_maqui) values('Ordenador',902,2402);
insert into Maquinaria (nombre_maqui,C_departamento_maqui,idproveedor_maqui) values('Vehi.cargador',903,2403);
insert into Maquinaria (nombre_maqui,C_departamento_maqui,idproveedor_maqui) values('Computador',904,2404);
insert into Maquinaria (nombre_maqui,C_departamento_maqui,idproveedor_maqui) values('Ordenador',905,2405);

insert into MaquinaPersonal values(800,1000,'10/03/2021','10:20'); 
insert into MaquinaPersonal values(801,1001,'30/05/2021','12:10');
insert into MaquinaPersonal values(802,1002,'12/07/2021','15:30');
insert into MaquinaPersonal values(803,1003,'09/04/2021','20:40');
insert into MaquinaPersonal values(804,1004,'20/06/2021','08:20');
insert into MaquinaPersonal values(805,1005,'08/07/2021','19:25');

insert into Azafatas (Nombre_aza,Apellido_aza,FechaNac_aza,sexo_aza,N_Pasaporte_aza,N_Visa_aza,altura_Metros_aza) values('Marta','Sanchez','03/05/1990','Femenino',170456,1300,'1.70'); 
insert into Azafatas (Nombre_aza,Apellido_aza,FechaNac_aza,sexo_aza,N_Pasaporte_aza,N_Visa_aza,altura_Metros_aza) values('Marcos','Morales','25/05/1996','Masculino',171456,1301,'1.77');
insert into Azafatas (Nombre_aza,Apellido_aza,FechaNac_aza,sexo_aza,N_Pasaporte_aza,N_Visa_aza,altura_Metros_aza) values('Sofia','hernandez','03/09/1999','Femenino',172456,1302,'1.72');
insert into Azafatas (Nombre_aza,Apellido_aza,FechaNac_aza,sexo_aza,N_Pasaporte_aza,N_Visa_aza,altura_Metros_aza) values('Luis','Castellanos','30/10/1991','Masculino',173456,1303,'1.80');
insert into Azafatas (Nombre_aza,Apellido_aza,FechaNac_aza,sexo_aza,N_Pasaporte_aza,N_Visa_aza,altura_Metros_aza) values('Emily','Montes','26/02/1995','Femenino',174456,1304,'1.73');
insert into Azafatas (Nombre_aza,Apellido_aza,FechaNac_aza,sexo_aza,N_Pasaporte_aza,N_Visa_aza,altura_Metros_aza) values('Daniel','Ortiz','28/12/1992','Masculino',175456,1305,'1.81');

insert into Piloto (Nombre_pil,Apellido_pil,FechaNac_pil,sexo_pil,N_Pasaporte_pil,N_Visa_pil,Rango_pil,licencia_pil) values('Francisco','Lopez','28/12/1982','Masculino',180456,1306,'Capitan','Vigente');  
insert into Piloto (Nombre_pil,Apellido_pil,FechaNac_pil,sexo_pil,N_Pasaporte_pil,N_Visa_pil,Rango_pil,licencia_pil) values('Manuel','Gonzales','31/12/1980','Masculino',181456,1307,'Cabo','Vigente');
insert into Piloto (Nombre_pil,Apellido_pil,FechaNac_pil,sexo_pil,N_Pasaporte_pil,N_Visa_pil,Rango_pil,licencia_pil) values('Carmen','Gomez','28/11/1982','Femenino',182456,1308,'Sargento','Vigente');
insert into Piloto (Nombre_pil,Apellido_pil,FechaNac_pil,sexo_pil,N_Pasaporte_pil,N_Visa_pil,Rango_pil,licencia_pil) values('Javier','Moreno','01/05/1992','Masculino',183456,1309,'Capitan','Vigente');
insert into Piloto (Nombre_pil,Apellido_pil,FechaNac_pil,sexo_pil,N_Pasaporte_pil,N_Visa_pil,Rango_pil,licencia_pil) values('Antonia','Perez','13/08/1974','Femenino',184456,1310,'Subteniente','Vigente');
insert into Piloto (Nombre_pil,Apellido_pil,FechaNac_pil,sexo_pil,N_Pasaporte_pil,N_Visa_pil,Rango_pil,licencia_pil) values('Jesus','Rodriguez','29/07/1985','Masculino',185456,1311,'Sargento','Vigente');

insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','21/03/2020','21/03/2030');  
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','12/02/2019','13/03/2029');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','15/08/2021','16/03/2031');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','28/07/2018','19/03/2028');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','16/09/2019','16/03/2029');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','26/10/2021','26/03/2031');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','30/11/2017','30/03/2027');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','19/03/2020','19/03/2030');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','20/06/2020','21/03/2030');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','22/08/2021','23/03/2031');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','25/07/2021','26/03/2031');
insert into Visa_Aero (T_Visa_va,F_Emision_va,F_Exp_va) values('D (Tripula)','11/12/2018','12/03/2028');

insert into Idiomas (Idioma_idi,IdAza_idi) values('Frances',1100);  
insert into Idiomas (Idioma_idi,IdAza_idi) values('Ingles',1101);
insert into Idiomas (Idioma_idi,IdAza_idi) values('Aleman',1102);
insert into Idiomas (Idioma_idi,IdAza_idi) values('Italiano',1103);
insert into Idiomas (Idioma_idi,IdAza_idi) values('Portugues',1104);
insert into Idiomas (Idioma_idi,IdAza_idi) values('Ingles',1105);

insert into AcademiaA (nombre_acaA,Idaza_acaA) values('Aviation Academy',1100);  
insert into AcademiaA (nombre_acaA,Idaza_acaA) values('Aerotraining',1101);
insert into AcademiaA (nombre_acaA,Idaza_acaA) values('ETAP',1102);
insert into AcademiaA (nombre_acaA,Idaza_acaA) values('ALAS',1103);
insert into AcademiaA (nombre_acaA,Idaza_acaA) values('Air-Hostess',1104);
insert into AcademiaA (nombre_acaA,Idaza_acaA) values('CENAFOM',1105);

insert into AcademiaP (nombre_acaP,Idpiloto_acaP) values('Adventia',1200);  
insert into AcademiaP (nombre_acaP,Idpiloto_acaP) values('Escuela Aerea Wings',1201);
insert into AcademiaP (nombre_acaP,Idpiloto_acaP) values('Academia de Aviacion',1202);
insert into AcademiaP (nombre_acaP,Idpiloto_acaP) values('Safety pilot',1203);
insert into AcademiaP (nombre_acaP,Idpiloto_acaP) values('Aerocenter',1204);
insert into AcademiaP (nombre_acaP,Idpiloto_acaP) values('Altitud',1205);

insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1200,100,'Piloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1201,100,'Copiloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1202,102,'Piloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1203,102,'Copiloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1204,101,'Copiloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1205,101,'Piloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1204,108,'Copiloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1205,108,'Piloto');

insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1204,119,'Copiloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1205,119,'Piloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1204,120,'Copiloto');
insert into P_Cabina (idpiloto_pcab,idvuelo_pcab,Asignacion_pcab) values(1205,120,'Piloto');

insert into P_Aza (ipaza_paza,idvuelo_paza) values(1100,100); 
insert into P_Aza (ipaza_paza,idvuelo_paza) values(1101,101);
insert into P_Aza (ipaza_paza,idvuelo_paza) values(1102,100);
insert into P_Aza (ipaza_paza,idvuelo_paza) values(1103,102);
insert into P_Aza (ipaza_paza,idvuelo_paza) values(1104,102);
insert into P_Aza (ipaza_paza,idvuelo_paza) values(1105,101);

insert into Aeropuerto (nombre_aep,web_aep,direccion_aep) values('Aero I Toronto','https\\:AToronto.com','1ra calle 2da ave Zona 7 11-25');
insert into Aeropuerto (nombre_aep,web_aep,direccion_aep) values('Aero I Toncontín','https\\:AToncont.com','5ta calle 1ra ave Zona 26 57-15');
insert into Aeropuerto (nombre_aep,web_aep,direccion_aep) values('Aero I Augusto C.','https\\:Aaugusto.com','7ma calle 5ta ave Zona 18 47-56');
insert into Aeropuerto (nombre_aep,web_aep,direccion_aep) values('Aero I Tocumen','https\\:ATocumen.com','3ra calle 7ma ave Zona 23 53-78');
insert into Aeropuerto (nombre_aep,web_aep,direccion_aep) values('Aero I Mariscal S.','https\\:AMarisca.com','6ta calle 4ta ave Zona 11 56-41');
insert into Aeropuerto (nombre_aep,web_aep,direccion_aep) values('Aero I El Salvador','https\\:AelSalva.com','2da calle 2da ave Zona 20 20-25');

insert into Avion (T_Avion_a,Capacidad_a,Marca_a,Modelo_a,N_Caja_Negra_a,Peso_Kilo_a,idproveedor_a) values('Carga','68000 Kg','United T','A330',290,'176K',2400);  
insert into Avion (T_Avion_a,Capacidad_a,Marca_a,Modelo_a,N_Caja_Negra_a,Peso_Kilo_a,idproveedor_a) values('Pasajeros','47000 Kg','Lockheed M','A320',291,'182K',2401);
insert into Avion (T_Avion_a,Capacidad_a,Marca_a,Modelo_a,N_Caja_Negra_a,Peso_Kilo_a,idproveedor_a) values('Carga','45000 Kg','Aviation','A560',292,'190K',2406);
insert into Avion (T_Avion_a,Capacidad_a,Marca_a,Modelo_a,N_Caja_Negra_a,Peso_Kilo_a,idproveedor_a) values('Pasajeros','71000 Kg','Airbus','A340',293,'142K',2407);
insert into Avion (T_Avion_a,Capacidad_a,Marca_a,Modelo_a,N_Caja_Negra_a,Peso_Kilo_a,idproveedor_a) values('Carga','69000 Kg','Boeing','A450',294,'143K',2408);
insert into Avion (T_Avion_a,Capacidad_a,Marca_a,Modelo_a,N_Caja_Negra_a,Peso_Kilo_a,idproveedor_a) values('Carga','46000 Kg','Airbus','A690',293,'156K',2402);

insert into EstadoAvion (descripcion_ea,NAvion_ea) values('ACTIVO',2000);  
insert into EstadoAvion (descripcion_ea,NAvion_ea) values('INACTIVO',2001);
insert into EstadoAvion (descripcion_ea,NAvion_ea) values('ACTIVO',2002);
insert into EstadoAvion (descripcion_ea,NAvion_ea) values('REPARACION',2003);
insert into EstadoAvion (descripcion_ea,NAvion_ea) values('ACTIVO',2004);
insert into EstadoAvion (descripcion_ea,NAvion_ea) values('REPARACIÓN',2005);

insert into infovuelo values(100,2000,'En curso','Inter'); 
insert into infovuelo values(101,2001,'En espera','Inter');
insert into infovuelo values(102,2002,'En espera','Inter');
insert into infovuelo values(103,2003,'En espera','Inter');
insert into infovuelo values(104,2004,'En curso','Inter');
insert into infovuelo values(105,2005,'Finalizado','Inter');

insert into Alimentos (idvuelo_ali,descripcion_ali,idproveedor_ali) values(100,'Botanas',2409); 
insert into Alimentos (idvuelo_ali,descripcion_ali,idproveedor_ali) values(101,'Empanadas',2410);
insert into Alimentos (idvuelo_ali,descripcion_ali,idproveedor_ali) values(102,'Aperitivos',2409);
insert into Alimentos (idvuelo_ali,descripcion_ali,idproveedor_ali) values(103,'Pasteles',2410);
insert into Alimentos (idvuelo_ali,descripcion_ali,idproveedor_ali) values(104,'Sandwiches',2411);
insert into Alimentos (idvuelo_ali,descripcion_ali,idproveedor_ali) values(105,'Fruta',2412);

insert into Proveedores (nombre_pro,direccion_pro) values('Dnata','2da calle 2da ave Zona 10 2-25');  
insert into Proveedores (nombre_pro,direccion_pro) values('DO&CO','5ta calle 1ra ave Zona 11 5-15');
insert into Proveedores (nombre_pro,direccion_pro) values('LSG Group','6ta calle 4ta ave Zona 12 6-41');
insert into Proveedores (nombre_pro,direccion_pro) values('Gategroup','3ra calle 7ma ave Zona 15 3-78');
insert into Proveedores (nombre_pro,direccion_pro) values('Newsrest','7ma calle 5ta ave Zona 14 7-56');
insert into Proveedores (nombre_pro,direccion_pro) values('Dnata','1ra calle 2da ave Zona 16 1-25');
insert into Proveedores (nombre_pro,direccion_pro) values('Hino','2da calle 10ma ave Zona 7 3-25');  
insert into Proveedores (nombre_pro,direccion_pro) values('Bombardier','5ta calle 1ra ave Zona 11 5-15');
insert into Proveedores (nombre_pro,direccion_pro) values('Fillers','6ta calle 4ta ave Zona 12 6-41');
insert into Proveedores (nombre_pro,direccion_pro) values('Malher','3ra calle 7ma ave Zona 15 3-78');
insert into Proveedores (nombre_pro,direccion_pro) values('Coca Cola','7ma calle 5ta ave Zona 14 7-56');
insert into Proveedores (nombre_pro,direccion_pro) values('Starbucks','1ra calle 2da ave Zona 16 1-25');
insert into Proveedores (nombre_pro,direccion_pro) values('Galeno','3ra calle 7ma ave Zona 13');
insert into Proveedores (nombre_pro,direccion_pro) values('Cruz Verde','7ma calle 5ta ave San Juan');
insert into Proveedores (nombre_pro,direccion_pro) values('Selectpharma','1ra calle 2da ave Mixco Norte 1-25');
insert into Proveedores (nombre_pro,direccion_pro) values('Distracciones y +','Zona 6 de Mixco');

insert into Distraccion (idvuelo_dis,nombre_dis,Tipo_dis) values(100,'Hotel Transilvania','Pelicula'); 
insert into Distraccion (idvuelo_dis,nombre_dis,Tipo_dis) values(101,'Video Musicales','Musica');
insert into Distraccion (idvuelo_dis,nombre_dis,Tipo_dis) values(102,'Spiderman','Pelicula');
insert into Distraccion (idvuelo_dis,nombre_dis,Tipo_dis) values(103,'Pokemon','Serie');
insert into Distraccion (idvuelo_dis,nombre_dis,Tipo_dis) values(104,'Netflix','Plataforma Entre');
insert into Distraccion (idvuelo_dis,nombre_dis,Tipo_dis) values(105,'Disney plus','Plataforma Entre');

insert into tienda (cantidad_ti,descripcion_ti,precio_ti,idproveedor_ti) values(50,'Cerveza','125.98',2409);
insert into tienda (cantidad_ti,descripcion_ti,precio_ti,idproveedor_ti) values(120,'Hamburguesa','45.50',2410);
insert into tienda (cantidad_ti,descripcion_ti,precio_ti,idproveedor_ti) values(90,'Pizza','15.99',2410);
insert into tienda (cantidad_ti,descripcion_ti,precio_ti,idproveedor_ti) values(450,'Sueter','225.58',2415);
insert into tienda (cantidad_ti,descripcion_ti,precio_ti,idproveedor_ti) values(100,'Funkos','65.38',2415);

insert into asistencia (N_pasaporte_asis,Razon_asis,fecha_asis,hora_asis,Idaero_asis) values(402,'Desmayo','01/09/2021','12:40',300);
insert into asistencia (N_pasaporte_asis,Razon_asis,fecha_asis,hora_asis,Idaero_asis) values(403,'Fiebre','02/09/2021','14:20',301);
insert into asistencia (N_pasaporte_asis,Razon_asis,fecha_asis,hora_asis,Idaero_asis) values(400,'P respiratorios','20/09/2021','18:35',303);
insert into asistencia (N_pasaporte_asis,Razon_asis,fecha_asis,hora_asis,Idaero_asis) values(402,'Reaccion Alergica','19/04/2021','05:30',302);
insert into asistencia (N_pasaporte_asis,Razon_asis,fecha_asis,hora_asis,Idaero_asis) values(405,'Herida Sangrante','06/10/2021','07:45',305);

insert into carga (idvuelo_c,tipo_c,peso_c) values(106,'Vacunas','55k');
insert into carga (idvuelo_c,tipo_c,peso_c) values(106,'Carros','100k');
insert into carga (idvuelo_c,tipo_c,peso_c) values(107,'Alimentos','25k');
insert into carga (idvuelo_c,tipo_c,peso_c) values(106,'Electronicos','78k');
insert into carga (idvuelo_c,tipo_c,peso_c) values(107,'Respiradores','60k');
insert into carga (idvuelo_c,tipo_c,peso_c) values(107,'Camillas','90k');

insert into Aduana (idvuelo_adu,tipo_adu,peso_adu,impuesto_adu,valor_adu) values(106,'Carros','55k','IVA','Q.83,000');
insert into Aduana (idvuelo_adu,tipo_adu,peso_adu,impuesto_adu,valor_adu) values(107,'Alimentos','25k','IVA','Q.33,000');
insert into Aduana (idvuelo_adu,tipo_adu,peso_adu,impuesto_adu,valor_adu) values(106,'Electronicos','78k','IVA','Q.60,000');

insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(403,14,'Hotel Trivago','Positivo');
insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(401,14,'Hotel Holiday Inn','Positivo');
insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(400,14,'Hotel Barceló','Positivo');

insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(423,14,'Hotel Trivago','Positivo');
insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(424,14,'Hotel Holiday Inn','Positivo');
insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(425,14,'Hotel Barceló','Positivo');
insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(426,14,'Hotel Barceló','Positivo');



select * from cuarentena
insert into migracion (nombre_mi,apellido_mi,Fecha_mi,Causa_mi,Dpi_mi,idvuelo_mi) values('Manuel','Zamora','28/08/2021','Indocumentación','2301-45236-0101',106);
insert into migracion (nombre_mi,apellido_mi,Fecha_mi,Causa_mi,Dpi_mi,idvuelo_mi) values('Juanca','Fernandez','23/08/2021','Indocumentación','3008-54125-0108',107);
insert into migracion (nombre_mi,apellido_mi,Fecha_mi,Causa_mi,Dpi_mi,idvuelo_mi) values('Ricardo','Ortiz','28/08/2021','Indocumentación','2301-45236-0101',106);
insert into migracion (nombre_mi,apellido_mi,Fecha_mi,Causa_mi,Dpi_mi,idvuelo_mi) values('Joshua','Cruz','23/08/2021','Indocumentación','3008-54125-0108',107);
insert into migracion (nombre_mi,apellido_mi,Fecha_mi,Causa_mi,Dpi_mi,idvuelo_mi) values('Velvet','Aguilar','28/08/2021','Indocumentación','2301-45236-0101',106);
insert into migracion (nombre_mi,apellido_mi,Fecha_mi,Causa_mi,Dpi_mi,idvuelo_mi) values('Melanie','Barrios','23/08/2021','Indocumentación','3008-54125-0108',107);

insert into botiquin (idvuelo_boti,descripcion_boti,idproveedor_boti) values (101,'Aspirina',2413);
insert into botiquin (idvuelo_boti,descripcion_boti,idproveedor_boti) values (105,'Panadol',2413);
insert into botiquin (idvuelo_boti,descripcion_boti,idproveedor_boti) values (104,'Nauseol',2414);
insert into botiquin (idvuelo_boti,descripcion_boti,idproveedor_boti) values (103,'Alka-D',2412);
insert into botiquin (idvuelo_boti,descripcion_boti,idproveedor_boti) values (102,'DoloNeurobion',2414);

insert into llaves_prim values(300 , 'ARL'); 
insert into llaves_prim values(301 , 'ARL');
insert into llaves_prim values(302 , 'ARL');
insert into llaves_prim values(303 , 'ARL');
insert into llaves_prim values(304 , 'ARL');
insert into llaves_prim values(305 , 'ARL');
insert into llaves_prim values(400,'Pas');  
insert into llaves_prim values(401,'Pas');
insert into llaves_prim values(402,'Pas');
insert into llaves_prim values(403,'Pas');
insert into llaves_prim values(404,'Pas');
insert into llaves_prim values(405,'Pas');
insert into llaves_prim values(800, 'Per'); 
insert into llaves_prim values(801, 'Per');
insert into llaves_prim values(802, 'Per');
insert into llaves_prim values(803, 'Per');
insert into llaves_prim values(804, 'Per');
insert into llaves_prim values(805, 'Per');
insert into llaves_prim values(1900, 'AER');
insert into llaves_prim values(1901, 'AER');  
insert into llaves_prim values(1902, 'AER');
insert into llaves_prim values(1903, 'AER');
insert into llaves_prim values(1904, 'AER');
insert into llaves_prim values(1905, 'AER');
insert into llaves_prim values(2400, 'Pro'); 
insert into llaves_prim values(2401, 'Pro');  
insert into llaves_prim values(2402, 'Pro');
insert into llaves_prim values(2403, 'Pro');
insert into llaves_prim values(2404, 'Pro');
insert into llaves_prim values(2405, 'Pro');
insert into llaves_prim values(2406, 'Pro');
insert into llaves_prim values(2407, 'Pro'); 
insert into llaves_prim values(2408, 'Pro');  
insert into llaves_prim values(2409, 'Pro');
insert into llaves_prim values(2410, 'Pro');
insert into llaves_prim values(2411, 'Pro');
insert into llaves_prim values(2412, 'Pro');
insert into llaves_prim values(2413, 'Pro');
insert into llaves_prim values(2414, 'Pro');
insert into llaves_prim values(2415, 'Pro');


insert into Numeros_Tel (telefono_tel,Identificador_tel) values('5612-3214',300); 
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('3113-3151',301);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2523-3151',301);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('3510-4510',302);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('3510-2589',302);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4947-7998',303);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4389-2478',304);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4021-4578',305);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2412-3214',400);  
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2413-3151',401);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2413-2551',401);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2210-2589',402);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2247-7998',403);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2247-8998',403);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2489-2478',404);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2221-4578',405);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('5078-9632',800); 
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('3482-7896',801);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('3310-3578',802);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4178-6597',803);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('5698-7410',804);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4598-7410',804);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4579-6575',805);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4579-6265',805);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4162-6942',1900);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2234-2402',1901);  
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2276-9180',1902);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2348-4150',1903);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2348-7811',1903);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2525-2700',1903);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2395-4260',1904);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2367-9455',1905);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4513-8974',2400); 
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2413-8974',2401);  
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2531-9874',2402);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2369-7810',2403);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2456-9743',2404);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2211-5698',2405);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4545-5698',2405);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2675-1236',2406);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2851-8974',2407); 
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('3613-8974',2408);  
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4531-9874',2409);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4769-7810',2410);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2004-7810',2410);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('4656-9743',2411);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('2611-5698',2412);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('5375-1236',2413);
insert into Numeros_Tel (telefono_tel,Identificador_tel) values('5575-1236',2414);


insert into Correos (correo_co,Identificador_co) values('tagairlines@gmail.com',300);  
insert into Correos (correo_co,Identificador_co) values('interjet@gmail.com',301);
insert into Correos (correo_co,Identificador_co) values('united@gmail.com',302);
insert into Correos (correo_co,Identificador_co) values('frontier@gmail.com',303);
insert into Correos (correo_co,Identificador_co) values('volaris@gmail.com',304);
insert into Correos (correo_co,Identificador_co) values('isvolaris@gmail.com',304);
insert into Correos (correo_co,Identificador_co) values('spiritairlines@gmail.com',305);
insert into Correos (correo_co,Identificador_co) values('vsama@gmail.com',400);
insert into Correos (correo_co,Identificador_co) values('rmira@gmail.com',401);
insert into Correos (correo_co,Identificador_co) values('memin@gmail.com',401);
insert into Correos (correo_co,Identificador_co) values('jbarr@gmail.com',402);
insert into Correos (correo_co,Identificador_co) values('Mmora@gmail.com',403);
insert into Correos (correo_co,Identificador_co) values('jluna@gmail.com',404);
insert into Correos (correo_co,Identificador_co) values('afern@gmail.com',405);
insert into Correos (correo_co,Identificador_co) values('jgarc@gmail.com',800); 
insert into Correos (correo_co,Identificador_co) values('jmarq@gmail.com',801);
insert into Correos (correo_co,Identificador_co) values('juang@gmail.com',801);
insert into Correos (correo_co,Identificador_co) values('dmira@gmail.com',802);
insert into Correos (correo_co,Identificador_co) values('lguti@gmail.com',803);
insert into Correos (correo_co,Identificador_co) values('mviva@gmail.com',804);
insert into Correos (correo_co,Identificador_co) values('chern@gmail.com',805);


select * from Registro_Vuelo;
select * from EstadoVuelo
select * from Aerolinea
select * from Pasajeros
select * from Equipaje
select * from Boletos
select * from Visa
select * from P_Puerto
select * from Departamento
select * from Maquinaria
select * from Azafatas
select * from Piloto
select * from Visa_Aero
select * from Idiomas
select * from AcademiaA
select * from AcademiaP
select * from P_Cabina
select * from P_Aza
select * from Aeropuerto
select * from Avion
select * from EstadoAvion
select * from botiquin
select * from Alimentos
select * from Proveedores
select * from Numeros_Tel
select * from Distraccion
select * from asistencia
select * from Aduana
select * from carga
select * from migracion
select * from cuarentena
select * from Correos
select * from tienda
select * from infovuelo
select * from MaquinaPersonal

select Nombre_Pas,Apellido_Pas from Pasajeros;

select * from Pasajeros Pas INNER JOIN Correos cor ON Pas.N_Pasaporte = cor.Identificador_co
select * from Aerolinea ae INNER JOIN Correos cor ON ae.Idaero = cor.Identificador_co
select * from Proveedores pro INNER JOIN Alimentos ali ON pro.idproveedor = ali.idproveedor_ali
select * from Proveedores pro INNER JOIN Avion av ON pro.idproveedor = av.idproveedor_a
select * from Pasajeros Pas INNER JOIN Numeros_Tel num ON Pas.N_Pasaporte = num.Identificador_tel
select * from Pasajeros Pas INNER JOIN Correos c ON Pas.N_Pasaporte = c.Identificador_co

--convertir fecha en tipo DATE
SELECT (TRY_CONVERT(date, fecha_asis, 103)) as FECHA_DATE FROM asistencia;
UPDATE asistencia SET fecha_asis = (SELECT (TRY_CONVERT(date, fecha_asis, 103)) as TMP);

SELECT (TRY_CONVERT(date, Fecha_R, 103)) as FECHA_DATE FROM Registro_Vuelo;
UPDATE Registro_Vuelo SET Fecha_R = (SELECT (TRY_CONVERT(date, Fecha_R, 103)) as TMP);

--CONSULTAS PARA EJERCICIO DEL VIERNES 17/09/2021
select * from Aerolinea ae INNER JOIN Registro_Vuelo reg ON ae.Idaero = reg.Idaero_R where Destino_R = 'Guatemala' and Fecha_R between '2021-09-01' and '2021-09-07';

SELECT COUNT(*) FROM Pasajeros Pas INNER JOIN Boletos bol ON Pas.N_boleto_Pas = bol. N_boleto INNER JOIN Registro_Vuelo reg ON bol.idVuelo_bol = reg.IdVuelo 
where Fecha_R = '2021-09-25';

select * from Piloto p INNER JOIN P_Cabina pp ON p.idPiloto = pp.idpiloto_pcab INNER JOIN Registro_Vuelo reg ON pp.idvuelo_pcab = reg.IdVuelo INNER JOIN Aerolinea ae ON reg.Idaero_R = ae.Idaero 
where Destino_R= 'Guatemala' and Fecha_R = '2021-07-25';

select * from  Registro_Vuelo reg  INNER JOIN Aerolinea ae  ON ae.Idaero = reg.Idaero_R INNER JOIN Avion av ON reg.N_Avión_R = av.NAvion 
where Destino_R = 'Guatemala' and Fecha_R between '2021-01-01' and '2021-04-30';

select * from Aerolinea ae INNER JOIN asistencia asi ON ae.Idaero = asi.Idaero_asis where fecha_asis  between '2021-01-01' AND '2021-07-31';
 


 ---15 CONSULTAS PARA EL DOCUMENTO

select * from tienda where descripcion_ti like 'P%' or descripcion_ti like 'F%';
select Nombre_Pas, Apellido_Pas, F_Nacimiento_Pas from Pasajeros;
select idPiloto, Nombre_pil,nombre_acaP from Piloto p INNER JOIN  AcademiaP aca ON p.idPiloto = aca.Idpiloto_acaP;
select NAvion, Marca_a, idproveedor, nombre_pro from Avion a INNER JOIN Proveedores p ON a.idproveedor_a = p.idproveedor;
SELECT COUNT(*) FROM Azafatas where Nombre_aza like 'M%';
select C_Carnet, Nombre_pers, telefono_tel from Numeros_Tel num INNER JOIN P_Puerto pp ON num.Identificador_tel = pp.C_Carnet
where C_Carnet between 803 and 805;
select idAza, Nombre_aza,FechaNac_aza from Azafatas where Nombre_aza like 'M%';
select idAza,Nombre_aza,sexo_aza from Azafatas where sexo_aza like 'Masculino';
select idequipaje_Equi, Nombre_Pas,idVuelo_bol,descripcion_Equi from Equipaje e INNER JOIN Boletos bol ON e.N_boleto_Equi=bol.N_boleto
INNER JOIN Pasajeros PAS on bol.N_boleto=PAS.N_boleto_Pas;
select IdVuelo,descripcion_ali  from Alimentos A INNER JOIN Registro_Vuelo vue ON  A.idvuelo_ali=vue.IdVuelo
Where descripcion_ali like 'S%';
select C_Carnet,Nombre_pers,nombre_depa,nombre_maqui,hora_mp from MaquinaPersonal mp INNER JOIN 
P_Puerto PER ON mp.C_Carnet_mp=PER.C_Carnet INNER JOIN Maquinaria ma ON mp.idmaquina_mp=ma.idmaquinaria INNER JOIN Departamento depa ON PER.C_departamento_pers=depa.C_departamento;
select N_pasaporte_cua,Ubicación_cua from cuarentena where Ubicación_cua like 'Hotel Barceló';
select idvuelo_adu,tipo_adu,peso_adu from Aduana where idvuelo_adu=106;
select COUNT(*) from migracion;
SELECT N_pasaporte_asis,Nombre_Pas,Razon_asis,fecha_asis from asistencia mp 
INNER JOIN Pasajeros P on mp.N_pasaporte_asis=P.N_Pasaporte where fecha_asis between '2021-09-01' and '2021-09-30';

---CONSULTAS DE EXAMEN PARCIAL---
select C_Carnet,Nombre_pers,nombre_depa,nombre_maqui,hora_mp from MaquinaPersonal mp INNER JOIN 
P_Puerto PER ON mp.C_Carnet_mp=PER.C_Carnet INNER JOIN Maquinaria ma ON mp.idmaquina_mp=ma.idmaquinaria INNER JOIN Departamento depa ON PER.C_departamento_pers=depa.C_departamento;


SELECT (TRY_CONVERT(date, Fecha_R, 103)) as FECHA_DATE FROM Registro_Vuelo;
UPDATE Registro_Vuelo SET Fecha_R = (SELECT (TRY_CONVERT(date, Fecha_R, 103)) as TMP);
select  Destino_R,N_Pasaporte,Nombre_Pas,Apellido_Pas ,Fecha_R from Registro_Vuelo rv INNER JOIN Boletos b ON b.idVuelo_bol=rv.IdVuelo INNER JOIN Pasajeros P ON P.N_boleto_Pas=b.N_boleto where  Fecha_R ='2021-09-25'

select Nombre_pers,Apellidos_pers,Puesto_pers,Jornada_pers from P_Puerto where Puesto_pers='Tecnico'

select  N_Pasaporte,Nombre_Pas,Apellido_Pas,idaerolinea_bol ,Fecha_R from Registro_Vuelo rv INNER JOIN Boletos b ON b.idVuelo_bol=rv.IdVuelo INNER JOIN Pasajeros P 
ON P.N_boleto_Pas=b.N_boleto INNER JOIN Aerolinea ae ON ae.Idaero=rv.Idaero_R  WHERE Fecha_R ='2021-09-18'

select IdVuelo,Hora_R,Fecha_R,descripcion_E from Registro_Vuelo rv INNER JOIN EstadoVuelo ev ON rv.IdVuelo=ev.idvuelo_E  WHERE Fecha_R between '2021-01-01' and  '2021-01-15' and descripcion_E='Retrasado'


select  N_Pasaporte,Nombre_Pas,Apellido_Pas,Fecha_R from Registro_Vuelo rv INNER JOIN Boletos b ON b.idVuelo_bol=rv.IdVuelo INNER JOIN Pasajeros P 
ON P.N_boleto_Pas=b.N_boleto INNER JOIN Aerolinea ae ON ae.Idaero=rv.Idaero_R  WHERE F_Nacimiento_Pas >='2003-12-31' And Fecha_R = '2021-02-02' 


select  N_Pasaporte,Nombre_Pas,Apellido_Pas,sexo_Pas,Fecha_R from Registro_Vuelo rv INNER JOIN Boletos b ON b.idVuelo_bol=rv.IdVuelo INNER JOIN Pasajeros P 
ON P.N_boleto_Pas=b.N_boleto INNER JOIN Aerolinea ae ON ae.Idaero=rv.Idaero_R  WHERE F_Nacimiento_Pas >='2003-12-31' And Fecha_R between '2021-07-01' and '2021-07-31' AND sexo_Pas='Masculino'

SELECT COUNT(*) FROM Registro_Vuelo WHERE Fecha_R between '2021-01-01' and '2021-09-28' AND Destino_R='Guatemala'

select nombre_linea from Registro_Vuelo rv INNER JOIN Aerolinea ae ON ae.Idaero=rv.Idaero_R where Fecha_R between '2021-01-01' and '2021-09-28' AND Destino_R='Guatemala' order by ae.nombre_linea


select  N_Pasaporte,Nombre_Pas,Apellido_Pas,Destino_R,Dias_cua,isopado_cua,Ubicación_cua,Fecha_R from Registro_Vuelo rv INNER JOIN Boletos b ON b.idVuelo_bol=rv.IdVuelo INNER JOIN Pasajeros P 
ON P.N_boleto_Pas=b.N_boleto INNER JOIN Aerolinea ae ON ae.Idaero=rv.Idaero_R INNER JOIN cuarentena c ON c.N_pasaporte_cua=p.N_Pasaporte  WHERE Fecha_R = '2021-09-01' 

select IdVuelo,Partida_R,Nombre_pil,Apellido_pil,Rango_pil,Asignacion_pcab,Hora_R,Fecha_R from Registro_Vuelo rv INNER JOIN P_Cabina pc ON pc.idvuelo_pcab=rv.IdVuelo
INNER JOIN Piloto p ON p.idPiloto=pc.idpiloto_pcab WHERE Fecha_R ='2021-09-20'

select Fecha_R from Registro_Vuelo rv  WHERE Fecha_R ='2021-09-20'


select*from P_Cabina
select*from Piloto


insert into Registro_Vuelo (Destino_R, Partida_R, Hora_R, N_Avión_R, N_Puerta_R, Fecha_R, C_Aeropuerto_R, Idaero_R) values('Mexico','Guatemala','02:00',2001,'P06','01/09/2021',1903,301)
select * from Registro_Vuelo
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('A',300,'A01','P.Clase','Q3500.00',100,1);  
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('B',301,'B02','Ejecutivo','Q2500.00',101,2);
insert into Boletos (Tipo_bol,idaerolinea_bol,Asiento_bol,Clase_bol,Precio_Q_bol,idVuelo_bol,Cabina_bol) values('C',302,'C03','Economico','Q1500.00',102,3);
Select * from Boletos





insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(403,14,'Hotel Trivago','Positivo');
insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(403,14,'Hotel Trivago','Positivo');
insert into cuarentena (N_pasaporte_cua,Dias_cua,Ubicación_cua,isopado_cua) values(403,14,'Hotel Trivago','Positivo');


create table prueba (
idprueba int IDENTITY(10,1) primary key,
fecha date
);

insert into prueba (fecha) values ('2011-12-2');


select fecha from prueba  WHERE fecha ='2011-12-02'

select * from prueba;