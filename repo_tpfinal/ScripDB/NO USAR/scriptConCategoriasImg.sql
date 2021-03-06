USE [master]
GO
/****** Object:  Database [TP_Final]    Script Date: 11/13/2020 9:28:16 PM ******/
CREATE DATABASE [TP_Final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP_Final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TP_Final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP_Final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TP_Final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP_Final] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP_Final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP_Final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP_Final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP_Final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP_Final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP_Final] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP_Final] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TP_Final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP_Final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP_Final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP_Final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP_Final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP_Final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP_Final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP_Final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP_Final] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TP_Final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP_Final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP_Final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP_Final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP_Final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP_Final] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP_Final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP_Final] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TP_Final] SET  MULTI_USER 
GO
ALTER DATABASE [TP_Final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP_Final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP_Final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP_Final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP_Final] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TP_Final] SET QUERY_STORE = OFF
GO
USE [TP_Final]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 11/13/2020 9:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Estado] [bit] NULL,
	[Imagen] [varchar](255) NULL,
 CONSTRAINT [PK__categori__CD54BC5A4F48B909] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 11/13/2020 9:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[ID_venta] [int] NOT NULL,
	[ID_detalle_venta] [int] NOT NULL,
	[ID_producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio_unitario] [decimal](18, 0) NULL,
 CONSTRAINT [PK__detalle___2027566B85509CBE] PRIMARY KEY CLUSTERED 
(
	[ID_venta] ASC,
	[ID_detalle_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  Table [dbo].[marca]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  Table [dbo].[pago]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  Table [dbo].[producto]    Script Date: 11/13/2020 9:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Stock] [int] NULL,
	[ID_marca] [int] NULL,
	[Precio_unitario] [decimal](18, 0) NULL,
	[ID_categoria] [int] NULL,
	[Estado] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Imagen] [varchar](255) NULL,
	[Descripcion] [varchar](255) NULL,
 CONSTRAINT [PK__producto__FF341C0D97BB8109] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  Table [dbo].[sucursal]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 11/13/2020 9:28:16 PM ******/
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
 CONSTRAINT [PK__usuario__4E3E04AD70658984] PRIMARY KEY CLUSTERED 
(
	[ID_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 11/13/2020 9:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[ID_venta] [int] NOT NULL,
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
/****** Object:  StoredProcedure [dbo].[sp_CrearCategoria]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Create_Marca]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategoria]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarMarca]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spActualizarProducto]    Script Date: 11/13/2020 9:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarProducto]
(
@IDPROD int,
@STOCK int,
@MARCA int,
@PRECIO decimal(18),
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
/****** Object:  StoredProcedure [dbo].[spActualizarUsuario]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spBuscarProductoRepetido]    Script Date: 11/13/2020 9:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarProductoRepetido]
(@NOMBRE varchar(255))
AS
SELECT Nombre FROM producto WHERE Nombre = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[spCrearProducto]    Script Date: 11/13/2020 9:28:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spCrearProducto]
(
@STOCK int,
@MARCA int,
@PRECIO decimal(18),
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
/****** Object:  StoredProcedure [dbo].[spCrearUsuario]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spEliminarProducto]    Script Date: 11/13/2020 9:28:16 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spEliminarUsuario]    Script Date: 11/13/2020 9:28:16 PM ******/
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
USE [master]
GO
ALTER DATABASE [TP_Final] SET  READ_WRITE 
GO
