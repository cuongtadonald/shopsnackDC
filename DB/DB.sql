USE [master]
GO
/****** Object:  Database [shopsnackDCtvc]    Script Date: 22/04/2021 7:46:57 CH ******/
CREATE DATABASE [shopsnackDCtvc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shopsnackDCtvc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\shopsnackDCtvc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shopsnackDCtvc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\shopsnackDCtvc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [shopsnackDCtvc] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shopsnackDCtvc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shopsnackDCtvc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET ARITHABORT OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shopsnackDCtvc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shopsnackDCtvc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shopsnackDCtvc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shopsnackDCtvc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shopsnackDCtvc] SET  MULTI_USER 
GO
ALTER DATABASE [shopsnackDCtvc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shopsnackDCtvc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shopsnackDCtvc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shopsnackDCtvc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [shopsnackDCtvc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [shopsnackDCtvc] SET QUERY_STORE = OFF
GO
USE [shopsnackDCtvc]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 22/04/2021 7:46:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [nvarchar](10) NULL,
	[TenLoaiSP] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 22/04/2021 7:46:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSX] [nvarchar](10) NULL,
	[TenNhaSX] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 22/04/2021 7:46:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[MaLoaiSP] [nvarchar](10) NULL,
	[MaNhaSX] [nvarchar](10) NULL,
	[TenSP] [nvarchar](max) NULL,
	[MoTa] [text] NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP01', N'Cao cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (N'LSP02', N'Trung Bình')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX01', N'Orion')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX02', N'Oishi')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX03', N'ABC Bakery')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX04', N'Kinh Đô')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX]) VALUES (N'NSX05', N'DC')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [MoTa], [HinhAnh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'LAY''S CHIPS SOUR CREAM & ONION', N'Quá ngon', N'onion1.png', NULL, NULL, 15000, 0, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [MoTa], [HinhAnh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP01', N'NSX01', N'LAY''S CHIPS BARBECUE', N'Siêu Ngon', N'onion2.jpg', NULL, NULL, 14999, 0, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNhaSX], [TenSP], [MoTa], [HinhAnh], [Hinh1], [Hinh2], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP02', N'NSX02', N'CHURRITOS CHILI PEPPER & LIME', N'Ngon', N'oishi1.jpg', NULL, NULL, 10000, 0, 0, 1)
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((1)) FOR [TinhTrang]
GO
USE [master]
GO
ALTER DATABASE [shopsnackDCtvc] SET  READ_WRITE 
GO
