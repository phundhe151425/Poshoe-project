create database [Project_PRJ]
go
USE [Project_PRJ]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](255) NULL,
	[Password] [nchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [nvarchar](11) NULL,
	[Email] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ImageURL] [nvarchar](255) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[OrderDate] [nvarchar](20) NULL,
	[Note] [nvarchar](255) NULL,
	[Total] [float] null
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NULL,
	[ImageURL] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[CategoryID] [int] NULL,
	[BrandID] [int] NULL,
	[StatusID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](255) NULL,
 CONSTRAINT [PK_RoleAccount] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[ShippingID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](255) NOT NULL,
	[CustomerPhone] [nvarchar](11) NOT NULL,
	[CustomerAddress] [nvarchar](255) NOT NULL,
	[Status_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShippingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NULL,
	[ProductID] [int] NULL,
	[StatusID] [int] NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusProduct]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusProduct](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](255) NULL,
 CONSTRAINT [PK_StatusProduct] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusShipping]    Script Date: 3/15/2022 7:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusShipping](
	[statusID] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[statusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Name], [Phone], [Email], [Address], [RoleID]) VALUES (3, N'admin                                                                                                                                                                                                                                                          ', N'123                                                                                                                                                                                                                                                            ', N'Nguyễn Đình Phú', N'0982060701', N'phundhe151425@fpt.edu.vn', N'234 Phạm Văn Đồng, Cổ Nhuế, Bắc Từ Liêm, Hà Nội', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Name], [Phone], [Email], [Address], [RoleID]) VALUES (4, N'phu                                                                                                                                                                                                                                                            ', N'123                                                                                                                                                                                                                                                            ', N'Nguyễn Đình Phú', N'0982060701', N'phundhe151425@fpt.edu.vn', N'234 Phạm Văn Đồng, Cổ Nhuế, Bắc Từ Liêm, Hà Nội', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Name], [Phone], [Email], [Address], [RoleID]) VALUES (5, N'user1                                                                                                                                                                                                                                                          ', N'1                                                                                                                                                                                                                                                              ', N'Trần Thị B', N'08472855465', N'p@gmail.com', N'191 Bà Triệu, Lê Đại Hành, Hai Bà Trưng, Hà Nội', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Name], [Phone], [Email], [Address], [RoleID]) VALUES (6, N'user2                                                                                                                                                                                                                                                          ', N'12                                                                                                                                                                                                                                                             ', N'Nguyễn Công P', N'03616534562', N'p@gmail.com', N'22 Hàng Trống, Hoàn Kiếm, Hà Nội', 2)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Name], [Phone], [Email], [Address], [RoleID]) VALUES (7, N'user3                                                                                                                                                                                                                                                          ', N'123                                                                                                                                                                                                                                                            ', N'Nguyễn Thái X', N'0123456789', N'x@gmail.com', N'216 Võ Văn Ngân, Bình Thọ, Thủ Đức, Thành phố Hồ Chí Minh', 2)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (1, N'Nike      ')
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (2, N'Adidas    ')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'Running')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Basketball')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'Lifestyle')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (4, N'Skateboarding')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (1, 1, N'alphabounce-ek-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (2, 1, N'alphabounce-ek-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (3, 1, N'alphabounce-ek-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (4, 1, N'alphabounce-ek-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (5, 2, N'duramo-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (6, 2, N'duramo-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (7, 2, N'duramo-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (8, 2, N'duramo-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (9, 3, N'nmd-r1-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (10, 3, N'nmd-r1-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (11, 3, N'nmd-r1-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (12, 3, N'nmd-r1-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (13, 4, N'ozelia-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (14, 4, N'ozelia-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (15, 4, N'ozelia-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (16, 4, N'ozelia-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (17, 5, N'pureboost-21-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (18, 5, N'pureboost-21-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (19, 5, N'pureboost-21-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (20, 5, N'pureboost-21-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (21, 6, N'racer-tr21-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (22, 6, N'racer-tr21-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (23, 6, N'racer-tr21-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (24, 6, N'racer-tr21-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (25, 7, N'stansmith-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (26, 7, N'stansmith-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (27, 7, N'stansmith-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (28, 7, N'stansmith-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (29, 8, N'supernova-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (30, 8, N'supernova-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (31, 8, N'supernova-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (32, 8, N'supernova-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (33, 9, N'ultraboost-dna-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (34, 9, N'ultraboost-dna-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (35, 9, N'ultraboost-dna-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (36, 9, N'ultraboost-dna-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (37, 10, N'ultraboost-20-lab-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (38, 10, N'ultraboost-20-lab-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (39, 10, N'ultraboost-20-lab-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (40, 10, N'ultraboost-20-lab-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (41, 11, N'x9000l3-djen-1.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (42, 11, N'x9000l3-djen-2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (43, 11, N'x9000l3-djen-3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (44, 11, N'x9000l3-djen-4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (45, 12, N'air-force-1-luxe-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (46, 12, N'air-force-1-luxe-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (47, 12, N'air-force-1-luxe-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (48, 12, N'air-force-1-luxe-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (49, 13, N'air-jordan-4-crimson-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (50, 13, N'air-jordan-4-crimson-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (51, 13, N'air-jordan-4-crimson-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (52, 13, N'air-jordan-4-crimson-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (53, 14, N'air-max-97-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (54, 14, N'air-max-97-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (55, 14, N'air-max-97-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (56, 14, N'air-max-97-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (57, 15, N'jordan-1-high-unc-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (58, 15, N'jordan-1-high-unc-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (59, 15, N'jordan-1-high-unc-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (60, 15, N'jordan-1-high-unc-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (61, 16, N'jordan-1-high-volt-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (62, 16, N'jordan-1-high-volt-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (63, 16, N'jordan-1-high-volt-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (64, 16, N'jordan-1-high-volt-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (65, 17, N'air-jordan-1-low-gymred-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (66, 17, N'air-jordan-1-low-gymred-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (67, 17, N'air-jordan-1-low-gymred-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (68, 18, N'lebron-9-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (69, 18, N'lebron-9-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (70, 18, N'lebron-9-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (71, 18, N'lebron-9-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (72, 19, N'lebron-19-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (73, 19, N'lebron-19-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (74, 19, N'lebron-19-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (75, 19, N'lebron-19-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (76, 20, N'air-huarache-le-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (77, 20, N'air-huarache-le-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (78, 20, N'air-huarache-le-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (79, 20, N'air-huarache-le-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (80, 21, N'air-max-270-g-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (81, 21, N'air-max-270-g-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (82, 21, N'air-max-270-g-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (83, 21, N'air-max-270-g-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (84, 22, N'air-max-intrlk-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (85, 22, N'air-max-intrlk-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (86, 22, N'air-max-intrlk-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (87, 22, N'air-max-intrlk-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (88, 23, N'air-presto-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (89, 23, N'air-presto-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (90, 23, N'air-presto-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (91, 23, N'air-presto-4.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (92, 24, N'sb-chron-2-canvas-1.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (93, 24, N'sb-chron-2-canvas-2.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (94, 24, N'sb-chron-2-canvas-3.png')
INSERT [dbo].[Image] ([ImageID], [ProductID], [ImageURL]) VALUES (95, 24, N'sb-chron-2-canvas-4.png')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (1, 5,  N'2-13-2022', N'blablo',3000000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (2, 4,  N'10-13-2021', N'',1500000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (3, 5,  N'1-23-2022', N'ahihi',5000000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (4, 3,  N'1-23-2022', N'ahihi',6000000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (5, 4,  N'1-23-2022', N'ahihi',6000000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (6, 4,  N'10-13-2021', N'',1500000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (7, 5,  N'1-23-2022', N'ahihi',5000000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (8, 3,  N'1-23-2022', N'ahihi',6000000)
INSERT [dbo].[Order] ([OrderID], [AccountID], [OrderDate], [Note], [Total]) VALUES (9, 4,  N'1-23-2022', N'ahihi',14000000)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (1, 5, 2950000, 2)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (1, 18, 4900000, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (2, 15, 36000000, 1)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (3, 14, 3200000, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (1, N'Alphabounce EK', 2700000, 10, N'alphabounce-ek-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (2, N'Duramo SL', 1700000, 12, N'duramo-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (3, N'NMD R1', 3600000, 43, N'nmd-r1-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (4, N'Ozelia', 2600000, 4, N'ozelia-1.jpg', N'LifeStyle 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 3, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (5, N'Pureboost 21', 2950000, 13, N'pureboost-21-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (6, N'Racer TR21', 2000000, 15, N'racer-tr21-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (7, N'Stan Smith', 1500000, 0, N'stansmith-1.jpg', N'LifeStyle 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 3, 2, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (8, N'Supernova+', 2275000, 6, N'supernova-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (9, N'Ultraboost 4.0 DNA', 4500000, 53, N'ultraboost-dna-1.jpg', N'Running Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (10, N'Ultraboost 20 LAB', 3500000, 12, N'ultraboost-20-lab-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (11, N'X9000L3', 1550000, 34, N'x9000l3-djen-1.jpg', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 2, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (12, N'Air Force 1 Luxe', 3900000, 23, N'air-force-1-luxe-1.png', N'Life Style 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 3, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (13, N'Air Jordan 4 Crimson', 9000000, 26, N'air-jordan-4-crimson-1.png', N'Basketball 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 2, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (14, N'Air Max 97', 3200000, 12, N'air-max-97-1.png', N'Life Style 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 3, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (15, N'Jordan 1 High UNC', 36000000, 1, N'jordan-1-high-unc-1.png', N'Basketball 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 2, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (16, N'Jordan 1 High volt', 4100000, 5, N'jordan-1-high-volt-1.png', N'Basketball 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 2, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (17, N'Jordan 1 Low Gym Red', 5500000, 3, N'air-jordan-1-low-gymred-1.png', N'Life Style 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 3, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (18, N'Lebron 9', 4900000, 2, N'lebron-9-1.png', N'Basketball 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 2, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (19, N'Lebron 19', 3200000, 5, N'lebron-19-1.png', N'Basketball 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 2, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (20, N'Nike Air Huarache LE', 3400000, 36, N'air-huarache-le-1.png', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (21, N'Nike Air Max 270 G', 3700000, 12, N'air-max-270-g-1.png', N'Life Style 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 3, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (22, N'Nike Air Max INTRLK Lite', 1600000, 6, N'air-max-intrlk-1.png', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (23, N'Nike Air Presto By You', 3000000, 11, N'air-presto-1.png', N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 1, 1, 1) delete f
INSERT [dbo].[Product] ( [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES ( N'Nike SB Chron 2 Canvas Premium', 1000000, 137, 'sb-chron-2-canvas-1.png',
N'Running 
Nguyên tag hãng, hàng chuẩn, Fullbox. 
Được kiểm tra hàng khi mua
Được đổi size khi không vừa chân
Bảo hành 1 năm
Hàng có sẵn, đẹp như hình', 4, 1, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (25, N'huhu', 123, 1, N'', N'abc', 0, 0, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [Quantity], [ImageURL], [Description], [CategoryID], [BrandID], [StatusID]) VALUES (28, N'Phu', 123, 1, N'', N'abc', 0, 2, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleAccount] ON 

INSERT [dbo].[RoleAccount] ([RoleID], [Role]) VALUES (1, N'admin')
INSERT [dbo].[RoleAccount] ([RoleID], [Role]) VALUES (2, N'client')
SET IDENTITY_INSERT [dbo].[RoleAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([ShippingID], [CustomerName], [CustomerPhone], [CustomerAddress], [Status_ID]) VALUES (1, N'Nguyễn Đình Phú', N'03616534562', N'234 Phạm Văn Đồng, Cổ Nhuế, Bắc Từ Liêm, Hà Nội', 1)
INSERT [dbo].[Shipping] ([ShippingID], [CustomerName], [CustomerPhone], [CustomerAddress], [Status_ID]) VALUES (2, N'Nguyễn Công P', N'0982060701', N'22 Hàng Trống, Hoàn Kiếm, Hà Nội', 2)
INSERT [dbo].[Shipping] ([ShippingID], [CustomerName], [CustomerPhone], [CustomerAddress], [Status_ID]) VALUES (3, N'Nguyễn Đình Phú', N'03616534562', N'234 Phạm Văn Đồng, Cổ Nhuế, Bắc Từ Liêm, Hà Nội', 3)
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (1, 36, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (2, 37, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (3, 38, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (4, 39, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (5, 40, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (6, 41, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (7, 42, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (8, 43, 1, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (9, 36, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (10, 37, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (11, 38, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (12, 39, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (13, 40, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (14, 41, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (15, 42, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (16, 43, 2, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (17, 36, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (18, 37, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (19, 38, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (20, 39, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (21, 40, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (22, 41, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (23, 42, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (24, 43, 3, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (25, 36, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (26, 37, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (27, 38, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (28, 39, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (29, 40, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (30, 41, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (31, 42, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (32, 43, 4, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (33, 36, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (34, 37, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (35, 38, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (36, 39, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (37, 40, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (38, 41, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (39, 42, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (40, 43, 5, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (41, 36, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (42, 37, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (43, 38, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (44, 39, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (45, 40, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (46, 41, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (47, 42, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (48, 43, 6, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (49, 36, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (50, 37, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (51, 38, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (52, 39, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (53, 40, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (54, 41, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (55, 42, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (56, 43, 7, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (57, 36, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (58, 37, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (59, 38, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (60, 39, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (61, 40, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (62, 41, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (63, 42, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (64, 43, 8, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (65, 36, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (66, 37, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (67, 38, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (68, 39, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (69, 40, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (70, 41, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (71, 42, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (72, 43, 9, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (73, 36, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (74, 37, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (75, 38, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (76, 39, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (77, 40, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (78, 41, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (79, 42, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (80, 43, 10, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (81, 36, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (82, 37, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (83, 38, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (84, 39, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (85, 40, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (86, 41, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (87, 42, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (88, 43, 11, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (89, 36, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (90, 37, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (91, 38, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (92, 39, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (93, 40, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (94, 41, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (95, 42, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (96, 43, 12, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (97, 36, 13, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (98, 37, 13, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (99, 38, 13, 1)
GO
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (100, 39, 13, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (101, 40, 13, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (102, 41, 13, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (103, 42, 13, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (104, 43, 13, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (105, 36, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (106, 37, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (107, 38, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (108, 39, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (109, 40, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (110, 41, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (111, 42, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (112, 43, 14, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (113, 36, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (114, 37, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (115, 38, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (116, 39, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (117, 40, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (118, 41, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (119, 42, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (120, 43, 15, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (121, 36, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (122, 37, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (123, 38, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (124, 39, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (125, 40, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (126, 41, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (127, 42, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (128, 43, 16, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (129, 36, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (130, 37, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (131, 38, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (132, 39, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (133, 40, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (134, 41, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (135, 42, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (136, 43, 17, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (137, 36, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (138, 37, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (139, 38, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (140, 39, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (141, 40, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (142, 41, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (143, 42, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (144, 43, 18, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (145, 36, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (146, 37, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (147, 38, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (148, 39, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (149, 40, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (150, 41, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (151, 42, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (152, 43, 19, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (153, 36, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (154, 37, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (155, 38, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (156, 39, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (157, 40, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (158, 41, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (159, 42, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (160, 43, 20, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (161, 36, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (162, 37, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (163, 38, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (164, 39, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (165, 40, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (166, 41, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (167, 42, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (168, 43, 21, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (169, 36, 22, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (170, 37, 22, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (171, 38, 22, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (172, 39, 22, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (173, 40, 22, 2)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (174, 41, 22, 2)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (175, 42, 22, 2)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (176, 43, 22, 2)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (177, 36, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (178, 37, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (179, 38, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (180, 39, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (181, 40, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (182, 41, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (183, 42, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (184, 43, 23, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (185, 36, 24, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (186, 37, 24, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (187, 38, 24, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (188, 39, 24, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (189, 40, 24, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (190, 41, 24, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (191, 42, 24, 1)
INSERT [dbo].[Size] ([SizeID], [Size], [ProductID], [StatusID]) VALUES (192, 43, 24, 1)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusProduct] ON 

INSERT [dbo].[StatusProduct] ([StatusID], [Status]) VALUES (1, N'Còn hàng')
INSERT [dbo].[StatusProduct] ([StatusID], [Status]) VALUES (2, N'Hết hàng')
SET IDENTITY_INSERT [dbo].[StatusProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusShipping] ON 

INSERT [dbo].[StatusShipping] ([statusID], [status]) VALUES (1, N'Chờ xác nhận đơn hàng')
INSERT [dbo].[StatusShipping] ([statusID], [status]) VALUES (2, N'Đang giao hàng')
INSERT [dbo].[StatusShipping] ([statusID], [status]) VALUES (3, N'Giao hàng thành công')
SET IDENTITY_INSERT [dbo].[StatusShipping] OFF
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shipping] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[StatusShipping] ([statusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shipping]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shipping1] FOREIGN KEY([ShippingID])
REFERENCES [dbo].[Shipping] ([ShippingID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shipping1]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_StatusProduct] FOREIGN KEY([StatusID])
REFERENCES [dbo].[StatusProduct] ([StatusID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_StatusProduct]
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_StatusShipping] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[StatusShipping] ([statusID])
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_StatusShipping]
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD  CONSTRAINT [FK_Size_Product1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Size] CHECK CONSTRAINT [FK_Size_Product1]
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD  CONSTRAINT [FK_Size_StatusProduct] FOREIGN KEY([StatusID])
REFERENCES [dbo].[StatusProduct] ([StatusID])
GO
ALTER TABLE [dbo].[Size] CHECK CONSTRAINT [FK_Size_StatusProduct]
GO
