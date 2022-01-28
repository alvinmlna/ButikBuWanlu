USE [ButikBuWanlu]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/29/2022 1:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DateRegister] [datetime] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 1/29/2022 1:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 1/29/2022 1:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 1/29/2022 1:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [int] NOT NULL,
	[DateTransaction] [datetime] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister]) VALUES (1, N'Alvin Maulana', CAST(N'2022-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister]) VALUES (2, N'Bambang Pamungkas', CAST(N'2021-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister]) VALUES (3, N'Samsudin', CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister]) VALUES (4, N'Nikita Willy', CAST(N'2021-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister]) VALUES (5, N'Novrita Inka', CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister]) VALUES (6, N'Willy Wonka', CAST(N'2021-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister]) VALUES (7, N'Suharto', CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (1, N'Kemeja A', 120000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (2, N'Kemeja B', 150000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (3, N'Kemeja C', 90000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (4, N'Baju Koko A', 100000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (5, N'Baju Koko B', 130000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (6, N'Baju Koko C', 70000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (7, N'Kaos A', 60000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (8, N'Kaos B', 90000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (9, N'Kaos C', 50000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (10, N'Dress A', 150000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (11, N'Dress B', 190000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (12, N'Dress C', 250000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (13, N'Sweater A', 160000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (14, N'Sweater B', 250000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (15, N'Sweater C', 235000)
GO
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[Stores] ON 
GO
INSERT [dbo].[Stores] ([Id], [Name], [City]) VALUES (1, N'Cabang 1', N'Medan')
GO
INSERT [dbo].[Stores] ([Id], [Name], [City]) VALUES (2, N'Cabang 2', N'Jakarta')
GO
SET IDENTITY_INSERT [dbo].[Stores] OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON 
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (4, 4, 13, 1, 1, 160000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (5, 6, 10, 2, 1, 150000, CAST(N'2020-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (6, 6, 9, 1, 4, 200000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (7, 1, 6, 2, 1, 70000, CAST(N'2020-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (8, 6, 3, 2, 4, 360000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (9, 2, 14, 1, 1, 250000, CAST(N'2021-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (10, 2, 8, 1, 2, 180000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (11, 4, 4, 1, 3, 300000, CAST(N'2021-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (12, 5, 14, 2, 4, 1000000, CAST(N'2021-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (13, 4, 9, 2, 4, 200000, CAST(N'2020-04-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (14, 6, 2, 1, 3, 450000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (15, 1, 1, 1, 2, 240000, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (16, 3, 10, 2, 2, 300000, CAST(N'2020-12-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (17, 7, 8, 2, 1, 90000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (18, 3, 6, 2, 2, 140000, CAST(N'2020-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (19, 4, 9, 1, 1, 50000, CAST(N'2020-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (20, 5, 1, 1, 1, 120000, CAST(N'2022-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (21, 1, 6, 2, 3, 210000, CAST(N'2021-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (22, 6, 15, 1, 1, 235000, CAST(N'2020-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (23, 3, 2, 2, 3, 450000, CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (24, 7, 11, 1, 2, 380000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (25, 5, 15, 2, 2, 470000, CAST(N'2021-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (26, 6, 3, 2, 3, 270000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (27, 5, 6, 2, 3, 210000, CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (28, 5, 1, 1, 1, 120000, CAST(N'2020-12-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (29, 7, 14, 1, 2, 500000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (30, 2, 5, 1, 2, 260000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (31, 1, 8, 2, 1, 90000, CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (32, 7, 3, 1, 2, 180000, CAST(N'2021-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (33, 2, 3, 2, 2, 180000, CAST(N'2020-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (34, 4, 4, 2, 3, 300000, CAST(N'2020-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (35, 1, 14, 2, 1, 250000, CAST(N'2020-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (36, 1, 6, 1, 1, 70000, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (37, 3, 9, 1, 4, 200000, CAST(N'2022-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (38, 2, 11, 1, 2, 380000, CAST(N'2021-02-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (39, 7, 7, 1, 1, 60000, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (40, 3, 11, 1, 3, 570000, CAST(N'2020-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (41, 6, 13, 1, 4, 640000, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (42, 6, 13, 1, 4, 640000, CAST(N'2020-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (43, 6, 2, 2, 3, 450000, CAST(N'2020-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (44, 1, 11, 2, 2, 380000, CAST(N'2021-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (45, 5, 1, 2, 2, 240000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (46, 1, 7, 2, 4, 240000, CAST(N'2021-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (47, 6, 7, 2, 4, 240000, CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (48, 3, 2, 2, 2, 300000, CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (49, 7, 9, 1, 2, 100000, CAST(N'2020-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (50, 5, 15, 2, 2, 470000, CAST(N'2020-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (51, 1, 13, 1, 4, 640000, CAST(N'2020-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (52, 2, 11, 1, 1, 190000, CAST(N'2020-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (53, 4, 7, 1, 2, 120000, CAST(N'2021-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (54, 3, 15, 2, 2, 470000, CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (55, 4, 9, 1, 3, 150000, CAST(N'2020-06-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (56, 3, 12, 1, 3, 750000, CAST(N'2020-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (57, 6, 4, 2, 4, 400000, CAST(N'2020-06-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (58, 4, 13, 1, 1, 160000, CAST(N'2020-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (59, 7, 11, 1, 1, 190000, CAST(N'2021-04-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (60, 1, 15, 2, 3, 705000, CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (61, 2, 13, 2, 2, 320000, CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (62, 6, 4, 2, 3, 300000, CAST(N'2020-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (63, 4, 13, 2, 2, 320000, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (64, 4, 13, 2, 4, 640000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (65, 6, 15, 2, 4, 940000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (66, 4, 9, 1, 3, 150000, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (67, 4, 7, 1, 2, 120000, CAST(N'2020-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (68, 2, 10, 2, 1, 150000, CAST(N'2020-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (69, 2, 4, 1, 4, 400000, CAST(N'2020-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (70, 3, 12, 2, 3, 750000, CAST(N'2020-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (71, 4, 12, 2, 3, 750000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (72, 7, 9, 1, 4, 200000, CAST(N'2021-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (73, 7, 9, 1, 4, 200000, CAST(N'2020-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (74, 1, 12, 2, 3, 750000, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (75, 6, 14, 2, 1, 250000, CAST(N'2021-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (76, 2, 9, 1, 4, 200000, CAST(N'2020-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (77, 2, 2, 2, 4, 600000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (78, 2, 5, 1, 2, 260000, CAST(N'2020-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (79, 7, 12, 1, 4, 1000000, CAST(N'2021-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (80, 4, 13, 2, 2, 320000, CAST(N'2020-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (81, 7, 7, 1, 2, 120000, CAST(N'2021-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (82, 2, 15, 2, 3, 705000, CAST(N'2021-05-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (83, 6, 14, 1, 1, 250000, CAST(N'2020-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (84, 5, 4, 2, 2, 200000, CAST(N'2020-04-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (85, 6, 1, 1, 1, 120000, CAST(N'2021-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (86, 4, 12, 2, 1, 250000, CAST(N'2020-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (87, 5, 1, 1, 4, 480000, CAST(N'2020-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (88, 7, 9, 2, 3, 150000, CAST(N'2020-03-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (89, 1, 2, 1, 2, 300000, CAST(N'2021-10-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (90, 4, 2, 2, 2, 300000, CAST(N'2021-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (91, 4, 11, 2, 1, 190000, CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (92, 5, 5, 1, 2, 260000, CAST(N'2020-03-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (93, 1, 8, 1, 1, 90000, CAST(N'2020-05-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (94, 6, 10, 1, 1, 150000, CAST(N'2020-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (95, 5, 1, 2, 2, 240000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (96, 2, 12, 1, 2, 500000, CAST(N'2021-03-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (97, 3, 9, 2, 2, 100000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (98, 4, 3, 1, 3, 270000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (99, 2, 9, 2, 4, 200000, CAST(N'2020-12-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (100, 2, 13, 2, 3, 480000, CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (101, 1, 6, 1, 2, 140000, CAST(N'2020-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (102, 1, 7, 1, 3, 180000, CAST(N'2021-11-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (103, 1, 1, 2, 3, 360000, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (104, 1, 9, 2, 2, 100000, CAST(N'2020-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (105, 1, 14, 1, 4, 1000000, CAST(N'2021-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (106, 1, 11, 2, 3, 570000, CAST(N'2020-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (107, 1, 14, 2, 2, 500000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (108, 6, 6, 1, 3, 210000, CAST(N'2020-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (109, 5, 3, 1, 2, 180000, CAST(N'2020-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (110, 5, 9, 1, 2, 100000, CAST(N'2020-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (111, 4, 6, 1, 3, 210000, CAST(N'2020-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (112, 5, 9, 1, 3, 150000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (113, 5, 7, 2, 4, 240000, CAST(N'2020-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (114, 1, 11, 2, 4, 760000, CAST(N'2020-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (115, 2, 10, 2, 4, 600000, CAST(N'2021-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (116, 1, 11, 1, 2, 380000, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (117, 5, 9, 2, 2, 100000, CAST(N'2021-04-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (118, 1, 6, 2, 3, 210000, CAST(N'2020-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (119, 5, 1, 2, 4, 480000, CAST(N'2020-02-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (120, 7, 1, 2, 3, 360000, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (121, 5, 8, 1, 3, 270000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (122, 3, 15, 1, 3, 705000, CAST(N'2020-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (123, 7, 11, 1, 4, 760000, CAST(N'2020-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (124, 3, 10, 1, 1, 150000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (125, 6, 11, 2, 4, 760000, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (126, 7, 4, 2, 4, 400000, CAST(N'2020-05-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (127, 2, 1, 1, 2, 240000, CAST(N'2021-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (128, 1, 2, 2, 2, 300000, CAST(N'2020-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (129, 3, 14, 1, 1, 250000, CAST(N'2020-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (130, 5, 9, 2, 2, 100000, CAST(N'2020-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (131, 5, 12, 2, 2, 500000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (132, 2, 12, 1, 1, 250000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (133, 1, 10, 2, 3, 450000, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (134, 5, 13, 1, 3, 480000, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (135, 7, 7, 2, 2, 120000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (136, 3, 5, 2, 4, 520000, CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (137, 1, 5, 2, 2, 260000, CAST(N'2022-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (138, 6, 13, 1, 4, 640000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (139, 1, 1, 1, 2, 240000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (140, 4, 5, 2, 1, 130000, CAST(N'2021-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (141, 5, 10, 2, 1, 150000, CAST(N'2020-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (142, 7, 1, 1, 3, 360000, CAST(N'2020-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (143, 1, 2, 2, 3, 450000, CAST(N'2022-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (144, 1, 11, 1, 2, 380000, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (145, 6, 2, 1, 1, 150000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (146, 4, 5, 1, 4, 520000, CAST(N'2020-05-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (147, 1, 10, 1, 2, 300000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (148, 5, 12, 1, 4, 1000000, CAST(N'2020-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (149, 1, 3, 1, 2, 180000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (150, 7, 13, 2, 1, 160000, CAST(N'2021-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (151, 5, 2, 2, 4, 600000, CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (152, 2, 12, 1, 3, 750000, CAST(N'2021-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (153, 7, 3, 2, 4, 360000, CAST(N'2020-05-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (154, 3, 13, 2, 1, 160000, CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (155, 5, 10, 2, 3, 450000, CAST(N'2021-11-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (156, 3, 12, 2, 3, 750000, CAST(N'2020-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (157, 2, 4, 1, 1, 100000, CAST(N'2020-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (158, 2, 8, 2, 3, 270000, CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (159, 6, 3, 1, 2, 180000, CAST(N'2021-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (160, 3, 3, 2, 4, 360000, CAST(N'2021-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (161, 4, 4, 2, 1, 100000, CAST(N'2020-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (162, 4, 15, 1, 2, 470000, CAST(N'2020-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (163, 2, 9, 2, 4, 200000, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (164, 4, 10, 1, 1, 150000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (165, 4, 3, 1, 2, 180000, CAST(N'2020-07-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (166, 3, 11, 1, 1, 190000, CAST(N'2021-10-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (167, 5, 7, 1, 1, 60000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (168, 5, 15, 1, 4, 940000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (169, 6, 2, 1, 3, 450000, CAST(N'2020-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (170, 5, 8, 2, 3, 270000, CAST(N'2020-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (171, 6, 9, 2, 2, 100000, CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (172, 4, 13, 2, 2, 320000, CAST(N'2020-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (173, 2, 13, 1, 2, 320000, CAST(N'2020-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (174, 3, 15, 2, 1, 235000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (175, 5, 4, 2, 4, 400000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (176, 3, 15, 1, 2, 470000, CAST(N'2021-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (177, 5, 13, 2, 3, 480000, CAST(N'2020-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (178, 4, 12, 1, 2, 500000, CAST(N'2021-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (179, 3, 6, 1, 4, 280000, CAST(N'2020-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (180, 7, 12, 1, 2, 500000, CAST(N'2021-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (181, 4, 11, 2, 1, 190000, CAST(N'2021-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (182, 7, 8, 2, 2, 180000, CAST(N'2020-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (183, 3, 10, 1, 2, 300000, CAST(N'2020-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (184, 7, 10, 2, 1, 150000, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (185, 5, 6, 2, 1, 70000, CAST(N'2020-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (186, 5, 11, 1, 4, 760000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (187, 7, 6, 1, 3, 210000, CAST(N'2020-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (188, 5, 1, 1, 1, 120000, CAST(N'2020-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (189, 4, 10, 1, 4, 600000, CAST(N'2020-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (190, 6, 1, 1, 4, 480000, CAST(N'2020-10-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (191, 6, 6, 1, 2, 140000, CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (192, 5, 9, 2, 4, 200000, CAST(N'2020-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (193, 5, 8, 1, 1, 90000, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (194, 3, 1, 1, 4, 480000, CAST(N'2020-06-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (195, 3, 7, 1, 2, 120000, CAST(N'2020-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (196, 7, 7, 2, 1, 60000, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (197, 6, 8, 1, 1, 90000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (198, 2, 15, 2, 1, 235000, CAST(N'2020-07-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (199, 7, 11, 1, 1, 190000, CAST(N'2020-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (200, 1, 1, 1, 3, 360000, CAST(N'2021-05-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (201, 2, 5, 1, 1, 130000, CAST(N'2020-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (202, 5, 11, 1, 2, 380000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (203, 3, 5, 1, 1, 130000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (204, 2, 13, 2, 4, 640000, CAST(N'2020-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (205, 7, 6, 2, 2, 140000, CAST(N'2021-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (206, 4, 2, 2, 4, 600000, CAST(N'2021-12-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (207, 3, 8, 1, 4, 360000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (208, 5, 2, 2, 1, 150000, CAST(N'2020-03-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (209, 5, 4, 2, 4, 400000, CAST(N'2022-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (210, 2, 9, 1, 1, 50000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (211, 4, 12, 2, 1, 250000, CAST(N'2021-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (212, 3, 8, 2, 4, 360000, CAST(N'2020-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (213, 5, 5, 2, 1, 130000, CAST(N'2020-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (214, 2, 1, 2, 3, 360000, CAST(N'2020-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (215, 4, 14, 2, 3, 750000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (216, 4, 4, 1, 2, 200000, CAST(N'2020-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (217, 1, 14, 1, 2, 500000, CAST(N'2021-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (218, 2, 4, 1, 4, 400000, CAST(N'2020-05-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (219, 6, 14, 2, 2, 500000, CAST(N'2021-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (220, 5, 15, 2, 2, 470000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (221, 5, 6, 2, 4, 280000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (222, 4, 6, 1, 4, 280000, CAST(N'2020-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (223, 4, 8, 1, 1, 90000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (224, 3, 3, 2, 4, 360000, CAST(N'2020-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (225, 2, 4, 1, 4, 400000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (226, 3, 8, 1, 1, 90000, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (227, 3, 5, 2, 2, 260000, CAST(N'2020-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (228, 2, 5, 2, 4, 520000, CAST(N'2021-03-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (229, 7, 13, 1, 1, 160000, CAST(N'2020-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (230, 7, 6, 1, 3, 210000, CAST(N'2020-10-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (231, 2, 9, 2, 1, 50000, CAST(N'2020-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (232, 2, 4, 2, 2, 200000, CAST(N'2021-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (233, 2, 12, 2, 3, 750000, CAST(N'2020-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (234, 5, 12, 2, 3, 750000, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (235, 5, 2, 2, 4, 600000, CAST(N'2021-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (236, 5, 14, 2, 3, 750000, CAST(N'2021-10-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (237, 7, 2, 2, 3, 450000, CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (238, 7, 5, 1, 2, 260000, CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (239, 4, 5, 2, 3, 390000, CAST(N'2020-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (240, 6, 9, 2, 1, 50000, CAST(N'2022-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (241, 6, 6, 1, 2, 140000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (242, 7, 5, 2, 3, 390000, CAST(N'2020-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (243, 5, 11, 2, 4, 760000, CAST(N'2021-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (244, 2, 15, 2, 3, 705000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (245, 2, 3, 2, 2, 180000, CAST(N'2020-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (246, 1, 5, 2, 1, 130000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (247, 5, 4, 2, 3, 300000, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (248, 7, 15, 1, 3, 705000, CAST(N'2021-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (249, 2, 7, 1, 1, 60000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (250, 3, 6, 2, 2, 140000, CAST(N'2020-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (251, 6, 1, 2, 2, 240000, CAST(N'2020-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (252, 6, 14, 2, 4, 1000000, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (253, 7, 13, 1, 1, 160000, CAST(N'2020-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (254, 6, 10, 1, 1, 150000, CAST(N'2021-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (255, 4, 2, 2, 1, 150000, CAST(N'2020-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (256, 5, 6, 1, 1, 70000, CAST(N'2021-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (257, 2, 10, 2, 3, 450000, CAST(N'2020-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (258, 5, 4, 1, 4, 400000, CAST(N'2021-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (259, 4, 3, 1, 4, 360000, CAST(N'2022-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (260, 6, 3, 2, 2, 180000, CAST(N'2020-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (261, 3, 10, 2, 3, 450000, CAST(N'2020-12-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (262, 4, 6, 1, 1, 70000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (263, 5, 1, 1, 4, 480000, CAST(N'2020-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (264, 6, 15, 1, 4, 940000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (265, 7, 3, 1, 3, 270000, CAST(N'2020-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (266, 2, 7, 1, 1, 60000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (267, 4, 1, 2, 2, 240000, CAST(N'2020-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (268, 3, 15, 2, 1, 235000, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (269, 5, 11, 2, 3, 570000, CAST(N'2020-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (270, 3, 6, 2, 2, 140000, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (271, 2, 4, 2, 1, 100000, CAST(N'2020-05-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (272, 3, 12, 2, 3, 750000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (273, 5, 12, 1, 2, 500000, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (274, 1, 6, 1, 4, 280000, CAST(N'2020-07-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (275, 2, 6, 2, 3, 210000, CAST(N'2021-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (276, 7, 3, 1, 4, 360000, CAST(N'2021-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (277, 1, 11, 2, 1, 190000, CAST(N'2020-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (278, 2, 14, 1, 1, 250000, CAST(N'2021-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (279, 2, 1, 1, 3, 360000, CAST(N'2020-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (280, 5, 13, 1, 2, 320000, CAST(N'2021-10-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (281, 4, 14, 2, 2, 500000, CAST(N'2021-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (282, 7, 4, 2, 3, 300000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (283, 2, 14, 2, 2, 500000, CAST(N'2021-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (284, 7, 1, 1, 3, 360000, CAST(N'2020-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (285, 7, 7, 1, 2, 120000, CAST(N'2021-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (286, 4, 6, 1, 4, 280000, CAST(N'2020-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (287, 6, 5, 2, 3, 390000, CAST(N'2020-11-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (288, 2, 4, 1, 2, 200000, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (289, 6, 4, 1, 2, 200000, CAST(N'2020-08-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (290, 3, 5, 2, 1, 130000, CAST(N'2021-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (291, 4, 12, 2, 1, 250000, CAST(N'2020-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (292, 2, 14, 2, 2, 500000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (293, 1, 3, 1, 3, 270000, CAST(N'2021-03-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (294, 2, 11, 1, 3, 570000, CAST(N'2021-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (295, 5, 12, 1, 1, 250000, CAST(N'2021-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (296, 4, 5, 1, 1, 130000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (297, 2, 13, 1, 2, 320000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (298, 7, 9, 2, 2, 100000, CAST(N'2020-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (299, 5, 3, 1, 3, 270000, CAST(N'2021-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (300, 3, 8, 2, 1, 90000, CAST(N'2020-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (301, 4, 6, 2, 4, 280000, CAST(N'2020-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (302, 7, 6, 2, 4, 280000, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (303, 6, 1, 2, 2, 240000, CAST(N'2020-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (304, 6, 1, 1, 3, 360000, CAST(N'2020-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (305, 7, 12, 2, 3, 750000, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (306, 3, 9, 2, 3, 150000, CAST(N'2020-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (307, 3, 8, 1, 3, 270000, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (308, 3, 4, 2, 3, 300000, CAST(N'2021-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (309, 1, 11, 2, 4, 760000, CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (310, 4, 7, 2, 1, 60000, CAST(N'2020-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (311, 1, 1, 1, 4, 480000, CAST(N'2020-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (312, 1, 8, 2, 1, 90000, CAST(N'2020-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (313, 6, 13, 1, 2, 320000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (314, 7, 12, 2, 4, 1000000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (315, 7, 11, 2, 1, 190000, CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (316, 7, 4, 2, 1, 100000, CAST(N'2022-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (317, 1, 2, 1, 1, 150000, CAST(N'2020-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (318, 1, 15, 2, 4, 940000, CAST(N'2022-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (319, 4, 4, 1, 4, 400000, CAST(N'2021-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (320, 2, 10, 1, 3, 450000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (321, 1, 12, 2, 1, 250000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (322, 2, 12, 2, 1, 250000, CAST(N'2020-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (323, 4, 14, 2, 4, 1000000, CAST(N'2020-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (324, 3, 2, 2, 3, 450000, CAST(N'2020-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (325, 1, 4, 1, 4, 400000, CAST(N'2021-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (326, 1, 1, 1, 3, 360000, CAST(N'2021-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (327, 1, 12, 1, 2, 500000, CAST(N'2021-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (328, 5, 2, 2, 2, 300000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (329, 6, 11, 2, 2, 380000, CAST(N'2020-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (330, 3, 4, 1, 1, 100000, CAST(N'2020-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (331, 2, 5, 1, 3, 390000, CAST(N'2021-07-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (332, 2, 1, 2, 4, 480000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (333, 1, 14, 1, 1, 250000, CAST(N'2020-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (334, 7, 7, 2, 3, 180000, CAST(N'2020-10-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (335, 1, 10, 2, 2, 300000, CAST(N'2021-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (336, 3, 10, 2, 3, 450000, CAST(N'2020-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (337, 3, 4, 1, 3, 300000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (338, 3, 14, 2, 2, 500000, CAST(N'2020-09-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (339, 3, 5, 1, 4, 520000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (340, 4, 10, 1, 1, 150000, CAST(N'2020-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (341, 2, 10, 1, 4, 600000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (342, 2, 14, 1, 2, 500000, CAST(N'2021-03-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (343, 2, 13, 1, 2, 320000, CAST(N'2020-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (344, 4, 6, 1, 1, 70000, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (345, 2, 5, 1, 1, 130000, CAST(N'2020-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (346, 6, 7, 1, 1, 60000, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (347, 3, 10, 1, 2, 300000, CAST(N'2021-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (348, 3, 7, 2, 2, 120000, CAST(N'2020-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (349, 5, 1, 2, 2, 240000, CAST(N'2020-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (350, 2, 15, 1, 1, 235000, CAST(N'2020-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (351, 7, 2, 2, 4, 600000, CAST(N'2021-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (352, 1, 15, 2, 3, 705000, CAST(N'2021-12-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (353, 6, 7, 1, 4, 240000, CAST(N'2020-07-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (354, 2, 13, 1, 3, 480000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (355, 2, 1, 1, 3, 360000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (356, 5, 1, 1, 2, 240000, CAST(N'2021-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (357, 5, 2, 2, 4, 600000, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (358, 1, 5, 1, 3, 390000, CAST(N'2020-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (359, 6, 12, 1, 4, 1000000, CAST(N'2020-12-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (360, 2, 7, 1, 3, 180000, CAST(N'2020-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (361, 1, 2, 2, 1, 150000, CAST(N'2020-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (362, 4, 15, 1, 1, 235000, CAST(N'2021-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (363, 6, 2, 2, 2, 300000, CAST(N'2020-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (364, 6, 13, 2, 3, 480000, CAST(N'2020-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (365, 1, 8, 1, 2, 180000, CAST(N'2020-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (366, 4, 14, 2, 3, 750000, CAST(N'2020-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (367, 7, 6, 1, 4, 280000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (368, 5, 8, 1, 1, 90000, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (369, 5, 11, 1, 1, 190000, CAST(N'2021-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (370, 1, 5, 2, 2, 260000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (371, 5, 7, 2, 3, 180000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (372, 5, 1, 2, 3, 360000, CAST(N'2020-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (373, 2, 9, 1, 2, 100000, CAST(N'2021-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (374, 5, 5, 2, 1, 130000, CAST(N'2020-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (375, 2, 4, 2, 4, 400000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (376, 2, 7, 1, 3, 180000, CAST(N'2020-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (377, 7, 2, 2, 2, 300000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (378, 6, 15, 1, 4, 940000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (379, 7, 7, 2, 4, 240000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (380, 2, 2, 1, 3, 450000, CAST(N'2020-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (381, 7, 10, 1, 1, 150000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (382, 1, 13, 2, 1, 160000, CAST(N'2020-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (383, 7, 11, 2, 4, 760000, CAST(N'2021-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (384, 3, 15, 2, 3, 705000, CAST(N'2020-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (385, 4, 8, 1, 4, 360000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (386, 6, 13, 1, 4, 640000, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (387, 6, 10, 2, 1, 150000, CAST(N'2021-03-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (388, 4, 11, 1, 2, 380000, CAST(N'2020-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (389, 1, 8, 2, 3, 270000, CAST(N'2020-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (390, 3, 5, 1, 2, 260000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (391, 4, 13, 1, 4, 640000, CAST(N'2020-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (392, 4, 5, 2, 2, 260000, CAST(N'2020-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (393, 5, 10, 1, 1, 150000, CAST(N'2020-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (394, 3, 9, 2, 3, 150000, CAST(N'2020-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (395, 3, 4, 1, 2, 200000, CAST(N'2021-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (396, 7, 11, 2, 3, 570000, CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (397, 5, 10, 1, 3, 450000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (398, 1, 9, 2, 2, 100000, CAST(N'2020-12-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (399, 5, 8, 2, 2, 180000, CAST(N'2020-12-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (400, 2, 6, 1, 2, 140000, CAST(N'2021-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (401, 1, 8, 1, 2, 180000, CAST(N'2021-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (402, 3, 14, 2, 4, 1000000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (403, 1, 10, 1, 4, 600000, CAST(N'2020-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (404, 4, 12, 1, 2, 500000, CAST(N'2020-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (405, 2, 10, 1, 4, 600000, CAST(N'2021-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (406, 2, 7, 2, 3, 180000, CAST(N'2020-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (407, 4, 10, 1, 2, 300000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (408, 7, 6, 1, 4, 280000, CAST(N'2021-11-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (409, 6, 10, 2, 2, 300000, CAST(N'2021-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (410, 1, 1, 2, 4, 480000, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (411, 3, 2, 1, 2, 300000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (412, 3, 1, 2, 1, 120000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (413, 7, 2, 2, 3, 450000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (414, 3, 10, 1, 3, 450000, CAST(N'2020-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (415, 3, 3, 1, 1, 90000, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (416, 6, 9, 1, 2, 100000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (417, 7, 3, 1, 3, 270000, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (418, 6, 10, 1, 1, 150000, CAST(N'2021-12-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (419, 6, 13, 2, 4, 640000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (420, 7, 11, 2, 1, 190000, CAST(N'2020-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (421, 4, 9, 2, 2, 100000, CAST(N'2022-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (422, 6, 14, 2, 2, 500000, CAST(N'2020-10-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (423, 7, 13, 2, 4, 640000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (424, 5, 2, 2, 4, 600000, CAST(N'2020-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (425, 4, 3, 1, 1, 90000, CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (426, 6, 8, 1, 1, 90000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (427, 5, 14, 1, 3, 750000, CAST(N'2020-11-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (428, 4, 6, 1, 4, 280000, CAST(N'2021-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (429, 5, 8, 1, 1, 90000, CAST(N'2021-12-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (430, 3, 4, 1, 1, 100000, CAST(N'2020-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (431, 6, 12, 1, 3, 750000, CAST(N'2020-05-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (432, 1, 7, 2, 1, 60000, CAST(N'2020-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (433, 6, 11, 2, 4, 760000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (434, 2, 6, 1, 3, 210000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (435, 4, 6, 1, 1, 70000, CAST(N'2020-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (436, 7, 13, 2, 4, 640000, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (437, 6, 15, 2, 2, 470000, CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (438, 3, 7, 2, 1, 60000, CAST(N'2020-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (439, 7, 2, 2, 3, 450000, CAST(N'2020-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (440, 7, 8, 2, 2, 180000, CAST(N'2021-04-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (441, 7, 4, 1, 4, 400000, CAST(N'2020-04-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (442, 5, 12, 1, 4, 1000000, CAST(N'2021-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (443, 6, 8, 2, 1, 90000, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (444, 6, 14, 1, 1, 250000, CAST(N'2021-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (445, 4, 6, 1, 4, 280000, CAST(N'2020-03-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (446, 6, 4, 2, 3, 300000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (447, 6, 12, 2, 2, 500000, CAST(N'2020-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (448, 3, 12, 1, 4, 1000000, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (449, 3, 2, 2, 1, 150000, CAST(N'2020-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (450, 5, 8, 1, 3, 270000, CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (451, 2, 13, 1, 2, 320000, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (452, 1, 12, 1, 3, 750000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (453, 5, 13, 1, 1, 160000, CAST(N'2021-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (454, 2, 3, 1, 4, 360000, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (455, 4, 7, 1, 3, 180000, CAST(N'2022-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (456, 1, 10, 1, 2, 300000, CAST(N'2020-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (457, 5, 13, 2, 4, 640000, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (458, 4, 14, 1, 2, 500000, CAST(N'2020-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (459, 2, 7, 2, 2, 120000, CAST(N'2020-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (460, 1, 5, 2, 4, 520000, CAST(N'2021-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (461, 2, 11, 1, 2, 380000, CAST(N'2021-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (462, 5, 1, 1, 1, 120000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (463, 5, 8, 2, 1, 90000, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (464, 1, 12, 1, 4, 1000000, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (465, 2, 3, 2, 1, 90000, CAST(N'2020-03-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (466, 4, 3, 2, 3, 270000, CAST(N'2020-08-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (467, 2, 11, 2, 4, 760000, CAST(N'2020-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (468, 3, 2, 1, 2, 300000, CAST(N'2020-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (469, 2, 8, 2, 2, 180000, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (470, 1, 6, 2, 1, 70000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (471, 6, 10, 2, 3, 450000, CAST(N'2020-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (472, 2, 15, 1, 2, 470000, CAST(N'2020-08-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (473, 4, 12, 2, 2, 500000, CAST(N'2022-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (474, 3, 7, 2, 3, 180000, CAST(N'2020-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (475, 6, 14, 1, 3, 750000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (476, 1, 3, 2, 3, 270000, CAST(N'2020-10-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (477, 2, 12, 1, 2, 500000, CAST(N'2021-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (478, 6, 12, 2, 3, 750000, CAST(N'2020-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (479, 6, 10, 2, 3, 450000, CAST(N'2020-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (480, 4, 4, 1, 4, 400000, CAST(N'2021-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (481, 5, 4, 2, 4, 400000, CAST(N'2022-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (482, 1, 2, 1, 2, 300000, CAST(N'2020-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (483, 4, 6, 1, 4, 280000, CAST(N'2021-06-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (484, 1, 5, 2, 1, 130000, CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (485, 2, 1, 1, 3, 360000, CAST(N'2020-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (486, 4, 1, 1, 3, 360000, CAST(N'2020-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (487, 1, 15, 2, 3, 705000, CAST(N'2020-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (488, 3, 13, 1, 3, 480000, CAST(N'2020-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (489, 4, 15, 2, 2, 470000, CAST(N'2020-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (490, 6, 2, 1, 4, 600000, CAST(N'2021-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (491, 1, 2, 1, 3, 450000, CAST(N'2020-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (492, 1, 13, 1, 1, 160000, CAST(N'2020-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (493, 2, 7, 2, 4, 240000, CAST(N'2021-08-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (494, 6, 12, 2, 3, 750000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (495, 2, 15, 2, 4, 940000, CAST(N'2020-04-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (496, 5, 8, 1, 2, 180000, CAST(N'2020-02-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (497, 2, 13, 2, 1, 160000, CAST(N'2020-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (498, 1, 14, 1, 4, 1000000, CAST(N'2020-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (499, 4, 6, 1, 2, 140000, CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (500, 4, 4, 2, 2, 200000, CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (501, 1, 10, 1, 2, 300000, CAST(N'2020-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (502, 2, 1, 1, 1, 120000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (503, 1, 5, 1, 3, 390000, CAST(N'2020-08-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (504, 2, 15, 1, 3, 705000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (505, 6, 7, 2, 1, 60000, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (506, 6, 3, 2, 4, 360000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (507, 5, 5, 2, 4, 520000, CAST(N'2020-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (508, 1, 9, 1, 2, 100000, CAST(N'2020-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (509, 3, 6, 2, 4, 280000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (510, 2, 5, 1, 4, 520000, CAST(N'2020-03-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (511, 3, 3, 1, 2, 180000, CAST(N'2020-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (512, 6, 2, 2, 4, 600000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (513, 6, 14, 2, 1, 250000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (514, 6, 13, 2, 3, 480000, CAST(N'2020-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (515, 2, 1, 2, 2, 240000, CAST(N'2021-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (516, 1, 6, 2, 2, 140000, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (517, 1, 2, 1, 2, 300000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (518, 7, 4, 1, 1, 100000, CAST(N'2020-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (519, 3, 4, 1, 4, 400000, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (520, 7, 3, 2, 3, 270000, CAST(N'2020-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (521, 1, 10, 2, 4, 600000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (522, 6, 6, 2, 1, 70000, CAST(N'2020-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (523, 6, 7, 1, 2, 120000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (524, 5, 12, 2, 1, 250000, CAST(N'2020-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (525, 3, 5, 2, 1, 130000, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (526, 1, 3, 2, 3, 270000, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (527, 5, 11, 2, 4, 760000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (528, 2, 2, 1, 3, 450000, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (529, 4, 13, 1, 4, 640000, CAST(N'2021-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (530, 3, 6, 1, 4, 280000, CAST(N'2020-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (531, 3, 6, 2, 2, 140000, CAST(N'2020-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (532, 6, 15, 1, 4, 940000, CAST(N'2021-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (533, 5, 7, 2, 3, 180000, CAST(N'2021-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (534, 3, 4, 1, 3, 300000, CAST(N'2020-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (535, 7, 1, 2, 3, 360000, CAST(N'2020-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (536, 4, 10, 1, 4, 600000, CAST(N'2022-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (537, 5, 13, 2, 4, 640000, CAST(N'2021-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (538, 6, 10, 1, 1, 150000, CAST(N'2020-03-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (539, 2, 5, 2, 4, 520000, CAST(N'2020-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (540, 6, 11, 1, 2, 380000, CAST(N'2020-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (541, 5, 13, 1, 1, 160000, CAST(N'2020-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (542, 1, 15, 1, 1, 235000, CAST(N'2022-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (543, 2, 12, 2, 2, 500000, CAST(N'2020-10-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (544, 1, 9, 1, 4, 200000, CAST(N'2020-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (545, 2, 6, 2, 1, 70000, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (546, 1, 11, 1, 4, 760000, CAST(N'2020-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (547, 6, 7, 2, 2, 120000, CAST(N'2020-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (548, 5, 10, 1, 2, 300000, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (549, 7, 11, 1, 2, 380000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (550, 5, 13, 1, 2, 320000, CAST(N'2020-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (551, 1, 15, 1, 4, 940000, CAST(N'2021-10-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (552, 3, 14, 2, 1, 250000, CAST(N'2020-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (553, 7, 10, 1, 1, 150000, CAST(N'2020-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (554, 4, 2, 1, 1, 150000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (555, 2, 2, 1, 4, 600000, CAST(N'2020-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (556, 5, 3, 1, 2, 180000, CAST(N'2020-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (557, 1, 7, 1, 2, 120000, CAST(N'2020-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (558, 5, 11, 2, 4, 760000, CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (559, 2, 7, 1, 2, 120000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (560, 7, 10, 2, 1, 150000, CAST(N'2020-03-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (561, 1, 12, 2, 4, 1000000, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (562, 3, 13, 2, 1, 160000, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (563, 2, 8, 2, 4, 360000, CAST(N'2020-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (564, 1, 11, 1, 1, 190000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (565, 2, 7, 2, 2, 120000, CAST(N'2020-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (566, 3, 9, 2, 4, 200000, CAST(N'2020-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (567, 4, 4, 2, 1, 100000, CAST(N'2020-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (568, 6, 14, 1, 2, 500000, CAST(N'2020-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (569, 2, 7, 1, 1, 60000, CAST(N'2020-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (570, 2, 1, 2, 4, 480000, CAST(N'2020-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (571, 7, 10, 1, 2, 300000, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (572, 3, 14, 2, 4, 1000000, CAST(N'2020-06-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (573, 7, 11, 1, 4, 760000, CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (574, 3, 2, 1, 1, 150000, CAST(N'2020-05-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (575, 6, 12, 2, 4, 1000000, CAST(N'2021-03-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (576, 6, 12, 2, 4, 1000000, CAST(N'2020-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (577, 5, 14, 1, 3, 750000, CAST(N'2020-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (578, 7, 3, 1, 3, 270000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (579, 3, 13, 1, 3, 480000, CAST(N'2020-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (580, 6, 5, 1, 2, 260000, CAST(N'2021-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (581, 5, 6, 2, 2, 0, CAST(N'2021-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (582, 2, 7, 1, 2, 0, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (583, 4, 4, 2, 2, 0, CAST(N'2021-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (584, 3, 9, 2, 3, 0, CAST(N'2021-10-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (585, 4, 11, 2, 3, 0, CAST(N'2021-05-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (586, 2, 13, 1, 3, 0, CAST(N'2020-03-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (587, 1, 5, 1, 1, 0, CAST(N'2020-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (588, 4, 14, 2, 2, 0, CAST(N'2020-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (589, 3, 10, 1, 2, 0, CAST(N'2020-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (590, 7, 8, 2, 4, 0, CAST(N'2021-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (591, 4, 10, 2, 1, 0, CAST(N'2020-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (592, 7, 14, 1, 3, 0, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (593, 1, 9, 2, 3, 0, CAST(N'2020-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (594, 6, 5, 2, 2, 0, CAST(N'2021-11-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (595, 5, 8, 2, 1, 0, CAST(N'2021-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (596, 4, 4, 1, 3, 0, CAST(N'2020-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (597, 5, 14, 1, 4, 0, CAST(N'2020-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (598, 6, 4, 1, 4, 0, CAST(N'2020-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (599, 3, 4, 1, 4, 0, CAST(N'2021-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (600, 4, 13, 1, 4, 0, CAST(N'2021-04-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (601, 3, 14, 1, 3, 0, CAST(N'2021-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (602, 5, 14, 2, 4, 0, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (603, 2, 11, 1, 1, 0, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (604, 4, 13, 1, 1, 0, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (605, 4, 7, 1, 4, 0, CAST(N'2021-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (606, 4, 9, 2, 1, 0, CAST(N'2020-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (607, 7, 9, 1, 3, 0, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (608, 2, 13, 2, 3, 0, CAST(N'2020-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (609, 7, 14, 1, 4, 0, CAST(N'2020-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (610, 2, 14, 1, 4, 0, CAST(N'2020-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (611, 1, 8, 1, 2, 0, CAST(N'2020-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (612, 7, 5, 1, 2, 0, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (613, 2, 12, 1, 1, 0, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (614, 3, 3, 2, 2, 0, CAST(N'2021-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (615, 6, 2, 2, 3, 0, CAST(N'2022-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (616, 1, 6, 1, 4, 0, CAST(N'2020-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (617, 5, 14, 2, 4, 0, CAST(N'2021-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (618, 1, 7, 1, 3, 0, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (619, 3, 15, 2, 2, 0, CAST(N'2020-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (620, 6, 3, 2, 1, 0, CAST(N'2021-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (621, 7, 4, 2, 4, 0, CAST(N'2020-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (622, 4, 9, 1, 4, 0, CAST(N'2021-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (623, 2, 6, 2, 2, 0, CAST(N'2021-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (624, 3, 10, 1, 3, 0, CAST(N'2021-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (625, 3, 7, 2, 2, 0, CAST(N'2020-12-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (626, 6, 11, 1, 3, 0, CAST(N'2021-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (627, 5, 3, 2, 1, 0, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (628, 1, 8, 2, 2, 0, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (629, 3, 8, 1, 1, 0, CAST(N'2021-03-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (630, 7, 6, 1, 1, 0, CAST(N'2020-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (631, 6, 4, 2, 4, 0, CAST(N'2020-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (632, 6, 13, 1, 3, 0, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (633, 4, 1, 1, 2, 0, CAST(N'2020-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (634, 2, 14, 1, 1, 0, CAST(N'2021-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (635, 4, 15, 2, 2, 0, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (636, 2, 13, 1, 3, 0, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (637, 6, 11, 1, 3, 0, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (638, 1, 9, 2, 1, 0, CAST(N'2020-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (639, 2, 12, 2, 2, 0, CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (640, 2, 11, 1, 1, 0, CAST(N'2020-12-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (641, 1, 8, 1, 2, 0, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (642, 2, 5, 2, 2, 0, CAST(N'2021-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (643, 2, 1, 1, 1, 0, CAST(N'2021-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (644, 3, 13, 2, 3, 0, CAST(N'2020-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (645, 2, 5, 1, 1, 0, CAST(N'2020-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (646, 6, 5, 2, 2, 0, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (647, 4, 5, 1, 3, 0, CAST(N'2020-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (648, 3, 9, 1, 2, 0, CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (649, 7, 15, 1, 2, 0, CAST(N'2020-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (650, 3, 12, 2, 4, 0, CAST(N'2021-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (651, 1, 10, 1, 2, 0, CAST(N'2020-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (652, 3, 9, 2, 4, 0, CAST(N'2020-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (653, 1, 3, 2, 3, 0, CAST(N'2020-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (654, 6, 5, 2, 4, 0, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (655, 6, 9, 1, 1, 0, CAST(N'2020-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (656, 5, 2, 1, 4, 0, CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (657, 4, 4, 1, 3, 0, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (658, 3, 13, 1, 4, 0, CAST(N'2020-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (659, 2, 12, 1, 3, 0, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (660, 7, 8, 1, 4, 0, CAST(N'2020-08-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (661, 1, 3, 1, 2, 0, CAST(N'2020-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (662, 6, 2, 2, 4, 0, CAST(N'2021-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (663, 2, 15, 1, 4, 0, CAST(N'2020-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (664, 2, 11, 2, 3, 0, CAST(N'2020-12-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (665, 5, 11, 2, 1, 0, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (666, 5, 4, 2, 3, 0, CAST(N'2020-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (667, 2, 1, 2, 1, 0, CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (668, 5, 9, 2, 4, 0, CAST(N'2020-04-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (669, 5, 3, 2, 3, 0, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (670, 2, 2, 1, 1, 0, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (671, 6, 10, 2, 1, 0, CAST(N'2020-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (672, 2, 10, 1, 1, 0, CAST(N'2021-08-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (673, 4, 6, 1, 4, 0, CAST(N'2020-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (674, 2, 6, 2, 4, 0, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (675, 1, 12, 2, 3, 0, CAST(N'2020-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (676, 5, 3, 1, 4, 0, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (677, 7, 7, 2, 1, 0, CAST(N'2021-04-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (678, 3, 1, 2, 1, 0, CAST(N'2021-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (679, 3, 8, 2, 3, 0, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (680, 1, 8, 1, 4, 0, CAST(N'2020-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (681, 1, 8, 2, 2, 0, CAST(N'2020-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (682, 1, 9, 1, 4, 0, CAST(N'2020-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (683, 7, 10, 1, 1, 0, CAST(N'2020-12-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (684, 6, 10, 1, 4, 0, CAST(N'2020-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (685, 5, 4, 1, 3, 0, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (686, 2, 10, 2, 2, 0, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (687, 1, 12, 2, 2, 0, CAST(N'2020-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (688, 3, 10, 1, 2, 0, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (689, 1, 15, 2, 3, 0, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (690, 1, 14, 1, 3, 0, CAST(N'2021-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (691, 7, 15, 2, 4, 0, CAST(N'2020-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (692, 7, 1, 1, 1, 0, CAST(N'2020-12-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (693, 5, 15, 2, 4, 0, CAST(N'2020-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (694, 3, 11, 1, 1, 0, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (695, 6, 2, 1, 1, 0, CAST(N'2020-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (696, 6, 2, 2, 1, 0, CAST(N'2020-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (697, 5, 12, 2, 2, 0, CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (698, 3, 9, 2, 2, 0, CAST(N'2020-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (699, 1, 11, 1, 2, 0, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (700, 3, 3, 2, 4, 0, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (701, 7, 11, 2, 2, 0, CAST(N'2020-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (702, 3, 4, 2, 1, 0, CAST(N'2020-07-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (703, 6, 4, 1, 1, 0, CAST(N'2021-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (704, 6, 9, 1, 3, 0, CAST(N'2020-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (705, 1, 7, 1, 3, 0, CAST(N'2020-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (706, 3, 10, 1, 2, 0, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (707, 1, 13, 2, 4, 0, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (708, 3, 10, 2, 4, 0, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (709, 1, 9, 2, 2, 0, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (710, 7, 8, 1, 2, 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (711, 3, 2, 2, 3, 0, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (712, 2, 7, 1, 2, 0, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (713, 6, 8, 2, 4, 0, CAST(N'2021-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (714, 1, 11, 2, 2, 0, CAST(N'2021-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (715, 2, 2, 1, 2, 0, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (716, 6, 7, 2, 2, 0, CAST(N'2021-08-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (717, 3, 5, 1, 2, 0, CAST(N'2020-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (718, 3, 3, 1, 1, 0, CAST(N'2021-05-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (719, 1, 6, 2, 2, 0, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (720, 4, 5, 2, 1, 0, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (721, 6, 2, 2, 1, 0, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (722, 2, 13, 2, 2, 0, CAST(N'2020-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (723, 1, 8, 2, 3, 0, CAST(N'2020-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (724, 3, 12, 1, 3, 0, CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (725, 5, 14, 1, 1, 0, CAST(N'2021-12-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (726, 6, 10, 2, 2, 0, CAST(N'2020-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (727, 6, 3, 2, 4, 0, CAST(N'2020-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (728, 4, 11, 1, 2, 0, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (729, 7, 12, 2, 4, 0, CAST(N'2021-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (730, 5, 4, 2, 4, 0, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (731, 3, 8, 2, 1, 0, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (732, 7, 7, 1, 1, 0, CAST(N'2020-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (733, 5, 2, 2, 4, 0, CAST(N'2020-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (734, 1, 14, 1, 3, 0, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (735, 6, 13, 2, 1, 0, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (736, 1, 11, 1, 2, 0, CAST(N'2020-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (737, 1, 14, 2, 3, 0, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (738, 3, 1, 1, 1, 0, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (739, 3, 11, 2, 3, 0, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (740, 5, 12, 1, 2, 0, CAST(N'2020-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (741, 6, 11, 2, 3, 0, CAST(N'2020-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (742, 2, 12, 1, 1, 0, CAST(N'2020-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (743, 2, 5, 1, 2, 0, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (744, 2, 6, 1, 4, 0, CAST(N'2022-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (745, 5, 8, 2, 1, 0, CAST(N'2020-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (746, 2, 11, 2, 1, 0, CAST(N'2020-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (747, 7, 2, 1, 1, 0, CAST(N'2021-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (748, 4, 4, 2, 4, 0, CAST(N'2020-10-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (749, 5, 2, 1, 2, 0, CAST(N'2020-10-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (750, 2, 10, 2, 1, 0, CAST(N'2020-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (751, 2, 4, 1, 1, 0, CAST(N'2022-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (752, 2, 8, 2, 1, 0, CAST(N'2020-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (753, 6, 15, 2, 4, 0, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (754, 1, 14, 2, 3, 0, CAST(N'2021-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (755, 4, 5, 1, 2, 0, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (756, 5, 12, 2, 3, 0, CAST(N'2020-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (757, 3, 11, 2, 3, 0, CAST(N'2020-03-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (758, 6, 3, 1, 2, 0, CAST(N'2021-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (759, 4, 4, 2, 2, 0, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (760, 6, 8, 2, 3, 0, CAST(N'2021-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (761, 2, 11, 1, 4, 0, CAST(N'2020-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (762, 6, 14, 2, 4, 0, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (763, 7, 2, 2, 4, 0, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (764, 6, 5, 1, 1, 0, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (765, 5, 7, 1, 1, 0, CAST(N'2021-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (766, 2, 10, 1, 1, 0, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (767, 1, 10, 1, 4, 0, CAST(N'2020-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (768, 4, 4, 1, 1, 0, CAST(N'2020-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (769, 5, 15, 2, 2, 0, CAST(N'2021-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (770, 4, 15, 1, 2, 0, CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (771, 4, 9, 2, 3, 0, CAST(N'2021-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (772, 5, 8, 2, 4, 0, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (773, 2, 4, 1, 4, 0, CAST(N'2021-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (774, 3, 1, 1, 1, 0, CAST(N'2020-07-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (775, 6, 13, 1, 2, 0, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (776, 4, 4, 2, 1, 0, CAST(N'2021-11-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (777, 1, 7, 2, 3, 0, CAST(N'2020-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (778, 5, 14, 1, 3, 0, CAST(N'2020-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (779, 2, 5, 2, 4, 0, CAST(N'2022-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (780, 4, 1, 2, 2, 0, CAST(N'2022-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (781, 2, 13, 2, 1, 0, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (782, 4, 6, 2, 2, 0, CAST(N'2021-08-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (783, 3, 11, 2, 4, 0, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (784, 7, 9, 1, 3, 0, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (785, 7, 8, 2, 4, 0, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (786, 7, 11, 2, 1, 0, CAST(N'2021-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (787, 6, 5, 2, 1, 0, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (788, 7, 8, 2, 1, 0, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (789, 3, 4, 1, 4, 0, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (790, 1, 12, 1, 3, 0, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (791, 3, 4, 2, 3, 0, CAST(N'2021-08-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (792, 1, 6, 2, 2, 0, CAST(N'2020-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (793, 2, 8, 1, 2, 0, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (794, 1, 5, 2, 2, 0, CAST(N'2020-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (795, 7, 6, 1, 1, 0, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (796, 5, 12, 1, 3, 0, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (797, 4, 2, 1, 2, 0, CAST(N'2020-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (798, 3, 12, 1, 3, 0, CAST(N'2020-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (799, 5, 9, 1, 1, 0, CAST(N'2020-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (800, 1, 4, 2, 4, 0, CAST(N'2020-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (801, 7, 13, 1, 1, 0, CAST(N'2021-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (802, 2, 7, 1, 1, 0, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (803, 2, 3, 1, 4, 0, CAST(N'2020-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (804, 6, 10, 1, 2, 0, CAST(N'2020-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (805, 6, 2, 2, 3, 0, CAST(N'2021-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (806, 2, 7, 1, 2, 0, CAST(N'2020-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (807, 6, 10, 2, 3, 0, CAST(N'2021-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (808, 4, 7, 1, 4, 0, CAST(N'2020-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (809, 3, 9, 1, 4, 0, CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (810, 2, 3, 1, 2, 0, CAST(N'2020-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (811, 4, 15, 2, 1, 0, CAST(N'2020-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (812, 5, 7, 2, 3, 0, CAST(N'2021-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (813, 3, 2, 1, 3, 0, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (814, 7, 3, 2, 3, 0, CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (815, 4, 14, 2, 1, 0, CAST(N'2020-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (816, 4, 10, 1, 4, 0, CAST(N'2020-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (817, 3, 10, 2, 2, 0, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (818, 4, 11, 1, 1, 0, CAST(N'2020-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (819, 4, 12, 1, 1, 0, CAST(N'2020-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (820, 5, 12, 1, 4, 0, CAST(N'2020-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (821, 5, 7, 2, 1, 0, CAST(N'2021-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (822, 7, 2, 2, 1, 0, CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (823, 3, 5, 1, 2, 0, CAST(N'2020-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (824, 7, 12, 2, 1, 0, CAST(N'2021-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (825, 5, 7, 1, 4, 0, CAST(N'2021-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (826, 1, 2, 1, 2, 0, CAST(N'2020-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (827, 2, 14, 2, 1, 0, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (828, 7, 7, 2, 4, 0, CAST(N'2020-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (829, 2, 10, 1, 2, 0, CAST(N'2020-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (830, 3, 7, 1, 2, 0, CAST(N'2020-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (831, 7, 12, 1, 1, 0, CAST(N'2021-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (832, 2, 2, 1, 3, 0, CAST(N'2022-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (833, 1, 3, 1, 1, 0, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (834, 2, 15, 1, 4, 0, CAST(N'2020-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (835, 7, 11, 1, 1, 0, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (836, 2, 1, 2, 3, 0, CAST(N'2020-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (837, 5, 13, 2, 4, 0, CAST(N'2020-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (838, 2, 4, 2, 2, 0, CAST(N'2020-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (839, 5, 3, 2, 1, 0, CAST(N'2020-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (840, 4, 4, 2, 1, 0, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (841, 7, 15, 2, 2, 0, CAST(N'2021-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (842, 5, 3, 1, 4, 0, CAST(N'2022-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (843, 1, 13, 1, 2, 0, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (844, 5, 12, 1, 3, 0, CAST(N'2020-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (845, 5, 1, 1, 2, 0, CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (846, 4, 6, 1, 4, 0, CAST(N'2020-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (847, 6, 11, 1, 2, 0, CAST(N'2020-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (848, 1, 14, 1, 1, 0, CAST(N'2021-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (849, 3, 4, 1, 4, 0, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (850, 6, 12, 2, 1, 0, CAST(N'2020-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (851, 4, 1, 1, 4, 0, CAST(N'2020-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (852, 6, 5, 2, 1, 0, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (853, 1, 6, 1, 2, 0, CAST(N'2022-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (854, 5, 11, 1, 2, 0, CAST(N'2020-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (855, 6, 11, 1, 3, 0, CAST(N'2020-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (856, 3, 10, 1, 4, 0, CAST(N'2021-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (857, 5, 8, 2, 3, 0, CAST(N'2020-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (858, 3, 4, 2, 2, 0, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (859, 3, 3, 1, 2, 0, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (860, 3, 14, 2, 2, 0, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (861, 2, 9, 2, 1, 0, CAST(N'2021-03-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (862, 7, 9, 2, 2, 0, CAST(N'2020-04-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (863, 3, 12, 1, 1, 0, CAST(N'2020-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (864, 1, 2, 2, 2, 0, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (865, 4, 7, 2, 2, 0, CAST(N'2020-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (866, 1, 12, 2, 3, 0, CAST(N'2020-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (867, 4, 12, 2, 1, 0, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (868, 6, 13, 2, 1, 0, CAST(N'2020-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (869, 2, 4, 2, 2, 0, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (870, 7, 4, 1, 4, 0, CAST(N'2020-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (871, 3, 12, 2, 4, 0, CAST(N'2021-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (872, 7, 12, 1, 4, 0, CAST(N'2020-06-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (873, 4, 5, 1, 4, 0, CAST(N'2021-05-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (874, 1, 10, 1, 1, 0, CAST(N'2020-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (875, 5, 2, 2, 4, 0, CAST(N'2021-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (876, 3, 1, 2, 4, 0, CAST(N'2020-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (877, 3, 9, 1, 2, 0, CAST(N'2020-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (878, 3, 3, 2, 4, 0, CAST(N'2020-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (879, 6, 5, 1, 1, 0, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (880, 1, 10, 1, 4, 0, CAST(N'2020-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (881, 5, 14, 2, 1, 0, CAST(N'2020-12-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (882, 3, 3, 1, 3, 0, CAST(N'2021-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (883, 6, 15, 2, 1, 0, CAST(N'2020-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (884, 7, 1, 1, 3, 0, CAST(N'2021-04-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (885, 4, 13, 2, 2, 0, CAST(N'2020-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (886, 3, 2, 1, 1, 0, CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (887, 1, 12, 2, 4, 0, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (888, 3, 10, 2, 1, 0, CAST(N'2021-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (889, 1, 3, 1, 1, 0, CAST(N'2020-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (890, 4, 1, 2, 4, 0, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (891, 5, 15, 2, 4, 0, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (892, 4, 7, 2, 3, 0, CAST(N'2021-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (893, 4, 10, 2, 4, 0, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (894, 4, 7, 1, 2, 0, CAST(N'2020-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (895, 3, 9, 2, 2, 0, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (896, 4, 4, 1, 4, 0, CAST(N'2022-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (897, 6, 13, 1, 4, 0, CAST(N'2020-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (898, 3, 6, 2, 1, 0, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (899, 4, 3, 2, 4, 0, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (900, 4, 1, 2, 1, 0, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (901, 2, 7, 1, 1, 0, CAST(N'2020-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (902, 6, 4, 1, 2, 0, CAST(N'2020-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (903, 3, 13, 1, 3, 0, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (904, 6, 10, 1, 2, 0, CAST(N'2020-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (905, 6, 14, 1, 4, 0, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (906, 3, 12, 2, 4, 0, CAST(N'2020-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (907, 4, 3, 1, 3, 0, CAST(N'2020-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (908, 2, 7, 2, 2, 0, CAST(N'2020-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (909, 6, 14, 1, 1, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (910, 3, 13, 2, 1, 0, CAST(N'2020-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (911, 6, 11, 1, 3, 0, CAST(N'2020-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (912, 5, 8, 1, 2, 0, CAST(N'2020-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (913, 3, 13, 2, 4, 0, CAST(N'2020-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (914, 1, 4, 1, 2, 0, CAST(N'2020-03-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (915, 4, 8, 2, 2, 0, CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (916, 2, 10, 2, 3, 0, CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (917, 4, 11, 2, 4, 0, CAST(N'2020-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (918, 6, 6, 2, 1, 0, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (919, 3, 11, 1, 4, 0, CAST(N'2021-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (920, 4, 5, 2, 4, 0, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (921, 7, 13, 1, 4, 0, CAST(N'2020-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (922, 3, 12, 1, 2, 0, CAST(N'2021-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (923, 2, 15, 2, 4, 0, CAST(N'2022-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (924, 2, 1, 2, 1, 0, CAST(N'2021-12-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (925, 7, 2, 2, 4, 0, CAST(N'2021-06-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (926, 4, 12, 1, 2, 0, CAST(N'2020-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (927, 7, 14, 2, 1, 0, CAST(N'2020-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (928, 3, 5, 2, 3, 0, CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (929, 4, 12, 2, 2, 0, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (930, 6, 12, 2, 3, 0, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (931, 4, 3, 2, 1, 0, CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (932, 7, 11, 1, 3, 0, CAST(N'2021-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (933, 3, 5, 1, 1, 0, CAST(N'2020-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (934, 1, 14, 1, 1, 0, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (935, 2, 6, 2, 4, 0, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (936, 7, 14, 1, 4, 0, CAST(N'2021-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (937, 5, 1, 2, 1, 0, CAST(N'2021-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (938, 4, 11, 2, 1, 0, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (939, 5, 10, 2, 1, 0, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (940, 4, 14, 1, 1, 0, CAST(N'2021-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (941, 4, 3, 1, 3, 0, CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (942, 7, 13, 1, 2, 0, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (943, 3, 3, 1, 4, 0, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (944, 2, 10, 2, 3, 0, CAST(N'2020-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (945, 3, 15, 1, 2, 0, CAST(N'2020-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (946, 4, 3, 2, 1, 0, CAST(N'2021-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (947, 1, 5, 1, 3, 0, CAST(N'2021-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (948, 6, 9, 2, 3, 0, CAST(N'2020-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (949, 7, 2, 2, 2, 0, CAST(N'2021-10-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (950, 4, 6, 1, 1, 0, CAST(N'2020-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (951, 4, 11, 1, 3, 0, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (952, 1, 13, 1, 4, 0, CAST(N'2020-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (953, 1, 6, 1, 2, 0, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (954, 5, 2, 1, 3, 0, CAST(N'2020-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (955, 2, 6, 2, 4, 0, CAST(N'2021-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (956, 4, 9, 1, 3, 0, CAST(N'2020-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (957, 2, 11, 2, 1, 0, CAST(N'2020-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (958, 4, 5, 2, 4, 0, CAST(N'2020-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (959, 7, 5, 1, 1, 0, CAST(N'2020-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (960, 4, 4, 2, 1, 0, CAST(N'2020-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (961, 6, 8, 1, 1, 0, CAST(N'2020-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (962, 3, 14, 2, 3, 0, CAST(N'2020-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (963, 5, 9, 1, 4, 0, CAST(N'2020-08-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (964, 3, 14, 2, 4, 0, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (965, 6, 7, 2, 2, 0, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (966, 2, 5, 1, 1, 0, CAST(N'2021-10-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (967, 6, 9, 2, 1, 0, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (968, 3, 9, 2, 4, 0, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (969, 7, 5, 2, 4, 0, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (970, 5, 6, 2, 1, 0, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (971, 7, 7, 2, 1, 0, CAST(N'2020-04-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (972, 2, 4, 1, 4, 0, CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (973, 6, 11, 2, 2, 0, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (974, 7, 12, 1, 2, 0, CAST(N'2021-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (975, 6, 6, 2, 2, 0, CAST(N'2020-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (976, 1, 13, 1, 3, 0, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (977, 6, 4, 2, 4, 0, CAST(N'2020-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (978, 4, 4, 2, 1, 0, CAST(N'2021-08-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (979, 3, 11, 2, 1, 0, CAST(N'2020-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (980, 7, 7, 1, 2, 0, CAST(N'2020-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (981, 1, 6, 2, 2, 0, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (982, 2, 12, 1, 4, 0, CAST(N'2021-12-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (983, 2, 13, 2, 1, 0, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (984, 6, 6, 1, 4, 0, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (985, 2, 3, 2, 4, 0, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (986, 1, 4, 2, 4, 0, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (987, 5, 4, 2, 2, 0, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (988, 2, 10, 1, 3, 0, CAST(N'2020-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (989, 3, 13, 2, 1, 0, CAST(N'2020-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (990, 1, 15, 2, 2, 0, CAST(N'2020-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (991, 6, 8, 1, 2, 0, CAST(N'2020-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (992, 6, 10, 1, 3, 0, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (993, 6, 15, 1, 2, 0, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (994, 7, 15, 2, 4, 0, CAST(N'2021-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (995, 6, 10, 2, 1, 0, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (996, 2, 12, 2, 4, 0, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (997, 4, 5, 1, 4, 0, CAST(N'2020-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (998, 6, 15, 1, 4, 0, CAST(N'2020-05-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (999, 5, 4, 2, 2, 0, CAST(N'2020-05-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1000, 1, 9, 2, 3, 0, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Customers]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Items] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Items]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([Id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Stores]
GO
