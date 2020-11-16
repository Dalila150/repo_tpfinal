USE TP_Final
GO

INSERT INTO envio ("ID_envio","Nombre_Envio")
VALUES ('1','Retiro'),('2','Envio');
GO

INSERT INTO marca ("Nombre","Estado")
VALUES ('Motorola','True'),
('LG','True'),
('TCL','True'),
('ZTE','True'),
('Samsung','True'),
('Philco','True'),
('RCA','True'),
('Hitachi','True'),
('Xiaomi','True'),
('Philco','True'),
('Alcatel','True');
GO



INSERT INTO categoria("Nombre","Estado","Imagen")
VALUES ('Equipo de música','0','/Categorias/monitor.jpg'),
('Televisores','0','/Categorias/televisor.jpg'),
('Celulares','0','/Categorias/celular.png'),
('Tablets','0','/Categorias/tablet.jpg'),
('Pantallas','0','/Categorias/Pantalla.jpg'),
('Monitores','0','/Categorias/monitor.jpg);
GO

INSERT INTO pago("ID_pago","Descripcion")
VALUES ('1','Debito'),('2','Credito'),('3','Efectivo');
GO

INSERT INTO rol ("ID_rol","Tipo_de_Rol")
VALUES ('1','Administrador'),('2','Usuario');
GO

INSERT INTO sucursal ("ID_Sucursal","Nombre","Direccion")
VALUES ('1','Maximum Screens TG','Av. Italia 9999'),
('2','Maximum Screens SF','Av. Libertador 1111');
GO

INSERT INTO sucursal ("ID_Sucursal","Nombre","Direccion")
VALUES ('3','Maximum Screens FD','Av. Florida 9999'),
('4','Maximum Screens CH','Av. Chaco 9999'),
('5','Maximum Screens LP','Av. La Plata 9999'),
('6','Maximum Screens JLS','Av. Jose Leon Suarez 9999'),
('7','Maximum Screens MZ','Av. Martinez 9999'),
('8','Maximum Screens VH','Av. Sarratea 9999'),
('9','Maximum Screens NC','Av. Marquez 9999'),
('10','Maximum Screens BG','Av. Boulogne Sur Mer 1111');
GO

INSERT INTO producto ("Stock","ID_marca","Precio_unitario","ID_categoria","Estado","Nombre","Imagen")
VALUES ('99','1','74999','3','1','Moto Edge Xt 2063-3','~Imagen/1.jpg'),
('99','1','30999','3','1','Moto G8 Power Xt2041-1','~Imagen/2.jpg'),
('100','2','23999','3','1','Lg-x430hm','~Imagen/3.jpg'),
('100','3','18999','3','1','L9s','~Imagen/4.jpg'),
('100','4','11999','3','1','Blade A3','~Imagen/5.jpg'),
('100','11','11499','3','1','Alcatel 1','~Imagen/6.jpg');
GO

INSERT INTO usuario ("Rol","Nombre","Apellido","Email","Direccion","Nombre_Usuario","Password","Telefono","DNI","Estado")
VALUES ('1','Leo','Mattioli','leo_mattioli@gmail.com','Constitucion 0000','Admin','Admin','1122592000','11111111','1'),
('2','Cristian','Graus','cgraus@gmail.com','Guido Spano 1111','cgraus','cgraus','1100998877','22222222','1');
GO

INSERT INTO usuario ("Rol","Nombre","Apellido","Email","Direccion","Nombre_Usuario","Password","Telefono","DNI","Estado")
VALUES ('1','Dalila','Baena','dalilabaena@hotmail.com.ar','Malabia 1626','Dali','Admin','47205779','43390414','1'),
('2','Paloma','Baena','palob@gmail.com','Guido Spano 1111','cgraus','Palo','1100998873','22222221','1'),
('1','Wanda','Scarpato','wandascarp@gmail.com','Guido Spano 1111','Wanda','cgraus','1100998874','22222223','1'),
('1','Adriel','Lopez','adriel92@gmail.com','Guido Spano 1111','Adri','cgraus','1100998875','22222224','1'),
('2','Iago','Rojo','iagorojo@gmail.com','Guido Spano 1111','Iago','cgraus','1100998876','22222225','1'),
('2','Gaston','Giordano','gastyg@gmail.com','Guido Spano 1111','Gasty','cgraus','1100998817','22222226','1'),
('2','Malena','Baena','malebaena@gmail.com','Guido Spano 1111','Male','cgraus','1100998878','22222227','1'),
('2','Eduardo','Baena','danbaena@live.com','Malabia 1626','Dan','1234','1100998879','22222228','1');
GO

INSERT INTO venta("ID_venta","Fecha","ID_usuario","Direccion","Total","Modo_envio","Modo_pago","Nro_tajeta","Codigo_tarjeta","ID_sucursal")
VALUES ('1','2020-11-05','2','Guido Spano 1111','105998','2','2','1111222233334441','123','1');
GO

INSERT INTO venta("ID_venta","Fecha","ID_usuario","Direccion","Total","Modo_envio","Modo_pago","Nro_tajeta","Codigo_tarjeta","ID_sucursal")
VALUES ('2','2020-11-04','3','Malabia 1626','105998','2','2','1111222233334442','456','1'),
('3','2020-11-03','4','Guido Spano 1111','105998','2','2','1111222233334443','789','1'),
('4','2020-11-02','5','Guido Spano 1111','105998','2','2','1111222233334444','100','1'),
('5','2020-11-01','6','Guido Spano 1111','105998','2','2','1111222233334445','111','1'),
('6','2020-10-31','7','Guido Spano 1111','105998','2','2','1111222233334446','122','1'),
('7','2020-10-30','8','Guido Spano 1111','105998','2','2','1111222233334447','133','1'),
('8','2020-10-29','9','Guido Spano 1111','105998','2','2','1111222233334448','124','1'),
('9','2020-10-28','10','Malabia 1626','105998','2','2','1111222233334449','153','1'),
('10','2020-10-27','1','Constitucion 0000','105998','2','2','1111222233334410','163','1');
GO

INSERT INTO detalle_venta("ID_venta","ID_detalle_venta","ID_producto","Cantidad","Precio_unitario")
VALUES ('1','1','1','5','74999'),
('2','1','2','5','30999');
GO

INSERT INTO detalle_venta("ID_venta","ID_detalle_venta","ID_producto","Cantidad","Precio_unitario")
VALUES ('3','1','1','5','74999'),
('4','1','1','5','74999'),
('5','1','1','5','74999'),
('6','1','1','5','74999'),
('7','1','1','5','74999'),
('8','1','1','5','74999'),
('9','1','1','5','74999'),
('10','1','2','5','30999');
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
VALUES ('20','3','35999','2','1','Smart Tv L40s6500','~Imagen/7.jpg'),
('10','5','60999','2','1','Smart Tv 49ru7300gczb','~Imagen/8.jpg'),
	('15','6','47999','2','1','Smart Tv Pld50us9a1','~Imagen/9.jpg'),
	('15','3','61999','2','1','Android L55p8m','~Imagen/10.jpg'),
	('25','7','22999','2','1','Hd Xf32sm','~Imagen/11.jpg'),
	('22','8','24999','2','1','NDROID LE32SMART17','~Imagen/12.jpg');
GO


INSERT INTO producto ("Stock","ID_marca","Precio_unitario","ID_categoria","Estado","Nombre","Imagen")
VALUES ('60','5','24999','4','1','A T510N 10','~Imagen/13.jpg'),
('80','5','17499','4','1','SM-T290N 8','~Imagen/14.jpg'),
	('80','12','5499','4','1','NT-P70 7','~Imagen/15.jpg'),
	('75','13','18999','4','1','Titanium Gamer 10','~Imagen/16.jpg'),
	('60','13','8499','4','1','Mercury Monster 7','~Imagen/17.jpg'),
	('70','3','8999','4','1','LT7M 7','~Imagen/18.jpg');
GO

INSERT INTO producto ("Stock","ID_marca","Precio_unitario","ID_categoria","Estado","Nombre","Imagen")
VALUES ('30','5','22999','1','1','LS24F350FHLXZB','~Imagen/19.jpg'),
('30','10','13999','1','1','193V5LHSB2/55','~Imagen/20.jpg'),
	('30','5','19999','1','1','LS22F350FHLXZX','~Imagen/21.jpg'),
	('30','10','14999','1','1','V206HQL','~Imagen/22.jpg'),
	('30','5','36999','1','1','S27F350FH','~Imagen/23.jpg'),
	('30','14','21499','1','1','3ML60AA ','~Imagen/24.jpg');
GO

/* 6/11/2020 Nuevos datos*/








