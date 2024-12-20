USE [FFShop]
GO
/****** Object:  Table [dbo].[tblAddress]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAddress](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Address] [nvarchar](500) NULL,
	[Active] [int] NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[FullName] [nvarchar](255) NULL,
	[PaymentMethodID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBrand]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCart]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductPrice] [int] NULL,
	[ProductAmount] [int] NULL,
	[ProductImageURL] [nvarchar](500) NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](50) NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFAQ]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFAQ](
	[FAQID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FAQID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[FullName] [nvarchar](255) NULL,
	[OrderDate] [nvarchar](50) NULL,
	[TotalPrice] [int] NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[OrderAddress] [nvarchar](500) NULL,
	[StatusID] [int] NULL,
	[PaymentMethodID] [int] NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderStatus]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[BrandID] [int] NULL,
	[CategoryID] [int] NULL,
	[ProductDes] [nvarchar](1000) NULL,
	[Quantity] [int] NULL,
	[Active] [int] NULL,
	[ProductImageURL] [nvarchar](500) NULL,
	[Size] [int] NULL,
	[Cost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRateCart]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRateCart](
	[RateCartID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductPrice] [int] NULL,
	[ProductAmount] [int] NULL,
	[ProductImageURL] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[RateCartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRating]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRating](
	[ProductID] [int] NOT NULL,
	[RateNumber] [int] NOT NULL,
	[RateDes] [nvarchar](500) NOT NULL,
	[UserID] [int] NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](20) NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](32) NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Gender] [nvarchar](15) NULL,
	[DOB] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[RoleID] [int] NULL,
	[Active] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWishList]    Script Date: 11/5/2023 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWishList](
	[WishListID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductPrice] [int] NULL,
	[ProductImageURL] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[WishListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAddress] ON 

INSERT [dbo].[tblAddress] ([AddressID], [UserID], [Address], [Active], [PhoneNumber], [FullName], [PaymentMethodID]) VALUES (24, 1, N'Phuong 4, Quan 7, Tp Ho Chi Minh', 1, N'', N'', 2)
INSERT [dbo].[tblAddress] ([AddressID], [UserID], [Address], [Active], [PhoneNumber], [FullName], [PaymentMethodID]) VALUES (25, 16, N'Can Tho', 1, N'0123123123', N'Hai Dang', 2)
SET IDENTITY_INSERT [dbo].[tblAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[tblBrand] ON 

INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (1, N'Calvin Klein', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (2, N'Gucci', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (3, N'Chanel', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (4, N'Tom Ford', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (5, N'Burberry', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (6, N'Dolce & Gabbana', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (7, N'Creed', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (8, N'Hugo Boss', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (9, N'Montblanc', 1)
INSERT [dbo].[tblBrand] ([BrandID], [BrandName], [Active]) VALUES (10, N'Abercrombie & Fitch', 1)
SET IDENTITY_INSERT [dbo].[tblBrand] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCart] ON 

INSERT [dbo].[tblCart] ([CartID], [UserID], [ProductID], [ProductName], [ProductPrice], [ProductAmount], [ProductImageURL], [Active]) VALUES (145, 16, 9, N'Nectarine Blossom & Honey Cologne 100ML', 165, 1, N'/img/armani-removebg-preview.png', 1)
SET IDENTITY_INSERT [dbo].[tblCart] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (1, N'Cool Water', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (2, N'Crush', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (3, N'Magic', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (4, N'Hypnotic Poison', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (5, N'Daring Charm', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (6, N'Velvet Dreams', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (7, N'Midnight Delight', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (8, N'Moonbeam', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (9, N'Gossamer Wings', 1)
INSERT [dbo].[tblCategory] ([CategoryID], [CatName], [Active]) VALUES (10, N'Heat Wave', 1)
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblFAQ] ON 

INSERT [dbo].[tblFAQ] ([FAQID], [Question], [Email], [Active]) VALUES (1, N'Q2: What is your return policy?', N'Eamplae@gmail.com', 1)
INSERT [dbo].[tblFAQ] ([FAQID], [Question], [Email], [Active]) VALUES (2, N'Q1: How do I contact customer support?', N'Another@example.com', 1)
INSERT [dbo].[tblFAQ] ([FAQID], [Question], [Email], [Active]) VALUES (3, N'Why I See your store', N'dangnhce170265@fpt.edu.vn', 1)
INSERT [dbo].[tblFAQ] ([FAQID], [Question], [Email], [Active]) VALUES (4, N'I dont know how to enter your web', N'dangnhce170265@fpt.edu.vn', 1)
INSERT [dbo].[tblFAQ] ([FAQID], [Question], [Email], [Active]) VALUES (5, N'I Dont know how to buy', N'ddand18p@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[tblFAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrder] ON 

INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (1, 3, N'Ngo Hai Dang', N'21/07/2003 21:13', 124, N'0123123123', N'Can Tho', 2, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (10, 3, N'Anh Khoi                                                                                                                                                                                                                                                       ', N'22/10/2023 09:00', 2442, N'0234234234', N'FPT Can Tho', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (11, 3, N'Hai Dang                                                                                                                                                                                                                                                       ', N'22/10/2023 09:01', 205, N'0123123123', N'Can Tho', 3, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (12, 3, N'Ngo Hai Dang                                                                                                                                                                                                                                                   ', N'22/10/2023 09:18', 1084, N'0123123123', N'Ninh Kieu, Can Tho', 3, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (13, 3, N'Hai Dang', N'22/10/2023 09:39', 1043, N'0123123123', N'Can Tho', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (14, 3, N'Hai Dang', N'27/10/2023 14:34', 3133, N'0123123123', N'Can Tho', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (15, 3, N'Hai Dang', N'01/11/2023 01:54', 4023, N'0123123123', N'Can Tho Hau Giang', 2, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (16, 3, N'Hai Dang', N'01/11/2023 14:51', 700, N'0123123123', N'Can Tho Hau Giang', 1, 1, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (17, 3, N'Hai Dang', N'01/11/2023 15:38', 1101, N'0123123123', N'Can Tho Hau Giang', 1, 1, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (19, 3, N'Hai Dang', N'04/11/2023 20:14', 6718, N'0123123123', N'Ha Noi', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (20, 15, N'Hai Dang', N'04/11/2023 20:14', 481, N'0123123123', N'Can Tho', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (21, 15, N'Hai Dang', N'04/11/2023 20:15', 161, N'0123123123', N'Can Tho', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (23, 3, N'Hai Duong', N'04/11/2023 20:44', 528, N'0123123123', N'Quang Name', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (24, 3, N'Hai Duong', N'04/11/2023 20:49', 2296, N'0123123123', N'Quang Name', 1, 2, 1)
INSERT [dbo].[tblOrder] ([OrderID], [UserID], [FullName], [OrderDate], [TotalPrice], [PhoneNumber], [OrderAddress], [StatusID], [PaymentMethodID], [Active]) VALUES (25, 16, N'Hai Dang', N'05/11/2023 21:51', 136, N'0123123123', N'Can Tho', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[tblOrder] OFF
GO
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (13, 3, 25, 1, 2)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (13, 4, 16, 1, 2)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (13, 2, 999, 1, 2)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (10, 2, 999, 1, 2)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (10, 1, 699, 2, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (10, 3, 25, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (10, 4, 16, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (11, 3, 25, 3, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (11, 4, 16, 8, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (12, 3, 25, 2, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (12, 2, 999, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (12, 4, 16, 2, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (14, 3, 25, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (14, 4, 16, 2, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (14, 2, 999, 3, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (15, 3, 25, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (15, 2, 999, 4, 2)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (16, 1, 699, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (17, 23, 275, 4, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (19, 7, 99, 9, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (19, 8, 192, 2, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (19, 12, 160, 2, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (20, 12, 160, 3, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (21, 12, 160, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (23, 8, 192, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (23, 9, 165, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (23, 10, 168, 1, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (24, 2, 135, 17, 2)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (14, 3, 25, 3, 1)
INSERT [dbo].[tblOrderDetail] ([OrderID], [ProductID], [ProductPrice], [Quantity], [Active]) VALUES (25, 2, 135, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[tblOrderStatus] ON 

INSERT [dbo].[tblOrderStatus] ([StatusID], [StatusName], [Active]) VALUES (1, N'Pending', 1)
INSERT [dbo].[tblOrderStatus] ([StatusID], [StatusName], [Active]) VALUES (2, N'Delivered', 1)
INSERT [dbo].[tblOrderStatus] ([StatusID], [StatusName], [Active]) VALUES (3, N'Rejected', 1)
SET IDENTITY_INSERT [dbo].[tblOrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (1, N'Narciso Rodriguez Cristal EDP 100ML', 144, 3, 5, N'High-end Narciso Rodriguez', 49, 1, N'/img/_1_narciso-removebg-preview.png', 100, 127)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (2, N'Miss Dior Blooming Bouquet EDT 100ML', 135, 8, 2, N'Dior', 0, 0, N'/img/_2_missdior-removebg-preview.png', 100, 112)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (3, N'Miss Grand 100ML', 50, 2, 9, N'Comfortable cotton t-shirt', 88, 1, N'/img/3b7d5965d9372f3185e778c20596d3dc.jpg', 100, 37)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (4, N'Miss Dior Blooms 125ML', 46, 7, 7, N'saddfas', 4, 1, N'/img/z4752894108147_93ce64c63470671b3b4d3472ac95679a.jpg', 125, 35)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (5, N'LKune de Blanc 50ML', 43, 5, 3, N'sfdgfdh', 20, 1, N'/img/the-perfume-shop-joop-homme.jpg', 50, 34)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (6, N'Jean Paul Gaultier Scandal EDP 75ML', 114, 10, 1, N'Jean Paul Gaultier', 12, 1, N'/img/_3_scandal-removebg-preview.png', 75, 100)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (7, N'Chloe By Chloe EDP 75ML', 99, 4, 10, N'Chloe', 23, 1, N'/img/_4_chloe-removebg-preview.png', 75, 89)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (8, N'Jean Paul Gaultier Scandal EDP 100ML', 192, 1, 8, N'Yves Saint Laurent', 40, 1, N'/img/_5_ysl-removebg-preview.png', 100, 143)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (9, N'Nectarine Blossom & Honey Cologne 100ML', 165, 6, 4, N'JO MALONE', 22, 1, N'/img/armani-removebg-preview.png', 100, 156)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (10, N'Gucci Flora Gorgeous Magnolia Eau de Parfum 100ML', 168, 9, 6, N'Gucci', 11, 1, N'/img/Cherry-removebg-preview.png', 100, 156)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (11, N'Cherry Ambition Eau de Parfum 50ML', 88, 3, 7, N'The & Virtues', 51, 1, N'/img/diorsauvage-removebg-preview.png', 50, 77)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (12, N'’REPLICA’ Beach Walk 100ML', 160, 2, 3, N'Maison Margiela', 28, 1, N'/img/ero-removebg-preview.png', 100, 140)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (13, N'Sauvage Eau de Toilette 75ML', 100, 7, 9, N'Dior', 33, 1, N'/img/Florajpg-removebg-preview.png', 75, 78)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (14, N'Eros 100ML', 96, 8, 2, N'Versace', 21, 1, N'/img/hero-removebg-preview.png', 100, 76)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (15, N'Tobacco Vanille 50ML', 295, 10, 6, N'TOM FORD', 32, 1, N'/img/homme-removebg-preview.png', 50, 223)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (16, N'Y Le Parfum 100ML', 188, 1, 8, N'Yves Saint Laurent', 25, 1, N'/img/Honey-removebg-preview.png', 100, 127)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (17, N'Touch 50ML', 83, 6, 1, N'Burberry', 21, 1, N'/img/luna-removebg-preview.png', 50, 78)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (18, N'Armani Code Parfum 75ML', 144, 4, 10, N'Armani Beauty', 12, 1, N'/img/pour-removebg-preview.png', 75, 125)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (19, N'Guilty Pour Homme 100ML', 120, 5, 4, N'Gucci', 23, 1, N'/img/Reply-removebg-preview.png', 100, 109)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (20, N'Homme Eau de Toilette 50ML', 95, 9, 5, N'Dior', 32, 1, N'/img/TF-removebg-preview.png', 50, 78)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (21, N'Luna Rossa Black Eau de Parfum 50ML', 107, 7, 2, N'Prada', 43, 1, N'/img/touch-removebg-preview.png', 50, 88)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (22, N'Hero Eau de Toilette 100ML', 128, 2, 9, N'Burberry', 12, 1, N'/img/vanille-removebg-preview.png', 100, 111)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (23, N'Black Orchid Parfum 100ML', 275, 3, 7, N'Tom Ford', 30, 1, N'/img/ysl-removebg-preview.png', 100, 238)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (24, N'Proooo 100ML', 123, 8, 3, N'Good', 10, 1, N'/img/homme.jpg', 100, 100)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (25, N'Narciso Rodriguez Cristal EDP 125ML', 189, 3, 5, N'High-end Narciso Rodriguez', 49, 1, N'/img/_1_narciso-removebg-preview.png', 125, 127)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (26, N'Miss Dior Blooming Bouquet EDT 75ML', 105, 8, 2, N'Dior', 1, 1, N'/img/_2_missdior-removebg-preview.png', 75, 87)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (27, N'Miss Grand 50ML', 25, 2, 9, N'Comfortable cotton t-shirt', 88, 1, N'/img/3b7d5965d9372f3185e778c20596d3dc.jpg', 50, 23)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (28, N'Miss Dior Blooms 100ML', 32, 7, 7, N'saddfas', 4, 1, N'/img/z4752894108147_93ce64c63470671b3b4d3472ac95679a.jpg', 100, 18)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (29, N'LKune de Blanc 100ML', 84, 5, 3, N'sfdgfdh', 20, 1, N'/img/the-perfume-shop-joop-homme.jpg', 100, 66)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (30, N'Jean Paul Gaultier Scandal EDP 100ML', 134, 10, 1, N'Jean Paul Gaultier', 12, 1, N'/img/_3_scandal-removebg-preview.png', 100, 122)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (31, N'Chloe By Chloe EDP 100ML', 123, 4, 10, N'Chloe', 23, 1, N'/img/_4_chloe-removebg-preview.png', 100, 106)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (32, N'Jean Paul Gaultier Scandal EDP 50ML', 132, 1, 8, N'Yves Saint Laurent', 40, 1, N'/img/_5_ysl-removebg-preview.png', 50, 123)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (33, N'Nectarine Blossom & Honey Cologne 75ML', 147, 6, 4, N'JO MALONE', 22, 1, N'/img/armani-removebg-preview.png', 75, 102)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [Price], [BrandID], [CategoryID], [ProductDes], [Quantity], [Active], [ProductImageURL], [Size], [Cost]) VALUES (34, N'Gucci Flora Gorgeous Magnolia Eau de Parfum 50ML', 72, 9, 6, N'Gucci', 11, 1, N'/img/5.png', 50, 64)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRateCart] ON 

INSERT [dbo].[tblRateCart] ([RateCartID], [ProductID], [UserID], [ProductName], [ProductPrice], [ProductAmount], [ProductImageURL]) VALUES (1, 1, 2, N'Smartphone X', 699, 2, N'img/Item1.jpg')
INSERT [dbo].[tblRateCart] ([RateCartID], [ProductID], [UserID], [ProductName], [ProductPrice], [ProductAmount], [ProductImageURL]) VALUES (2, 3, 3, N'T-shirt', 25, 5, N'img/Item3.png')
SET IDENTITY_INSERT [dbo].[tblRateCart] OFF
GO
INSERT [dbo].[tblRating] ([ProductID], [RateNumber], [RateDes], [UserID], [Active]) VALUES (2, 3, N'Look Great', 3, 1)
INSERT [dbo].[tblRating] ([ProductID], [RateNumber], [RateDes], [UserID], [Active]) VALUES (2, 2, N'This Perfume is Greate, I love it!', 3, 1)
INSERT [dbo].[tblRating] ([ProductID], [RateNumber], [RateDes], [UserID], [Active]) VALUES (2, 5, N'Fast shipping, happy shipper, good product', 3, 1)
INSERT [dbo].[tblRating] ([ProductID], [RateNumber], [RateDes], [UserID], [Active]) VALUES (2, 4, N'This is bad like my bad boy style', 3, 1)
INSERT [dbo].[tblRating] ([ProductID], [RateNumber], [RateDes], [UserID], [Active]) VALUES (2, 3, N'Good but the shipper not friendly', 16, 1)
GO
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([RoleID], [Role], [Active]) VALUES (1, N'User', 1)
INSERT [dbo].[tblRole] ([RoleID], [Role], [Active]) VALUES (2, N'Admin', 1)
SET IDENTITY_INSERT [dbo].[tblRole] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([UserID], [Username], [Password], [Email], [FullName], [Gender], [DOB], [PhoneNumber], [RoleID], [Active]) VALUES (1, N'admin', N'25d55ad283aa400af464c76d713c07ad', N'florasy.admin@gmail.com', N'Admin User', N'Male', N'2003-03-21', N'0929223703', 2, 1)
INSERT [dbo].[tblUser] ([UserID], [Username], [Password], [Email], [FullName], [Gender], [DOB], [PhoneNumber], [RoleID], [Active]) VALUES (2, N'CEO', N'25d55ad283aa400af464c76d713c07ad', N'KhoiNA@fpt.edu.vn', N'Nguyen Anh Khoi', N'Male', N'2003-05-10', N'0123123123', 2, 0)
INSERT [dbo].[tblUser] ([UserID], [Username], [Password], [Email], [FullName], [Gender], [DOB], [PhoneNumber], [RoleID], [Active]) VALUES (3, N'TuKiTran', N'25d55ad283aa400af464c76d713c07ad', N'KietTT@fpt.edu.vn', N'Tran Tuan Kiet', N'Male', N'1998-03-15', N'0282888418', 1, 0)
INSERT [dbo].[tblUser] ([UserID], [Username], [Password], [Email], [FullName], [Gender], [DOB], [PhoneNumber], [RoleID], [Active]) VALUES (15, N'AnhLH', N'25d55ad283aa400af464c76d713c07ad', N'AnhLH@gmail.com', N'Le Hoang Anh', N'Male', N'2003-06-30', N'0927355655', 1, 0)
INSERT [dbo].[tblUser] ([UserID], [Username], [Password], [Email], [FullName], [Gender], [DOB], [PhoneNumber], [RoleID], [Active]) VALUES (16, N'Canisdang', N'25d55ad283aa400af464c76d713c07ad', N'dangnhce170265@fpt.edu.vn', N'Ngo Hai Dang', N'Male', N'2003-08-18', N'0123234516', 1, 1)
INSERT [dbo].[tblUser] ([UserID], [Username], [Password], [Email], [FullName], [Gender], [DOB], [PhoneNumber], [RoleID], [Active]) VALUES (17, N'Bonnie', N'25d55ad283aa400af464c76d713c07ad', N'VyMNt@fpt.edu.vn', N'Mai Nguyen Truc Vy', N'Female', N'2003-04-30', N'0263855455', 1, 1)
INSERT [dbo].[tblUser] ([UserID], [Username], [Password], [Email], [FullName], [Gender], [DOB], [PhoneNumber], [RoleID], [Active]) VALUES (18, N'TraMy', N'25d55ad283aa400af464c76d713c07ad', N'MyNTT@fpt.edu.vn', N'Nguyen Thi Tra My', N'Female', N'2003-06-16', N'0842638522', 1, 1)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
SET IDENTITY_INSERT [dbo].[tblWishList] ON 

INSERT [dbo].[tblWishList] ([WishListID], [UserID], [ProductID], [ProductName], [ProductPrice], [ProductImageURL]) VALUES (16, 16, 3, N'Miss Grand 100ML', 25, N'/img/3b7d5965d9372f3185e778c20596d3dc.jpg')
INSERT [dbo].[tblWishList] ([WishListID], [UserID], [ProductID], [ProductName], [ProductPrice], [ProductImageURL]) VALUES (17, 16, 8, N'Jean Paul Gaultier Scandal EDP 90ML', 192, N'/img/_5_ysl-removebg-preview.png')
INSERT [dbo].[tblWishList] ([WishListID], [UserID], [ProductID], [ProductName], [ProductPrice], [ProductImageURL]) VALUES (18, 16, 10, N'Gucci Flora Gorgeous Magnolia Eau de Parfum 100ML', 168, N'/img/Cherry-removebg-preview.png')
SET IDENTITY_INSERT [dbo].[tblWishList] OFF
GO
ALTER TABLE [dbo].[tblAddress]  WITH CHECK ADD  CONSTRAINT [FK_tblAddress_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblAddress] CHECK CONSTRAINT [FK_tblAddress_tblUser]
GO
ALTER TABLE [dbo].[tblCart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblCart]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD FOREIGN KEY([StatusID])
REFERENCES [dbo].[tblOrderStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrder] ([OrderID])
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[tblBrand] ([BrandID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[tblRateCart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblRateCart]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblRating]  WITH CHECK ADD  CONSTRAINT [FK_tblRating_tblProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblRating] CHECK CONSTRAINT [FK_tblRating_tblProduct]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRole] ([RoleID])
GO
ALTER TABLE [dbo].[tblWishList]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblWishList]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
