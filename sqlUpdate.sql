USE [quanlycanbo1]
GO
/****** Object:  Table [dbo].[chucVu]    Script Date: 12/18/2023 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chucVu](
	[chucvu_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_chucvu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[chucvu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donVi]    Script Date: 12/18/2023 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donVi](
	[donvi_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_donvi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[donvi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giaoVien]    Script Date: 12/18/2023 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaoVien](
	[giaovien_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_giaovien] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[sdt] [varchar](10) NULL,
	[tuoi] [int] NULL,
	[donvi_id] [int] NULL,
	[trinhdo_id] [int] NULL,
	[luong_id] [int] NULL,
	[chucvu_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[giaovien_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[luong]    Script Date: 12/18/2023 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[luong](
	[luong_id] [int] IDENTITY(1,1) NOT NULL,
	[mucluong] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[luong_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trinhDo]    Script Date: 12/18/2023 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trinhDo](
	[trinhdo_id] [int] IDENTITY(1,1) NOT NULL,
	[ten_trinhdo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[trinhdo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chucVu] ON 

INSERT [dbo].[chucVu] ([chucvu_id], [ten_chucvu]) VALUES (7, N'Giang viên')
INSERT [dbo].[chucVu] ([chucvu_id], [ten_chucvu]) VALUES (8, N'Phó phòng')
INSERT [dbo].[chucVu] ([chucvu_id], [ten_chucvu]) VALUES (9, N'Trưởng phòng')
INSERT [dbo].[chucVu] ([chucvu_id], [ten_chucvu]) VALUES (10, N'Trợ Giảng')
INSERT [dbo].[chucVu] ([chucvu_id], [ten_chucvu]) VALUES (12, N'Giáo Viên')
SET IDENTITY_INSERT [dbo].[chucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[donVi] ON 

INSERT [dbo].[donVi] ([donvi_id], [ten_donvi]) VALUES (7, N'Khoa Công Nghệ thông tin')
INSERT [dbo].[donVi] ([donvi_id], [ten_donvi]) VALUES (12, N'Khoa Kinh tế')
INSERT [dbo].[donVi] ([donvi_id], [ten_donvi]) VALUES (16, N'Khoa Cơ địa')
INSERT [dbo].[donVi] ([donvi_id], [ten_donvi]) VALUES (19, N'Khoa Xây Dựng')
SET IDENTITY_INSERT [dbo].[donVi] OFF
GO
SET IDENTITY_INSERT [dbo].[giaoVien] ON 

INSERT [dbo].[giaoVien] ([giaovien_id], [ten_giaovien], [email], [sdt], [tuoi], [donvi_id], [trinhdo_id], [luong_id], [chucvu_id]) VALUES (10, N'Nguyễn Hoàng Long', N'hoang@gmail.com', N'0984340499', 24, 12, 7, 1, 8)
INSERT [dbo].[giaoVien] ([giaovien_id], [ten_giaovien], [email], [sdt], [tuoi], [donvi_id], [trinhdo_id], [luong_id], [chucvu_id]) VALUES (11, N'Nguyễn Minh', N'vanminh@gmail.com', N'09834582', 20, 16, 9, 3, 8)
INSERT [dbo].[giaoVien] ([giaovien_id], [ten_giaovien], [email], [sdt], [tuoi], [donvi_id], [trinhdo_id], [luong_id], [chucvu_id]) VALUES (13, N'Nguyễn Minh Chí', N'vanminh@gmail.com', N'09834582', 80, 7, 9, 3, 9)
INSERT [dbo].[giaoVien] ([giaovien_id], [ten_giaovien], [email], [sdt], [tuoi], [donvi_id], [trinhdo_id], [luong_id], [chucvu_id]) VALUES (16, N'Nguyễn Hoàng Minh Quân', N'quan@gmail.com', N'03546783', 40, 19, 12, 15, 12)
SET IDENTITY_INSERT [dbo].[giaoVien] OFF
GO
SET IDENTITY_INSERT [dbo].[luong] ON 

INSERT [dbo].[luong] ([luong_id], [mucluong]) VALUES (1, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[luong] ([luong_id], [mucluong]) VALUES (2, CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[luong] ([luong_id], [mucluong]) VALUES (3, CAST(900.00 AS Decimal(10, 2)))
INSERT [dbo].[luong] ([luong_id], [mucluong]) VALUES (11, CAST(100000.00 AS Decimal(10, 2)))
INSERT [dbo].[luong] ([luong_id], [mucluong]) VALUES (12, CAST(200000.00 AS Decimal(10, 2)))
INSERT [dbo].[luong] ([luong_id], [mucluong]) VALUES (15, CAST(300000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[luong] OFF
GO
SET IDENTITY_INSERT [dbo].[trinhDo] ON 

INSERT [dbo].[trinhDo] ([trinhdo_id], [ten_trinhdo]) VALUES (7, N'Cử nhân')
INSERT [dbo].[trinhDo] ([trinhdo_id], [ten_trinhdo]) VALUES (8, N'Thạc sĩ')
INSERT [dbo].[trinhDo] ([trinhdo_id], [ten_trinhdo]) VALUES (9, N'Tiến sĩ')
INSERT [dbo].[trinhDo] ([trinhdo_id], [ten_trinhdo]) VALUES (10, N'Giáo Sư')
INSERT [dbo].[trinhDo] ([trinhdo_id], [ten_trinhdo]) VALUES (12, N'Phó Giáo Sư')
INSERT [dbo].[trinhDo] ([trinhdo_id], [ten_trinhdo]) VALUES (13, N'Master')
SET IDENTITY_INSERT [dbo].[trinhDo] OFF
GO
ALTER TABLE [dbo].[giaoVien]  WITH CHECK ADD FOREIGN KEY([chucvu_id])
REFERENCES [dbo].[chucVu] ([chucvu_id])
GO
ALTER TABLE [dbo].[giaoVien]  WITH CHECK ADD FOREIGN KEY([donvi_id])
REFERENCES [dbo].[donVi] ([donvi_id])
GO
ALTER TABLE [dbo].[giaoVien]  WITH CHECK ADD FOREIGN KEY([luong_id])
REFERENCES [dbo].[luong] ([luong_id])
GO
ALTER TABLE [dbo].[giaoVien]  WITH CHECK ADD FOREIGN KEY([trinhdo_id])
REFERENCES [dbo].[trinhDo] ([trinhdo_id])
GO
