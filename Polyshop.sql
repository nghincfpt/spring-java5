USE [master]
GO
/****** Object:  Database [TechPolyShopDB]    Script Date: 14/11/2022 10:44:50 SA ******/
CREATE DATABASE [TechPolyShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechPolyShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.NGHI\MSSQL\DATA\TechPolyShopDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TechPolyShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.NGHI\MSSQL\DATA\TechPolyShopDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TechPolyShopDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechPolyShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechPolyShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TechPolyShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechPolyShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechPolyShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TechPolyShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechPolyShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechPolyShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [TechPolyShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechPolyShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechPolyShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechPolyShopDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TechPolyShopDB]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 14/11/2022 10:44:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](60) NOT NULL,
 CONSTRAINT [PK__accounts__F3DBC573CA18E83E] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 14/11/2022 10:44:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customers]    Script Date: 14/11/2022 10:44:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[phone] [varchar](20) NULL,
	[registered_date] [date] NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__customer__CD65CB85E2D158AA] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customers1]    Script Date: 14/11/2022 10:44:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customers1](
	[name] [varchar](255) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[phone] [varchar](20) NULL,
	[registered_date] [date] NULL,
	[status] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 14/11/2022 10:44:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[unit_price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 14/11/2022 10:44:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [float] NOT NULL,
	[customer_id] [int] NOT NULL,
	[order_date] [date] NULL,
	[status] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 14/11/2022 10:44:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[discount] [float] NOT NULL,
	[entered_date] [date] NULL,
	[image] [varchar](200) NULL,
	[name] [nvarchar](100) NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[unit_price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9]
GO
USE [master]
GO
ALTER DATABASE [TechPolyShopDB] SET  READ_WRITE 
GO
