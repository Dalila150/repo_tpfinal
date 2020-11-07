USE TP_Final
GO

INSERT INTO envio ("ID_envio","Nombre_Envio")
VALUES ('1','Retiro'),('2','Envio');
GO

INSERT INTO marca ("Nombre","Estado")
VALUES ('Motorola','True'),('LG','True'),('TCL','True'),('ZTE','True'),('Samsung','True'),('Philco','True'),
('RCA','True'),('Hitachi','True'),('Xiaomi','True'),('Philco','True'),('Alcatel','True');
GO

INSERT INTO categoria("Nombre","Estado")
VALUES ('Monitores','True'),('Televisores','1'),('Telefonos','1'),('Tabletas','1');
GO

INSERT INTO pago("ID_pago","Descripcion")
VALUES ('1','Debito'),('2','Credito'),('3','Efectivo');
GO

INSERT INTO rol ("ID_rol","Tipo_de_Rol")
VALUES ('1','Administrador'),('2','Usuario');
GO

INSERT INTO sucursal ("ID_Sucursal","Nombre","Direccion")
VALUES ('1','Maximum Screens TG','Av. Italia 9999'),('2','Maximum Screens SF','Av. Libertador 1111');
GO

INSERT INTO producto ("Stock","ID_marca","Precio_unitario","ID_categoria","Estado","Nombre","Imagen")
VALUES ('99','1','74999','3','1','Moto Edge Xt 2063-3','~Imagen/1.jpg'),('99','1','30999','3','1','Moto G8 Power Xt2041-1','~Imagen/2.jpg'),
('100','2','23999','3','1','Lg-x430hm','~Imagen/3.jpg'),('100','3','18999','3','1','L9s','~Imagen/4.jpg'),
('100','4','11999','3','1','Blade A3','~Imagen/5.jpg'),('100','11','11499','3','1','Alcatel 1','~Imagen/6.jpg');
GO

INSERT INTO usuario ("Rol","Nombre","Apellido","Email","Direccion","Nombre_Usuario","Password","Telefono","DNI")
VALUES ('1','Leo','Mattioli','leo_mattioli@gmail.com','Constitucion 0000','Admin','Admin','1122592000','11111111'),
('2','Cristian','Graus','cgraus@gmail.com','Guido Spano 1111','cgraus','cgraus','1100998877','22222222');
GO

INSERT INTO venta("ID_venta","Fecha","ID_usuario","Direccion","Total","Modo_envio","Modo_pago","Nro_tajeta","Codigo_tarjeta","ID_sucursal")
VALUES ('1','2020-11-05','2','Guido Spano 1111','105998','2','2','1111222233334444','123','1');
GO

INSERT INTO detalle_venta("ID_venta","ID_detalle_venta","ID_producto","Cantidad","Precio_unitario")
VALUES ('1','1','1','1','74999'),('1','2','2','1','30999');
GO

/* 6/11/2020 Nuevos datos*/

INSERT INTO marca ("Nombre","Estado")
VALUES ('Nortech ','True'),('X-VIEW','True');
GO
INSERT INTO marca ("Nombre","Estado")
VALUES ('HP','True');
GO
update marca
set Nombre = 'Philips'
where ID_marca = 10


INSERT INTO producto ("Stock","ID_marca","Precio_unitario","ID_categoria","Estado","Nombre","Imagen")
VALUES ('20','3','35999','2','1','Smart Tv L40s6500','~Imagen/7.jpg'),('10','5','60999','2','1','Smart Tv 49ru7300gczb','~Imagen/8.jpg'),
	('15','6','47999','2','1','Smart Tv Pld50us9a1','~Imagen/9.jpg'),('15','3','61999','2','1','Android L55p8m','~Imagen/10.jpg'),
	('25','7','22999','2','1','Hd Xf32sm','~Imagen/11.jpg'),('22','8','24999','2','1','NDROID LE32SMART17','~Imagen/12.jpg');
GO


INSERT INTO producto ("Stock","ID_marca","Precio_unitario","ID_categoria","Estado","Nombre","Imagen")
VALUES ('60','5','24999','4','1','A T510N 10','~Imagen/13.jpg'),('80','5','17499','4','1','SM-T290N 8','~Imagen/14.jpg'),
	('80','12','5499','4','1','NT-P70 7','~Imagen/15.jpg'),('75','13','18999','4','1','Titanium Gamer 10','~Imagen/16.jpg'),
	('60','13','8499','4','1','Mercury Monster 7','~Imagen/17.jpg'),('70','3','8999','4','1','LT7M 7','~Imagen/18.jpg');
GO

INSERT INTO producto ("Stock","ID_marca","Precio_unitario","ID_categoria","Estado","Nombre","Imagen")
VALUES ('30','5','22999','1','1','LS24F350FHLXZB','~Imagen/19.jpg'),('30','10','13999','1','1','193V5LHSB2/55','~Imagen/20.jpg'),
	('30','5','19999','1','1','LS22F350FHLXZX','~Imagen/21.jpg'),('30','10','14999','1','1','V206HQL','~Imagen/22.jpg'),
	('30','5','36999','1','1','S27F350FH','~Imagen/23.jpg'),('30','14','21499','1','1','3ML60AA ','~Imagen/24.jpg');
GO
