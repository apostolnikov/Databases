USE [master]
GO
/****** Object:  Database [Shool]    Script Date: 24.6.2015 г. 01:25:12 ч. ******/
CREATE DATABASE [Shool]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shool', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Shool.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shool_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Shool_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shool] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shool].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shool] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shool] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shool] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shool] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shool] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shool] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shool] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shool] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shool] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shool] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shool] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shool] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shool] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shool] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shool] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shool] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shool] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shool] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shool] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shool] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shool] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shool] SET RECOVERY FULL 
GO
ALTER DATABASE [Shool] SET  MULTI_USER 
GO
ALTER DATABASE [Shool] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shool] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shool] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shool] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Shool] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shool', N'ON'
GO
USE [Shool]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 24.6.2015 г. 01:25:12 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MaxStudents] [int] NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 24.6.2015 г. 01:25:12 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[PhoneNumber] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([id], [Name], [MaxStudents]) VALUES (1, N'Databases', 25)
INSERT [dbo].[Classes] ([id], [Name], [MaxStudents]) VALUES (2, N'JavaScript', 40)
INSERT [dbo].[Classes] ([id], [Name], [MaxStudents]) VALUES (3, N'HQ', 30)
INSERT [dbo].[Classes] ([id], [Name], [MaxStudents]) VALUES (4, N'TWPS', 60)
INSERT [dbo].[Classes] ([id], [Name], [MaxStudents]) VALUES (5, N'Java', 20)
INSERT [dbo].[Classes] ([id], [Name], [MaxStudents]) VALUES (6, N'C#', 55)
SET IDENTITY_INSERT [dbo].[Classes] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (1, N'Nakov', 20, 987654321)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (2, N'Joro', 19, 893777777)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (3, N'Minko', 25, 879665432)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (4, N'Tosho', 34, 987345678)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (5, N'Valq', 22, 766434343)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (6, N'Petko', 33, 765123423)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (7, N'Nina', 27, 887656768)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (8, N'Yordan', 25, 889632425)
INSERT [dbo].[Students] ([id], [Name], [Age], [PhoneNumber]) VALUES (9, N'Ivan', 46, 899676843)
SET IDENTITY_INSERT [dbo].[Students] OFF
USE [master]
GO
ALTER DATABASE [Shool] SET  READ_WRITE 
GO
