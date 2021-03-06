USE [TP_Final]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[ID_venta] [int] NOT NULL,
	[ID_detalle_venta] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[envio]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  Table [dbo].[marca]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  Table [dbo].[pago]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  Table [dbo].[producto]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  Table [dbo].[rol]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  Table [dbo].[sucursal]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[ID_Sucursal] [int] NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
	[Telefono] [int] NULL,
	[mail] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 24/11/2020 08:56:00 ******/
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
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (13, N'Gogoss', 0, N'https://vignette.wikia.nocookie.net/gogoslatino/images/a/ad/Familia_de_gogo%27s.jpg/revision/latest/scale-to-width-down/340?cb=20091211215024&path-prefix=es')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (14, N'Patos', 0, N'https://upload.wikimedia.org/wikipedia/commons/f/ff/Anas_platyrhynchos_qtl1.jpg')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (16, N'Marvel', 0, N'https://i.blogs.es/d93d8d/marvel/1366_2000.jpeg')
INSERT [dbo].[categoria] ([id_categoria], [Nombre], [Estado], [Imagen]) VALUES (17, N'Raton', 0, N'https://www.latercera.com/resizer/qyuFB2ditt4eIw6_rIrS9W0YEmY=/375x250/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/UM565GE2HRH2BJHUI53LX6KHTA.jpg')
SET IDENTITY_INSERT [dbo].[categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[detalle_venta] ON 

INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (1, 1, 1, 1, 74999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (1, 2, 2, 1, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (2, 3, 3, 4, 98643)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (3, 7, 4, 12, 1234554)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (4, 7, 5, 5, 1232)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (9, 8, 89, 3, 35500)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (9, 9, 89, 3, 35500)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (9, 10, 89, 1, 35500)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (16, 12, 96, 3, 65432)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (17, 13, 89, 3, 35500)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (17, 14, 93, 3, 344567)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (17, 15, 98, 3, 65432)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (18, 16, 2, 30, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (18, 17, 98, 30, 65432)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (18, 18, 100, 30, 754632)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (18, 19, 99, 30, 43500)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (19, 20, 5, 17, 12000)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (19, 21, 6, 17, 11499)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (19, 22, 107, 17, 126)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (20, 23, 2, 4, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (20, 24, 1, 5, 10889)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (21, 25, 1, 3, 10889)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (21, 26, 2, 5, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (22, 27, 98, 10, 65432)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (22, 28, 2, 5, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (23, 29, 5, 20, 12000)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (23, 30, 88, 5, 12345)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (24, 31, 91, 6, 435223)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (24, 32, 92, 2, 12)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (25, 33, 90, 1, 556555)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (25, 34, 5, 1, 12000)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (26, 35, 91, 1, 435223)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (27, 36, 3, 3, 23999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (28, 37, 98, 5, 65432)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (28, 38, 97, 6, 111111)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (29, 39, 90, 1, 556555)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (29, 40, 91, 1, 435223)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (30, 41, 6, 16, 11499)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (30, 42, 99, 1, 43500)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (31, 43, 108, 1, 38999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (31, 44, 90, 1, 556555)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (32, 45, 2, 1, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (32, 46, 105, 3, 12435)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (33, 47, 110, 7, 99999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (33, 48, 2, 1, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (34, 49, 2, 9, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (34, 50, 90, 2, 556555)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (35, 51, 2, 1, 30999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (35, 52, 3, 1, 23999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (36, 53, 89, 2, 35500)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (37, 54, 111, 1, 99999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (38, 55, 98, 1, 65432)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (38, 56, 3, 1, 23999)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (38, 57, 94, 5, 33345)
INSERT [dbo].[detalle_venta] ([ID_venta], [ID_detalle_venta], [ID_producto], [Cantidad], [Precio_unitario]) VALUES (39, 58, 98, 1, 65432)
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
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (46, N'Gogo', 0)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (47, N'popito', 0)
INSERT [dbo].[marca] ([ID_marca], [Nombre], [Estado]) VALUES (48, N'Tuui', 0)
SET IDENTITY_INSERT [dbo].[marca] OFF
GO
INSERT [dbo].[pago] ([ID_pago], [Descripcion]) VALUES (1, N'Debito')
INSERT [dbo].[pago] ([ID_pago], [Descripcion]) VALUES (2, N'Credito')
GO
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (1, 4, 1, 10889, 3, 1, N'Moto Edge Xt 2063-55', N'/Imagenes/5.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (2, 33, 1, 30999, 3, 1, N'Moto G8 Power Xt2041-1', N'https://icdn7.digitaltrends.com/image/digitaltrends_es/huawei-p30-pro-review-6v2-720x480.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (3, 91, 2, 23999, 3, 1, N'L9 ', N'https://cnet4.cbsistatic.com/img/Ti5ieQB8i-dJE-t7WXwGnM6KvCw=/940x0/2019/08/26/bbdae7a7-d19c-4209-a291-db2d2b4871a5/lgk40s-02.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (4, 988, 3, 18999, 3, 0, N'L9s', N'/Imagenes/8.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (5, 20, 5, 12000, 3, 1, N'Blade A50', N'https://luba.com.ar/97-large_default/celular-samsung-a51-128g.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (6, 50, 5, 11499, 3, 1, N'Alcatel 1', N'https://i.blogs.es/ea6c01/alcatel-1v-rendimiento/1366_2000.jpg', N'Pensado para vos
El Samsung A01 Core posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gest')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (88, 0, 5, 12345, 2, 1, N'sdf', N'https://http2.mlstatic.com/D_NQ_NP_767231-MLA43970335447_112020-O.webp', N'Con el Smart TV B3219H5 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución HD prese')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (89, 1, 5, 35499.5, 2, 1, N'Smart TV Philips 5000 Series 43PFG5813/77 LED Full HD 43"', N'https://http2.mlstatic.com/D_NQ_NP_771965-MLA31522492188_072019-O.webp', N'El compromiso de Philips es brindar nuevas e innovadoras tecnologías a sus usuarios. Es por esa razón que se centra en los detalles para poder ofrecer productos que marcan la diferencia y crean una experiencia visual más increíble y auténtica.
Con el Sma')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (90, 0, 2, 556555, 2, 1, N'Smart TV Hisense H4318FH5 LED Full HD 43"', N'https://http2.mlstatic.com/D_NQ_NP_998153-MLA40774424364_022020-O.webp', N'Hisense es marca n.º1 de televisores en China y la 3.ª en electrodomésticos en el mundo. Fue reconocida con diferentes premios por sus altos estándares en innovación, tecnología, diseño y gestión de calidad. ¡Viví la experiencia Hisense!
Con el Smart TV H4318FH5 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución Full HD muestra una clara evolución frente a su antecesora. Las imágenes que vas a ver van a tener una calidad superior con un alto nivel de detalle y colores mucho más llamativos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (91, 0, 2, 435223, 2, 1, N'Smart TV Hisense H5 Series H3218H5 LED HD 32"', N'https://http2.mlstatic.com/D_NQ_NP_857083-MLA40981847754_032020-O.webp', N'Hisense es marca n.º1 de televisores en China y la 3.ª en electrodomésticos en el mundo. Fue reconocida con diferentes premios por sus altos estándares en innovación, tecnología, diseño y gestión de calidad. ¡Viví la experiencia Hisense!
Con el Smart TV H3218H5 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución HD presenta imágenes con gran detalle y alta definición. Ahora todo lo que veas cobrará vida con brillo y colores más reales.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (92, 8, 2, 12.5, 2, 1, N'Smart TV Hisense H5 Series H3218H5 LED HD 32"', N'https://http2.mlstatic.com/D_NQ_NP_944062-MLA32080971339_092019-O.webp', N'Con el Smart TV CDH-LE32SMART17 vas a acceder a las aplicaciones en las que se encuentran tus contenidos favoritos. Además, podés navegar por Internet, interactuar en redes sociales y divertirte con videojuegos.

Sumergite en la pantalla
Su resolución ')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (93, 52, 1, 344567, 5, 1, N'Computadora Armada Intel', N'https://http2.mlstatic.com/D_NQ_NP_770735-MLA31379423451_072019-O.webp', N'COMPUTADORA DE ESCRITORIO ARMADA - IDEAL OFICINA, HOGAR, GAMER - INCLUYE: INTEL PENTIUM G5420 3.7 GHZ, 2NUCLEOS , 1 TB WD DISCO RIGIDO, GRÁFICOS 4 K , AUDIO 7.1 HD, GABINETE , FUENTE 500 WATTS , TECLADO, MOUSE, PARLANTES."

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
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (94, 8, 1, 33345, 5, 1, N'Pc Armada Gamer Amd A6 7480 8gb Ddr3', N'https://http2.mlstatic.com/D_NQ_NP_821567-MLA31036329494_062019-O.webp', N'4KRC S.A. - Especialistas en Hardware Gamer. Más de 20 años de experiencia.
Más de 100.000 operaciones nos avalan. Mercadolider Platinum.

Nos encontramos en el barrio de Palermo. En la zona de las Cañitas. 9 a 20HS.
Nuevo punto de retiro, en la zona de Flores. 10 a 13 y 15 a 18HS. Sabádo 10 a 13HS

Envio Express Gratuito en moto 24HS a todo Capital Federal ! Con sistema Track&Trace !
Envio Gratuito por camión a todo el País ! Con sistema Track&Trace !
Emitimos Factura A y B. Todos nuestros productos cuentan con Garantía Oficial.
')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (95, 14, 1, 212331, 5, 1, N'Computadoras Amd A6-7480 ', N'https://http2.mlstatic.com/D_NQ_NP_609120-MLA31022614344_062019-O.webp', N'4KRC S.A. - Especialistas en Hardware Gamer. Más de 20 años de experiencia.
Más de 100.000 operaciones nos avalan. Mercadolider Platinum.

Nos encontramos en el barrio de Palermo. En la zona de las Cañitas. 9 a 20HS.
Nuevo punto de retiro, en la zona ')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (96, 14, 6, 65432, 5, 1, N'Computadoras Amd A6-7480 Dual Core', N'https://http2.mlstatic.com/D_NQ_NP_937662-MLA31026852229_062019-O.webp', N'NU4KRC S.A. - Especialistas en Hardware Gamer. Más de 20 años de experiencia.
Más de 100.000 operaciones nos avalan. Mercadolider Platinum.

Nos encontramos en el barrio de Palermo. En la zona de las Cañitas. 9 a 20HS.
Nuevo punto de retiro, en la zona de Flores. 10 a 13 y 15 a 18HS. Sabádo 10 a 13HS

Envio Express Gratuito en moto 24HS a todo Capital Federal ! Con sistema Track&Trace !
Envio Gratuito por camión a todo el País ! Con sistema Track&Trace !
Emitimos Factura A y B. Todos nuestros productos cuentanLL')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (97, 20, 1, 111111, 1, 1, N'Monitor curvo Samsung C24F390FH led 23.5"', N'https://http2.mlstatic.com/D_NQ_NP_975053-MLA32072674797_092019-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung C24F390FH tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED no solo ahorrás energía, ya que su consumo es bajo, sino que vas a ver colores más nítidos y definidos en tus películas o series favoritas. Además, con su pantalla curva tu contenido cobrará vida y tendrás una experiencia de inmersión extraordinaria.

Una experiencia visual de calidad
Este monitor de 23.5" te va a resultar de gran comodidad para estudiar, trabajar o ver una película en tus tiempos de ocio. Asimismo, su resolución de 1920 x 1080 te permite disfrutar de momentos únicos gracias a una imagen con gran nitidez. Por último, su tiempo de respuesta de 4 ms lo hace ideal para gamers y cinéfilos porque es capaz de mostrar imágenes en movimiento sin halos o bordes borrosos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (98, 23, 1, 65432, 1, 1, N'Monitor Samsung S27F350FHL led 27"', N'https://http2.mlstatic.com/D_NQ_NP_761386-MLA41510486783_042020-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung S27F350FHL tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED no solo ahorrás energía, ya que su consumo es bajo, sino que vas a ver colores más nítidos y definidos en tus películas o series favoritas.

Una experiencia visual de calidad
Este monitor de 27" te va a resultar de gran comodidad para estudiar, trabajar o ver una película en tus tiempos de ocio. Asimismo, su resolución de 1920 x 1080 te permite disfrutar de momentos únicos gracias a una imagen con gran nitidez. Por último, su tiempo de respuesta de 4 ms lo hace ideal para gamers y cinéfilos porque es capaz de mostrar imágenes en movimiento sin halos o bordes borrosos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (99, 79, 6, 43500, 1, 1, N'Monitor curvo Samsung 45', N'https://http2.mlstatic.com/D_NQ_NP_790571-MLA32195869442_092019-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung C27F591FD tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED ')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (100, 26, 5, 754632, 1, 1, N'Monitor curvo Samsung C27F591FD', N'https://http2.mlstatic.com/D_NQ_NP_790571-MLA32195869442_092019-O.webp', N'Disfrutá de todas las cualidades que el monitor Samsung C27F591FD tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementa cualquier espacio ya sea en tu casa u oficina.

Un monitor a tu medida
Con tu pantalla LED no solo ahorrás energía, ya que su consumo es bajo, sino que vas a ver colores más nítidos y definidos en tus películas o series favoritas. Además, con su pantalla curva tu contenido cobrará vida y tendrás una experiencia de inmersión extraordinaria.

Una experiencia visual de calidad
Este monitor de 27" te va a resultar de gran comodidad para estudiar, trabajar o ver una película en tus tiempos de ocio. Asimismo, su resolución de 1920 x 1080 te permite disfrutar de momentos únicos gracias a una imagen con gran nitidez. Por último, su tiempo de respuesta de 4 ms lo hace ideal para gamers y cinéfilos porque es capaz de mostrar imágenes en movimiento sin halos o bordes borrosos.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (101, 23, 2, 523234, 4, 1, N'Tablet con funda Gadnic Taurus Phone', N'https://http2.mlstatic.com/D_NQ_NP_935679-MLA32650081204_102019-O.webp', N'Esta tablet es ideal para cada una de tus actividades: editar fotos, documentos, navegar por internet y ¡mucho más! Su diseño delgado, compacto y portátil es la combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones Bluetooth, Micro USB y Wi-Fi te permitirán potenciar sus funciones al máximo.

Gracias a su cámara principal de 5 Mpx y frontal de 2 Mpx, podrás hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes harán que tus experiencias se reflejen de manera óptima.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (102, 10, 6, 12999, 4, 1, N'Tablet con funda Gadnic Phone', N'https://http2.mlstatic.com/D_NQ_NP_951232-MLA43528465044_092020-O.webp', N'La Tab S6 es tu compañera ideal, con capacidad de sobra para cada una de tus actividades. Su diseño, fácil de sostener con una sola mano, es delgado, compacto y portátil; una combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones ANT+, Bluetooth, USB y Wi-Fi, Wi-Fi Direct te permitirán potenciar sus funciones al máximo.

Capturá todos tus momentos al instante
Gracias a sus cámaras principales de 8 Mpx y su cámara frontal de 5 Mpx, podrás hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes, harán que tus experiencias se reflejen de manera óptima.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (103, 8, 5, 44444, 4, 1, N'Tablet Samsung Galaxy Tab ', N'https://http2.mlstatic.com/D_NQ_NP_795499-MLA42520536795_072020-O.webp', N'La Tab S6 es tu compañera ideal, con capacidad de sobra para cada una de tus actividades. Su diseño, fácil de sostener con una sola mano, es delgado, compacto y portátil; una combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones ANT+, Bluetooth, USB y Wi-Fi, Wi-Fi Direct te permitirán potenciar sus funciones al máximo.

Capturá todos tus momentos al instante
Gracias a sus cámaras principales de 8 Mpx y su cámara frontal de 5 Mpx, podrás hacer videollamadas o sacarte fotos en cualquier momento y lugar, con una excelente calidad de imagen. Nitidez, brillo y colores vibrantes, harán que tus experiencias se reflejen de manera óptima.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (104, 12, 5, 22232, 4, 1, N'Tablet Samsung Galaxy Tab ', N'https://http2.mlstatic.com/D_NQ_NP_897714-MLA42225909369_062020-O.webp', N'Esta tablet es ideal para cada una de tus actividades: editar fotos, documentos, navegar por internet y ¡mucho más! Su diseño delgado, compacto y portátil es la combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sincronizá y accedé a tus dispositivos con este producto las veces que quieras. Sus conexiones Bluetooth y Wi-Fi, Micro USB te permitirán potenciar sus funciones al máximo.')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (105, 120, 5, 12435, 4, 1, N'Tablet X-View Proton Titanium Gamer 10', N'https://http2.mlstatic.com/D_NQ_NP_807305-MLA43970074905_112020-O.webp', N'Esta tablet es ideal para cada una de tus actividades: editar fotos, documentos, navegar por internet y ¡mucho más! Su diseño delgado, compacto y portátil es la combinación perfecta de rendimiento y versatilidad.

Eficiencia sin límites
Transferí, sinc')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (106, 12, 7, 12, 2, 0, N'BarraMagica', N'gwr', N'wge')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (107, 22, 5, 125.5, 3, 1, N'Tamara', N'https://http2.mlstatic.com/D_NQ_NP_947308-MLA43878203705_102020-O.webp', N'OVERHARD
------------------------------------------------------------
Tenemos mas de 50 mil ventas positivas en el último año
------------------------------------------------------------

NOTEBOOK HP AMD RYZEN 3 3250U/4GB/128GB/14"/W10 (14-DK1022WM)')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (108, 19, 9, 38999, 3, 1, N'Xiaomi Redmi Note 9 Dual SIM 64 GB', N'https://http2.mlstatic.com/D_NQ_NP_767966-MLA42639636234_072020-O.webp', N'Pensado para vos
El Xiaomi Note 9 posee el novedoso sistema operativo Android 10 que incorpora respuestas inteligentes y acciones sugeridas para todas tus aplicaciones. Entre sus diversas funcionalidades encontrarás el tema oscuro, navegación por gestos ')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (110, 5, 4, 99999, 2, 1, N'lalalla', N'https://i.blogs.es/d93d8d/marvel/1366_2000.jpeg', N'La opción preferida de aquellos que quieran ver las cosas en el orden que suceden dentro de la línea temporal oficial según Marvel. Por ello, he añadido también un par de aclaraciones cuando se incluyen flashbacks con verdadera importancia en la trama.
')
INSERT [dbo].[producto] ([id_producto], [Stock], [ID_marca], [Precio_unitario], [ID_categoria], [Estado], [Nombre], [Imagen], [Descripcion]) VALUES (111, 0, 48, 99999, 17, 1, N'Ratin', N'https://fotografias.antena3.com/clipping/cmsimages01/2015/09/22/4D986E51-1D6B-4AB7-A9E8-0ACACD24F7FF/64.jpg', N'ratin')
SET IDENTITY_INSERT [dbo].[producto] OFF
GO
INSERT [dbo].[rol] ([ID_rol], [Tipo_de_Rol]) VALUES (1, N'Administrador')
INSERT [dbo].[rol] ([ID_rol], [Tipo_de_Rol]) VALUES (2, N'Usuario')
GO
INSERT [dbo].[sucursal] ([ID_Sucursal], [Nombre], [Direccion], [Telefono], [mail]) VALUES (1, N'FUNNDEV', N'Av. Italia 9999', 42885948, N'F@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (1, 1, N'Leo', N'Mattioli', N'LeoMattioli@gmail.com', N'Constitucion 1212', N'Admin', N'Admin', N'1122592000', N'11111111', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (2, 2, N'Cristian', N'Graus', N'cgraus@gmail.com', N'Guido Spano 1111', N'cgraus', N'cgraus', N'11009988', N'22222222', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (15, 2, N'Dalila', N'Baena', N'dalilabaena@hotmail.com.ar', N'Malabia 1626', N'Dali', N'Admin', N'47205779', N'43390414', 0)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (16, 2, N'Paloma', N'Baena', N'palob@gmail.com', N'Guido Spano 1111', N'cgraus', N'Palo', N'1100998873', N'22222221', 0)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (18, 2, N'Adriel', N'Lopez', N'adriel92@gmail.com', N'Guido Spano 1111', N'Adri', N'cgraus', N'1100998875', N'22222224', 0)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (20, 2, N'Gaston', N'Giordano', N'gastyg@gmail.com', N'Guido Spano 1111', N'Gasty', N'cgraus', N'1100998817', N'22222226', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (21, 2, N'Malena', N'Baena', N'malebaena@gmail.com', N'Guido Spano 1111', N'Male', N'cgraus', N'1100998878', N'22222227', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (22, 2, N'Eduardo', N'Baena', N'danbaena@live.com', N'Malabia 1626', N'Dan', N'1234', N'1100998879', N'22222228', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (25, 1, N'Wandis', N'Sabru', N'w@gmail.com', N'CPLM', N'Wandis', N'123', N'1140250627', N'42841317', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (26, 1, N'Tonais', N'Montana', N'tm@gmail.com', N'pasteur', N'Tony', N'wantony', N'11400000000', N'39707040', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (27, 1, N'Juampis', N'tonais', N'Tha@gmail.com', N'Guido Spano 2222', N'tonis', N'123', N'123', N'123', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (29, 2, N'Popito', N'Tsaa', N'32334@outlolokc.om', N'Guido Spano 2222', N'Popito', N'123', N'442345', N'42841313', 1)
INSERT [dbo].[usuario] ([ID_usuario], [Rol], [Nombre], [Apellido], [Email], [Direccion], [Nombre_Usuario], [Password], [Telefono], [DNI], [Estado]) VALUES (30, 1, N'Ratin', N'ratin', N'RAtin@gmail.com', N'Guido Spano 2222', N'Ratin', N'123', N'123', N'12352', 1)
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[venta] ON 

INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (1, CAST(N'2020-11-05' AS Date), 2, N'Guido Spano 1111', CAST(105998 AS Decimal(18, 0)), 2, 2, N'1111222233334444', N'123', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (2, CAST(N'2020-10-09' AS Date), 3, N'Av las heras', CAST(29892 AS Decimal(18, 0)), 1, 1, N'82673282', N'123', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (3, CAST(N'2021-11-08' AS Date), 1, N'Venecia 78', CAST(12353 AS Decimal(18, 0)), 2, 1, N'738723823', N'21', 2)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (4, CAST(N'2014-10-09' AS Date), 2, N'Lololola', CAST(4509 AS Decimal(18, 0)), 1, 2, N'14256332', N'112', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (5, CAST(N'2016-09-08' AS Date), 1, N'popopi 123', CAST(112221 AS Decimal(18, 0)), 2, 1, N'1256473', N'123', 2)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (6, CAST(N'2009-10-10' AS Date), 2, N'plopli 154', CAST(1265 AS Decimal(18, 0)), 1, 2, N'12654', N'564', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (7, CAST(N'2020-10-09' AS Date), 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (8, CAST(N'2020-11-17' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (9, CAST(N'2020-11-17' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (10, CAST(N'2020-11-17' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (11, CAST(N'2020-11-17' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (12, CAST(N'2020-11-17' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (13, CAST(N'2020-11-17' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (14, CAST(N'2020-11-17' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (15, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (16, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (17, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (18, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (19, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (20, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (21, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (22, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (23, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (24, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (25, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (26, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (27, CAST(N'2020-11-18' AS Date), 0, N'0', CAST(0 AS Decimal(18, 0)), 0, 0, N'0', N'0', 0)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (28, CAST(N'2020-11-18' AS Date), 1, N'Constitucion 0000', CAST(1549381 AS Decimal(18, 0)), 1, 2, N'123435', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (29, CAST(N'2020-11-19' AS Date), 1, N'Constitucion 0000', CAST(1427001 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (30, CAST(N'2020-11-20' AS Date), 1, N'Constitucion 999', CAST(923484 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (31, CAST(N'2020-11-20' AS Date), 1, N'Constitucion 1212', CAST(1152109 AS Decimal(18, 0)), 1, 1, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (32, CAST(N'2020-11-20' AS Date), 28, N'Guido Spano 2222', CAST(80739 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (33, CAST(N'2020-11-22' AS Date), 1, N'Constitucion 1212', CAST(947985 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (34, CAST(N'2020-11-22' AS Date), 29, N'Guido Spano 2222', CAST(6401096 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (35, CAST(N'2020-11-22' AS Date), 1, N'Constitucion 1212', CAST(78997 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (36, CAST(N'2020-11-22' AS Date), 1, N'Constitucion 1212', CAST(70999 AS Decimal(18, 0)), 1, 1, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (37, CAST(N'2020-11-24' AS Date), 30, N'Guido Spano 2222', CAST(99999 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (38, CAST(N'2020-11-24' AS Date), 30, N'Guido Spano 2222', CAST(346845 AS Decimal(18, 0)), 1, 2, N'123', N'345', 1)
INSERT [dbo].[venta] ([ID_venta], [Fecha], [ID_usuario], [Direccion], [Total], [Modo_envio], [Modo_pago], [Nro_tajeta], [Codigo_tarjeta], [ID_sucursal]) VALUES (39, CAST(N'2020-11-24' AS Date), 1, N'Constitucion 1212', CAST(65432 AS Decimal(18, 0)), 1, 2, N'44343', N'544', 1)
SET IDENTITY_INSERT [dbo].[venta] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__categori__75E3EFCF0477ED0D]    Script Date: 24/11/2020 08:56:00 ******/
ALTER TABLE [dbo].[categoria] ADD UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__usuario__E16B7B5D20024218]    Script Date: 24/11/2020 08:56:00 ******/
ALTER TABLE [dbo].[usuario] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC,
	[Nombre_Usuario] ASC,
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarMarca]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CrearCategoria]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CrearCategoria]
@Nombre varchar(225),
@Imagen varchar(max),
@Estado bit
AS
BEGIN
INSERT INTO Categoria(Nombre,Estado,Imagen)
VALUES(@Nombre, @Estado, @Imagen)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Create_Marca]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategoria]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarMarca]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[spActivarProducto]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[spActualizarCategoria]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarCategoria]
(
@IDCAT int,
@ESTADOCAT bit,
@NOMBRECAT varchar(255),
@IMAGENCAT varchar(max)
)
AS
UPDATE categoria
SET
Estado = @ESTADOCAT,
Nombre = @NOMBRECAT,
Imagen = @IMAGENCAT

WHERE
id_categoria = @IDCAT
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spActualizarProducto]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[spActualizarUsuario]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarUsuario] 
(
@IDUSUARIO int, 
@NOMBRE varchar(255),
@APELLIDO varchar(255),
@EMAIL varchar(255),
@DIRECCION varchar(255),
@NOMBREUSUARIO varchar(255),
@TELEFONO varchar(255)
)
AS
UPDATE usuario 
SET

Nombre = @NOMBRE,
Apellido = @APELLIDO,
Email = @EMAIL,
Direccion = @DIRECCION,
Nombre_Usuario = @NOMBREUSUARIO,
Telefono = @TELEFONO
WHERE
ID_usuario = @IDUSUARIO
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spBuscarProductoRepetido]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarProductoRepetido]
(@NOMBRE varchar(255))
AS
SELECT Nombre FROM producto WHERE Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[spCrearProducto]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[spCrearUsuario]    Script Date: 24/11/2020 08:56:00 ******/
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
@DNI varchar(8),
@ESTADO bit
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
DNI,
Estado
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
@DNI,
@ESTADO
)
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spDescontarStock]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDescontarStock]
    (
    @id_producto int,
	@stock int
    ) 
    AS
    update producto
	set
	Stock = @stock
    WHERE id_producto = @id_producto
    RETURN
GO
/****** Object:  StoredProcedure [dbo].[SpDetalleVentaRegistro]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[spEliminarProducto]    Script Date: 24/11/2020 08:56:00 ******/
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
/****** Object:  StoredProcedure [dbo].[spEliminarUsuario]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarUsuario]
(
@IDUSUARIO int
) 
AS
UPDATE usuario 
set 
Estado = 0 
WHERE id_usuario = @IDUSUARIO
RETURN
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarVenta]    Script Date: 24/11/2020 08:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spRegistrarVenta]
@FECHAVENTA DATE, @ID_USUARIO INT, @DIRECCION VARCHAR(255), @TOTAL FLOAT, @MODO_ENVIO INT, @MODO_PAGO INT, @NROTARJETA VARCHAR(255), @CODTARJETA VARCHAR (3), @ID_SUCURSAL INT
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
