USE [master]
GO
/****** Object:  Database [MiIngresoHitss]    Script Date: 4/05/2023 5:16:14 p. m. ******/
CREATE DATABASE [MiIngresoHitss]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MiIngresoHitss', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MiIngresoHitss.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MiIngresoHitss_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MiIngresoHitss_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MiIngresoHitss] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MiIngresoHitss].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MiIngresoHitss] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET ARITHABORT OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MiIngresoHitss] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MiIngresoHitss] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MiIngresoHitss] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MiIngresoHitss] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET RECOVERY FULL 
GO
ALTER DATABASE [MiIngresoHitss] SET  MULTI_USER 
GO
ALTER DATABASE [MiIngresoHitss] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MiIngresoHitss] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MiIngresoHitss] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MiIngresoHitss] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MiIngresoHitss] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MiIngresoHitss] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MiIngresoHitss', N'ON'
GO
ALTER DATABASE [MiIngresoHitss] SET QUERY_STORE = OFF
GO
USE [MiIngresoHitss]
GO
/****** Object:  User [Julian]    Script Date: 4/05/2023 5:16:14 p. m. ******/
CREATE USER [Julian] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[Julians]
GO
/****** Object:  User [DESKTOP-OQN0ETS\Administrador]    Script Date: 4/05/2023 5:16:14 p. m. ******/
CREATE USER [DESKTOP-OQN0ETS\Administrador] FOR LOGIN [DESKTOP-OQN0ETS\Administrador] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [DESKTOP-OQN0ETS\Administrador]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListasPrecios]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListasPrecios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Precio] [decimal](10, 2) NULL,
	[Descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 
GO
INSERT [dbo].[Clientes] ([ID], [Nombre], [Apellido], [Email], [Telefono]) VALUES (1, N'Julian', N'Delgado', N'Juliandelgado04@gmail.com', N'2300036')
GO
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([ID], [Nombre], [Precio], [Descripcion]) VALUES (2, N'Pollo', CAST(4500.00 AS Decimal(10, 2)), N'pollo asado')
GO
INSERT [dbo].[Productos] ([ID], [Nombre], [Precio], [Descripcion]) VALUES (3, N'Jamon', CAST(3500.00 AS Decimal(10, 2)), N'Jamon de tolima')
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCliente]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarCliente]
    @ID INT,
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Email VARCHAR(100),
    @Telefono VARCHAR(20)
AS
BEGIN
    UPDATE Clientes
    SET Nombre = @Nombre, Apellido = @Apellido, Email = @Email, Telefono = @Telefono
    WHERE ID = @ID
END;
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProducto]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarProducto]
    @ID INT,
    @Nombre VARCHAR(100),
    @Precio DECIMAL(10, 2),
    @Descripcion VARCHAR(255)
AS
BEGIN
    UPDATE Productos
    SET Nombre = @Nombre, Precio = @Precio, Descripcion = @Descripcion
    WHERE ID = @ID
END;
GO
/****** Object:  StoredProcedure [dbo].[CrearCliente]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrearCliente]
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Email VARCHAR(100),
    @Telefono VARCHAR(20)
AS
BEGIN
    INSERT INTO Clientes (Nombre, Apellido, Email, Telefono)
    VALUES (@Nombre, @Apellido, @Email, @Telefono)
END;
GO
/****** Object:  StoredProcedure [dbo].[CrearProducto]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrearProducto]
    @Nombre VARCHAR(100),
    @Precio DECIMAL(10, 2),
    @Descripcion VARCHAR(255)
AS
BEGIN
    INSERT INTO Productos (Nombre, Precio, Descripcion)
    VALUES (@Nombre, @Precio, @Descripcion)
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarCliente]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarCliente]
    @ID INT
AS
BEGIN
    DELETE FROM Clientes WHERE ID = @ID
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarProducto]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarProducto]
    @ID INT
AS
BEGIN
    DELETE FROM Productos WHERE ID = @ID
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerClientePorID]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerClientePorID]
    @ID INT
AS
BEGIN
    SELECT * FROM Clientes WHERE ID = @ID
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerClientes]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerClientes]
AS
BEGIN
    SELECT * FROM Clientes
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerProductoPorID]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerProductoPorID]
    @ID INT
AS
BEGIN
    SELECT * FROM Productos WHERE ID = @ID
END;
GO
/****** Object:  StoredProcedure [dbo].[ObtenerProductos]    Script Date: 4/05/2023 5:16:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerProductos]
AS
BEGIN
    SELECT * FROM Productos
END;
GO
USE [master]
GO
ALTER DATABASE [MiIngresoHitss] SET  READ_WRITE 
GO
