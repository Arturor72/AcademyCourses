USE [master]
GO
/****** Object:  Database [dbAcademy]    Script Date: 11/04/2014 15:58:36 ******/
CREATE DATABASE [dbAcademy] ON  PRIMARY 
( NAME = N'dbAcademy', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\dbAcademy.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbAcademy_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\dbAcademy_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbAcademy] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbAcademy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbAcademy] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dbAcademy] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dbAcademy] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dbAcademy] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dbAcademy] SET ARITHABORT OFF
GO
ALTER DATABASE [dbAcademy] SET AUTO_CLOSE ON
GO
ALTER DATABASE [dbAcademy] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dbAcademy] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [dbAcademy] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dbAcademy] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dbAcademy] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dbAcademy] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dbAcademy] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dbAcademy] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dbAcademy] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dbAcademy] SET  ENABLE_BROKER
GO
ALTER DATABASE [dbAcademy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [dbAcademy] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [dbAcademy] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [dbAcademy] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [dbAcademy] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [dbAcademy] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [dbAcademy] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [dbAcademy] SET  READ_WRITE
GO
ALTER DATABASE [dbAcademy] SET RECOVERY SIMPLE
GO
ALTER DATABASE [dbAcademy] SET  MULTI_USER
GO
ALTER DATABASE [dbAcademy] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [dbAcademy] SET DB_CHAINING OFF
GO
USE [dbAcademy]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 11/04/2014 15:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Horario](
	[C_Horario] [tinyint] IDENTITY(1,1) NOT NULL,
	[Dias] [varchar](40) NOT NULL,
	[HoraInicio] [time](0) NOT NULL,
	[HoraFin] [time](0) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[C_Horario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Horario] ON
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (1, N'Lunes,Martes,Miercoles,Jueves,Viernes', CAST(0x00907E0000000000 AS Time), CAST(0x00A08C0000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (2, N'Lunes,Martes,Miercoles,Jueves,Viernes', CAST(0x00A08C0000000000 AS Time), CAST(0x00B09A0000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (3, N'Lunes,Miercoles,Viernes', CAST(0x00B09A0000000000 AS Time), CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (4, N'Martes,Jueves', CAST(0x00B09A0000000000 AS Time), CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (5, N'Lunes,Miercoles,Viernes', CAST(0x00F0D20000000000 AS Time), CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (6, N'Lunes,Martes,Miercoles,Jueves,Viernes', CAST(0x0010EF0000000000 AS Time), CAST(0x0020FD0000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (7, N'Lunes,Martes,Miercoles,Jueves,Viernes', CAST(0x0020FD0000000000 AS Time), CAST(0x00300B0100000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (8, N'Lunes,Miercoles,Viernes', CAST(0x00300B0100000000 AS Time), CAST(0x0050270100000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (9, N'Martes,Jueves', CAST(0x00300B0100000000 AS Time), CAST(0x0050270100000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (10, N'Sabado', CAST(0x00A08C0000000000 AS Time), CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (11, N'Sabado', CAST(0x00E0C40000000000 AS Time), CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (12, N'Sabado', CAST(0x0010EF0000000000 AS Time), CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (13, N'Sabado', CAST(0x0040190100000000 AS Time), CAST(0x0070430100000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (14, N'Domingo', CAST(0x00A08C0000000000 AS Time), CAST(0x00E0C40000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (15, N'Domingo', CAST(0x00E0C40000000000 AS Time), CAST(0x0010EF0000000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (16, N'Domingo', CAST(0x0010EF0000000000 AS Time), CAST(0x0040190100000000 AS Time))
INSERT [dbo].[Horario] ([C_Horario], [Dias], [HoraInicio], [HoraFin]) VALUES (17, N'Domingo', CAST(0x0040190100000000 AS Time), CAST(0x0070430100000000 AS Time))
SET IDENTITY_INSERT [dbo].[Horario] OFF
/****** Object:  UserDefinedFunction [dbo].[Encriptar]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Encriptar](@D_Contrasena VARCHAR(40))
RETURNS VARBINARY(500)
AS
	BEGIN
		DECLARE @Password VARBINARY(500)
		SET @Password = ENCRYPTBYPASSPHRASE('Contrasena', @D_Contrasena)
		RETURN @Password
	END
GO
/****** Object:  UserDefinedFunction [dbo].[Desencriptar]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Desencriptar](@D_Contrasena VARBINARY(500))
RETURNS VARCHAR(40)
AS
	BEGIN
		DECLARE @Password VARCHAR(40)
		SET @Password = DECRYPTBYPASSPHRASE('Contrasena', @D_Contrasena)
		RETURN @Password
	END
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[C_Categoria] [tinyint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[C_Categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_DescripcionCategoria] UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON
INSERT [dbo].[Categoria] ([C_Categoria], [Descripcion]) VALUES (2, N'Base de Datos')
INSERT [dbo].[Categoria] ([C_Categoria], [Descripcion]) VALUES (1, N'Computación')
INSERT [dbo].[Categoria] ([C_Categoria], [Descripcion]) VALUES (4, N'Diseño')
INSERT [dbo].[Categoria] ([C_Categoria], [Descripcion]) VALUES (5, N'Hardware y Redes')
INSERT [dbo].[Categoria] ([C_Categoria], [Descripcion]) VALUES (3, N'Programación')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[C_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Email] [varchar](40) NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[Nick] [varchar](25) NOT NULL,
	[Contrasena] [varbinary](500) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[C_Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_EmailUsuario] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_Nick] UNIQUE NONCLUSTERED 
(
	[Nick] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (1, N'Flores', N'Quispe', N'Carlos', N'Car.12@hotmail.com', N'M', N'Carlos33', 0x010000005114F6DD7C838DA6C6CE2142EBA638F4B69363FAAAE41237, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (2, N'Sanchez', N'Rodriguez', N'Fernando', N'Fernando_123@hotmail.com', N'M', N'Fer', 0x010000002F1088762C86A9F93203172798CCAB085CBE6B80D70D8377, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (3, N'García', N'Rojas', N'Patricia', N'Patricia.09@hotmail.com', N'F', N'Pati', 0x01000000A9BFCF1572770925D15FDEB78B4DE2D60B30DE7BF3E09C3B, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (4, N'Gonzales', N'Chavez', N'Milagros', N'Mili22@hotmail.com', N'F', N'MilagrosGC', 0x01000000F13F6765F12751987D24D1A745FE2FFA56B6662A6596E9BB, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (5, N'Lopez', N'Diaz', N'Marcos', N'Marcos.33@hotmail.com', N'M', N'Marcos3', 0x01000000C895E527AFF6DF51C9BBE0B05BD2416F39CA6455F3943AAA, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (6, N'Ramos', N'Mendoza', N'Martín', N'Martin.77@hotmail.com', N'M', N'Martín34', 0x010000008F294762269736A795462678B1B82C37B8AEDAC93DBC3A97, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (7, N'Ramirez', N'Torres', N'William', N'William22@hotmail.com', N'M', N'Will', 0x01000000B746A9610C5AFDB5137A1A1F0B344C4D19CB6A4493C9C421, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (8, N'Castillo', N'Espinoza', N'Daniel', N'Daniel.55@hotmail.com', N'M', N'Dan23', 0x01000000ECC0504B4DD6A0BC627C4F6E65186BA598F97E5990421F3A, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (9, N'Vasquez', N'Gutierrez', N'David', N'David345@hotmail.com', N'M', N'David123', 0x01000000651A8559D923A3EC6E6AB678098B56AA6DFFDF25DD850469, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (10, N'Huaman', N'Perez', N'Javier', N'Javier33@hotmail.com', N'M', N'Javier33', 0x01000000F08B31C7F54AA931B5B52DFE8F5A4FFFB6F5E4657FFC0BE1, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (11, N'Vargas', N'Fernandez', N'Victor', N'Victor67@hotmail.com', N'M', N'Victor45', 0x0100000063CC16E5DACEA77AC901D6480374EEF310E6A97111397F24, 1)
INSERT [dbo].[Usuario] ([C_Usuario], [ApellidoP], [ApellidoM], [Nombre], [Email], [Sexo], [Nick], [Contrasena], [Estado]) VALUES (12, N'Mamani', N'Castro', N'Carmen', N'Carmen.345@hotmail.com', N'F', N'CarmenT', 0x0100000058F193EE4C1A102B0F5A01C174EC099B37E96FBC70767FDE, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[Profesor]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesor](
	[C_Profesor] [tinyint] IDENTITY(1,1) NOT NULL,
	[C_Trabajador] [int] NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [varchar](15) NULL,
	[Email] [varchar](40) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[C_Profesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_EmailProfesor] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_TrabajadorProfesor] UNIQUE NONCLUSTERED 
(
	[C_Trabajador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Profesor] ON
INSERT [dbo].[Profesor] ([C_Profesor], [C_Trabajador], [ApellidoP], [ApellidoM], [Nombre], [Telefono], [Email], [Estado]) VALUES (1, 3, N'Ruiz', N'Romero', N'Elizabeth', N'4565478', N'Eli5@hotmail.com', 1)
INSERT [dbo].[Profesor] ([C_Profesor], [C_Trabajador], [ApellidoP], [ApellidoM], [Nombre], [Telefono], [Email], [Estado]) VALUES (2, 4, N'Martinez', N'Perez', N'Eduardo', N'7565478', N'Eduardo@hotmail.com', 1)
INSERT [dbo].[Profesor] ([C_Profesor], [C_Trabajador], [ApellidoP], [ApellidoM], [Nombre], [Telefono], [Email], [Estado]) VALUES (3, 5, N'Salazar', N'Lopez', N'Jesús', N'4385756', N'Jesús@hotmail.com', 1)
INSERT [dbo].[Profesor] ([C_Profesor], [C_Trabajador], [ApellidoP], [ApellidoM], [Nombre], [Telefono], [Email], [Estado]) VALUES (4, 6, N'Leon', N'Huaman', N'Enrique', N'4253698', N'Enrique@hotmail.com', 1)
INSERT [dbo].[Profesor] ([C_Profesor], [C_Trabajador], [ApellidoP], [ApellidoM], [Nombre], [Telefono], [Email], [Estado]) VALUES (5, 7, N'Reyes', N'Ramirez', N'Natalia', N'4758963', N'Natalia@hotmail.com', 1)
INSERT [dbo].[Profesor] ([C_Profesor], [C_Trabajador], [ApellidoP], [ApellidoM], [Nombre], [Telefono], [Email], [Estado]) VALUES (6, 8, N'Huaman', N'Chavez', N'Laura', N'7583698', N'Laura@hotmail.com', 1)
INSERT [dbo].[Profesor] ([C_Profesor], [C_Trabajador], [ApellidoP], [ApellidoM], [Nombre], [Telefono], [Email], [Estado]) VALUES (7, 9, N'Ramos', N'Rojas', N'Tamara', N'4753698', N'Tamara6@hotmail.com', 1)
SET IDENTITY_INSERT [dbo].[Profesor] OFF
/****** Object:  Table [dbo].[Modulo]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modulo](
	[C_Modulo] [tinyint] IDENTITY(1,1) NOT NULL,
	[C_Categoria] [tinyint] NOT NULL,
	[Precio] [decimal](8, 2) NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[C_Modulo] ASC,
	[C_Categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_DescripcionModulo] UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Modulo] ON
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (1, 1, CAST(1400.00 AS Decimal(8, 2)), N'Especialista en ofimática', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (2, 1, CAST(2400.00 AS Decimal(8, 2)), N'Técnico en Computación', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (3, 1, CAST(800.00 AS Decimal(8, 2)), N'Especialista Excel Empresarial ', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (4, 2, CAST(800.00 AS Decimal(8, 2)), N'Data Base Administrador', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (5, 2, CAST(600.00 AS Decimal(8, 2)), N'Administración de BD en Oracle', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (6, 3, CAST(600.00 AS Decimal(8, 2)), N'Programación Estructurada', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (7, 3, CAST(1000.00 AS Decimal(8, 2)), N'Visual Basic Developer', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (8, 3, CAST(800.00 AS Decimal(8, 2)), N'NET Developer', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (9, 3, CAST(800.00 AS Decimal(8, 2)), N'NET C#', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (10, 3, CAST(600.00 AS Decimal(8, 2)), N'PHP Developer', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (11, 3, CAST(600.00 AS Decimal(8, 2)), N'Java Developer', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (12, 3, CAST(800.00 AS Decimal(8, 2)), N'Android Developer', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (13, 4, CAST(600.00 AS Decimal(8, 2)), N'AutoCAD 2014', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (14, 4, CAST(1200.00 AS Decimal(8, 2)), N'Diseño Gráfico Digital', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (15, 4, CAST(800.00 AS Decimal(8, 2)), N'Web Designer Professional', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (16, 4, CAST(800.00 AS Decimal(8, 2)), N'Diseño y Animaciones 3D', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (17, 5, CAST(1200.00 AS Decimal(8, 2)), N'Experto en Hardware y Redes con Certificación IT Essentials', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (18, 5, CAST(1200.00 AS Decimal(8, 2)), N'Especialista en Configuracion y Administración en Redes', 1)
INSERT [dbo].[Modulo] ([C_Modulo], [C_Categoria], [Precio], [Descripcion], [Estado]) VALUES (19, 5, CAST(600.00 AS Decimal(8, 2)), N'Especialista en Linux', 1)
SET IDENTITY_INSERT [dbo].[Modulo] OFF
/****** Object:  Table [dbo].[Alumno]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[C_Alumno] [int] NOT NULL,
	[Ocupacion] [varchar](50) NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[C_Alumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (3, N'Estudiante Universitario')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (4, N'Trabajador')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (5, N'Estudiante Universitario')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (6, N'Estudiante Universitario y Trabajador')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (7, N'Estudiante Universitario')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (8, N'Estudiante Universitario')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (9, N'Estudiante Universitario y Trabajador')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (10, N'Estudiante Universitario')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (11, N'Estudiante Universitario')
INSERT [dbo].[Alumno] ([C_Alumno], [Ocupacion]) VALUES (12, N'Trabajador')
/****** Object:  Table [dbo].[Administrador]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[C_Administrador] [int] NOT NULL,
	[C_Trabajador] [int] NOT NULL,
 CONSTRAINT [PK_Administrador] PRIMARY KEY CLUSTERED 
(
	[C_Administrador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_TrabajadorAdministrador] UNIQUE NONCLUSTERED 
(
	[C_Trabajador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administrador] ([C_Administrador], [C_Trabajador]) VALUES (1, 1)
INSERT [dbo].[Administrador] ([C_Administrador], [C_Trabajador]) VALUES (2, 2)
/****** Object:  Table [dbo].[Curso]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[C_Curso] [int] IDENTITY(1,1) NOT NULL,
	[C_Modulo] [tinyint] NOT NULL,
	[C_Categoria] [tinyint] NOT NULL,
	[C_Profesor] [tinyint] NOT NULL,
	[C_Horario] [tinyint] NOT NULL,
	[C_CursoR] [int] NULL,
	[Descripcion] [varchar](70) NOT NULL,
	[Requisitos] [varchar](250) NULL,
	[Objetivo] [varchar](250) NULL,
	[Temario] [text] NOT NULL,
	[Precio] [decimal](8, 2) NOT NULL,
	[NumeroHoras] [tinyint] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[C_Curso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_DescripcionCurso] UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (1, 1, 1, 3, 3, NULL, N'Microsoft Windows 8', N'Ninguno', N'Personalizar el computador 
Utilizar las herramientas 
Trabajar con varios Programas simultáneamente y Administrar archivos y carpetas 
Conocer la Funciones básicas de las Aplicaciones', N'Las partes de su Sistema Informático
Explorando Windows 8
Gestionar sus cuentas de usuario
Navegando por ventanas y carpetas
Comprender los archivos y carpetas
Conceptos básicos de Internet
Trabajando Internet Explorer 10
Personalizar Windows 8
Instalar y Configurar dispositivos
Trabajar con programas de Windows 8
Trabajar con entornos digitales
Optimizar el sistema
', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x4F390B00 AS Date), CAST(0x5F390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (2, 1, 1, 3, 3, 1, N'Microsoft Word 2013', N'Conocimientos básicos de Windows a nivel de usuario.
Tener muchos deseos de aprender y lograr tus metas trazadas
', N'Conocer la nueva interfaz de Word 2013, las nuevas características y sobre todo el uso de las nuevas tecnologías automáticas
Realizar un uso adecuado y coherente.
Elaborar plantillas, modelos y formatos de documentos empresariales.', N'Interfaz de Word 2013
Un nuevo formato de archivos
Definición de párrafos
Formato
Insertar Objetos
Tablas e Imágenes
Combinar Correspondencia', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x61390B00 AS Date), CAST(0x72390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (3, 1, 1, 3, 3, 2, N'Microsoft Excel Básico 2013', N'Conocimientos de Windows', N'Conocer los conceptos básicos.
Resolver problemas específicos a través de la realización de cálculos sencillos utilizando Microsoft Excel 2013.
Organizar información mediante cuadros, tablas dinámicas y gráficos.', N'Identificar los elementos de la interfaz
Personalizar la ventana del programa
Acciones básicas en Excel
Tareas básicas en el Libro
Trabajar con hojas de cálculo
Visualización de ventanas
Trabajar con Rangos, Filas y Columnas
Trabajar con datos
Cómo mejorar la apariencia aplicando formatos
Inserción y edición de fórmulas
Funciones predefinidas de Excel
Tablas
Cómo presentar visualmente la información
Insertar Ilustraciones', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x74390B00 AS Date), CAST(0x84390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (4, 1, 1, 3, 3, 3, N'Microsoft Excel Intermedio 2013', N'Conocimientos de Windows', N'Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear fórmulas.
Realizar operaciones con una base de datos.', N'Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gráficos dinámicos
Herramientas de Colaboración y Seguridad', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x87390B00 AS Date), CAST(0x97390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (5, 1, 1, 3, 3, 4, N'Microsoft Power Point 2013', N'Para un correcto seguimiento del curso es conveniente que el alumno tenga unos conocimientos básicos del MS Windows, del manejo del teclado y del ratón.', N'Difundir ideas, proyectos o información, al crear, presentar y colaborar en presentaciones que tengan un mayor impacto. Crear diapositivas con gráficos, animaciones y contenido multimedia.', N'Introducción
Creación de una presentación Básica
Creación de una presentación desde una plantilla, tema o presentación existente
Formato y edición de textos.
Formato y distribución de diapositivas
Colocar imágenes en una diapositiva.
Añadir sonido y video.
Transición de Diapositivas y Efectos de presentación.
Hipervínculos
Edición del Video usando el Windows Movie Maker
Formatos de una presentación', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x2C380B00 AS Date), CAST(0x3D380B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (6, 1, 1, 3, 3, 5, N'Microsoft Access 2013', N'Windows a nivel usuario.', N'Identificar la estructura de una base de datos y su configuración.
Desarrollar una aplicación bajo MS Access que organice y gestione información.', N'Conceptos básicos sobre bases de datos
Bases de datos relacionales
Posibilidades de las bases de datos
Microsoft Access
Definición y almacenamiento de datos
Manipulación y control de datos
Desarrollo de una aplicación en Access
', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0xAC390B00 AS Date), CAST(0xBC390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (7, 2, 1, 3, 3, NULL, N'Microsoft  Windows 8 ', N'Ninguno', N'Personalizar el computador 
Utilizar las herramientas 
Trabajar con varios Programas simultáneamente y Administrar archivos y carpetas 
Conocer la Funciones básicas de las Aplicaciones', N'Las partes de su Sistema Informático
Explorando Windows 8
Gestionar sus cuentas de usuario
Navegando por ventanas y carpetas
Comprender los archivos y carpetas
Conceptos básicos de Internet
Trabajando Internet Explorer 10
Personalizar Windows 8
Instalar y Configurar dispositivos
Trabajar con programas de Windows 8
Trabajar con entornos digitales
Optimizar el sistema
', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x4F390B00 AS Date), CAST(0x5F390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (8, 2, 1, 3, 3, 7, N'Microsoft  Word 2013', N'Conocimientos básicos de Windows a nivel de usuario.
Tener muchos deseos de aprender y lograr tus metas trazadas
', N'Conocer la nueva interfaz de Word 2013, las nuevas características y sobre todo el uso de las nuevas tecnologías automáticas
Realizar un uso adecuado y coherente.
Elaborar plantillas, modelos y formatos de documentos empresariales.', N'Interfaz de Word 2013
Un nuevo formato de archivos
Definición de párrafos
Formato
Insertar Objetos
Tablas e Imágenes
Combinar Correspondencia', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x61390B00 AS Date), CAST(0x72390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (9, 2, 1, 3, 3, 8, N'Microsoft Excel  Básico 2013', N'Conocimientos de Windows', N'Conocer los conceptos básicos.
Resolver problemas específicos a través de la realización de cálculos sencillos utilizando Microsoft Excel 2013.
Organizar información mediante cuadros, tablas dinámicas y gráficos.', N'Identificar los elementos de la interfaz
Personalizar la ventana del programa
Acciones básicas en Excel
Tareas básicas en el Libro
Trabajar con hojas de cálculo
Visualización de ventanas
Trabajar con Rangos, Filas y Columnas
Trabajar con datos
Cómo mejorar la apariencia aplicando formatos
Inserción y edición de fórmulas
Funciones predefinidas de Excel
Tablas
Cómo presentar visualmente la información
Insertar Ilustraciones', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x74390B00 AS Date), CAST(0x84390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (10, 2, 1, 3, 3, 9, N'Microsoft Excel  Intermedio 2013', N'Conocimientos de Windows', N'Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear fórmulas.
Realizar operaciones con una base de datos.', N'Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gráficos dinámicos
Herramientas de Colaboración y Seguridad', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x87390B00 AS Date), CAST(0x97390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (11, 2, 1, 3, 3, 10, N'Microsoft Power Point  2013', N'Para un correcto seguimiento del curso es conveniente que el alumno tenga unos conocimientos básicos del MS Windows, del manejo del teclado y del ratón.', N'Difundir ideas, proyectos o información, al crear, presentar y colaborar en presentaciones que tengan un mayor impacto. Crear diapositivas con gráficos, animaciones y contenido multimedia.', N'Introducción
Creación de una presentación Básica
Creación de una presentación desde una plantilla, tema o presentación existente
Formato y edición de textos.
Formato y distribución de diapositivas
Colocar imágenes en una diapositiva.
Añadir sonido y video.
Transición de Diapositivas y Efectos de presentación.
Hipervínculos
Edición del Video usando el Windows Movie Maker
Formatos de una presentación', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x2C380B00 AS Date), CAST(0x3D380B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (12, 2, 1, 3, 3, 11, N'Microsoft Access  2013', N'Windows a nivel usuario.', N'Identificar la estructura de una base de datos y su configuración.
Desarrollar una aplicación bajo MS Access que organice y gestione información.', N'Conceptos básicos sobre bases de datos
Bases de datos relacionales
Posibilidades de las bases de datos
Microsoft Access
Definición y almacenamiento de datos
Manipulación y control de datos
Desarrollo de una aplicación en Access
', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0xAC390B00 AS Date), CAST(0xBC390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (13, 2, 1, 3, 3, NULL, N'Gestión de Redes Sociales - Web 2.0', N'Nociones básicas de marketing o haber trabajo en áreas similares. Es recomendable poder leer en inglés ya que las últimas publicaciones sobre este tema no están traducidas.
', N'Interpretar planificaciones y gestionar programas de marketing 2.0 en los medios sociales en Internet. Crear estrategias, cronogramas, medir resultados y restablecer acciones necesarias para el logro de objetivos.', N'Marketing en la web. manejo de la reputación online.
Actitudes y aptitudes de un Community Manager. Reglas de la conversación 2.0. Compendio de herramientas disponibles: Contenidos multimedia. Publicación de información en sitios web y en blogs. Socialización. Redes sociales. Casos de estudio.
Cómo armar un plan de presencia en medios sociales. Resumen ejecutivo. Análisis inicial del mercado y la dinámica organizacional. Evaluación de las oportunidades.
Objetivos específicos. Estrategias y herramientas. Análisis de la inversión y resultados esperados. Recursos.
Taller: Gestión de aplicaciones
Taller de herramientas de medición: Google Analytics, Google Insights, Google Alerts. Estadísticas de Facbook. Herramientas de medición de Twitter.', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0xAC390B00 AS Date), CAST(0xBC390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (14, 2, 1, 3, 3, 13, N'Adobe Dreamweaver CS6 - Designer', N'Haber realizado el curso de dreamweaver cs6 designer o acreditar conocimientos equivalentes a juicio de la Institución', N'Gracias a este curso sabrá organizar un sitio web y conocerá la utilidad de crear las páginas dentro de éste desde el principio; configurar las propiedades de las páginas; insertar plug-ins y controles ActiveX, applets de Java, elementos de interfaz', N'Aspectos básicos del programa
Creación de un estilo de Clase
Vínculos o hipervínculos de documentos
Insertar Imágenes
Diseño de paginas
Pagina de marcos
Creación de Plantillas', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0xBF390B00 AS Date), CAST(0xCF390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (15, 2, 1, 3, 3, 14, N'CorelDRAW X6 - Designer', N'La actual o una versión anterior de CorelDraw X5
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista', N'El alumno comprenda los fundamentos y criterios básicos de la Preprensea
digital, elaborando diseños publicitarios de manera eficiente y efectiva, para que queden', N'En entorno de diseño
Configurar el documento de CorelDraw X6
Herramientas de formas básicas
Herramientas y comandos para organizar los objetos
Usar colores 
Herramienta texto 
Herramienta Bezier 
Diseño de un Recibo por honorarios
Herramienta Bezier (curvas)
Rellano Uniforme
Herramienta Mezcla Interactiva
Herramienta Silueta Interactiva', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0xB2390B00 AS Date), CAST(0xE2390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (16, 2, 1, 3, 3, 15, N'Ensambleje de PC', N'Ninguno', N'Comprender el funcionamiento de una computadora y sus periféricos.
Reconocer y describir las especificaciones técnicas de las partes de una computadora.
Seleccionar el hardware apropiado para una PC.', N'Partes de una PC.
El Gabinete
 La Placa Base
Procesador y Memoria
 Medios de Almacenamiento
Tarjetas de Expansión', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0xE4390B00 AS Date), CAST(0xF4390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (17, 3, 1, 5, 4, NULL, N'Microsoft  Excel  Básico 2013', N'Conocimientos de Windows', N'Conocer los conceptos básicos.
Resolver problemas específicos a través de la realización de cálculos sencillos utilizando Microsoft Excel 2013.
Organizar información mediante cuadros, tablas dinámicas y gráficos.', N'Identificar los elementos de la interfaz
Personalizar la ventana del programa
Acciones básicas en Excel
Tareas básicas en el Libro
Trabajar con hojas de cálculo
Visualización de ventanas
Trabajar con Rangos, Filas y Columnas
Trabajar con datos
Cómo mejorar la apariencia aplicando formatos
Inserción y edición de fórmulas
Funciones predefinidas de Excel
Tablas
Cómo presentar visualmente la información
Insertar Ilustraciones', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x50390B00 AS Date), CAST(0x67390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (18, 3, 1, 5, 4, 17, N'Microsoft  Excel  Intermedio 2013', N'Conocimientos de Windows', N'Elaborar y editar todo tipo de cuadros.
Aplicar formatos de celda.
Aplicar funciones y crear fórmulas.
Realizar operaciones con una base de datos.', N'Funciones
Listas Personalizadas, Ordenar y filtrar
Esquemas y SubTotales
Filtros Avanzados
Herramientas de datos
Informes de tabla y gráficos dinámicos
Herramientas de Colaboración y Seguridad', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x6C390B00 AS Date), CAST(0x7C390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (19, 3, 1, 5, 4, 18, N'Microsoft Excel Producción y Administración', N'Tener conocimientos previos de Excel a nivel intermedio (Excel I y II).', N'Aplicar las funciones y las herramientas de análisis estadístico. 
Desarrollar análisis con bases de datos externas. Calculo de costos y diagramas de producción. Diagrama de Pareto Resolver casos de simulación de eventos.', N'Análisis Estadístico de datos
Detección de errores en el ingreso de datos
Obtener información de Bases de datos Externas
Análisis (para cálculos de costos, y de producción)
Control de Existencia en Almacenes
Detección de stock mínimo
Consolidación de existencias en almacenes múltiples
', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x88390B00 AS Date), CAST(0x9F390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (20, 3, 1, 5, 4, 19, N' Microsoft Excel Financiero', N'Conocimiento intermedio del Excel.', N'La determinación de intereses simples y compuestos. 
El calculo de tasas efectivas asi como conversiones entre las mismas. 
El calculo del descuento bancario compuesto y determinación del costo efectivo del crédito.', N'Interés simple
Interés compuesto
Tasa de interés
Cronograma de pagos
Descuentos
Factores financieros – anualidades y rentas
Depreciación
Evaluación de proyectos
', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0xA4390B00 AS Date), CAST(0x4E380B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (21, 4, 2, 6, 10, NULL, N'Modelamiento de Datos', N'Conocimiento básico de algún lenguaje de programación Vidual y/o técnicas de
programación como estructura de datos.', N'Aprender los beneficios de la utilización de UML en el desarrollo de software.
Identificar los beneficios del análisis, diseño y programación orientada a objetos..
Aprender a modelar sistemas con UML.', N'Introducción al lenguaje de modelado: UML
Definir el comportamiento del sistema
Desarrollo de casos de uso
Construyendo escenarios
Clases y Objetos
Diagrama de clases
Clase entidad y modelo E/R
Tercera forma normal
Cuarta forma normal', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x54390B00 AS Date), CAST(0x69390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (22, 4, 2, 6, 10, 21, N'Ms SQL Server I - Implementación', N'Conocimientos de Modelamiento de Datos', N'Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integración de herramientas de SQL Server 2012', N'Concepto de base de datos relacional. Sistemas administradores de bases de datos.
Los tipos de datos del sistema que ofrece SQL Server 2012
Creación y optimización de índices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones
Programación en SQL Server 2012
Implementación de desencadenadores', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x70390B00 AS Date), CAST(0x85390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (23, 4, 2, 6, 10, 22, N'Ms SQL Server III - Administración', N'Modelamiento de Datos
SQL Server 2012 – Implementación', N'Conocer y aplicar las herramientas esenciales para administrar las base de datos y los servidores que trabajan bajo SQL Server 2012', N'Instalación y configuración del SQL Server 2012
Administración de la Base de Datos y Archivos
Planificación de una Estrategia de Backups
Administración de la Seguridad
Transferencia de Datos
Automatización de Tareas Administrativas
Monitoreando al SQL Server 2012
Implementando un DataBase Mirroring', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x8C390B00 AS Date), CAST(0xA1390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (24, 4, 2, 6, 10, 23, N'Inteligencia de Negocios Nivel I (Diseño y Carga del Data Warehouse)', N'Conocimiento de Conceptos Generales de Base de Datos.
Conocimiento Básico de Modelamiento de Datos.', N'Este curso proporciona a los estudiantes con los conocimientos y prácticas necesarias para diseñar, 
implementar, y distribuir soluciones con bases de datos multidimensionales OLAP', N'Inteligencia de Negocios 
Gestión de la Información con Inteligencia de Negocios 
Instalación de la Plataforma de Inteligencia de Negocios con Microsoft 
Introducción a una Solución de Inteligencia de Negocios.
Planeando Solución de Inteligencia de Negocios 
Diseñando Data Mart 
Planificación del ETL
Componentes de Reporting Services 
Creación de informes básicos 
Conexión a datos externos desde MS Excel', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0xA8390B00 AS Date), CAST(0xBD390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (25, 5, 2, 6, 10, NULL, N'Introducción a SQL', N'Conocimientos de Modelamiento de Datos', N'Utilizar las sentencias SELECT en todas sus modalidades.
Utilizar la sintaxis DDL del SQL para crear, modificar o destruir objetos de la base de datos de Oracle.
Reconocer y aplicar las reglas de las restricciones.', N'Sentencias básicas del lenguaje SQL
Consultas avanzadas con SQL
Subconsultas
Manipulación de datos en las tablas
Gestión de objetos
Otros objetos de la base de datos
PL/SQL: Bloques, cursores y excepciones
Bloques nominados', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x54390B00 AS Date), CAST(0x69390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (26, 5, 2, 6, 10, 25, N'Administración de Base de Datos', N'Base de Datos Oracle 11g: Introducción a SQL', N'Instalar y configurar la Base de Datos Oracle 11g
Controlar, solucionar problemas y mantener la Base de Datos Oracle 11g
Configurar los servicios de Red de Oracle para la Base de Datos Oracle 11g', N'Instalación del Software de la Base de Datos Oracle 11g
Creación de una Base de Datos Oracle
Control de la Base de Datos
Estructuras de Almacenamiento
Administracion de Usuarios
Seguridad de Base de Datos Oracle
Servicios de Red de Oracle
Gestión de Deshacer
Conceptos de Copia de Seguridad y Recuperación', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x70390B00 AS Date), CAST(0x85390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (27, 5, 2, 6, 10, 26, N'Administración de Backup y Afinamiento', N'Base de Datos Oracle 11g: Administración
Base de Datos Oracle 11g: Introducción a SQL', N'Recuperar la base de datos hasta un punto anterior en el tiempo
Utilizar la tecnología Flashback de Oracle para recuperar la base de datos.
Controlar el uso de recursos de la base de datos con el Administrador de Recursos', N'Seguridad de Oracle Listener
Configuración de RMAN
Uso de Recovery Manager
Recuperación de Base de Datos
Flashback de Base de Datos
Recuperación de Errores de Usuario
Gestión y Control de Memoria
Gestión de Recursos
Automatización de Tareas con el Planificador', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x8C390B00 AS Date), CAST(0xA1390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (28, 6, 3, 1, 5, NULL, N'Algoritmos Estructurado Básico', N'Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo', N'Conocer los elementos de la programación
Conocer y comprender el desarrollo y funcionamiento de las fases del desarrollo del algoritmo
Acceso a datos en la colección de datos', N'Conceptos de fundamentos de programación.
Fases del desarrollo del algoritmo
Estructuras de control de programa 
Programación Modular SubAlgoritmos
Arreglos de datos
Matrices de datos
', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x4F390B00 AS Date), CAST(0x5F390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (29, 6, 3, 1, 5, 28, N'Algoritmos Estructurado Avanzado', N'Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo', N'Utilizar colecciones de datos en memoria con diferentes tipo de datos
Aplicar el uso de pilas de datos
Reutilizar una función dentro de la misma función', N'Registros de datos
Archivo de datos(Ficheros)
Métodos de ordenamiento y búsqueda de datos
Operaciones con cadena de datos
Estructuras dinámicas lineales de datos (pilas, colas y listas enlazadas)
Recursividad', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x61390B00 AS Date), CAST(0x72390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (30, 6, 3, 1, 5, 29, N'Fundamentos De Programación Orientada A Objetos', N'Tener muchos deseos de aprender y lograr tus metas trazadas.
Conocimientos básicos de cualquier sistema operativo', N'Conocer los conceptos generales de POO
Conocer el uso de un atributo clase y de un objeto
Aplicar los conceptos del encapsulamiento, Interfaces, Herencia, Polimorfismo', N'Conceptos fundamentales de POO
Clases y Objetos
Atributos y Métodos
Interfaces
Encapsulamiento
Herencia
Polimorfismo', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x74390B00 AS Date), CAST(0x17380B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (31, 7, 3, 2, 10, NULL, N'Modelamiento de  Datos', N'Conocimiento básico de algún lenguaje de programación Vidual y/o técnicas de
programación como estructura de datos.', N'Aprender los beneficios de la utilización de UML en el desarrollo de software.
Identificar los beneficios del análisis, diseño y programación orientada a objetos..
Aprender a modelar sistemas con UML.', N'Introducción al lenguaje de modelado: UML
Definir el comportamiento del sistema
Desarrollo de casos de uso
Construyendo escenarios
Clases y Objetos
Diagrama de clases
Clase entidad y modelo E/R
Tercera forma normal
Cuarta forma normal', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x54390B00 AS Date), CAST(0x69390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (32, 7, 3, 2, 10, 31, N'MS SQL Server 2012 - Implementación', N'Conocimientos de Modelamiento de Datos', N'Proporcionar al alumno los conocimientos del lenguaje SQL
Mostrar la integración de herramientas de SQL Server 2012
Proporcionar al alumno las técnicas de manejo de objetos de SQL y programación en SQL Transact y .NET', N'Concepto de base de datos relacional. Sistemas 
Los tipos de datos del sistema que ofrece SQL Server 2012.
Creación y optimización de índices
La sentencia SELECT, precedencia de modificadores, campos calculados, funciones SQL.
Consultas avanzadas: Agrupamiento de datos, subconsultas, condicionales, uniones.
Programación en SQL Server 2012.
Implementación de desencadenadores.', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x70390B00 AS Date), CAST(0x85390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (33, 7, 3, 2, 10, 32, N'MS Visual Basic 6.0 - Básico', N'Conocimiento Basico de Visual Basic 6.0
Microsoft Windows XP o Microsoft Windows 2000 o Microsoft Windows Vista
', N'Conocer y Manejar el modelo de programación orientada a objetos aplicando las diferentes
técnicas de programación.', N'Conceptos Fundamentales de Programación
Método, Propiedades, Clases, Eventos
Entorno y Elementos principales de Visual Basic
Administración de Proyectos
Controles Básicos
TextBox, Command, Label
Mecánica de la escritura de código
Módulos de código', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x8C390B00 AS Date), CAST(0xA1390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (34, 7, 3, 2, 10, 33, N'MS Visual Basic - Base de Datos', N'Conocimientos de SQL Server 2000
Experiencia en desarrollo de aplicaciones con alguna herramienta visual, de
preferencia Visual Basic.', N'Aplicar técnicas de programación orientadas a objetos con acceso a base de datos en SQL – SERVER 2000
Administración de proyectos y el acceso a base de datos usando controles enlazados.
Administración de reportes.', N'Introducción
ActiveX Data Object
Objeto Recordset
Control ADO Data
OBJETOS Command y Parameters
Módulos de Clase y Dlls', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0xA8390B00 AS Date), CAST(0xBD390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (35, 7, 3, 2, 10, 34, N'Desarrollo de Aplicaciones .NET con VS.-2012', N'Conocimiento o experiencia
en programación o desarrollo de aplicaciones y que deseen desarrollar aplicaciones en la
plataforma .Net con Visual Basic .Net', N'Conocer la estrategia Microsoft .NET y los componentes del Marco .NET
o Describir las características de Visual Studio .NET
o Describir el modelo de programación basado en objetos.', N'ntroducción a Microsoft NET
Uso de variables de tipo valor
nstrucciones y excepciones
Tablas
Programación orientada a objetos
Uso de variables de tipo referencia
Herencia en VB', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0xC4390B00 AS Date), CAST(0xD9390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (36, 8, 3, 4, 12, NULL, N'Desarrollo de Aplicaciones .NET Con Visual Studio 2012', N'Conocimientos de programación, POO, bases de datos, ADO.NET, SQL SERVER 2008', N'Proporcionar al alumno los conocimientos para el desarrollo de aplicaciones en entornos distribuidos con tecnologías de última generación Microsoft', N'Programación Orientada A Objetos
Desarrollo de interfaz de usuario Windows
Trabajando con colecciones de datos
Acceso al sistema de archivos
Programando con Hilos
Usando Expresiones Regulares para validación de datos
Pruebas y depuración de errores
Distribución de aplicaciones Windows', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x54390B00 AS Date), CAST(0x69390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (37, 8, 3, 4, 12, 36, N'Acceso a Datos con ADO . NET 4.0 y Visual Studio 2012', N'Ninguno', N'Manejar las herramientas de acceso a datos mediante ADO .NET 4.0
Transacciones en 2 capas con LINQ
Aprender a trabajar con informes empresariales de Crystal Reports.', N'Arquitectura de ADO.NET 4.0
Consulta y mantenimiento de datos en forma conectada.
Manejo de Transacciones.
Trabajo desconectado.
Consumir reportes locales y de Servidor Reporting Services
Acceso a Datos con Entity Data Model y Linq para entidades
Acceso a datos en los servicios en la nube con Windows Azure', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x70390B00 AS Date), CAST(0x85390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (38, 8, 3, 4, 12, 37, N'Desarrollo de Aplicaciones Web con ASP .NET Ajax', N'Ninguno', N'Al término del curso el alumno estará en la capacidad de desarrollar una aplicación Web con ASP.Net con acceso a una base de datos e implementarla.', N'Crear Aplicaciones Web con Visual Studio 2012
Agregar Código a un Formulario Web ASP.NET 4.0
Traceo de Aplicaciones Web ASP.NET 4.0
Validación de Entradas de Usuarios
Creación e Implementación de Controles de Usuario
Configuración, Optimización y Despliegue de Aplicaciones Web ASP.NET 4.0
 Configuración de la Seguridad en Aplicaciones Web ASP.NET 4.0
ASP.NET 4.0 AJAX en el servidor
Desarrolle aplicaciones con ASP.NET 4.0 con MVC 3', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x8C390B00 AS Date), CAST(0xA1390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (39, 8, 3, 4, 12, 38, N'Taller de desarrollo de Aplicaciones Distribuidas en N capas', N'Ninguno', N'Desarrollar de aplicaciones en entornos distribuidos con tecnologías de última generación Microsoft, integración de herramientas de SQL Server 2008, utilizando como herramienta Microsoft Visual Studio 2012 y NET Framework 4.0', N'Fundamentos de Desarrollo de aplicaciones distribuidas
Introducción a SOA - REST
Introducción  a .NET Remoting
Publicar servicios con .NET Remoting
Introducción a Servicios Web
Publicar servicios WEB
Introducción a WCF
Creando un servicio de WCF.
Sirviendo un servicio de WCF.
Consumiendo un servicio en WCF
Creación de entidades
Construir una solución en capas
Generar la capa de Datos con Microsoft Entity Framework
Generar la capa de negocios
Exponer los servicios WCF de la capa de negocios por IIS 7.0
Generar la capa de presentación Web
Consumiendo reportes de Reporting Services y SQL SERVER 2008
Instalación de un aplicación Web en IIS 7.0', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0xA8390B00 AS Date), CAST(0xBD390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (40, 9, 3, 7, 15, NULL, N'Desarrollo Aplicaciones.NET con C#', N'Conocimientos de programación, POO,  bases de datos, ADO.NET', N'En este curso los alumnos aprenderán  los fundamentos del Lenguaje de programación  C#  Orientada a Objeto con  NET  Framework 4.0.
', N'Introducción a MICROSOFT .NET y C#
Programación Orientada a Objetos
Herencia
Trabajar con Menús
Arreglo y Colecciones
Flujos de Datos
Windows Presentation Foundation
Distribución de Aplicaciones Windows', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x55390B00 AS Date), CAST(0x6A390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (41, 9, 3, 7, 15, 40, N'Desarrollo Aplicaciones con ADO.NET 4.0 y C#', N'Conocimientos de programación, POO,  bases de datos, ADO.NET', N'El objetivo de este curso es presentar las técnicas de programación para bases de datos en la plataforma .NET, utilizando C# como lenguaje base.', N'SQL Server 2008 para Desarrolladores.
 Arquitectura de ADO.NET 4.0.
Acceso Desconectado.
Consulta y Mantenimiento de Datos en Forma Conectada.
Manejo de Transacciones.
Generar Reportes con CRYSTAL REPORTS
Acceso a Datos con LINQ', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x71390B00 AS Date), CAST(0x86390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (42, 9, 3, 7, 15, 41, N'Desarrollo Aplicaciones Web con C# ASP.NET AJAX', N'Conocimientos de programación, POO,  bases de datos, ADO.NET', N'Este curso otorga los fundamentos necesarios para la implementación de aplicaciones Web ASP.NET usando  Visual C#, enfocado en el ambiente de desarrollo de Visual Studio.NET.', N'Introducción a ASP.NET  AJAX
Uso de los Controles Estándar
Diseño de Sitios Web con Páginas Maestras
Visión General de Acceso a Datos
Acceso a Datos con LINQ to SQL
Administración del Estado
Uso de Autenticación Basada en Formularios
Reportes en ASP.NET', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x8D390B00 AS Date), CAST(0xA5390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (43, 9, 3, 7, 15, 42, N'Desarrollo Aplicaciones Web Distribuidas en N capas con C#', N'Conocimientos de programación, POO,  bases de datos, ADO.NET', N'Proporcionar a los estudiantes los conocimientos y habilidades necesarias para desarrollar soluciones basadas  en Capas y Servicios Web para solucionar problemas comunes en un dominio de aplicación distribuida.', N' Implementación de Componentes
Arquitectura en Capas
Servicios Web XML
Windows Communication Foundation (WCF)
Configuración de Servicios WCF
Consumiendo Servicios WCF
Microsoft Entity Framework', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0xA9390B00 AS Date), CAST(0xBE390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (44, 10, 3, 6, 14, NULL, N'PHP Nivel I - Programación Web', N'Conocimiento básico del lenguaje HTML.
Conocimiento de programación estructurada', N'Comprender el desarrollo evolutivo de la Web a nivel mundial
Extender su conocimiento en desarrollo de sitios web, basado en la experiencia del usuario.', N'Introducción al módulo - Web 2.0.
HTML.
Lenguaje Básico: Sintaxis, Comentarios, Tipo de datos
Tablas o Arrays
Funciones de Usuario
Librerias. Creación y Utilización de Librerías
Sentencias Repetitivas – While y for
Manejo de cadenas. Funciones de cadena
JavaScript I
PHP Utilizando Java Script
 Instalando una Herramienta de Administración – MysqlGui Tools
Sentencias de SQL
Conexión al Mysql desde PHP. Configuración del archivo INI
Procesos Básicos de Mantenimiento', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x55390B00 AS Date), CAST(0x6A390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (45, 10, 3, 6, 14, 44, N'PHP Nivel II - DAO-POO', N'Conocimiento del lenguaje HTML (indispensable)
Conocimiento de programación estructurada', N'Comprender la sintaxis completa del lenguaje
Comprender la relación de PHP con los servidores Web (Apache)', N'PHP 5.X Características avanzadas
MySql Básico – PostGress Basico
Integración PHP - MySql
PHP 5.X Orientación a Objetos
Manejo de Sesiones y Gráficos
Carrito de Compra, Upload , PDF y Códigos de Validación
Email y Carrito de Compra
Manejo de Capas – MVC y Ajax', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x71390B00 AS Date), CAST(0x86390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (46, 10, 3, 6, 14, 45, N'PHP Nivel III - PHP Avanzado', N'Conocimiento de PHP Nivel II - DAO-POO
Nociones de Servidor web. ', N'Comprender la relación de PHP con los servidores Web (Apache)
Realizar conexiones con MYSQL para la creación hojas dinámicas', N'Patrones de Diseño
Motor de Plantillas PHP - Smarty
WebServices – XML – NuSoap
Framework con PHP
Definiciones previas. Frameworks – Librerías externas – APIs.
Kumbia
ZendFramework
Synfony', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x8D390B00 AS Date), CAST(0xA5390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (47, 13, 4, 3, 6, NULL, N'Autocad 2014 - Básico ', N'Se necesita conocimientos previos en Windows a nivel de usuario, además tener algún conocimiento básico de dibujo técnico, ello facilitara su aprendizaje del software.', N'Manejar las herramientas de dibujo y edición de objetos. los cuales le permitirán desarrollar un dibujo técnico de manera rápida y sencilla a la vez.', N'Entorno de trabajo
Unidades de medida y sistema de coordenadas
Edición y dibujo de Objetos
Capas y Propiedades de Objetos
Crear estilos de texto y sombreado
Dimensionado
Configuraciones de página y Ploteo
Escala', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x4F390B00 AS Date), CAST(0x6E390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (48, 13, 4, 3, 6, 47, N'Autocad 2014 - Intermedio', N' La actual o una versión anterior de AutoCAD
Creación y edición de objetos básicos de AutoCAD', N'Aplicación de técnicas de Edición (Uso de grips)
Aplicación de restricciones geométricas
Dibujo Isométrico (piezas mecánicas, tuberías, Vivienda)', N'HERRAMIENTAS DE PRODUCTIVIDAD E ISOMETRÍA
LÍNEAS DE CONSTRUCCIÓN Y REFERENCIA DE BLOQUES
REDEFINICION DE BLOQUES, ATRIBUTOS Y TABLAS
ENLACE CON ARCHIVOS EXTERNOS E IMÁGENES
 POLIGONALES Y CURVAS
LAYOUTS Y PLOTEO
UTILIDADES
PERSONALIZACIÓN DEL AUTOCAD', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x02380B00 AS Date), CAST(0x90390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (49, 13, 4, 3, 6, 48, N'Autocad 2014 - Avanzado ', N'Se requieren conocimientos de AutoCAD Básico y Intermedio.', N'Manejar adecuadamente el espacio de trabajo en 3d.
Conocer y utilizar rápidamente los diferentes comandos de navegación en 3d.', N'Herramientas visualización y trazado 3D
Modelado con Sólidos
Modificar Sólidos y superficies
Creación de Sólidos y superficies
Edición de Sólidos
Modelado con Superficies y mallas
Presentación Foto realista
Configuraciones de página y Layouts', CAST(200.00 AS Decimal(8, 2)), 24, CAST(0x91390B00 AS Date), CAST(0x96390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (50, 19, 5, 5, 13, NULL, N'Linux - Administración', N'Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP', N'Capacitar al participante en las técnicas básicas de personalización y reducción de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, así como también en criptografía y cifrado', N'Introducción de Sistemas Operativos con Linux
Sistema de Archivos
Aplicaciones
Instalación del Sistema Operativo
Networking bajo Linux
Grupos, usuarios, archivos, propiedades y permisos
Compartición de Archivos', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x54390B00 AS Date), CAST(0x69390B00 AS Date), 1)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (51, 19, 5, 5, 13, 50, N'Linux - Administración de Servicios Intranet', N'Conocimientos básicos en redes, conectividad y TCP/IP
Linux – Administracións', N'Usar el Filtrado de paquetes Por medio de TCP/IP.
Instalar y configurar entornos Microsoft como servidor Proxy y Firewall para un entorno empresarial.', N'Domain Name Service (DNS)
Sendmail
Apache Web Server
Dynamic Host Control Protocol (DHCP)
Squid Proxy Server', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x70390B00 AS Date), CAST(0x85390B00 AS Date), 0)
INSERT [dbo].[Curso] ([C_Curso], [C_Modulo], [C_Categoria], [C_Profesor], [C_Horario], [C_CursoR], [Descripcion], [Requisitos], [Objetivo], [Temario], [Precio], [NumeroHoras], [FechaInicio], [FechaFin], [Estado]) VALUES (52, 19, 5, 5, 13, 51, N'Linux - Seguridad en Redes', N'Conocimientos de redes de computadoras 
Tener experiencia de trabajo instalando y configurando redes 
Conocimientos de TCP/IP
', N'Capacitar al participante en las técnicas básicas de personalización y reducción de puntos de vulnerabilidad en el filtrado de paquetes y control de ciertos contenidos maliciosos, así como también en criptografía y cifrado', N'PKI - Criptografía de Clave Pública
Servicio HTTPS
Servicio SENDMAIL Seguro
Servicio OpenSSH
Servicio IPtables
Servicio VPN', CAST(200.00 AS Decimal(8, 2)), 12, CAST(0x8C390B00 AS Date), CAST(0xA1390B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[Curso] OFF
/****** Object:  Table [dbo].[MatriculaModulo]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MatriculaModulo](
	[C_MatriculaModulo] [int] IDENTITY(1,1) NOT NULL,
	[C_Alumno] [int] NOT NULL,
	[C_Modulo] [tinyint] NOT NULL,
	[C_Categoria] [tinyint] NOT NULL,
	[C_Recibo] [varchar](25) NOT NULL,
	[FechaMatricula] [datetime] NOT NULL,
 CONSTRAINT [PK_MatriculaModulo] PRIMARY KEY CLUSTERED 
(
	[C_MatriculaModulo] ASC,
	[C_Alumno] ASC,
	[C_Modulo] ASC,
	[C_Categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_ReciboModulo] UNIQUE NONCLUSTERED 
(
	[C_Recibo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MatriculaModulo] ON
INSERT [dbo].[MatriculaModulo] ([C_MatriculaModulo], [C_Alumno], [C_Modulo], [C_Categoria], [C_Recibo], [FechaMatricula]) VALUES (1, 4, 10, 3, N'10002', CAST(0x0000A3E501508088 AS DateTime))
INSERT [dbo].[MatriculaModulo] ([C_MatriculaModulo], [C_Alumno], [C_Modulo], [C_Categoria], [C_Recibo], [FechaMatricula]) VALUES (2, 7, 6, 3, N'10005', CAST(0x0000A3E801717608 AS DateTime))
INSERT [dbo].[MatriculaModulo] ([C_MatriculaModulo], [C_Alumno], [C_Modulo], [C_Categoria], [C_Recibo], [FechaMatricula]) VALUES (3, 9, 2, 1, N'10007', CAST(0x0000A3EA014C61D8 AS DateTime))
SET IDENTITY_INSERT [dbo].[MatriculaModulo] OFF
/****** Object:  Table [dbo].[MatriculaCurso]    Script Date: 11/04/2014 15:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MatriculaCurso](
	[C_MatriculaCurso] [int] IDENTITY(1,1) NOT NULL,
	[C_Alumno] [int] NOT NULL,
	[C_Curso] [int] NOT NULL,
	[C_Recibo] [varchar](25) NOT NULL,
	[FechaMatricula] [datetime] NOT NULL,
 CONSTRAINT [PK_MatriculaCurso] PRIMARY KEY CLUSTERED 
(
	[C_MatriculaCurso] ASC,
	[C_Alumno] ASC,
	[C_Curso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [U_ReciboCurso] UNIQUE NONCLUSTERED 
(
	[C_Recibo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MatriculaCurso] ON
INSERT [dbo].[MatriculaCurso] ([C_MatriculaCurso], [C_Alumno], [C_Curso], [C_Recibo], [FechaMatricula]) VALUES (3, 3, 7, N'10001', CAST(0x0000A3E400EDA008 AS DateTime))
INSERT [dbo].[MatriculaCurso] ([C_MatriculaCurso], [C_Alumno], [C_Curso], [C_Recibo], [FechaMatricula]) VALUES (4, 5, 1, N'10003', CAST(0x0000A3E600E98158 AS DateTime))
INSERT [dbo].[MatriculaCurso] ([C_MatriculaCurso], [C_Alumno], [C_Curso], [C_Recibo], [FechaMatricula]) VALUES (5, 6, 17, N'10004', CAST(0x0000A3E700644BC8 AS DateTime))
INSERT [dbo].[MatriculaCurso] ([C_MatriculaCurso], [C_Alumno], [C_Curso], [C_Recibo], [FechaMatricula]) VALUES (6, 8, 25, N'10006', CAST(0x0000A3E900EDA008 AS DateTime))
INSERT [dbo].[MatriculaCurso] ([C_MatriculaCurso], [C_Alumno], [C_Curso], [C_Recibo], [FechaMatricula]) VALUES (7, 10, 28, N'10008', CAST(0x0000A3EB00EA5448 AS DateTime))
INSERT [dbo].[MatriculaCurso] ([C_MatriculaCurso], [C_Alumno], [C_Curso], [C_Recibo], [FechaMatricula]) VALUES (8, 11, 44, N'10009', CAST(0x0000A3EC00EDA008 AS DateTime))
INSERT [dbo].[MatriculaCurso] ([C_MatriculaCurso], [C_Alumno], [C_Curso], [C_Recibo], [FechaMatricula]) VALUES (9, 12, 36, N'10010', CAST(0x0000A3ED00EDA008 AS DateTime))
SET IDENTITY_INSERT [dbo].[MatriculaCurso] OFF
/****** Object:  Check [CHK_Sexo]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [CHK_Sexo] CHECK  (([Sexo] like 'M' OR [Sexo] like 'F'))
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [CHK_Sexo]
GO
/****** Object:  ForeignKey [FK_CategoriaModulo]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Modulo]  WITH CHECK ADD  CONSTRAINT [FK_CategoriaModulo] FOREIGN KEY([C_Categoria])
REFERENCES [dbo].[Categoria] ([C_Categoria])
GO
ALTER TABLE [dbo].[Modulo] CHECK CONSTRAINT [FK_CategoriaModulo]
GO
/****** Object:  ForeignKey [FK_UsuarioAlumno]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioAlumno] FOREIGN KEY([C_Alumno])
REFERENCES [dbo].[Usuario] ([C_Usuario])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_UsuarioAlumno]
GO
/****** Object:  ForeignKey [FK_UsuarioAdministrador]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioAdministrador] FOREIGN KEY([C_Administrador])
REFERENCES [dbo].[Usuario] ([C_Usuario])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_UsuarioAdministrador]
GO
/****** Object:  ForeignKey [FK_CursoRequisito]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_CursoRequisito] FOREIGN KEY([C_CursoR])
REFERENCES [dbo].[Curso] ([C_Curso])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_CursoRequisito]
GO
/****** Object:  ForeignKey [FK_HorarioCurso]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_HorarioCurso] FOREIGN KEY([C_Horario])
REFERENCES [dbo].[Horario] ([C_Horario])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_HorarioCurso]
GO
/****** Object:  ForeignKey [FK_ModuloCurso]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_ModuloCurso] FOREIGN KEY([C_Modulo], [C_Categoria])
REFERENCES [dbo].[Modulo] ([C_Modulo], [C_Categoria])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_ModuloCurso]
GO
/****** Object:  ForeignKey [FK_ProfesorCurso]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_ProfesorCurso] FOREIGN KEY([C_Profesor])
REFERENCES [dbo].[Profesor] ([C_Profesor])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_ProfesorCurso]
GO
/****** Object:  ForeignKey [FK_MatriculaModuloAlumno]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[MatriculaModulo]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaModuloAlumno] FOREIGN KEY([C_Alumno])
REFERENCES [dbo].[Alumno] ([C_Alumno])
GO
ALTER TABLE [dbo].[MatriculaModulo] CHECK CONSTRAINT [FK_MatriculaModuloAlumno]
GO
/****** Object:  ForeignKey [FK_MatriculaModuloModulo]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[MatriculaModulo]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaModuloModulo] FOREIGN KEY([C_Modulo], [C_Categoria])
REFERENCES [dbo].[Modulo] ([C_Modulo], [C_Categoria])
GO
ALTER TABLE [dbo].[MatriculaModulo] CHECK CONSTRAINT [FK_MatriculaModuloModulo]
GO
/****** Object:  ForeignKey [FK_MatriculaCursoAlumno]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[MatriculaCurso]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaCursoAlumno] FOREIGN KEY([C_Alumno])
REFERENCES [dbo].[Alumno] ([C_Alumno])
GO
ALTER TABLE [dbo].[MatriculaCurso] CHECK CONSTRAINT [FK_MatriculaCursoAlumno]
GO
/****** Object:  ForeignKey [FK_MatriculaCursoCurso]    Script Date: 11/04/2014 15:58:38 ******/
ALTER TABLE [dbo].[MatriculaCurso]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaCursoCurso] FOREIGN KEY([C_Curso])
REFERENCES [dbo].[Curso] ([C_Curso])
GO
ALTER TABLE [dbo].[MatriculaCurso] CHECK CONSTRAINT [FK_MatriculaCursoCurso]
GO
