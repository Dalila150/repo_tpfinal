CREATE DATABASE TP_Final
GO

USE [TP_Final]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Estado] [bit] NULL,
	[Imagen] [varchar](max) NULL,
 CONSTRAINT [PK__categori__CD54BC5A4F48B909] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[ID_venta] [int] IDENTITY(1,1) NOT NULL,
	[ID_detalle_venta] [int] NOT NULL,
	[ID_producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio_unitario] [float] NULL,
 CONSTRAINT [PK__detalle___2027566B85509CBE] PRIMARY KEY CLUSTERED 
(
	[ID_venta] ASC,
	[ID_detalle_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio](
	[ID_envio] [int] NOT NULL,
	[Nombre_Envio] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_envio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marca]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marca](
	[ID_marca] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK__marca__36DBB8CBB84B265E] PRIMARY KEY CLUSTERED 
(
	[ID_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[ID_pago] [int] NOT NULL,
	[Descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Stock] [int] NULL,
	[ID_marca] [int] NULL,
	[Precio_unitario] [float] NULL,
	[ID_categoria] [int] NULL,
	[Estado] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Imagen] [varchar](max) NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK__producto__FF341C0D97BB8109] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[ID_rol] [int] NOT NULL,
	[Tipo_de_Rol] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[ID_Sucursal] [int] NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[ID_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Apellido] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
	[Nombre_Usuario] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Telefono] [varchar](255) NULL,
	[DNI] [varchar](8) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK__usuario__4E3E04AD70658984] PRIMARY KEY CLUSTERED 
(
	[ID_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[ID_venta] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[ID_usuario] [int] NULL,
	[Direccion] [varchar](255) NULL,
	[Total] [decimal](18, 0) NULL,
	[Modo_envio] [int] NULL,
	[Modo_pago] [int] NULL,
	[Nro_tajeta] [varchar](16) NULL,
	[Codigo_tarjeta] [varchar](3) NULL,
	[ID_sucursal] [int] NULL,
 CONSTRAINT [PK__venta__459533BF7205C55B] PRIMARY KEY CLUSTERED 
(
	[ID_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (1, N'Monitores', 1, N'/Categorias/monitor.jpg')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (2, N'Televisores', 1, N'/Categorias/televisor.jpg')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (3, N'Telefonos', 1, N'/Categorias/celular.png')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (4, N'Tabletas', 1, N'/Categorias/tablet.jpg')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (5, N'Computadoras', 1, N'/Categorias/Pantalla.jpg')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (6, N'LALALAL', 0, N'/Categorias/monitor.jpg')
SET IDENTITY_INSERT [dbo].[categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[detalle_venta] ON 

INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (1, 1, 1, 1, 74999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (1, 2, 2, 1, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (2, 3, 3, 4, 98643)
SET IDENTITY_INSERT [dbo].[detalle_venta] OFF
GO
INSERT [dbo].[envio] ([ID_envio], [Nombre_Envio]) VALUES (1, N'Retiro')
INSERT [dbo].[envio] ([ID_envio], [Nombre_Envio]) VALUES (2, N'Envio')
GO
SET IDENTITY_INSERT [dbo].[marca] ON 

INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (1, N'Motorola', 1)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (2, N'LG', 1)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (3, N'TCL', 0)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (4, N'ZTE', 1)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (5, N'Samsung', 1)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (6, N'Philco', 1)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (7, N'RCA', 0)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (8, N'Hitachi', 0)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (9, N'Xiaomi', 0)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (10, N'Philips', 0)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (11, N'Alcatel', 0)
SET IDENTITY_INSERT [dbo].[marca] OFF
GO
INSERT [dbo].[pago] ([ID_pago], [Descripcion]) VALUES (1, N'Debito')
INSERT [dbo].[pago] ([ID_pago], [Descripcion]) VALUES (2, N'Credito')
INSERT [dbo].[pago] ([ID_pago], [Descripcion]) VALUES (3, N'Efectivo')
GO
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (1, 2, 1, 10889.224, 3, 1, N'Moto Edge Xt 2063-3', N'/Imagenes/5.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gestos y modo sin distracciones, para que completes tus tareas mientras disfrutás al máximo tu dispositivo.

Momentos únicos, capturas reales
Capturá tus mejores momentos y revivilos cuando quieras con la cámara trasera de 8 Mpx.

Además, el dispositivo cuenta con cámara frontal de 5 Mpx para que puedas sacarte divertidas selfies o hacer videollamadas.

Más para ver
Con su pantalla PLS de 5.3 ", disfrutá de colores intensos y mayor nitidez en todos tus contenidos.

Batería para todo el día
Su batería de 3000 mAh se adapta a tu ritmo de vida y te garantiza energía para toda una jornada con una sola carga.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (2, 99, 1, 30999, 3, 1, N'Moto G8 Power Xt2041-1', N'https://icdn7.digitaltrends.com/image/digitaltrends_es/huawei-p30-pro-review-6v2-720x480.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (3, 96, 2, 23999, 3, 0, N'Lg-x430hm', N'/Imagenes/7.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gestos y modo sin distracciones, para que completes tus tareas mientras disfrutás al máximo tu dispositivo.

Momentos únicos, capturas reales
Capturá tus mejores momentos y revivilos cuando quieras con la cámara trasera de 8 Mpx.

Además, el dispositivo cuenta con cámara frontal de 5 Mpx para que puedas sacarte divertidas selfies o hacer videollamadas.

Más para ver
Con su pantalla PLS de 5.3 ", disfrutá de colores intensos y mayor nitidez en todos tus contenidos.

Batería para todo el día
Su batería de 3000 mAh se adapta a tu ritmo de vida y te garantiza energía para toda una jornada con una sola carga.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (4, 100, 3, 18999, 3, 0, N'L9s', N'/Imagenes/8.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gestos y modo sin distracciones, para que completes tus tareas mientras disfrutás al máximo tu dispositivo.

Momentos únicos, capturas reales
Capturá tus mejores momentos y revivilos cuando quieras con la cámara trasera de 8 Mpx.

Además, el dispositivo cuenta con cámara frontal de 5 Mpx para que puedas sacarte divertidas selfies o hacer videollamadas.

Más para ver
Con su pantalla PLS de 5.3 ", disfrutá de colores intensos y mayor nitidez en todos tus contenidos.

Batería para todo el día
Su batería de 3000 mAh se adapta a tu ritmo de vida y te garantiza energía para toda una jornada con una sola carga.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (5, 100, 5, 12000, 3, 1, N'Blade A5', N'https://luba.com.ar/97-large_default/celular-samsung-a51-128g.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (6, 100, 5, 11499, 3, 1, N'Alcatel 1', N'https://i.blogs.es/ea6c01/alcatel-1v-rendimiento/1366_2000.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (88, 10, 5, 12345, 2, 1, N'Smart TV BGH B3219H5 LED HD 32"', N'https://http2.mlstatic.com/D_NQ_NP_767231-MLA43970335447_112020-O.webp', N'Con el Smart TV B3219H5 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución HD presenta imágenes con gran detalle y alta definición. Ahora todo lo que veas cobrará vida con brillo y colores más reales.

Más allá de ver televisión
Su función Screen Share permite duplicar la pantalla de tu smartphone, tablet o PC para que aparezca en la TV. De esta forma vas a poder visualizar todo tipo de contenido: material audiovisual, documentos de trabajo, correos electrónicos y más.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (89, 13, 5, 35.499, 2, 1, N'Smart TV Philips 5000 Series 43PFG5813/77 LED Full HD 43"', N'https://http2.mlstatic.com/D_NQ_NP_771965-MLA31522492188_072019-O.webp', N'El compromiso de Philips es brindar nuevas e innovadoras tecnologías a sus usuarios. Es por esa razón que se centra en los detalles para poder ofrecer productos que marcan la diferencia y crean una experiencia visual más increíble y auténtica.
Con el Smart TV 43PFG5813 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución Full HD muestra una clara evolución frente a su antecesora. Las imágenes que vas a ver van a tener una calidad superior con un alto nivel de detalle y colores mucho más llamativos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (90, 5, 2, 556555, 2, 1, N'Smart TV Hisense H4318FH5 LED Full HD 43"', N'https://http2.mlstatic.com/D_NQ_NP_998153-MLA40774424364_022020-O.webp', N'Hisense es marca n.º1 de televisores en China y la 3.ª en electrodomésticos en el mundo. Fue reconocida con diferentes premios por sus altos estándares en innovación, tecnología, diseño y gestión de calidad. ¡Viví la experiencia Hisense!
Con el Smart TV H4318FH5 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución Full HD muestra una clara evolución frente a su antecesora. Las imágenes que vas a ver van a tener una calidad superior con un alto nivel de detalle y colores mucho más llamativos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (91, 8, 2, 435223, 2, 1, N'Smart TV Hisense H5 Series H3218H5 LED HD 32"', N'https://http2.mlstatic.com/D_NQ_NP_857083-MLA40981847754_032020-O.webp', N'Hisense es marca n.º1 de televisores en China y la 3.ª en electrodomésticos en el mundo. Fue reconocida con diferentes premios por sus altos estándares en innovación, tecnología, diseño y gestión de calidad. ¡Viví la experiencia Hisense!
Con el Smart TV H3218H5 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución HD presenta imágenes con gran detalle y alta definición. Ahora todo lo que veas cobrará vida con brillo y colores más reales.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (92, 10, 2, 65324, 2, 1, N'Smart TV Hisense H5 Series H3218H5 LED HD 32"', N'https://http2.mlstatic.com/D_NQ_NP_944062-MLA32080971339_092019-O.webp', N'Con el Smart TV CDH-LE32SMART17 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución HD presenta imágenes con gran detalle y alta definición. Ahora todo lo que veas cobrará vida con brillo y colores más reales.

Un sonido que te envuelve
Vas a sentir que proviene desde todas las direcciones posibles, lo cual enriquece la percepción del mismo. Los diálogos de tus series de fin de semana o la música de tus cantantes preferidos van a cobrar otro significado.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (93, 55, 1, 344567, 5, 1, N'Computadora Armada Intel', N'https://http2.mlstatic.com/D_NQ_NP_770735-MLA31379423451_072019-O.webp', N'COMPUTADORA DE ESCRITORIO ARMADA - IDEAL OFICINA, HOGAR, GAMER - INCLUYE: INTEL PENTIUM G5420 3.7 GHZ, 2NUCLEOS , 1 TB WD DISCO RIGIDO, GRÁFICOS 4 K , AUDIO 7.1 HD, GABINETE , FUENTE 500 WATTS , TECLADO, MOUSE, PARLANTES."

INCLUYE TECLADO, MOUSE, PARLANTES. NO INCLUYE MONITOR.
-----------------------------------------------------------------------------------------------
CARACTERÍSTICAS

• MOTHERBOARD

- Msi H310M- H S1151 SATA 3.6 GB- USB 3.0 – HDMI
- Garantía oficial 2 años

• MICROPROCESADOR

- INTEL PENTIUM G5420 SKYLAKE 3.3 GHZ CACHET 3MB – DOBLE NUCLEO
- Garantía oficial 3 años

• MEMORIA RAM

-Kingston DDR4 4GB 2400 MHZ CL15
- Garantía oficial de por vida

• DISCO RÍGIDO')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (94, 13, 1, 33345, 5, 1, N'Pc Armada Gamer Amd A6 7480 8gb Ddr3', N'https://http2.mlstatic.com/D_NQ_NP_821567-MLA31036329494_062019-O.webp', N'4KRC S.A. - Especialistas en Hardware Gamer. Más de 20 años de experiencia.
Más de 100.000 operaciones nos avalan. Mercadolider Platinum.

Nos encontramos en el barrio de Palermo. En la zona de las Cañitas. 9 a 20HS.
Nuevo punto de retiro, en la zona de Flores. 10 a 13 y 15 a 18HS. Sabádo 10 a 13HS

Envio Express Gratuito en moto 24HS a todo Capital Federal ! Con sistema Track&Trace !
Envio Gratuito por camión a todo el País ! Con sistema Track&Trace !
Emitimos Factura A y B. Todos nuestros productos cuentan con Garantía Oficial.
')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (95, 14, 1, 212331, 5, 1, N'Computadoras Amd A6-7480 Dual Core', N'https://http2.mlstatic.com/D_NQ_NP_937662-MLA31026852229_062019-O.webp', N'4KRC S.A. - Especialistas en Hardware Gamer. Más de 20 años de experiencia.
Más de 100.000 operaciones nos avalan. Mercadolider Platinum.

Nos encontramos en el barrio de Palermo. En la zona de las Cañitas. 9 a 20HS.
Nuevo punto de retiro, en la zona de Flores. 10 a 13 y 15 a 18HS. Sabádo 10 a 13HS

Envio Express Gratuito en moto 24HS a todo Capital Federal ! Con sistema Track&Trace !
Envio Gratuito por camión a todo el País ! Con sistema Track&Trace !
Emitimos Factura A y B. Todos nuestros productos cuentan con Garantía Oficial.
')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (96, 17, 6, 65432, 5, 1, N'Computadoras Amd A6-7480 Dual Core', N'https://http2.mlstatic.com/D_NQ_NP_937662-MLA31026852229_062019-O.webp', N'NU4KRC S.A. - Especialistas en Hardware Gamer. Más de 20 años de experiencia.
Más de 100.000 operaciones nos avalan. Mercadolider Platinum.

Nos encontramos en el barrio de Palermo. En la zona de las Cañitas. 9 a 20HS.
Nuevo punto de retiro, en la zona de Flores. 10 a 13 y 15 a 18HS. Sabádo 10 a 13HS

Envio Express Gratuito en moto 24HS a todo Capital Federal ! Con sistema Track&Trace !
Envio Gratuito por camión a todo el País ! Con sistema Track&Trace !
Emitimos Factura A y B. Todos nuestros productos cuentanLL')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (97, 26, 1, 111111, 1, 1, N'Monitor curvo Samsung C24F390FH led 23.5"', N'https://http2.mlstatic.com/D_NQ_NP_975053-MLA32072674797_092019-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung C24F390FH tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED no solo ahorrás energía, ya que su consumo es bajo, sino que vas a ver colores más nítidos y definidos en tus películas o series favoritas. Además, con su pantalla curva tu contenido cobrará vida y tendrás una experiencia de inmersión extraordinaria.

Una experiencia visual de calidad
Este monitor de 23.5" te va a resultar de gran comodidad para estudiar, trabajar o ver una película en tus tiempos de ocio. Asimismo, su resolución de 1920 x 1080 te permite disfrutar de momentos únicos gracias a una imagen con gran nitidez. Por último, su tiempo de respuesta de 4 ms lo hace ideal para gamers y cinéfilos porque es capaz de mostrar imágenes en movimiento sin halos o bordes borrosos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (98, 28, 1, 65432, 1, 1, N'Monitor Samsung S27F350FHL led 27"', N'https://http2.mlstatic.com/D_NQ_NP_761386-MLA41510486783_042020-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung S27F350FHL tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED no solo ahorrás energía, ya que su consumo es bajo, sino que vas a ver colores más nítidos y definidos en tus películas o series favoritas.

Una experiencia visual de calidad
Este monitor de 27" te va a resultar de gran comodidad para estudiar, trabajar o ver una película en tus tiempos de ocio. Asimismo, su resolución de 1920 x 1080 te permite disfrutar de momentos únicos gracias a una imagen con gran nitidez. Por último, su tiempo de respuesta de 4 ms lo hace ideal para gamers y cinéfilos porque es capaz de mostrar imágenes en movimiento sin halos o bordes borrosos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (99, 65, 6, 43500, 1, 1, N'Monitor curvo Samsung C27F591FD ', N'https://http2.mlstatic.com/D_NQ_NP_790571-MLA32195869442_092019-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung C27F591FD tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED no solo ahorrás energía, ya que su consumo es bajo, sino que vas a ver colores más nítidos y definidos en tus películas o series favoritas. Además, con su pantalla curva tu contenido cobrará vida y tendrás una experiencia de inmersión extraordinaria.

Una experiencia visual de calidad
Este monitor de 27" te va a resultar de gran comodidad para estudiar, trabajar o ver una película en tus tiempos de ocio. Asimismo, su resolución de 1920 x 1080 te permite disfrutar de momentos únicos gracias a una imagen con gran nitidez. Por último, su tiempo de respuesta de 4 ms lo hace ideal para gamers y cinéfilos porque es capaz de mostrar imágenes en movimiento sin halos o bordes borrosos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (100, 56, 5, 754632, 1, 1, N'Monitor curvo Samsung C27F591FD', N'https://http2.mlstatic.com/D_NQ_NP_790571-MLA32195869442_092019-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung C27F591FD tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED no solo ahorrás energía, ya que su consumo es bajo, sino que vas a ver colores más nítidos y definidos en tus películas o series favoritas. Además, con su pantalla curva tu contenido cobrará vida y tendrás una experiencia de inmersión extraordinaria.

Una experiencia visual de calidad
Este monitor de 27" te va a resultar de gran comodidad para estudiar, trabajar o ver una película en tus tiempos de ocio. Asimismo, su resolución de 1920 x 1080 te permite disfrutar de momentos únicos gracias a una imagen con gran nitidez. Por último, su tiempo de respuesta de 4 ms lo hace ideal para gamers y cinéfilos porque es capaz de mostrar imágenes en movimiento sin halos o bordes borrosos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (101, 23, 2, 523234, 4, 1, N'Tablet con funda Gadnic Taurus Phone', N'https://http2.mlstatic.com/D_NQ_NP_935679-MLA32650081204_102019-O.webp', N'Esta tablet es ideal para cada una de tus actividades: editar fotos, documentos, navegar por internet y ¡mucho más! Su diseño delgado, compacto y portátil es la combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones Bluetooth, Micro USB y Wi-Fi te permitirán potenciar sus funciones al máximo.

Gracias a su cámara principal de 5 Mpx y frontal de 2 Mpx, podrás hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes harán que tus experiencias se reflejen de manera óptima.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (102, 3, 6, 12999, 4, 1, N'Tablet con funda Gadnic Phone', N'https://http2.mlstatic.com/D_NQ_NP_951232-MLA43528465044_092020-O.webp', N'La Tab S6 es tu compañera ideal, con capacidad de sobra para cada una de tus actividades. Su diseño, fácil de sostener con una sola mano, es delgado, compacto y portátil; una combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones ANT+, Bluetooth, USB y Wi-Fi, Wi-Fi Direct te permitirán potenciar sus funciones al máximo.

Capturá todos tus momentos al instante
Gracias a sus cámaras principales de 8 Mpx y su cámara frontal de 5 Mpx, podrás hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes, harán que tus experiencias se reflejen de manera óptima.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (103, 4, 5, 44444, 4, 1, N'Tablet Samsung Galaxy Tab ', N'https://http2.mlstatic.com/D_NQ_NP_795499-MLA42520536795_072020-O.webp', N'La Tab S6 es tu compañera ideal, con capacidad de sobra para cada una de tus actividades. Su diseño, fácil de sostener con una sola mano, es delgado, compacto y portátil; una combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones ANT+, Bluetooth, USB y Wi-Fi, Wi-Fi Direct te permitirán potenciar sus funciones al máximo.

Capturá todos tus momentos al instante
Gracias a sus cámaras principales de 8 Mpx y su cámara frontal de 5 Mpx, podrás hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes, harán que tus experiencias se reflejen de manera óptima.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (104, 12, 5, 22232, 4, 1, N'Tablet Samsung Galaxy Tab ', N'https://http2.mlstatic.com/D_NQ_NP_897714-MLA42225909369_062020-O.webp', N'Esta tablet es ideal para cada una de tus actividades: editar fotos, documentos, navegar por internet y ¡mucho más! Su diseño delgado, compacto y portátil es la combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones Bluetooth y Wi-Fi, Micro USB te permitirán potenciar sus funciones al máximo.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (105, 123, 5, 12435, 4, 1, N'Tablet X-View Proton Titanium Gamer 10', N'https://http2.mlstatic.com/D_NQ_NP_807305-MLA43970074905_112020-O.webp', N'Esta tablet es ideal para cada una de tus actividades: editar fotos, documentos, navegar por internet y ¡mucho más! Su diseño delgado, compacto y portátil es la combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sinc')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (106, 12, 7, 12.5, 2, 0, N'BarraMagica', N'gwr', N'wge')
SET IDENTITY_INSERT [dbo].[producto] OFF
GO
INSERT [dbo].[rol] ([ID_rol], [Tipo_de_Rol]) VALUES (1, N'Administrador')
INSERT [dbo].[rol] ([ID_rol], [Tipo_de_Rol]) VALUES (2, N'Usuario')
GO
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (1, N'Maximum Screens TG', N'Av. Italia 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (2, N'Maximum Screens SF', N'Av. Libertador 1111')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (3, N'Maximum Screens FD', N'Av. Florida 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (4, N'Maximum Screens CH', N'Av. Chaco 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (5, N'Maximum Screens LP', N'Av. La Plata 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (6, N'Maximum Screens JLS', N'Av. Jose Leon Suarez 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (7, N'Maximum Screens MZ', N'Av. Martinez 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (8, N'Maximum Screens VH', N'Av. Sarratea 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (9, N'Maximum Screens NC', N'Av. Marquez 9999')
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion]) VALUES (10, N'Maximum Screens BG', N'Av. Boulogne Sur Mer 1111')
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (1, 1, N'Leo', N'Mattioli', N'leo_mattioli@gmail.com', N'Constitucion 0000', N'Admin', N'Admin', N'1122592000', N'11111111', NULL)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (2, 2, N'Cristian', N'Graus', N'cgraus@gmail.com', N'Guido Spano 1111', N'cgraus', N'cgraus', N'1100998877', N'22222222', NULL)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (3, 2, N'Leo', N'Mattioli', N'leo_mattioli@gmail.com', N'Constitucion 0000', N'Admin', N'Admin', N'1122592000', N'11111111', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (4, 2, N'Cristian', N'Graus', N'cgraus@gmail.com', N'Guido Spano 1111', N'cgraus', N'cgraus', N'1100998877', N'22222222', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (5, 2, N'Dalila', N'Baena', N'dalilabaena@hotmail.com.ar', N'Malabia 1626', N'Dali', N'Admin', N'47205779', N'43390414', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (6, 2, N'Paloma', N'Baena', N'palob@gmail.com', N'Guido Spano 1111', N'cgraus', N'Palo', N'1100998873', N'22222221', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (7, 1, N'Wanda', N'Scarpato', N'wandascarp@gmail.com', N'Guido Spano 1111', N'Wanda', N'cgraus', N'1100998874', N'22222223', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (8, 2, N'Adriel', N'Lopez', N'adriel92@gmail.com', N'Guido Spano 1111', N'Adri', N'cgraus', N'1100998875', N'22222224', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (9, 2, N'Iago', N'Rojo', N'iagorojo@gmail.com', N'Guido Spano 1111', N'Iago', N'cgraus', N'1100998876', N'22222225', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (10, 2, N'Gaston', N'Giordano', N'gastyg@gmail.com', N'Guido Spano 1111', N'Gasty', N'cgraus', N'1100998817', N'22222226', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (11, 2, N'Malena', N'Baena', N'malebaena@gmail.com', N'Guido Spano 1111', N'Male', N'cgraus', N'1100998878', N'22222227', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (12, 2, N'Eduardo', N'Baena', N'danbaena@live.com', N'Malabia 1626', N'Dan', N'1234', N'1100998879', N'22222228', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (13, 2, N'Leo', N'Mattioli', N'leo_mattioli@gmail.com', N'Constitucion 0000', N'Admin', N'Admin', N'1122592000', N'11111111', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (14, 2, N'Cristian', N'Graus', N'cgraus@gmail.com', N'Guido Spano 1111', N'cgraus', N'cgraus', N'1100998877', N'22222222', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (15, 2, N'Dalila', N'Baena', N'dalilabaena@hotmail.com.ar', N'Malabia 1626', N'Dali', N'Admin', N'47205779', N'43390414', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (16, 2, N'Paloma', N'Baena', N'palob@gmail.com', N'Guido Spano 1111', N'cgraus', N'Palo', N'1100998873', N'22222221', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (17, 2, N'Wanda', N'Scarpato', N'wandascarp@gmail.com', N'Guido Spano 1111', N'Wanda', N'cgraus', N'1100998874', N'22222223', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (18, 2, N'Adriel', N'Lopez', N'adriel92@gmail.com', N'Guido Spano 1111', N'Adri', N'cgraus', N'1100998875', N'22222224', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (19, 2, N'Iago', N'Rojo', N'iagorojo@gmail.com', N'Guido Spano 1111', N'Iago', N'cgraus', N'1100998876', N'22222225', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (20, 2, N'Gaston', N'Giordano', N'gastyg@gmail.com', N'Guido Spano 1111', N'Gasty', N'cgraus', N'1100998817', N'22222226', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (21, 2, N'Malena', N'Baena', N'malebaena@gmail.com', N'Guido Spano 1111', N'Male', N'cgraus', N'1100998878', N'22222227', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (22, 2, N'Eduardo', N'Baena', N'danbaena@live.com', N'Malabia 1626', N'Dan', N'1234', N'1100998879', N'22222228', 1)
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[venta] ON 

INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (1, CAST(N'2020-11-05' AS Date), 2, N'Guido Spano 1111', CAST(105998 AS Decimal(18, 0)), 2, 2, N'1111222233334444', N'123', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (2, CAST(N'2020-10-09' AS Date), 3, N'Av las heras', CAST(29892 AS Decimal(18, 0)), 1, 1, N'82673282', N'123', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (3, CAST(N'2021-11-08' AS Date), 1, N'Venecia 78', CAST(12353 AS Decimal(18, 0)), 2, 1, N'738723823', N'21', 2)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (4, CAST(N'2014-10-09' AS Date), 2, N'Lololola', CAST(4509 AS Decimal(18, 0)), 1, 2, N'14256332', N'112', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (5, CAST(N'2016-09-08' AS Date), 1, N'popopi 123', CAST(112221 AS Decimal(18, 0)), 2, 1, N'1256473', N'123', 2)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (6, CAST(N'2009-10-10' AS Date), 2, N'plopli 154', CAST(1265 AS Decimal(18, 0)), 1, 2, N'12654', N'564', 1)
SET IDENTITY_INSERT [dbo].[venta] OFF
GO
ALTER TABLE [dbo].[categoria] ADD  CONSTRAINT [DF__categoria__Nombr__48CFD27E]  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[detalle_venta] ADD  CONSTRAINT [DF__detalle_v__id_pr__49C3F6B7]  DEFAULT (NULL) FOR [ID_producto]
GO
ALTER TABLE [dbo].[detalle_venta] ADD  CONSTRAINT [DF__detalle_v__canti__4AB81AF0]  DEFAULT (NULL) FOR [Cantidad]
GO
ALTER TABLE [dbo].[detalle_venta] ADD  CONSTRAINT [DF__detalle_v__preci__4BAC3F29]  DEFAULT (NULL) FOR [Precio_unitario]
GO
ALTER TABLE [dbo].[envio] ADD  DEFAULT (NULL) FOR [Nombre_Envio]
GO
ALTER TABLE [dbo].[marca] ADD  CONSTRAINT [DF__marca__Nombre__4D94879B]  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[pago] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__stock__5070F446]  DEFAULT (NULL) FOR [Stock]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__id_mar__5165187F]  DEFAULT (NULL) FOR [ID_marca]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__precio__52593CB8]  DEFAULT (NULL) FOR [Precio_unitario]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__id_cat__534D60F1]  DEFAULT (NULL) FOR [ID_categoria]
GO
ALTER TABLE [dbo].[producto] ADD  CONSTRAINT [DF__producto__estado__5441852A]  DEFAULT (NULL) FOR [Estado]
GO
ALTER TABLE [dbo].[rol] ADD  DEFAULT (NULL) FOR [Tipo_de_Rol]
GO
ALTER TABLE [dbo].[sucursal] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[sucursal] ADD  DEFAULT (NULL) FOR [Direccion]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__rol__5812160E]  DEFAULT (NULL) FOR [Rol]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__nombre__59063A47]  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__apellid__59FA5E80]  DEFAULT (NULL) FOR [Apellido]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__email__5AEE82B9]  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__direcci__5BE2A6F2]  DEFAULT (NULL) FOR [Direccion]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__passwor__5CD6CB2B]  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__telefon__5DCAEF64]  DEFAULT (NULL) FOR [Telefono]
GO
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF__usuario__DNI__5EBF139D]  DEFAULT (NULL) FOR [DNI]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__fecha__5FB337D6]  DEFAULT (NULL) FOR [Fecha]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__id_usuari__60A75C0F]  DEFAULT (NULL) FOR [ID_usuario]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__direccion__619B8048]  DEFAULT (NULL) FOR [Direccion]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__total__628FA481]  DEFAULT (NULL) FOR [Total]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__modo_envi__6383C8BA]  DEFAULT (NULL) FOR [Modo_envio]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__modo_pago__6477ECF3]  DEFAULT (NULL) FOR [Modo_pago]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__nro_tajet__656C112C]  DEFAULT (NULL) FOR [Nro_tajeta]
GO
ALTER TABLE [dbo].[venta] ADD  CONSTRAINT [DF__venta__codigo_ta__66603565]  DEFAULT (NULL) FOR [Codigo_tarjeta]
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [detalle_venta_ibfk_1] FOREIGN KEY([ID_venta])
REFERENCES [dbo].[venta] ([ID_venta])
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [detalle_venta_ibfk_1]
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [detalle_venta_ibfk_2] FOREIGN KEY([ID_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [detalle_venta_ibfk_2]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [producto_ibfk_1] FOREIGN KEY([ID_marca])
REFERENCES [dbo].[marca] ([ID_marca])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [producto_ibfk_1]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [producto_ibfk_2] FOREIGN KEY([ID_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [producto_ibfk_2]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol] FOREIGN KEY([Rol])
REFERENCES [dbo].[rol] ([ID_rol])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_rol]
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarMarca]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ActualizarMarca]
@ID_marca_v INT,
@Nombre_v VARCHAR(255),
@Estado_v bit
AS
UPDATE marca
SET
Nombre = @Nombre_v,
Estado = @Estado_v
WHERE ID_marca = @ID_marca_v
GO
/****** Object:  StoredProcedure [dbo].[sp_CrearCategoria]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CrearCategoria]
@Nombre varchar(225),
@Estado bit
AS
BEGIN
INSERT INTO Categoria(Nombre,Estado)
VALUES(@Nombre, @Estado)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Create_Marca]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Create_Marca]
@Nombre_v varchar(225),
@Estado_v bit
AS
BEGIN
INSERT INTO marca(Nombre,Estado)
VALUES(@Nombre_v, @Estado_v)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategoria]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_EliminarCategoria]
@Nombre varchar(255)
AS
UPDATE Categoria
SET Estado = 0
WHERE Nombre = @Nombre
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarMarca]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarMarca]
@Nombre_v varchar(255)
AS
UPDATE marca
SET Estado = 0
WHERE Nombre = @Nombre_v
GO
/****** Object:  StoredProcedure [dbo].[spActivarProducto]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[spActivarProducto]
    (
    @id_producto_programa int
    ) 
    AS
    update producto
	set
	Estado = 1
    WHERE id_producto = @id_producto_programa 
    RETURN
GO
/****** Object:  StoredProcedure [dbo].[spActualizarProducto]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarProducto]
(
@IDPROD int,
@STOCK int,
@MARCA int,
@PRECIO float,
@CATEGORIA int,
@ESTADO int,
@NOMBRE varchar(255),
@IMAGEN varchar(255),
@DESCRIPCION varchar(255)
)
AS
UPDATE producto
SET
Stock = @STOCK,
ID_marca = @MARCA,
Precio_unitario = @PRECIO,
ID_categoria = @CATEGORIA,
Estado = @ESTADO,
Nombre = @NOMBRE,
Imagen = @IMAGEN,
Descripcion = @DESCRIPCION
WHERE
id_producto = @IDPROD
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spActualizarUsuario]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarUsuario] 
(
@IDUSUARIO int,
@ROL int, 
@NOMBRE varchar(255),
@APELLIDO varchar(255),
@EMAIL varchar(255),
@DIRECCION varchar(255),
@NOMBREUSUARIO varchar(255),
@PASSWORD varchar(255),
@TELEFONO varchar(255),
@DNI varchar(8)
)
AS
UPDATE usuario 
SET
Rol = @ROL,
Nombre = @NOMBRE,
Apellido = @APELLIDO,
Email = @EMAIL,
Direccion = @DIRECCION,
Nombre_Usuario = @NOMBREUSUARIO,
Password = @PASSWORD,
Telefono = @TELEFONO,
DNI = @DNI
WHERE
ID_usuario = @IDUSUARIO
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spBuscarProductoRepetido]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarProductoRepetido]
(@NOMBRE varchar(255))
AS
SELECT Nombre FROM producto WHERE Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[spCrearProducto]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spCrearProducto]
(
@STOCK int,
@MARCA int,
@PRECIO float,
@CATEGORIA int,
@ESTADO int,
@NOMBRE varchar(255),
@IMAGEN varchar(255),
@DESCRIPCION varchar(255)
)
AS
insert into producto
(
Stock,
ID_marca,
Precio_unitario,
ID_categoria,
Estado,
Nombre,
Imagen,
Descripcion
)
VALUES
(
@STOCK,
@MARCA,
@PRECIO,
@CATEGORIA,
@ESTADO,
@NOMBRE,
@IMAGEN,
@DESCRIPCION
)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spCrearUsuario]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCrearUsuario] /* NOMBRE DEL PROCEDIMIENTO*/
(
/*PARAMETROS RECIBIDOS DEL PROGRAMA*/
@ROL int, 
@NOMBRE varchar(255),
@APELLIDO varchar(255),
@EMAIL varchar(255),
@DIRECCION varchar(255),
@NOMBREUSUARIO varchar(255),
@PASSWORD varchar(255),
@TELEFONO varchar(255),
@DNI varchar(8)
)
AS
INSERT INTO Usuario /*TABLA A LA QUE VAS A CARGAR EL USUARIO*/
(
Rol,
Nombre,
Apellido,
Email,
Direccion,
Nombre_Usuario,
Password,
Telefono,
DNI
)
VALUES
(
@ROL,
@NOMBRE,
@APELLIDO,
@EMAIL,
@DIRECCION,
@NOMBREUSUARIO,
@PASSWORD,
@TELEFONO,
@DNI
)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SpDetalleVentaRegistro]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpDetalleVentaRegistro]
@IDVENTA INT, @ID_PRODUCTO INT, @CANTIDAD INT, @PRECIO_UNITARIO FLOAT
AS
INSERT INTO DETALLE_VENTA ("ID_venta","ID_producto","cantidad","Precio_unitario")
VALUES
(
@IDVENTA, 
@ID_PRODUCTO, 
@CANTIDAD, 
@PRECIO_UNITARIO
) ;
RETURN 
GO
/****** Object:  StoredProcedure [dbo].[spEliminarProducto]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarProducto]
    (
    @id_producto_programa int
    ) 
    AS
    update producto
	set
	Estado = 0
    WHERE id_producto = @id_producto_programa 
    RETURN
GO
/****** Object:  StoredProcedure [dbo].[spEliminarUsuario]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarUsuario]
(
@IDUSUARIO int
) 
AS
DELETE FROM Usuario
WHERE id_usuario = @IDUSUARIO
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarVenta]    Script Date: 19/11/2020 4:41:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spRegistrarVenta]
@FECHAVENTA DATE, @ID_USUARIO INT, @DIRECCION VARCHAR(255), @TOTAL DECIMAL, @MODO_ENVIO INT, @MODO_PAGO INT, @NROTARJETA VARCHAR(255), @CODTARJETA VARCHAR (3), @ID_SUCURSAL INT
AS
INSERT INTO VENTA (Fecha,ID_usuario,Direccion,Total,Modo_envio,Modo_pago,Nro_tajeta,Codigo_tarjeta,ID_sucursal)
VALUES
(
@FECHAVENTA, 
@ID_USUARIO,
@DIRECCION,
@TOTAL, 
@MODO_ENVIO,
@MODO_PAGO,
@NROTARJETA,
@CODTARJETA,
@ID_SUCURSAL
) 
RETURN 
GO
