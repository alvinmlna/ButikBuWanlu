USE [ButikBuWanlu]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/30/2022 9:27:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DateRegister] [datetime] NOT NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 1/30/2022 9:27:32 PM ******/
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
/****** Object:  Table [dbo].[Stores]    Script Date: 1/30/2022 9:27:32 PM ******/
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
/****** Object:  Table [dbo].[Transactions]    Script Date: 1/30/2022 9:27:32 PM ******/
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
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (1, N'Customer 1', CAST(N'2021-03-24T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (2, N'Customer 2', CAST(N'2022-01-13T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (3, N'Customer 3', CAST(N'2021-05-27T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (4, N'Customer 4', CAST(N'2021-01-13T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (5, N'Customer 5', CAST(N'2022-01-17T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (6, N'Customer 6', CAST(N'2021-02-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (7, N'Customer 7', CAST(N'2021-07-24T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (8, N'Customer 8', CAST(N'2022-01-08T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (9, N'Customer 9', CAST(N'2021-11-12T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (10, N'Customer 10', CAST(N'2021-10-18T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (11, N'Customer 11', CAST(N'2021-12-15T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (12, N'Customer 12', CAST(N'2021-05-18T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (13, N'Customer 13', CAST(N'2021-11-27T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (14, N'Customer 14', CAST(N'2021-05-26T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (15, N'Customer 15', CAST(N'2021-02-08T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (16, N'Customer 16', CAST(N'2021-04-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (17, N'Customer 17', CAST(N'2021-06-14T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (18, N'Customer 18', CAST(N'2021-09-13T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (19, N'Customer 19', CAST(N'2021-12-04T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (20, N'Customer 20', CAST(N'2021-04-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (21, N'Customer 21', CAST(N'2021-07-15T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (22, N'Customer 22', CAST(N'2021-12-27T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (23, N'Customer 23', CAST(N'2021-05-01T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (24, N'Customer 24', CAST(N'2021-11-13T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (25, N'Customer 25', CAST(N'2021-02-25T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (26, N'Customer 26', CAST(N'2021-10-27T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (27, N'Customer 27', CAST(N'2021-01-26T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (28, N'Customer 28', CAST(N'2021-05-06T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (29, N'Customer 29', CAST(N'2021-09-08T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (30, N'Customer 30', CAST(N'2021-10-05T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (31, N'Customer 31', CAST(N'2021-02-27T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (32, N'Customer 32', CAST(N'2021-12-03T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (33, N'Customer 33', CAST(N'2021-10-08T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (34, N'Customer 34', CAST(N'2021-02-20T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (35, N'Customer 35', CAST(N'2021-09-05T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (36, N'Customer 36', CAST(N'2022-01-18T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (37, N'Customer 37', CAST(N'2021-12-08T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (38, N'Customer 38', CAST(N'2022-01-31T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (39, N'Customer 39', CAST(N'2021-08-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (40, N'Customer 40', CAST(N'2021-08-18T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (41, N'Customer 41', CAST(N'2021-02-16T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (42, N'Customer 42', CAST(N'2021-02-22T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (43, N'Customer 43', CAST(N'2021-06-01T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (44, N'Customer 44', CAST(N'2021-10-07T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (45, N'Customer 45', CAST(N'2021-05-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (46, N'Customer 46', CAST(N'2021-11-10T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Customers] ([Id], [Name], [DateRegister], [StoreId]) VALUES (47, N'Customer 47', CAST(N'2021-05-28T00:00:00.000' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (1, N'Item 1', 263000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (2, N'Item 2', 310000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (3, N'Item 3', 190000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (4, N'Item 4', 231000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (5, N'Item 5', 236000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (6, N'Item 6', 367000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (7, N'Item 7', 284000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (8, N'Item 8', 257000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (9, N'Item 9', 341000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (10, N'Item 10', 498000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (11, N'Item 11', 172000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (12, N'Item 12', 137000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (13, N'Item 13', 228000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (14, N'Item 14', 384000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (15, N'Item 15', 350000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (16, N'Item 16', 402000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (17, N'Item 17', 373000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (18, N'Item 18', 376000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (19, N'Item 19', 380000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (20, N'Item 20', 407000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (21, N'Item 21', 444000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (22, N'Item 22', 234000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (23, N'Item 23', 289000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (24, N'Item 24', 479000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (25, N'Item 25', 234000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (26, N'Item 26', 281000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (27, N'Item 27', 306000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (28, N'Item 28', 297000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (29, N'Item 29', 391000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (30, N'Item 30', 231000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (31, N'Item 31', 354000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (32, N'Item 32', 485000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (33, N'Item 33', 279000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (34, N'Item 34', 241000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (35, N'Item 35', 483000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (36, N'Item 36', 204000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (37, N'Item 37', 476000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (38, N'Item 38', 499000)
GO
INSERT [dbo].[Items] ([Id], [Name], [Price]) VALUES (39, N'Item 39', 360000)
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
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1, 27, 29, 1, 4, 1564000, CAST(N'2021-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (2, 23, 1, 1, 3, 789000, CAST(N'2021-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (3, 33, 4, 2, 4, 924000, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (4, 20, 13, 1, 6, 1368000, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (5, 5, 6, 2, 4, 1468000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (6, 36, 28, 2, 5, 1485000, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (7, 30, 3, 1, 5, 950000, CAST(N'2021-03-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (8, 41, 26, 1, 1, 281000, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (9, 7, 23, 2, 3, 867000, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (10, 33, 7, 2, 4, 1136000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (11, 5, 22, 2, 2, 468000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (12, 43, 27, 2, 4, 1224000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (13, 1, 26, 2, 4, 1124000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (14, 10, 16, 1, 5, 2010000, CAST(N'2021-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (15, 23, 10, 1, 1, 498000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (16, 17, 2, 2, 4, 1240000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (17, 8, 1, 2, 1, 263000, CAST(N'2022-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (18, 17, 27, 2, 2, 612000, CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (19, 10, 29, 1, 5, 1955000, CAST(N'2021-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (20, 39, 17, 1, 2, 746000, CAST(N'2021-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (21, 23, 23, 1, 6, 1734000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (22, 20, 34, 1, 2, 482000, CAST(N'2022-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (23, 46, 1, 1, 1, 263000, CAST(N'2021-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (24, 45, 13, 1, 1, 228000, CAST(N'2021-10-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (25, 22, 38, 1, 3, 1497000, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (26, 15, 27, 2, 4, 1224000, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (27, 14, 33, 1, 1, 279000, CAST(N'2021-06-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (28, 47, 30, 2, 1, 231000, CAST(N'2021-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (29, 40, 32, 1, 4, 1940000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (30, 34, 1, 1, 3, 789000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (31, 8, 17, 2, 4, 1492000, CAST(N'2021-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (32, 38, 10, 2, 2, 996000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (33, 34, 26, 1, 1, 281000, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (34, 27, 26, 1, 4, 1124000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (35, 34, 6, 1, 4, 1468000, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (36, 43, 38, 2, 6, 2994000, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (37, 28, 36, 2, 1, 204000, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (38, 4, 15, 1, 1, 350000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (39, 39, 11, 1, 3, 516000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (40, 2, 21, 2, 4, 1776000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (41, 43, 29, 2, 6, 2346000, CAST(N'2021-04-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (42, 19, 5, 1, 3, 708000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (43, 22, 23, 1, 4, 1156000, CAST(N'2021-05-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (44, 39, 23, 1, 1, 289000, CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (45, 27, 9, 1, 1, 341000, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (46, 1, 24, 2, 5, 2395000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (47, 17, 21, 2, 6, 2664000, CAST(N'2021-10-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (48, 12, 23, 1, 5, 1445000, CAST(N'2021-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (49, 1, 27, 2, 3, 918000, CAST(N'2022-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (50, 26, 14, 2, 2, 768000, CAST(N'2021-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (51, 8, 1, 2, 2, 526000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (52, 2, 22, 2, 6, 1404000, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (53, 2, 8, 2, 6, 1542000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (54, 42, 5, 1, 1, 236000, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (55, 4, 22, 1, 1, 234000, CAST(N'2021-03-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (56, 16, 31, 1, 5, 1770000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (57, 13, 3, 1, 2, 380000, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (58, 1, 21, 2, 4, 1776000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (59, 47, 17, 2, 1, 373000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (60, 11, 7, 1, 3, 852000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (61, 37, 12, 2, 2, 274000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (62, 5, 18, 2, 5, 1880000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (63, 3, 34, 2, 3, 723000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (64, 45, 5, 1, 1, 236000, CAST(N'2021-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (65, 18, 25, 1, 2, 468000, CAST(N'2021-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (66, 38, 31, 2, 3, 1062000, CAST(N'2021-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (67, 31, 17, 1, 3, 1119000, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (68, 22, 23, 1, 2, 578000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (69, 45, 35, 1, 3, 1449000, CAST(N'2021-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (70, 16, 39, 1, 5, 1800000, CAST(N'2021-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (71, 14, 22, 1, 2, 468000, CAST(N'2021-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (72, 7, 7, 2, 3, 852000, CAST(N'2021-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (73, 1, 12, 2, 1, 137000, CAST(N'2021-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (74, 9, 8, 1, 5, 1285000, CAST(N'2021-02-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (75, 6, 20, 1, 1, 407000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (76, 47, 19, 2, 2, 760000, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (77, 16, 33, 1, 2, 558000, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (78, 16, 20, 1, 2, 814000, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (79, 9, 35, 1, 2, 966000, CAST(N'2021-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (80, 9, 25, 1, 5, 1170000, CAST(N'2021-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (81, 18, 26, 1, 3, 843000, CAST(N'2021-12-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (82, 6, 24, 1, 1, 479000, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (83, 2, 16, 2, 6, 2412000, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (84, 17, 10, 2, 5, 2490000, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (85, 33, 22, 2, 3, 702000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (86, 43, 20, 2, 4, 1628000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (87, 5, 8, 2, 6, 1542000, CAST(N'2021-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (88, 1, 3, 2, 1, 190000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (89, 35, 38, 2, 2, 998000, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (90, 15, 30, 2, 3, 693000, CAST(N'2021-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (91, 23, 11, 1, 3, 516000, CAST(N'2021-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (92, 10, 11, 1, 3, 516000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (93, 32, 5, 2, 4, 944000, CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (94, 13, 4, 1, 6, 1386000, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (95, 10, 2, 1, 1, 310000, CAST(N'2021-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (96, 32, 15, 2, 6, 2100000, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (97, 18, 3, 1, 4, 760000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (98, 41, 24, 1, 4, 1916000, CAST(N'2021-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (99, 30, 28, 1, 4, 1188000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (100, 32, 1, 2, 6, 1578000, CAST(N'2021-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (101, 15, 23, 2, 4, 1156000, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (102, 25, 39, 2, 1, 360000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (103, 1, 33, 2, 1, 279000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (104, 3, 35, 2, 2, 966000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (105, 30, 25, 1, 3, 702000, CAST(N'2021-07-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (106, 19, 26, 1, 5, 1405000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (107, 19, 24, 1, 6, 2874000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (108, 10, 27, 1, 1, 306000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (109, 4, 33, 1, 4, 1116000, CAST(N'2021-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (110, 21, 24, 2, 4, 1916000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (111, 35, 33, 2, 3, 837000, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (112, 24, 2, 1, 1, 310000, CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (113, 16, 1, 1, 1, 263000, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (114, 29, 15, 1, 6, 2100000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (115, 24, 25, 1, 4, 936000, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (116, 47, 35, 2, 3, 1449000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (117, 7, 12, 2, 3, 411000, CAST(N'2022-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (118, 18, 2, 1, 3, 930000, CAST(N'2021-06-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (119, 45, 22, 1, 3, 702000, CAST(N'2021-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (120, 35, 10, 2, 2, 996000, CAST(N'2021-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (121, 21, 7, 2, 2, 568000, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (122, 39, 18, 1, 5, 1880000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (123, 25, 19, 2, 6, 2280000, CAST(N'2022-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (124, 28, 38, 2, 3, 1497000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (125, 8, 25, 2, 1, 234000, CAST(N'2021-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (126, 42, 6, 1, 2, 734000, CAST(N'2021-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (127, 30, 9, 1, 2, 682000, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (128, 1, 35, 2, 4, 1932000, CAST(N'2021-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (129, 45, 37, 1, 5, 2380000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (130, 14, 33, 1, 1, 279000, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (131, 24, 1, 1, 3, 789000, CAST(N'2021-12-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (132, 28, 22, 2, 4, 936000, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (133, 42, 27, 1, 6, 1836000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (134, 33, 25, 2, 6, 1404000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (135, 45, 15, 1, 3, 1050000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (136, 47, 14, 2, 6, 2304000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (137, 6, 29, 1, 4, 1564000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (138, 46, 12, 1, 6, 822000, CAST(N'2021-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (139, 25, 3, 2, 5, 950000, CAST(N'2021-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (140, 3, 37, 2, 4, 1904000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (141, 44, 26, 2, 6, 1686000, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (142, 46, 17, 1, 6, 2238000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (143, 6, 30, 1, 4, 924000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (144, 3, 6, 2, 4, 1468000, CAST(N'2021-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (145, 30, 12, 1, 2, 274000, CAST(N'2021-03-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (146, 19, 26, 1, 4, 1124000, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (147, 34, 26, 1, 2, 562000, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (148, 8, 7, 2, 6, 1704000, CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (149, 44, 39, 2, 1, 360000, CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (150, 15, 3, 2, 3, 570000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (151, 46, 15, 1, 5, 1750000, CAST(N'2021-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (152, 3, 23, 2, 3, 867000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (153, 32, 30, 2, 1, 231000, CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (154, 23, 18, 1, 2, 752000, CAST(N'2021-11-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (155, 9, 13, 1, 1, 228000, CAST(N'2021-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (156, 40, 20, 1, 4, 1628000, CAST(N'2021-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (157, 21, 27, 2, 5, 1530000, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (158, 27, 17, 1, 1, 373000, CAST(N'2021-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (159, 2, 20, 2, 6, 2442000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (160, 8, 20, 2, 5, 2035000, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (161, 24, 21, 1, 3, 1332000, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (162, 39, 31, 1, 2, 708000, CAST(N'2021-08-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (163, 5, 39, 2, 5, 1800000, CAST(N'2021-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (164, 41, 1, 1, 2, 526000, CAST(N'2021-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (165, 42, 5, 1, 4, 944000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (166, 24, 36, 1, 5, 1020000, CAST(N'2021-03-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (167, 2, 17, 2, 3, 1119000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (168, 30, 11, 1, 1, 172000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (169, 5, 30, 2, 1, 231000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (170, 19, 23, 1, 3, 867000, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (171, 3, 39, 2, 6, 2160000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (172, 20, 35, 1, 6, 2898000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (173, 8, 19, 2, 6, 2280000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (174, 28, 39, 2, 1, 360000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (175, 21, 34, 2, 6, 1446000, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (176, 15, 22, 2, 2, 468000, CAST(N'2022-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (177, 8, 1, 2, 1, 263000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (178, 32, 16, 2, 1, 402000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (179, 19, 17, 1, 1, 373000, CAST(N'2022-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (180, 9, 25, 1, 1, 234000, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (181, 45, 33, 1, 1, 279000, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (182, 42, 2, 1, 3, 930000, CAST(N'2021-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (183, 28, 16, 2, 6, 2412000, CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (184, 33, 35, 2, 2, 966000, CAST(N'2021-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (185, 7, 14, 2, 3, 1152000, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (186, 37, 11, 2, 5, 860000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (187, 6, 5, 1, 3, 708000, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (188, 31, 12, 1, 3, 411000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (189, 21, 30, 2, 2, 462000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (190, 13, 13, 1, 6, 1368000, CAST(N'2022-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (191, 23, 16, 1, 4, 1608000, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (192, 17, 9, 2, 4, 1364000, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (193, 43, 17, 2, 6, 2238000, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (194, 16, 19, 1, 6, 2280000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (195, 41, 8, 1, 2, 514000, CAST(N'2021-03-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (196, 10, 29, 1, 1, 391000, CAST(N'2021-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (197, 10, 35, 1, 4, 1932000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (198, 33, 38, 2, 4, 1996000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (199, 6, 9, 1, 1, 341000, CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (200, 6, 4, 1, 1, 231000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (201, 23, 7, 1, 2, 568000, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (202, 31, 37, 1, 3, 1428000, CAST(N'2021-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (203, 35, 30, 2, 2, 462000, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (204, 1, 6, 2, 6, 2202000, CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (205, 24, 23, 1, 1, 289000, CAST(N'2022-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (206, 30, 2, 1, 5, 1550000, CAST(N'2021-12-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (207, 21, 33, 2, 2, 558000, CAST(N'2021-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (208, 30, 13, 1, 1, 228000, CAST(N'2021-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (209, 31, 19, 1, 2, 760000, CAST(N'2021-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (210, 7, 31, 2, 2, 708000, CAST(N'2021-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (211, 37, 36, 2, 3, 612000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (212, 14, 36, 1, 3, 612000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (213, 14, 24, 1, 6, 2874000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (214, 8, 4, 2, 4, 924000, CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (215, 22, 25, 1, 6, 1404000, CAST(N'2021-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (216, 15, 29, 2, 3, 1173000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (217, 39, 3, 1, 4, 760000, CAST(N'2021-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (218, 25, 34, 2, 4, 964000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (219, 2, 35, 2, 3, 1449000, CAST(N'2021-08-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (220, 35, 1, 2, 1, 263000, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (221, 30, 27, 1, 6, 1836000, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (222, 20, 17, 1, 6, 2238000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (223, 15, 30, 2, 5, 1155000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (224, 13, 8, 1, 3, 771000, CAST(N'2021-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (225, 16, 35, 1, 5, 2415000, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (226, 7, 15, 2, 1, 350000, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (227, 21, 19, 2, 1, 380000, CAST(N'2021-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (228, 46, 37, 1, 2, 952000, CAST(N'2021-03-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (229, 25, 38, 2, 2, 998000, CAST(N'2021-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (230, 32, 32, 2, 5, 2425000, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (231, 5, 3, 2, 1, 190000, CAST(N'2021-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (232, 31, 37, 1, 6, 2856000, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (233, 41, 26, 1, 6, 1686000, CAST(N'2022-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (234, 23, 5, 1, 3, 708000, CAST(N'2021-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (235, 20, 33, 1, 3, 837000, CAST(N'2022-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (236, 21, 39, 2, 6, 2160000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (237, 4, 22, 1, 1, 234000, CAST(N'2021-05-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (238, 10, 17, 1, 3, 1119000, CAST(N'2021-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (239, 9, 16, 1, 2, 804000, CAST(N'2021-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (240, 46, 21, 1, 6, 2664000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (241, 37, 8, 2, 3, 771000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (242, 41, 10, 1, 3, 1494000, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (243, 4, 3, 1, 4, 760000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (244, 39, 12, 1, 3, 411000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (245, 11, 39, 1, 3, 1080000, CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (246, 44, 30, 2, 1, 231000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (247, 14, 35, 1, 3, 1449000, CAST(N'2021-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (248, 45, 33, 1, 5, 1395000, CAST(N'2021-05-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (249, 4, 13, 1, 3, 684000, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (250, 9, 7, 1, 2, 568000, CAST(N'2022-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (251, 22, 19, 1, 1, 380000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (252, 10, 16, 1, 2, 804000, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (253, 22, 39, 1, 5, 1800000, CAST(N'2021-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (254, 45, 12, 1, 1, 137000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (255, 5, 37, 2, 1, 476000, CAST(N'2022-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (256, 31, 1, 1, 3, 789000, CAST(N'2021-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (257, 27, 26, 1, 4, 1124000, CAST(N'2021-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (258, 12, 25, 1, 2, 468000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (259, 22, 16, 1, 3, 1206000, CAST(N'2021-10-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (260, 22, 14, 1, 4, 1536000, CAST(N'2021-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (261, 4, 35, 1, 2, 966000, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (262, 9, 16, 1, 2, 804000, CAST(N'2021-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (263, 20, 37, 1, 6, 2856000, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (264, 40, 37, 1, 2, 952000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (265, 43, 23, 2, 2, 578000, CAST(N'2021-05-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (266, 36, 35, 2, 5, 2415000, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (267, 44, 30, 2, 3, 693000, CAST(N'2021-07-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (268, 27, 9, 1, 2, 682000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (269, 2, 29, 2, 4, 1564000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (270, 5, 16, 2, 1, 402000, CAST(N'2021-11-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (271, 34, 27, 1, 4, 1224000, CAST(N'2021-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (272, 6, 32, 1, 1, 485000, CAST(N'2021-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (273, 26, 38, 2, 1, 499000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (274, 23, 25, 1, 3, 702000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (275, 21, 28, 2, 1, 297000, CAST(N'2021-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (276, 45, 6, 1, 4, 1468000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (277, 34, 20, 1, 2, 814000, CAST(N'2022-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (278, 35, 18, 2, 1, 376000, CAST(N'2021-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (279, 44, 30, 2, 6, 1386000, CAST(N'2021-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (280, 23, 18, 1, 1, 376000, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (281, 19, 22, 1, 5, 1170000, CAST(N'2021-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (282, 37, 2, 2, 1, 310000, CAST(N'2021-04-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (283, 20, 28, 1, 2, 594000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (284, 33, 13, 2, 2, 456000, CAST(N'2021-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (285, 11, 2, 1, 2, 620000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (286, 38, 3, 2, 2, 380000, CAST(N'2021-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (287, 7, 15, 2, 2, 700000, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (288, 9, 20, 1, 4, 1628000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (289, 21, 22, 2, 1, 234000, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (290, 4, 29, 1, 6, 2346000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (291, 26, 33, 2, 5, 1395000, CAST(N'2021-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (292, 37, 13, 2, 4, 912000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (293, 40, 11, 1, 5, 860000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (294, 3, 25, 2, 5, 1170000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (295, 41, 18, 1, 2, 752000, CAST(N'2021-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (296, 34, 35, 1, 5, 2415000, CAST(N'2021-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (297, 14, 5, 1, 5, 1180000, CAST(N'2021-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (298, 8, 16, 2, 5, 2010000, CAST(N'2022-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (299, 8, 22, 2, 3, 702000, CAST(N'2021-03-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (300, 40, 7, 1, 6, 1704000, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (301, 25, 7, 2, 2, 568000, CAST(N'2022-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (302, 5, 14, 2, 1, 384000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (303, 34, 12, 1, 2, 274000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (304, 16, 26, 1, 6, 1686000, CAST(N'2021-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (305, 7, 25, 2, 5, 1170000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (306, 1, 8, 2, 4, 1028000, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (307, 17, 28, 2, 5, 1485000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (308, 13, 31, 1, 2, 708000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (309, 2, 14, 2, 5, 1920000, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (310, 38, 19, 2, 4, 1520000, CAST(N'2021-08-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (311, 36, 25, 2, 5, 1170000, CAST(N'2022-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (312, 8, 34, 2, 2, 482000, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (313, 5, 22, 2, 1, 234000, CAST(N'2022-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (314, 20, 16, 1, 3, 1206000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (315, 15, 3, 2, 5, 950000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (316, 21, 25, 2, 4, 936000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (317, 32, 8, 2, 5, 1285000, CAST(N'2021-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (318, 1, 11, 2, 2, 344000, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (319, 47, 27, 2, 2, 612000, CAST(N'2021-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (320, 45, 21, 1, 1, 444000, CAST(N'2021-08-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (321, 30, 7, 1, 3, 852000, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (322, 10, 17, 1, 4, 1492000, CAST(N'2021-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (323, 8, 26, 2, 4, 1124000, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (324, 45, 12, 1, 5, 685000, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (325, 38, 5, 2, 2, 472000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (326, 29, 35, 1, 3, 1449000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (327, 14, 28, 1, 5, 1485000, CAST(N'2021-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (328, 32, 17, 2, 5, 1865000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (329, 24, 18, 1, 5, 1880000, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (330, 41, 29, 1, 5, 1955000, CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (331, 11, 32, 1, 2, 970000, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (332, 29, 37, 1, 3, 1428000, CAST(N'2021-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (333, 22, 10, 1, 6, 2988000, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (334, 9, 39, 1, 4, 1440000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (335, 8, 18, 2, 1, 376000, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (336, 22, 13, 1, 4, 912000, CAST(N'2021-12-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (337, 15, 20, 2, 2, 814000, CAST(N'2022-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (338, 15, 34, 2, 6, 1446000, CAST(N'2021-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (339, 4, 13, 1, 3, 684000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (340, 2, 32, 2, 5, 2425000, CAST(N'2021-12-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (341, 2, 3, 2, 6, 1140000, CAST(N'2021-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (342, 19, 2, 1, 3, 930000, CAST(N'2021-10-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (343, 24, 15, 1, 6, 2100000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (344, 18, 13, 1, 6, 1368000, CAST(N'2021-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (345, 36, 23, 2, 6, 1734000, CAST(N'2021-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (346, 23, 21, 1, 2, 888000, CAST(N'2021-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (347, 8, 2, 2, 1, 310000, CAST(N'2021-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (348, 12, 24, 1, 3, 1437000, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (349, 8, 27, 2, 2, 612000, CAST(N'2021-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (350, 20, 28, 1, 2, 594000, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (351, 45, 23, 1, 5, 1445000, CAST(N'2021-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (352, 12, 38, 1, 5, 2495000, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (353, 10, 12, 1, 2, 274000, CAST(N'2021-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (354, 1, 6, 2, 1, 367000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (355, 22, 36, 1, 6, 1224000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (356, 42, 28, 1, 2, 594000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (357, 33, 11, 2, 5, 860000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (358, 35, 12, 2, 2, 274000, CAST(N'2021-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (359, 19, 30, 1, 4, 924000, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (360, 36, 34, 2, 6, 1446000, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (361, 13, 22, 1, 2, 468000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (362, 40, 5, 1, 5, 1180000, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (363, 6, 9, 1, 2, 682000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (364, 12, 21, 1, 3, 1332000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (365, 13, 15, 1, 6, 2100000, CAST(N'2021-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (366, 2, 35, 2, 2, 966000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (367, 19, 9, 1, 3, 1023000, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (368, 42, 14, 1, 4, 1536000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (369, 6, 36, 1, 1, 204000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (370, 18, 34, 1, 1, 241000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (371, 3, 21, 2, 3, 1332000, CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (372, 37, 11, 2, 5, 860000, CAST(N'2021-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (373, 16, 18, 1, 3, 1128000, CAST(N'2021-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (374, 43, 15, 2, 5, 1750000, CAST(N'2022-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (375, 16, 27, 1, 6, 1836000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (376, 21, 14, 2, 2, 768000, CAST(N'2021-09-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (377, 32, 39, 2, 3, 1080000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (378, 29, 9, 1, 3, 1023000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (379, 30, 7, 1, 1, 284000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (380, 8, 23, 2, 4, 1156000, CAST(N'2021-12-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (381, 33, 16, 2, 6, 2412000, CAST(N'2021-03-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (382, 4, 31, 1, 1, 354000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (383, 14, 33, 1, 5, 1395000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (384, 22, 4, 1, 3, 693000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (385, 26, 29, 2, 3, 1173000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (386, 12, 38, 1, 5, 2495000, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (387, 3, 22, 2, 1, 234000, CAST(N'2021-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (388, 30, 22, 1, 2, 468000, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (389, 47, 18, 2, 4, 1504000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (390, 32, 1, 2, 2, 526000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (391, 27, 37, 1, 2, 952000, CAST(N'2021-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (392, 26, 25, 2, 5, 1170000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (393, 9, 13, 1, 2, 456000, CAST(N'2021-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (394, 44, 20, 2, 2, 814000, CAST(N'2021-03-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (395, 32, 24, 2, 1, 479000, CAST(N'2021-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (396, 30, 12, 1, 4, 548000, CAST(N'2021-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (397, 9, 11, 1, 5, 860000, CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (398, 38, 21, 2, 4, 1776000, CAST(N'2021-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (399, 25, 4, 2, 1, 231000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (400, 27, 18, 1, 2, 752000, CAST(N'2021-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (401, 28, 25, 2, 3, 702000, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (402, 42, 10, 1, 6, 2988000, CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (403, 29, 22, 1, 4, 936000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (404, 33, 2, 2, 3, 930000, CAST(N'2021-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (405, 38, 34, 2, 6, 1446000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (406, 23, 2, 1, 3, 930000, CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (407, 20, 19, 1, 6, 2280000, CAST(N'2021-08-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (408, 12, 37, 1, 1, 476000, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (409, 29, 16, 1, 5, 2010000, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (410, 35, 37, 2, 6, 2856000, CAST(N'2021-03-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (411, 22, 10, 1, 2, 996000, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (412, 24, 33, 1, 4, 1116000, CAST(N'2021-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (413, 28, 3, 2, 2, 380000, CAST(N'2021-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (414, 13, 29, 1, 2, 782000, CAST(N'2021-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (415, 7, 29, 2, 1, 391000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (416, 15, 29, 2, 6, 2346000, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (417, 27, 8, 1, 1, 257000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (418, 32, 37, 2, 4, 1904000, CAST(N'2021-12-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (419, 1, 23, 2, 2, 578000, CAST(N'2021-08-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (420, 19, 10, 1, 3, 1494000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (421, 19, 39, 1, 6, 2160000, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (422, 30, 12, 1, 1, 137000, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (423, 2, 39, 2, 6, 2160000, CAST(N'2021-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (424, 26, 8, 2, 3, 771000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (425, 38, 35, 2, 6, 2898000, CAST(N'2021-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (426, 3, 17, 2, 6, 2238000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (427, 21, 1, 2, 4, 1052000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (428, 28, 9, 2, 3, 1023000, CAST(N'2021-07-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (429, 6, 33, 1, 3, 837000, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (430, 37, 2, 2, 2, 620000, CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (431, 28, 24, 2, 4, 1916000, CAST(N'2021-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (432, 13, 16, 1, 4, 1608000, CAST(N'2021-03-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (433, 12, 25, 1, 3, 702000, CAST(N'2021-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (434, 30, 11, 1, 6, 1032000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (435, 23, 18, 1, 5, 1880000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (436, 42, 11, 1, 4, 688000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (437, 30, 11, 1, 2, 344000, CAST(N'2021-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (438, 41, 13, 1, 2, 456000, CAST(N'2021-08-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (439, 10, 38, 1, 5, 2495000, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (440, 3, 19, 2, 5, 1900000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (441, 40, 23, 1, 5, 1445000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (442, 28, 14, 2, 5, 1920000, CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (443, 31, 32, 1, 4, 1940000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (444, 43, 20, 2, 3, 1221000, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (445, 36, 2, 2, 5, 1550000, CAST(N'2022-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (446, 32, 4, 2, 6, 1386000, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (447, 15, 5, 2, 2, 472000, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (448, 30, 18, 1, 2, 752000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (449, 37, 7, 2, 6, 1704000, CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (450, 19, 21, 1, 5, 2220000, CAST(N'2021-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (451, 27, 7, 1, 5, 1420000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (452, 15, 1, 2, 5, 1315000, CAST(N'2021-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (453, 34, 11, 1, 4, 688000, CAST(N'2021-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (454, 47, 11, 2, 3, 516000, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (455, 42, 8, 1, 6, 1542000, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (456, 23, 4, 1, 1, 231000, CAST(N'2021-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (457, 4, 11, 1, 3, 516000, CAST(N'2021-12-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (458, 16, 35, 1, 1, 483000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (459, 34, 26, 1, 5, 1405000, CAST(N'2021-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (460, 23, 35, 1, 4, 1932000, CAST(N'2021-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (461, 43, 33, 2, 3, 837000, CAST(N'2021-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (462, 16, 30, 1, 3, 693000, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (463, 4, 1, 1, 5, 1315000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (464, 43, 5, 2, 2, 472000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (465, 22, 1, 1, 3, 789000, CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (466, 7, 35, 2, 1, 483000, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (467, 38, 29, 2, 3, 1173000, CAST(N'2021-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (468, 47, 11, 2, 2, 344000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (469, 45, 28, 1, 6, 1782000, CAST(N'2021-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (470, 9, 37, 1, 6, 2856000, CAST(N'2021-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (471, 15, 12, 2, 3, 411000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (472, 28, 20, 2, 2, 814000, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (473, 40, 8, 1, 5, 1285000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (474, 34, 19, 1, 3, 1140000, CAST(N'2021-08-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (475, 32, 22, 2, 6, 1404000, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (476, 39, 13, 1, 6, 1368000, CAST(N'2021-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (477, 34, 15, 1, 2, 700000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (478, 35, 27, 2, 5, 1530000, CAST(N'2021-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (479, 27, 8, 1, 4, 1028000, CAST(N'2021-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (480, 34, 6, 1, 4, 1468000, CAST(N'2021-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (481, 25, 31, 2, 6, 2124000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (482, 33, 27, 2, 6, 1836000, CAST(N'2021-09-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (483, 31, 31, 1, 4, 1416000, CAST(N'2021-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (484, 19, 6, 1, 3, 1101000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (485, 20, 13, 1, 6, 1368000, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (486, 23, 4, 1, 4, 924000, CAST(N'2021-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (487, 26, 15, 2, 5, 1750000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (488, 2, 34, 2, 2, 482000, CAST(N'2021-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (489, 20, 6, 1, 3, 1101000, CAST(N'2021-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (490, 27, 2, 1, 5, 1550000, CAST(N'2021-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (491, 4, 14, 1, 4, 1536000, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (492, 4, 17, 1, 3, 1119000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (493, 37, 22, 2, 1, 234000, CAST(N'2021-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (494, 46, 16, 1, 4, 1608000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (495, 21, 39, 2, 6, 2160000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (496, 47, 16, 2, 2, 804000, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (497, 30, 5, 1, 4, 944000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (498, 6, 2, 1, 3, 930000, CAST(N'2021-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (499, 44, 21, 2, 4, 1776000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (500, 2, 4, 2, 2, 462000, CAST(N'2021-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (501, 43, 37, 2, 3, 1428000, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (502, 12, 31, 1, 6, 2124000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (503, 44, 28, 2, 4, 1188000, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (504, 12, 12, 1, 1, 137000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (505, 37, 7, 2, 6, 1704000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (506, 23, 6, 1, 3, 1101000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (507, 11, 13, 1, 1, 228000, CAST(N'2021-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (508, 38, 35, 2, 4, 1932000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (509, 26, 5, 2, 4, 944000, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (510, 43, 5, 2, 5, 1180000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (511, 20, 38, 1, 1, 499000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (512, 43, 26, 2, 3, 843000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (513, 27, 37, 1, 6, 2856000, CAST(N'2022-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (514, 34, 14, 1, 5, 1920000, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (515, 44, 6, 2, 3, 1101000, CAST(N'2021-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (516, 18, 38, 1, 3, 1497000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (517, 17, 16, 2, 1, 402000, CAST(N'2021-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (518, 44, 36, 2, 6, 1224000, CAST(N'2022-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (519, 41, 36, 1, 1, 204000, CAST(N'2021-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (520, 27, 33, 1, 5, 1395000, CAST(N'2021-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (521, 24, 32, 1, 5, 2425000, CAST(N'2021-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (522, 24, 2, 1, 2, 620000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (523, 13, 4, 1, 3, 693000, CAST(N'2021-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (524, 30, 37, 1, 6, 2856000, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (525, 40, 16, 1, 4, 1608000, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (526, 24, 4, 1, 6, 1386000, CAST(N'2021-10-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (527, 8, 18, 2, 6, 2256000, CAST(N'2021-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (528, 41, 1, 1, 6, 1578000, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (529, 45, 15, 1, 4, 1400000, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (530, 33, 22, 2, 1, 234000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (531, 39, 17, 1, 5, 1865000, CAST(N'2021-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (532, 11, 23, 1, 3, 867000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (533, 27, 14, 1, 5, 1920000, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (534, 6, 37, 1, 3, 1428000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (535, 18, 14, 1, 1, 384000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (536, 19, 3, 1, 4, 760000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (537, 26, 22, 2, 3, 702000, CAST(N'2021-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (538, 9, 32, 1, 5, 2425000, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (539, 22, 20, 1, 5, 2035000, CAST(N'2021-02-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (540, 5, 17, 2, 6, 2238000, CAST(N'2021-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (541, 39, 37, 1, 5, 2380000, CAST(N'2021-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (542, 22, 11, 1, 3, 516000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (543, 7, 28, 2, 1, 297000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (544, 2, 29, 2, 2, 782000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (545, 13, 31, 1, 4, 1416000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (546, 45, 36, 1, 5, 1020000, CAST(N'2021-10-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (547, 8, 29, 2, 3, 1173000, CAST(N'2021-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (548, 29, 20, 1, 2, 814000, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (549, 47, 2, 2, 5, 1550000, CAST(N'2022-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (550, 28, 20, 2, 6, 2442000, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (551, 7, 10, 2, 5, 2490000, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (552, 28, 10, 2, 6, 2988000, CAST(N'2021-07-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (553, 23, 14, 1, 5, 1920000, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (554, 3, 1, 2, 4, 1052000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (555, 17, 7, 2, 1, 284000, CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (556, 13, 8, 1, 2, 514000, CAST(N'2021-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (557, 32, 18, 2, 5, 1880000, CAST(N'2022-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (558, 40, 24, 1, 2, 958000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (559, 29, 5, 1, 3, 708000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (560, 11, 35, 1, 1, 483000, CAST(N'2021-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (561, 6, 12, 1, 2, 274000, CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (562, 39, 12, 1, 5, 685000, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (563, 10, 26, 1, 6, 1686000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (564, 36, 18, 2, 6, 2256000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (565, 18, 21, 1, 1, 444000, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (566, 1, 38, 2, 4, 1996000, CAST(N'2021-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (567, 42, 21, 1, 4, 1776000, CAST(N'2021-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (568, 16, 34, 1, 1, 241000, CAST(N'2021-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (569, 13, 14, 1, 5, 1920000, CAST(N'2021-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (570, 3, 2, 2, 3, 930000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (571, 9, 38, 1, 2, 998000, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (572, 28, 37, 2, 4, 1904000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (573, 10, 13, 1, 1, 228000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (574, 29, 20, 1, 2, 814000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (575, 26, 30, 2, 5, 1155000, CAST(N'2021-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (576, 1, 18, 2, 4, 1504000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (577, 12, 7, 1, 3, 852000, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (578, 17, 29, 2, 6, 2346000, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (579, 21, 34, 2, 1, 241000, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (580, 4, 29, 1, 5, 1955000, CAST(N'2021-03-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (581, 7, 16, 2, 1, 402000, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (582, 46, 5, 1, 6, 1416000, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (583, 35, 7, 2, 6, 1704000, CAST(N'2021-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (584, 5, 38, 2, 2, 998000, CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (585, 46, 3, 1, 1, 190000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (586, 9, 29, 1, 6, 2346000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (587, 22, 16, 1, 2, 804000, CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (588, 3, 22, 2, 5, 1170000, CAST(N'2021-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (589, 15, 23, 2, 3, 867000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (590, 42, 6, 1, 3, 1101000, CAST(N'2021-08-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (591, 26, 3, 2, 4, 760000, CAST(N'2021-07-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (592, 26, 8, 2, 2, 514000, CAST(N'2021-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (593, 47, 31, 2, 4, 1416000, CAST(N'2021-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (594, 45, 30, 1, 6, 1386000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (595, 47, 23, 2, 4, 1156000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (596, 9, 34, 1, 6, 1446000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (597, 46, 5, 1, 3, 708000, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (598, 27, 6, 1, 4, 1468000, CAST(N'2021-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (599, 32, 7, 2, 5, 1420000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (600, 21, 20, 2, 4, 1628000, CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (601, 45, 12, 1, 6, 822000, CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (602, 34, 32, 1, 3, 1455000, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (603, 40, 19, 1, 3, 1140000, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (604, 39, 39, 1, 2, 720000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (605, 27, 23, 1, 4, 1156000, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (606, 17, 34, 2, 1, 241000, CAST(N'2022-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (607, 16, 1, 1, 5, 1315000, CAST(N'2021-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (608, 11, 8, 1, 2, 514000, CAST(N'2022-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (609, 45, 9, 1, 3, 1023000, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (610, 3, 5, 2, 2, 472000, CAST(N'2022-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (611, 45, 15, 1, 1, 350000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (612, 25, 5, 2, 5, 1180000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (613, 6, 17, 1, 6, 2238000, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (614, 28, 23, 2, 5, 1445000, CAST(N'2022-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (615, 22, 10, 1, 1, 498000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (616, 1, 14, 2, 5, 1920000, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (617, 1, 33, 2, 3, 837000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (618, 26, 19, 2, 5, 1900000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (619, 36, 10, 2, 1, 498000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (620, 46, 17, 1, 2, 746000, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (621, 29, 13, 1, 1, 228000, CAST(N'2021-12-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (622, 36, 33, 2, 3, 837000, CAST(N'2021-09-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (623, 9, 3, 1, 6, 1140000, CAST(N'2021-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (624, 18, 4, 1, 2, 462000, CAST(N'2022-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (625, 23, 32, 1, 1, 485000, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (626, 28, 5, 2, 4, 944000, CAST(N'2021-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (627, 14, 5, 1, 4, 944000, CAST(N'2021-12-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (628, 3, 34, 2, 5, 1205000, CAST(N'2021-03-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (629, 5, 22, 2, 3, 702000, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (630, 42, 29, 1, 1, 391000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (631, 26, 31, 2, 2, 708000, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (632, 10, 10, 1, 4, 1992000, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (633, 44, 18, 2, 6, 2256000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (634, 40, 33, 1, 2, 558000, CAST(N'2021-07-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (635, 6, 38, 1, 2, 998000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (636, 35, 35, 2, 4, 1932000, CAST(N'2021-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (637, 11, 34, 1, 3, 723000, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (638, 8, 19, 2, 1, 380000, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (639, 12, 4, 1, 2, 462000, CAST(N'2021-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (640, 23, 20, 1, 6, 2442000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (641, 35, 35, 2, 1, 483000, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (642, 26, 39, 2, 3, 1080000, CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (643, 6, 20, 1, 6, 2442000, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (644, 18, 33, 1, 2, 558000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (645, 25, 27, 2, 5, 1530000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (646, 46, 36, 1, 1, 204000, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (647, 47, 33, 2, 2, 558000, CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (648, 19, 13, 1, 3, 684000, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (649, 13, 17, 1, 2, 746000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (650, 35, 6, 2, 3, 1101000, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (651, 32, 14, 2, 4, 1536000, CAST(N'2021-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (652, 10, 35, 1, 3, 1449000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (653, 8, 7, 2, 1, 284000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (654, 39, 8, 1, 2, 514000, CAST(N'2021-08-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (655, 38, 16, 2, 6, 2412000, CAST(N'2021-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (656, 7, 16, 2, 4, 1608000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (657, 2, 31, 2, 1, 354000, CAST(N'2021-08-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (658, 24, 15, 1, 1, 350000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (659, 5, 35, 2, 5, 2415000, CAST(N'2021-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (660, 16, 9, 1, 6, 2046000, CAST(N'2021-05-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (661, 45, 36, 1, 3, 612000, CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (662, 42, 11, 1, 4, 688000, CAST(N'2021-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (663, 34, 27, 1, 6, 1836000, CAST(N'2022-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (664, 3, 33, 2, 3, 837000, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (665, 25, 28, 2, 5, 1485000, CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (666, 13, 31, 1, 1, 354000, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (667, 23, 21, 1, 1, 444000, CAST(N'2021-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (668, 45, 21, 1, 2, 888000, CAST(N'2022-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (669, 6, 18, 1, 3, 1128000, CAST(N'2021-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (670, 39, 33, 1, 1, 279000, CAST(N'2021-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (671, 32, 25, 2, 2, 468000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (672, 41, 22, 1, 3, 702000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (673, 35, 28, 2, 5, 1485000, CAST(N'2021-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (674, 1, 13, 2, 1, 228000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (675, 45, 38, 1, 2, 998000, CAST(N'2021-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (676, 10, 3, 1, 4, 760000, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (677, 18, 11, 1, 4, 688000, CAST(N'2021-03-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (678, 34, 17, 1, 4, 1492000, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (679, 10, 19, 1, 5, 1900000, CAST(N'2021-05-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (680, 31, 34, 1, 2, 482000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (681, 22, 13, 1, 6, 1368000, CAST(N'2021-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (682, 40, 13, 1, 5, 1140000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (683, 3, 21, 2, 6, 2664000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (684, 9, 17, 1, 1, 373000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (685, 28, 6, 2, 3, 1101000, CAST(N'2021-12-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (686, 10, 32, 1, 6, 2910000, CAST(N'2021-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (687, 19, 34, 1, 5, 1205000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (688, 2, 22, 2, 4, 936000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (689, 5, 2, 2, 2, 620000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (690, 40, 26, 1, 1, 281000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (691, 40, 13, 1, 3, 684000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (692, 5, 11, 2, 5, 860000, CAST(N'2021-05-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (693, 3, 25, 2, 3, 702000, CAST(N'2021-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (694, 23, 36, 1, 2, 408000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (695, 14, 31, 1, 5, 1770000, CAST(N'2021-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (696, 38, 5, 2, 6, 1416000, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (697, 40, 11, 1, 3, 516000, CAST(N'2021-06-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (698, 26, 4, 2, 4, 924000, CAST(N'2021-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (699, 23, 19, 1, 1, 380000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (700, 31, 9, 1, 4, 1364000, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (701, 21, 32, 2, 4, 1940000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (702, 14, 9, 1, 6, 2046000, CAST(N'2022-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (703, 10, 39, 1, 2, 720000, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (704, 25, 19, 2, 3, 1140000, CAST(N'2021-05-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (705, 32, 30, 2, 1, 231000, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (706, 12, 21, 1, 3, 1332000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (707, 42, 30, 1, 6, 1386000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (708, 46, 13, 1, 5, 1140000, CAST(N'2021-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (709, 36, 34, 2, 4, 964000, CAST(N'2021-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (710, 38, 16, 2, 6, 2412000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (711, 20, 5, 1, 2, 472000, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (712, 45, 4, 1, 6, 1386000, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (713, 27, 22, 1, 6, 1404000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (714, 42, 7, 1, 5, 1420000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (715, 45, 27, 1, 5, 1530000, CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (716, 25, 17, 2, 6, 2238000, CAST(N'2021-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (717, 40, 39, 1, 4, 1440000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (718, 10, 13, 1, 6, 1368000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (719, 11, 27, 1, 5, 1530000, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (720, 3, 1, 2, 5, 1315000, CAST(N'2021-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (721, 34, 4, 1, 5, 1155000, CAST(N'2021-12-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (722, 16, 8, 1, 1, 257000, CAST(N'2021-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (723, 20, 28, 1, 2, 594000, CAST(N'2022-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (724, 45, 23, 1, 1, 289000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (725, 14, 29, 1, 1, 391000, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (726, 43, 33, 2, 2, 558000, CAST(N'2021-05-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (727, 13, 15, 1, 5, 1750000, CAST(N'2021-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (728, 11, 25, 1, 4, 936000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (729, 6, 8, 1, 5, 1285000, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (730, 39, 39, 1, 1, 360000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (731, 30, 27, 1, 1, 306000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (732, 32, 36, 2, 6, 1224000, CAST(N'2021-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (733, 26, 31, 2, 6, 2124000, CAST(N'2021-06-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (734, 25, 11, 2, 6, 1032000, CAST(N'2021-03-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (735, 13, 14, 1, 3, 1152000, CAST(N'2021-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (736, 5, 17, 2, 2, 746000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (737, 30, 6, 1, 5, 1835000, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (738, 25, 38, 2, 1, 499000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (739, 7, 9, 2, 2, 682000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (740, 40, 2, 1, 6, 1860000, CAST(N'2022-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (741, 4, 1, 1, 5, 1315000, CAST(N'2022-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (742, 20, 4, 1, 5, 1155000, CAST(N'2022-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (743, 34, 2, 1, 4, 1240000, CAST(N'2021-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (744, 16, 28, 1, 1, 297000, CAST(N'2021-09-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (745, 26, 29, 2, 3, 1173000, CAST(N'2021-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (746, 39, 5, 1, 2, 472000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (747, 34, 23, 1, 2, 578000, CAST(N'2021-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (748, 38, 25, 2, 4, 936000, CAST(N'2021-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (749, 4, 4, 1, 6, 1386000, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (750, 43, 22, 2, 2, 468000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (751, 44, 16, 2, 1, 402000, CAST(N'2021-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (752, 41, 16, 1, 3, 1206000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (753, 7, 33, 2, 2, 558000, CAST(N'2021-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (754, 32, 34, 2, 1, 241000, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (755, 41, 19, 1, 1, 380000, CAST(N'2021-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (756, 5, 25, 2, 4, 936000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (757, 1, 10, 2, 6, 2988000, CAST(N'2021-06-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (758, 4, 16, 1, 3, 1206000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (759, 47, 39, 2, 2, 720000, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (760, 6, 7, 1, 5, 1420000, CAST(N'2021-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (761, 26, 22, 2, 2, 468000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (762, 4, 6, 1, 5, 1835000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (763, 24, 32, 1, 3, 1455000, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (764, 1, 23, 2, 4, 1156000, CAST(N'2021-12-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (765, 10, 16, 1, 6, 2412000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (766, 15, 20, 2, 5, 2035000, CAST(N'2021-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (767, 33, 25, 2, 4, 936000, CAST(N'2022-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (768, 24, 27, 1, 3, 918000, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (769, 11, 35, 1, 2, 966000, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (770, 17, 2, 2, 2, 620000, CAST(N'2021-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (771, 40, 7, 1, 1, 284000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (772, 20, 17, 1, 5, 1865000, CAST(N'2021-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (773, 13, 6, 1, 1, 367000, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (774, 13, 21, 1, 6, 2664000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (775, 41, 9, 1, 6, 2046000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (776, 29, 39, 1, 5, 1800000, CAST(N'2021-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (777, 1, 20, 2, 3, 1221000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (778, 31, 29, 1, 4, 1564000, CAST(N'2021-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (779, 9, 22, 1, 2, 468000, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (780, 24, 10, 1, 5, 2490000, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (781, 15, 23, 2, 2, 578000, CAST(N'2021-12-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (782, 23, 26, 1, 4, 1124000, CAST(N'2021-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (783, 32, 3, 2, 6, 1140000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (784, 12, 23, 1, 1, 289000, CAST(N'2021-06-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (785, 44, 20, 2, 3, 1221000, CAST(N'2022-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (786, 30, 5, 1, 1, 236000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (787, 23, 4, 1, 2, 462000, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (788, 7, 5, 2, 6, 1416000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (789, 7, 35, 2, 5, 2415000, CAST(N'2021-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (790, 8, 5, 2, 6, 1416000, CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (791, 21, 33, 2, 5, 1395000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (792, 42, 5, 1, 4, 944000, CAST(N'2021-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (793, 14, 5, 1, 6, 1416000, CAST(N'2021-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (794, 24, 24, 1, 3, 1437000, CAST(N'2021-07-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (795, 40, 39, 1, 4, 1440000, CAST(N'2021-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (796, 47, 24, 2, 1, 479000, CAST(N'2021-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (797, 32, 26, 2, 2, 562000, CAST(N'2021-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (798, 19, 7, 1, 5, 1420000, CAST(N'2021-12-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (799, 46, 5, 1, 6, 1416000, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (800, 21, 38, 2, 5, 2495000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (801, 34, 11, 1, 6, 1032000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (802, 7, 22, 2, 3, 702000, CAST(N'2021-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (803, 19, 1, 1, 1, 263000, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (804, 38, 39, 2, 6, 2160000, CAST(N'2021-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (805, 1, 14, 2, 2, 768000, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (806, 13, 16, 1, 6, 2412000, CAST(N'2021-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (807, 26, 2, 2, 4, 1240000, CAST(N'2021-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (808, 30, 22, 1, 2, 468000, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (809, 31, 7, 1, 3, 852000, CAST(N'2021-10-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (810, 20, 26, 1, 4, 1124000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (811, 25, 6, 2, 3, 1101000, CAST(N'2021-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (812, 1, 23, 2, 1, 289000, CAST(N'2021-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (813, 18, 11, 1, 1, 172000, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (814, 19, 27, 1, 3, 918000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (815, 4, 27, 1, 1, 306000, CAST(N'2021-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (816, 14, 22, 1, 2, 468000, CAST(N'2021-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (817, 27, 23, 1, 1, 289000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (818, 37, 17, 2, 3, 1119000, CAST(N'2021-06-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (819, 3, 28, 2, 6, 1782000, CAST(N'2021-12-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (820, 28, 4, 2, 1, 231000, CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (821, 25, 13, 2, 1, 228000, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (822, 42, 13, 1, 4, 912000, CAST(N'2021-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (823, 13, 14, 1, 5, 1920000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (824, 3, 36, 2, 6, 1224000, CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (825, 22, 1, 1, 3, 789000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (826, 42, 8, 1, 1, 257000, CAST(N'2021-03-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (827, 40, 18, 1, 2, 752000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (828, 33, 20, 2, 1, 407000, CAST(N'2022-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (829, 13, 38, 1, 5, 2495000, CAST(N'2021-06-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (830, 41, 8, 1, 6, 1542000, CAST(N'2021-12-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (831, 26, 16, 2, 1, 402000, CAST(N'2021-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (832, 5, 5, 2, 5, 1180000, CAST(N'2021-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (833, 18, 2, 1, 3, 930000, CAST(N'2021-03-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (834, 32, 39, 2, 4, 1440000, CAST(N'2021-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (835, 26, 15, 2, 3, 1050000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (836, 11, 18, 1, 1, 376000, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (837, 43, 2, 2, 6, 1860000, CAST(N'2021-11-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (838, 22, 27, 1, 4, 1224000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (839, 45, 39, 1, 1, 360000, CAST(N'2021-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (840, 44, 34, 2, 1, 241000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (841, 1, 16, 2, 6, 2412000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (842, 1, 31, 2, 3, 1062000, CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (843, 25, 38, 2, 6, 2994000, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (844, 31, 10, 1, 4, 1992000, CAST(N'2021-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (845, 41, 21, 1, 2, 888000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (846, 10, 1, 1, 4, 1052000, CAST(N'2021-12-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (847, 47, 24, 2, 5, 2395000, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (848, 6, 13, 1, 2, 456000, CAST(N'2021-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (849, 18, 35, 1, 4, 1932000, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (850, 40, 3, 1, 5, 950000, CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (851, 24, 21, 1, 2, 888000, CAST(N'2021-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (852, 8, 5, 2, 2, 472000, CAST(N'2021-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (853, 46, 36, 1, 1, 204000, CAST(N'2021-03-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (854, 10, 31, 1, 3, 1062000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (855, 18, 9, 1, 3, 1023000, CAST(N'2021-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (856, 6, 31, 1, 6, 2124000, CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (857, 44, 34, 2, 1, 241000, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (858, 16, 22, 1, 5, 1170000, CAST(N'2021-11-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (859, 29, 23, 1, 3, 867000, CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (860, 30, 16, 1, 6, 2412000, CAST(N'2021-05-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (861, 16, 27, 1, 2, 612000, CAST(N'2022-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (862, 10, 13, 1, 5, 1140000, CAST(N'2021-10-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (863, 9, 16, 1, 3, 1206000, CAST(N'2021-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (864, 7, 33, 2, 2, 558000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (865, 9, 38, 1, 2, 998000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (866, 17, 4, 2, 2, 462000, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (867, 33, 13, 2, 1, 228000, CAST(N'2021-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (868, 40, 24, 1, 3, 1437000, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (869, 43, 18, 2, 4, 1504000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (870, 31, 6, 1, 5, 1835000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (871, 21, 33, 2, 3, 837000, CAST(N'2021-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (872, 4, 6, 1, 2, 734000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (873, 42, 5, 1, 5, 1180000, CAST(N'2022-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (874, 20, 12, 1, 6, 822000, CAST(N'2021-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (875, 8, 20, 2, 2, 814000, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (876, 6, 6, 1, 3, 1101000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (877, 29, 2, 1, 4, 1240000, CAST(N'2021-04-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (878, 41, 9, 1, 1, 341000, CAST(N'2021-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (879, 18, 17, 1, 4, 1492000, CAST(N'2021-12-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (880, 31, 3, 1, 5, 950000, CAST(N'2021-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (881, 41, 10, 1, 4, 1992000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (882, 35, 2, 2, 3, 930000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (883, 12, 36, 1, 4, 816000, CAST(N'2021-10-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (884, 30, 17, 1, 5, 1865000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (885, 11, 26, 1, 3, 843000, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (886, 24, 3, 1, 6, 1140000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (887, 46, 13, 1, 6, 1368000, CAST(N'2021-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (888, 30, 26, 1, 5, 1405000, CAST(N'2021-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (889, 31, 26, 1, 4, 1124000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (890, 21, 9, 2, 2, 682000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (891, 1, 32, 2, 4, 1940000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (892, 29, 23, 1, 1, 289000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (893, 35, 7, 2, 6, 1704000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (894, 16, 29, 1, 4, 1564000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (895, 29, 1, 1, 4, 1052000, CAST(N'2021-03-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (896, 21, 38, 2, 6, 2994000, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (897, 36, 9, 2, 3, 1023000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (898, 21, 15, 2, 4, 1400000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (899, 14, 6, 1, 5, 1835000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (900, 37, 19, 2, 4, 1520000, CAST(N'2021-08-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (901, 44, 24, 2, 2, 958000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (902, 10, 6, 1, 6, 2202000, CAST(N'2021-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (903, 27, 6, 1, 3, 1101000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (904, 47, 19, 2, 2, 760000, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (905, 21, 33, 2, 5, 1395000, CAST(N'2021-08-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (906, 33, 14, 2, 6, 2304000, CAST(N'2021-12-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (907, 19, 26, 1, 3, 843000, CAST(N'2021-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (908, 20, 33, 1, 4, 1116000, CAST(N'2021-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (909, 11, 31, 1, 1, 354000, CAST(N'2021-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (910, 29, 30, 1, 5, 1155000, CAST(N'2021-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (911, 16, 37, 1, 5, 2380000, CAST(N'2021-04-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (912, 24, 8, 1, 1, 257000, CAST(N'2021-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (913, 22, 13, 1, 4, 912000, CAST(N'2021-04-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (914, 28, 25, 2, 4, 936000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (915, 36, 4, 2, 3, 693000, CAST(N'2021-11-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (916, 22, 16, 1, 4, 1608000, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (917, 12, 5, 1, 4, 944000, CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (918, 27, 37, 1, 2, 952000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (919, 11, 23, 1, 1, 289000, CAST(N'2021-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (920, 22, 18, 1, 3, 1128000, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (921, 44, 6, 2, 5, 1835000, CAST(N'2021-06-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (922, 12, 16, 1, 5, 2010000, CAST(N'2021-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (923, 12, 19, 1, 4, 1520000, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (924, 41, 10, 1, 3, 1494000, CAST(N'2021-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (925, 12, 2, 1, 4, 1240000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (926, 3, 34, 2, 2, 482000, CAST(N'2021-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (927, 46, 10, 1, 5, 2490000, CAST(N'2021-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (928, 42, 27, 1, 6, 1836000, CAST(N'2021-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (929, 20, 19, 1, 6, 2280000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (930, 2, 19, 2, 2, 760000, CAST(N'2021-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (931, 32, 12, 2, 1, 137000, CAST(N'2021-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (932, 15, 31, 2, 2, 708000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (933, 15, 2, 2, 6, 1860000, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (934, 8, 38, 2, 3, 1497000, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (935, 21, 16, 2, 6, 2412000, CAST(N'2021-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (936, 13, 2, 1, 1, 310000, CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (937, 8, 5, 2, 6, 1416000, CAST(N'2021-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (938, 38, 30, 2, 1, 231000, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (939, 1, 33, 2, 1, 279000, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (940, 11, 35, 1, 6, 2898000, CAST(N'2022-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (941, 1, 11, 2, 4, 688000, CAST(N'2021-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (942, 27, 37, 1, 3, 1428000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (943, 15, 28, 2, 3, 891000, CAST(N'2021-11-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (944, 29, 5, 1, 4, 944000, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (945, 28, 19, 2, 1, 380000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (946, 6, 38, 1, 3, 1497000, CAST(N'2021-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (947, 3, 10, 2, 3, 1494000, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (948, 15, 26, 2, 6, 1686000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (949, 20, 38, 1, 3, 1497000, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (950, 15, 34, 2, 1, 241000, CAST(N'2021-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (951, 4, 8, 1, 4, 1028000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (952, 10, 10, 1, 5, 2490000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (953, 42, 21, 1, 3, 1332000, CAST(N'2021-01-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (954, 21, 31, 2, 6, 2124000, CAST(N'2021-09-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (955, 42, 36, 1, 5, 1020000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (956, 1, 9, 2, 5, 1705000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (957, 23, 28, 1, 4, 1188000, CAST(N'2021-03-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (958, 24, 9, 1, 5, 1705000, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (959, 40, 34, 1, 6, 1446000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (960, 21, 30, 2, 5, 1155000, CAST(N'2021-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (961, 42, 37, 1, 1, 476000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (962, 17, 32, 2, 5, 2425000, CAST(N'2021-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (963, 41, 18, 1, 1, 376000, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (964, 13, 21, 1, 6, 2664000, CAST(N'2022-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (965, 2, 12, 2, 4, 548000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (966, 24, 31, 1, 5, 1770000, CAST(N'2021-10-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (967, 13, 38, 1, 3, 1497000, CAST(N'2021-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (968, 13, 7, 1, 4, 1136000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (969, 23, 5, 1, 1, 236000, CAST(N'2021-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (970, 42, 11, 1, 3, 516000, CAST(N'2021-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (971, 27, 27, 1, 2, 612000, CAST(N'2021-02-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (972, 10, 31, 1, 2, 708000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (973, 4, 32, 1, 1, 485000, CAST(N'2021-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (974, 40, 33, 1, 2, 558000, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (975, 28, 8, 2, 1, 257000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (976, 1, 13, 2, 5, 1140000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (977, 43, 5, 2, 6, 1416000, CAST(N'2021-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (978, 38, 37, 2, 3, 1428000, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (979, 34, 10, 1, 2, 996000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (980, 32, 26, 2, 6, 1686000, CAST(N'2021-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (981, 27, 8, 1, 1, 257000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (982, 5, 34, 2, 3, 723000, CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (983, 17, 18, 2, 4, 1504000, CAST(N'2021-02-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (984, 11, 8, 1, 6, 1542000, CAST(N'2021-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (985, 27, 16, 1, 3, 1206000, CAST(N'2021-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (986, 43, 39, 2, 1, 360000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (987, 3, 13, 2, 6, 1368000, CAST(N'2021-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (988, 12, 8, 1, 1, 257000, CAST(N'2021-03-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (989, 25, 19, 2, 2, 760000, CAST(N'2021-10-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (990, 18, 7, 1, 6, 1704000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (991, 40, 38, 1, 5, 2495000, CAST(N'2021-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (992, 6, 25, 1, 1, 234000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (993, 32, 30, 2, 4, 924000, CAST(N'2021-07-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (994, 3, 29, 2, 1, 391000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (995, 45, 6, 1, 1, 367000, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (996, 32, 15, 2, 3, 1050000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (997, 15, 2, 2, 2, 620000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (998, 31, 13, 1, 4, 912000, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (999, 21, 27, 2, 1, 306000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1000, 43, 24, 2, 4, 1916000, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1001, 34, 32, 1, 1, 485000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1002, 38, 10, 2, 4, 1992000, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1003, 28, 12, 2, 6, 822000, CAST(N'2021-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1004, 34, 10, 1, 3, 1494000, CAST(N'2021-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1005, 21, 8, 2, 6, 1542000, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1006, 35, 34, 2, 2, 482000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1007, 11, 25, 1, 5, 1170000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1008, 20, 14, 1, 5, 1920000, CAST(N'2021-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1009, 46, 19, 1, 6, 2280000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1010, 25, 37, 2, 4, 1904000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1011, 9, 31, 1, 3, 1062000, CAST(N'2021-12-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1012, 9, 12, 1, 6, 822000, CAST(N'2021-06-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1013, 43, 13, 2, 6, 1368000, CAST(N'2021-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1014, 19, 34, 1, 5, 1205000, CAST(N'2021-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1015, 16, 10, 1, 3, 1494000, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1016, 14, 27, 1, 6, 1836000, CAST(N'2021-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1017, 32, 20, 2, 2, 814000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1018, 8, 29, 2, 2, 782000, CAST(N'2021-10-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1019, 31, 15, 1, 2, 700000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1020, 44, 13, 2, 4, 912000, CAST(N'2021-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1021, 41, 32, 1, 6, 2910000, CAST(N'2021-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1022, 39, 38, 1, 4, 1996000, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1023, 41, 24, 1, 2, 958000, CAST(N'2021-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1024, 1, 10, 2, 5, 2490000, CAST(N'2021-06-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1025, 22, 4, 1, 6, 1386000, CAST(N'2021-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1026, 26, 22, 2, 5, 1170000, CAST(N'2021-08-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1027, 21, 29, 2, 3, 1173000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1028, 42, 25, 1, 1, 234000, CAST(N'2021-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1029, 8, 35, 2, 4, 1932000, CAST(N'2021-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1030, 25, 27, 2, 6, 1836000, CAST(N'2021-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1031, 7, 10, 2, 5, 2490000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1032, 32, 7, 2, 4, 1136000, CAST(N'2021-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1033, 8, 33, 2, 4, 1116000, CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1034, 43, 11, 2, 5, 860000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1035, 41, 16, 1, 6, 2412000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1036, 43, 24, 2, 1, 479000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1037, 45, 24, 1, 5, 2395000, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1038, 38, 9, 2, 2, 682000, CAST(N'2021-05-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1039, 18, 2, 1, 1, 310000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1040, 4, 36, 1, 1, 204000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1041, 43, 32, 2, 3, 1455000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1042, 46, 20, 1, 3, 1221000, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1043, 14, 9, 1, 2, 682000, CAST(N'2021-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1044, 11, 35, 1, 6, 2898000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1045, 30, 29, 1, 6, 2346000, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1046, 42, 35, 1, 1, 483000, CAST(N'2021-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1047, 20, 24, 1, 4, 1916000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1048, 40, 9, 1, 4, 1364000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1049, 9, 19, 1, 5, 1900000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1050, 42, 14, 1, 3, 1152000, CAST(N'2021-10-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1051, 14, 2, 1, 2, 620000, CAST(N'2021-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1052, 2, 27, 2, 3, 918000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1053, 23, 31, 1, 2, 708000, CAST(N'2021-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1054, 15, 24, 2, 4, 1916000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1055, 12, 30, 1, 4, 924000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1056, 37, 20, 2, 5, 2035000, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1057, 29, 19, 1, 2, 760000, CAST(N'2021-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1058, 15, 36, 2, 4, 816000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1059, 9, 6, 1, 2, 734000, CAST(N'2021-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1060, 36, 25, 2, 4, 936000, CAST(N'2022-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1061, 36, 15, 2, 1, 350000, CAST(N'2021-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1062, 9, 33, 1, 4, 1116000, CAST(N'2021-09-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1063, 17, 30, 2, 5, 1155000, CAST(N'2021-09-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1064, 1, 9, 2, 5, 1705000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1065, 26, 30, 2, 4, 924000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1066, 40, 19, 1, 4, 1520000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1067, 45, 13, 1, 6, 1368000, CAST(N'2021-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1068, 33, 18, 2, 1, 376000, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1069, 29, 5, 1, 4, 944000, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1070, 18, 6, 1, 6, 2202000, CAST(N'2021-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1071, 30, 39, 1, 1, 360000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1072, 39, 23, 1, 4, 1156000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1073, 41, 22, 1, 4, 936000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1074, 25, 39, 2, 5, 1800000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1075, 45, 22, 1, 6, 1404000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1076, 17, 28, 2, 3, 891000, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1077, 7, 29, 2, 5, 1955000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1078, 25, 20, 2, 1, 407000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1079, 22, 16, 1, 4, 1608000, CAST(N'2021-04-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1080, 21, 15, 2, 4, 1400000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1081, 10, 32, 1, 3, 1455000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1082, 8, 20, 2, 4, 1628000, CAST(N'2021-06-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1083, 21, 9, 2, 1, 341000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1084, 3, 9, 2, 1, 341000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1085, 39, 39, 1, 3, 1080000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1086, 4, 20, 1, 1, 407000, CAST(N'2021-04-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1087, 32, 21, 2, 5, 2220000, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1088, 29, 37, 1, 1, 476000, CAST(N'2021-12-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1089, 8, 8, 2, 6, 1542000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1090, 21, 1, 2, 5, 1315000, CAST(N'2021-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1091, 1, 29, 2, 3, 1173000, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1092, 5, 14, 2, 5, 1920000, CAST(N'2021-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1093, 44, 8, 2, 3, 771000, CAST(N'2021-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1094, 29, 25, 1, 3, 702000, CAST(N'2021-02-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1095, 1, 31, 2, 3, 1062000, CAST(N'2021-05-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1096, 1, 32, 2, 1, 485000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1097, 45, 29, 1, 3, 1173000, CAST(N'2021-06-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1098, 15, 10, 2, 6, 2988000, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1099, 45, 11, 1, 1, 172000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1100, 21, 12, 2, 6, 822000, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1101, 6, 9, 1, 2, 682000, CAST(N'2021-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1102, 46, 9, 1, 4, 1364000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1103, 36, 38, 2, 5, 2495000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1104, 18, 26, 1, 2, 562000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1105, 42, 30, 1, 4, 924000, CAST(N'2021-07-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1106, 27, 21, 1, 2, 888000, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1107, 4, 16, 1, 6, 2412000, CAST(N'2022-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1108, 22, 17, 1, 5, 1865000, CAST(N'2021-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1109, 2, 6, 2, 3, 1101000, CAST(N'2021-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1110, 21, 18, 2, 6, 2256000, CAST(N'2021-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1111, 24, 27, 1, 5, 1530000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1112, 27, 12, 1, 3, 411000, CAST(N'2021-07-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1113, 2, 17, 2, 1, 373000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1114, 24, 30, 1, 1, 231000, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1115, 33, 20, 2, 1, 407000, CAST(N'2021-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1116, 44, 28, 2, 6, 1782000, CAST(N'2021-08-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1117, 9, 4, 1, 2, 462000, CAST(N'2021-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1118, 20, 29, 1, 5, 1955000, CAST(N'2021-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1119, 13, 33, 1, 6, 1674000, CAST(N'2021-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1120, 14, 23, 1, 6, 1734000, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1121, 22, 24, 1, 5, 2395000, CAST(N'2022-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1122, 3, 38, 2, 5, 2495000, CAST(N'2021-11-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1123, 33, 18, 2, 5, 1880000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1124, 16, 31, 1, 4, 1416000, CAST(N'2021-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1125, 35, 23, 2, 1, 289000, CAST(N'2021-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1126, 17, 23, 2, 3, 867000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1127, 40, 22, 1, 4, 936000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1128, 31, 19, 1, 5, 1900000, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1129, 37, 11, 2, 1, 172000, CAST(N'2021-04-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1130, 16, 14, 1, 6, 2304000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1131, 40, 26, 1, 5, 1405000, CAST(N'2021-02-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1132, 43, 5, 2, 2, 472000, CAST(N'2021-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1133, 11, 22, 1, 2, 468000, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1134, 47, 36, 2, 3, 612000, CAST(N'2021-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1135, 3, 32, 2, 3, 1455000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1136, 23, 3, 1, 2, 380000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1137, 13, 22, 1, 2, 468000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1138, 32, 23, 2, 4, 1156000, CAST(N'2021-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1139, 24, 5, 1, 3, 708000, CAST(N'2021-04-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1140, 33, 7, 2, 4, 1136000, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1141, 5, 34, 2, 5, 1205000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1142, 45, 15, 1, 1, 350000, CAST(N'2022-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1143, 12, 23, 1, 4, 1156000, CAST(N'2021-06-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1144, 21, 12, 2, 3, 411000, CAST(N'2021-08-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1145, 41, 18, 1, 3, 1128000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1146, 24, 27, 1, 2, 612000, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1147, 30, 9, 1, 4, 1364000, CAST(N'2021-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1148, 45, 33, 1, 5, 1395000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1149, 23, 25, 1, 5, 1170000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1150, 26, 23, 2, 2, 578000, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1151, 24, 35, 1, 5, 2415000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1152, 2, 14, 2, 4, 1536000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1153, 14, 11, 1, 2, 344000, CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1154, 36, 5, 2, 4, 944000, CAST(N'2021-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1155, 37, 3, 2, 1, 190000, CAST(N'2021-03-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1156, 47, 12, 2, 2, 274000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1157, 21, 3, 2, 3, 570000, CAST(N'2021-12-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1158, 17, 39, 2, 3, 1080000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1159, 36, 10, 2, 2, 996000, CAST(N'2021-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1160, 10, 36, 1, 5, 1020000, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1161, 46, 13, 1, 4, 912000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1162, 15, 5, 2, 1, 236000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1163, 42, 37, 1, 1, 476000, CAST(N'2022-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1164, 27, 12, 1, 5, 685000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1165, 4, 9, 1, 5, 1705000, CAST(N'2021-03-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1166, 6, 1, 1, 6, 1578000, CAST(N'2021-07-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1167, 31, 21, 1, 1, 444000, CAST(N'2021-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1168, 37, 29, 2, 6, 2346000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1169, 28, 31, 2, 1, 354000, CAST(N'2021-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1170, 23, 21, 1, 5, 2220000, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1171, 32, 20, 2, 1, 407000, CAST(N'2021-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1172, 40, 34, 1, 5, 1205000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1173, 3, 14, 2, 3, 1152000, CAST(N'2021-08-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1174, 15, 21, 2, 4, 1776000, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1175, 19, 3, 1, 3, 570000, CAST(N'2022-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1176, 33, 24, 2, 4, 1916000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1177, 19, 11, 1, 2, 344000, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1178, 28, 19, 2, 1, 380000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1179, 45, 4, 1, 4, 924000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1180, 36, 4, 2, 3, 693000, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1181, 43, 4, 2, 1, 231000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1182, 38, 26, 2, 4, 1124000, CAST(N'2021-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1183, 28, 33, 2, 2, 558000, CAST(N'2021-03-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1184, 47, 25, 2, 3, 702000, CAST(N'2021-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1185, 36, 16, 2, 1, 402000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1186, 28, 39, 2, 5, 1800000, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1187, 20, 34, 1, 3, 723000, CAST(N'2021-09-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1188, 34, 13, 1, 6, 1368000, CAST(N'2021-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1189, 39, 30, 1, 6, 1386000, CAST(N'2021-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1190, 17, 33, 2, 1, 279000, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1191, 46, 2, 1, 5, 1550000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1192, 22, 22, 1, 3, 702000, CAST(N'2021-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1193, 4, 30, 1, 6, 1386000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1194, 12, 37, 1, 3, 1428000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1195, 7, 29, 2, 1, 391000, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1196, 38, 3, 2, 4, 760000, CAST(N'2021-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1197, 3, 4, 2, 2, 462000, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1198, 35, 12, 2, 5, 685000, CAST(N'2021-02-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1199, 12, 8, 1, 6, 1542000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1200, 18, 20, 1, 6, 2442000, CAST(N'2021-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1201, 17, 4, 2, 5, 1155000, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1202, 44, 33, 2, 1, 279000, CAST(N'2021-06-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1203, 47, 5, 2, 2, 472000, CAST(N'2021-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1204, 23, 21, 1, 4, 1776000, CAST(N'2021-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1205, 10, 36, 1, 6, 1224000, CAST(N'2022-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1206, 19, 22, 1, 1, 234000, CAST(N'2021-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1207, 25, 3, 2, 4, 760000, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1208, 34, 9, 1, 6, 2046000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1209, 35, 19, 2, 2, 760000, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1210, 22, 12, 1, 6, 822000, CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1211, 14, 21, 1, 1, 444000, CAST(N'2021-05-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1212, 2, 26, 2, 3, 843000, CAST(N'2021-08-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1213, 41, 6, 1, 4, 1468000, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1214, 13, 3, 1, 1, 190000, CAST(N'2021-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1215, 17, 11, 2, 3, 516000, CAST(N'2021-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1216, 43, 15, 2, 4, 1400000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1217, 1, 39, 2, 1, 360000, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1218, 20, 1, 1, 1, 263000, CAST(N'2021-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1219, 33, 1, 2, 5, 1315000, CAST(N'2021-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1220, 34, 12, 1, 3, 411000, CAST(N'2021-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1221, 21, 11, 2, 4, 688000, CAST(N'2021-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1222, 11, 35, 1, 3, 1449000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1223, 10, 22, 1, 3, 702000, CAST(N'2022-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1224, 42, 3, 1, 4, 760000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1225, 23, 37, 1, 1, 476000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1226, 20, 17, 1, 6, 2238000, CAST(N'2021-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1227, 39, 6, 1, 4, 1468000, CAST(N'2021-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1228, 7, 10, 2, 5, 2490000, CAST(N'2021-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1229, 8, 33, 2, 3, 837000, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1230, 30, 27, 1, 5, 1530000, CAST(N'2021-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1231, 46, 4, 1, 1, 231000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1232, 14, 30, 1, 4, 924000, CAST(N'2021-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1233, 30, 35, 1, 3, 1449000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1234, 20, 21, 1, 2, 888000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1235, 39, 35, 1, 6, 2898000, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1236, 22, 2, 1, 6, 1860000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1237, 19, 37, 1, 3, 1428000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1238, 40, 2, 1, 2, 620000, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1239, 23, 10, 1, 1, 498000, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1240, 36, 13, 2, 6, 1368000, CAST(N'2022-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1241, 25, 33, 2, 1, 279000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1242, 17, 29, 2, 3, 1173000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1243, 26, 1, 2, 1, 263000, CAST(N'2021-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1244, 47, 16, 2, 6, 2412000, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1245, 11, 25, 1, 6, 1404000, CAST(N'2022-01-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1246, 12, 30, 1, 2, 462000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1247, 30, 24, 1, 5, 2395000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1248, 2, 1, 2, 6, 1578000, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1249, 26, 29, 2, 2, 782000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1250, 1, 29, 2, 1, 391000, CAST(N'2022-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1251, 42, 10, 1, 5, 2490000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1252, 31, 5, 1, 2, 472000, CAST(N'2021-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1253, 18, 8, 1, 4, 1028000, CAST(N'2022-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1254, 18, 36, 1, 6, 1224000, CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1255, 34, 27, 1, 5, 1530000, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1256, 26, 3, 2, 5, 950000, CAST(N'2021-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1257, 24, 25, 1, 5, 1170000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1258, 16, 37, 1, 5, 2380000, CAST(N'2021-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1259, 15, 16, 2, 5, 2010000, CAST(N'2021-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1260, 7, 24, 2, 2, 958000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1261, 7, 16, 2, 5, 2010000, CAST(N'2021-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1262, 34, 8, 1, 2, 514000, CAST(N'2021-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1263, 19, 32, 1, 6, 2910000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1264, 1, 16, 2, 3, 1206000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1265, 9, 15, 1, 5, 1750000, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1266, 36, 4, 2, 5, 1155000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1267, 35, 3, 2, 6, 1140000, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1268, 28, 32, 2, 3, 1455000, CAST(N'2021-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1269, 32, 18, 2, 3, 1128000, CAST(N'2021-12-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1270, 14, 21, 1, 1, 444000, CAST(N'2021-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1271, 29, 20, 1, 6, 2442000, CAST(N'2021-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1272, 37, 28, 2, 6, 1782000, CAST(N'2021-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1273, 47, 37, 2, 4, 1904000, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1274, 12, 19, 1, 3, 1140000, CAST(N'2021-12-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1275, 17, 16, 2, 2, 804000, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1276, 33, 23, 2, 4, 1156000, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1277, 9, 38, 1, 4, 1996000, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1278, 28, 10, 2, 5, 2490000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1279, 16, 3, 1, 3, 570000, CAST(N'2021-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1280, 46, 36, 1, 4, 816000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1281, 3, 3, 2, 5, 950000, CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1282, 44, 22, 2, 6, 1404000, CAST(N'2021-11-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1283, 32, 11, 2, 3, 516000, CAST(N'2021-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1284, 12, 9, 1, 1, 341000, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1285, 15, 21, 2, 5, 2220000, CAST(N'2021-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1286, 6, 31, 1, 1, 354000, CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1287, 13, 7, 1, 3, 852000, CAST(N'2021-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1288, 47, 27, 2, 3, 918000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1289, 2, 20, 2, 1, 407000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1290, 3, 15, 2, 4, 1400000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1291, 42, 9, 1, 2, 682000, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1292, 1, 13, 2, 5, 1140000, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1293, 30, 11, 1, 4, 688000, CAST(N'2022-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1294, 46, 24, 1, 4, 1916000, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1295, 6, 39, 1, 6, 2160000, CAST(N'2022-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1296, 9, 4, 1, 5, 1155000, CAST(N'2021-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1297, 12, 25, 1, 2, 468000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1298, 7, 17, 2, 1, 373000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1299, 28, 18, 2, 6, 2256000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1300, 2, 31, 2, 5, 1770000, CAST(N'2021-06-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1301, 11, 34, 1, 3, 723000, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1302, 19, 7, 1, 3, 852000, CAST(N'2021-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1303, 11, 15, 1, 2, 700000, CAST(N'2021-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1304, 27, 5, 1, 1, 236000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1305, 22, 39, 1, 1, 360000, CAST(N'2021-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1306, 18, 18, 1, 2, 752000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1307, 16, 35, 1, 5, 2415000, CAST(N'2021-10-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1308, 27, 32, 1, 1, 485000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1309, 13, 5, 1, 2, 472000, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1310, 35, 19, 2, 4, 1520000, CAST(N'2021-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1311, 37, 31, 2, 3, 1062000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1312, 35, 5, 2, 3, 708000, CAST(N'2021-07-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1313, 8, 8, 2, 4, 1028000, CAST(N'2021-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1314, 23, 26, 1, 5, 1405000, CAST(N'2021-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1315, 32, 3, 2, 5, 950000, CAST(N'2021-12-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1316, 43, 39, 2, 3, 1080000, CAST(N'2021-10-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1317, 13, 30, 1, 1, 231000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1318, 37, 15, 2, 5, 1750000, CAST(N'2021-05-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1319, 9, 4, 1, 1, 231000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1320, 34, 2, 1, 2, 620000, CAST(N'2021-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1321, 5, 29, 2, 1, 391000, CAST(N'2021-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1322, 23, 9, 1, 3, 1023000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1323, 3, 13, 2, 2, 456000, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1324, 39, 37, 1, 4, 1904000, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1325, 29, 14, 1, 6, 2304000, CAST(N'2021-08-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1326, 8, 16, 2, 6, 2412000, CAST(N'2021-07-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1327, 6, 9, 1, 5, 1705000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1328, 6, 8, 1, 2, 514000, CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1329, 12, 29, 1, 5, 1955000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1330, 6, 28, 1, 6, 1782000, CAST(N'2021-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1331, 29, 4, 1, 2, 462000, CAST(N'2021-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1332, 12, 39, 1, 3, 1080000, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1333, 42, 27, 1, 6, 1836000, CAST(N'2021-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1334, 39, 20, 1, 4, 1628000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1335, 22, 9, 1, 1, 341000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1336, 27, 9, 1, 2, 682000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1337, 22, 37, 1, 2, 952000, CAST(N'2021-04-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1338, 10, 16, 1, 3, 1206000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1339, 12, 30, 1, 2, 462000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1340, 4, 23, 1, 2, 578000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1341, 33, 13, 2, 6, 1368000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1342, 26, 34, 2, 2, 482000, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1343, 47, 10, 2, 2, 996000, CAST(N'2021-09-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1344, 41, 27, 1, 2, 612000, CAST(N'2021-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1345, 41, 10, 1, 4, 1992000, CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1346, 9, 23, 1, 1, 289000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1347, 28, 19, 2, 2, 760000, CAST(N'2021-07-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1348, 37, 17, 2, 4, 1492000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1349, 12, 38, 1, 6, 2994000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1350, 30, 1, 1, 2, 526000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1351, 7, 39, 2, 6, 2160000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1352, 41, 23, 1, 3, 867000, CAST(N'2021-10-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1353, 17, 22, 2, 4, 936000, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1354, 16, 33, 1, 2, 558000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1355, 32, 14, 2, 3, 1152000, CAST(N'2021-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1356, 34, 19, 1, 5, 1900000, CAST(N'2021-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1357, 19, 26, 1, 3, 843000, CAST(N'2022-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1358, 12, 22, 1, 4, 936000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1359, 13, 33, 1, 1, 279000, CAST(N'2021-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1360, 31, 34, 1, 1, 241000, CAST(N'2021-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1361, 44, 2, 2, 2, 620000, CAST(N'2021-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1362, 3, 28, 2, 5, 1485000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1363, 19, 35, 1, 2, 966000, CAST(N'2021-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1364, 29, 14, 1, 4, 1536000, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1365, 31, 10, 1, 2, 996000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1366, 2, 36, 2, 1, 204000, CAST(N'2021-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1367, 26, 12, 2, 3, 411000, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1368, 3, 18, 2, 1, 376000, CAST(N'2021-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1369, 1, 28, 2, 4, 1188000, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1370, 30, 9, 1, 6, 2046000, CAST(N'2022-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1371, 28, 28, 2, 6, 1782000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1372, 36, 33, 2, 5, 1395000, CAST(N'2021-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1373, 13, 15, 1, 3, 1050000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1374, 31, 11, 1, 3, 516000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1375, 16, 28, 1, 5, 1485000, CAST(N'2021-08-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1376, 29, 38, 1, 1, 499000, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1377, 20, 33, 1, 4, 1116000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1378, 45, 24, 1, 1, 479000, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1379, 1, 3, 2, 1, 190000, CAST(N'2021-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1380, 17, 31, 2, 4, 1416000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1381, 31, 7, 1, 6, 1704000, CAST(N'2022-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1382, 17, 29, 2, 2, 782000, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1383, 37, 24, 2, 1, 479000, CAST(N'2021-05-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1384, 44, 33, 2, 1, 279000, CAST(N'2021-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1385, 19, 32, 1, 1, 485000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1386, 22, 36, 1, 1, 204000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1387, 47, 1, 2, 6, 1578000, CAST(N'2021-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1388, 5, 13, 2, 6, 1368000, CAST(N'2021-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1389, 39, 20, 1, 3, 1221000, CAST(N'2021-06-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1390, 41, 24, 1, 2, 958000, CAST(N'2021-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1391, 9, 31, 1, 3, 1062000, CAST(N'2021-12-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1392, 11, 27, 1, 6, 1836000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1393, 20, 10, 1, 3, 1494000, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1394, 40, 13, 1, 1, 228000, CAST(N'2021-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1395, 16, 8, 1, 3, 771000, CAST(N'2021-03-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1396, 17, 15, 2, 1, 350000, CAST(N'2022-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1397, 46, 37, 1, 6, 2856000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1398, 27, 22, 1, 1, 234000, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1399, 10, 13, 1, 6, 1368000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1400, 33, 18, 2, 3, 1128000, CAST(N'2021-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1401, 4, 29, 1, 6, 2346000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1402, 46, 13, 1, 5, 1140000, CAST(N'2021-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1403, 24, 30, 1, 3, 693000, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1404, 19, 11, 1, 3, 516000, CAST(N'2021-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1405, 38, 33, 2, 5, 1395000, CAST(N'2021-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1406, 25, 9, 2, 2, 682000, CAST(N'2021-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1407, 38, 24, 2, 4, 1916000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1408, 9, 6, 1, 3, 1101000, CAST(N'2021-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1409, 15, 23, 2, 6, 1734000, CAST(N'2021-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1410, 11, 26, 1, 6, 1686000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1411, 40, 23, 1, 6, 1734000, CAST(N'2021-07-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1412, 39, 2, 1, 5, 1550000, CAST(N'2021-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1413, 15, 21, 2, 6, 2664000, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1414, 22, 22, 1, 3, 702000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1415, 35, 38, 2, 5, 2495000, CAST(N'2021-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1416, 2, 38, 2, 3, 1497000, CAST(N'2021-03-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1417, 21, 19, 2, 5, 1900000, CAST(N'2021-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1418, 43, 12, 2, 3, 411000, CAST(N'2021-10-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1419, 15, 2, 2, 1, 310000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1420, 34, 23, 1, 2, 578000, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1421, 24, 27, 1, 4, 1224000, CAST(N'2021-12-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1422, 32, 2, 2, 1, 310000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1423, 43, 4, 2, 2, 462000, CAST(N'2021-12-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1424, 40, 21, 1, 1, 444000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1425, 5, 35, 2, 3, 1449000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1426, 1, 30, 2, 6, 1386000, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1427, 39, 15, 1, 3, 1050000, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1428, 15, 2, 2, 2, 620000, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1429, 15, 14, 2, 4, 1536000, CAST(N'2021-01-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1430, 22, 39, 1, 2, 720000, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1431, 27, 30, 1, 3, 693000, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1432, 7, 7, 2, 4, 1136000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1433, 33, 10, 2, 1, 498000, CAST(N'2021-09-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1434, 38, 19, 2, 4, 1520000, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1435, 14, 23, 1, 4, 1156000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1436, 15, 17, 2, 3, 1119000, CAST(N'2021-03-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1437, 29, 34, 1, 5, 1205000, CAST(N'2021-08-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1438, 34, 38, 1, 3, 1497000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1439, 44, 31, 2, 1, 354000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1440, 44, 23, 2, 4, 1156000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1441, 3, 32, 2, 3, 1455000, CAST(N'2021-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1442, 22, 11, 1, 6, 1032000, CAST(N'2021-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1443, 3, 16, 2, 2, 804000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1444, 21, 38, 2, 5, 2495000, CAST(N'2021-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1445, 28, 26, 2, 6, 1686000, CAST(N'2021-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1446, 35, 36, 2, 4, 816000, CAST(N'2021-03-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1447, 13, 34, 1, 4, 964000, CAST(N'2021-12-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1448, 44, 9, 2, 3, 1023000, CAST(N'2022-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1449, 23, 22, 1, 4, 936000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1450, 21, 39, 2, 6, 2160000, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1451, 1, 8, 2, 5, 1285000, CAST(N'2021-08-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1452, 28, 9, 2, 2, 682000, CAST(N'2021-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1453, 24, 22, 1, 5, 1170000, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1454, 11, 38, 1, 3, 1497000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1455, 39, 27, 1, 4, 1224000, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1456, 4, 30, 1, 2, 462000, CAST(N'2021-05-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1457, 9, 3, 1, 3, 570000, CAST(N'2021-09-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1458, 3, 29, 2, 1, 391000, CAST(N'2021-11-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1459, 19, 31, 1, 6, 2124000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1460, 30, 22, 1, 4, 936000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1461, 31, 22, 1, 6, 1404000, CAST(N'2021-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1462, 27, 36, 1, 5, 1020000, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1463, 45, 30, 1, 5, 1155000, CAST(N'2021-07-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1464, 15, 32, 2, 4, 1940000, CAST(N'2021-03-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1465, 45, 22, 1, 1, 234000, CAST(N'2021-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1466, 21, 27, 2, 2, 612000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1467, 3, 14, 2, 4, 1536000, CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1468, 11, 13, 1, 1, 228000, CAST(N'2021-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1469, 5, 7, 2, 3, 852000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1470, 14, 21, 1, 3, 1332000, CAST(N'2021-09-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1471, 14, 12, 1, 3, 411000, CAST(N'2021-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1472, 4, 2, 1, 3, 930000, CAST(N'2021-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1473, 11, 16, 1, 6, 2412000, CAST(N'2021-03-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1474, 39, 17, 1, 1, 373000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1475, 18, 39, 1, 4, 1440000, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1476, 18, 27, 1, 1, 306000, CAST(N'2021-08-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1477, 38, 20, 2, 3, 1221000, CAST(N'2021-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1478, 34, 37, 1, 2, 952000, CAST(N'2021-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1479, 28, 39, 2, 5, 1800000, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1480, 17, 36, 2, 1, 204000, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1481, 41, 25, 1, 1, 234000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1482, 31, 21, 1, 1, 444000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1483, 39, 22, 1, 6, 1404000, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1484, 8, 9, 2, 5, 1705000, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1485, 34, 18, 1, 6, 2256000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1486, 2, 33, 2, 6, 1674000, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1487, 4, 20, 1, 3, 1221000, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1488, 31, 15, 1, 5, 1750000, CAST(N'2021-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1489, 8, 16, 2, 4, 1608000, CAST(N'2021-12-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1490, 21, 19, 2, 4, 1520000, CAST(N'2021-10-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1491, 32, 39, 2, 6, 2160000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1492, 33, 13, 2, 5, 1140000, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1493, 17, 11, 2, 2, 344000, CAST(N'2021-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1494, 41, 18, 1, 6, 2256000, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1495, 6, 32, 1, 4, 1940000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1496, 42, 5, 1, 3, 708000, CAST(N'2021-02-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1497, 21, 16, 2, 1, 402000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1498, 30, 15, 1, 5, 1750000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1499, 21, 18, 2, 3, 1128000, CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1500, 35, 9, 2, 1, 341000, CAST(N'2021-10-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1501, 30, 4, 1, 4, 924000, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1502, 20, 16, 1, 3, 1206000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1503, 24, 15, 1, 6, 2100000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1504, 29, 27, 1, 2, 612000, CAST(N'2021-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1505, 38, 11, 2, 4, 688000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1506, 38, 35, 2, 5, 2415000, CAST(N'2021-03-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1507, 46, 21, 1, 1, 444000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1508, 35, 15, 2, 1, 350000, CAST(N'2021-07-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1509, 21, 34, 2, 3, 723000, CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1510, 33, 30, 2, 4, 924000, CAST(N'2021-07-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1511, 43, 35, 2, 2, 966000, CAST(N'2021-07-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1512, 15, 29, 2, 2, 782000, CAST(N'2021-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1513, 16, 19, 1, 1, 380000, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1514, 5, 5, 2, 4, 944000, CAST(N'2021-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1515, 14, 10, 1, 3, 1494000, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1516, 43, 24, 2, 3, 1437000, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1517, 16, 35, 1, 4, 1932000, CAST(N'2021-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1518, 13, 19, 1, 2, 760000, CAST(N'2022-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1519, 34, 26, 1, 4, 1124000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1520, 24, 7, 1, 1, 284000, CAST(N'2021-05-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1521, 13, 1, 1, 3, 789000, CAST(N'2021-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1522, 43, 25, 2, 1, 234000, CAST(N'2021-11-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1523, 21, 22, 2, 1, 234000, CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1524, 15, 8, 2, 1, 257000, CAST(N'2021-08-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1525, 2, 3, 2, 4, 760000, CAST(N'2022-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1526, 45, 3, 1, 4, 760000, CAST(N'2021-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1527, 24, 11, 1, 3, 516000, CAST(N'2021-10-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1528, 23, 6, 1, 4, 1468000, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1529, 3, 16, 2, 2, 804000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1530, 33, 2, 2, 3, 930000, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1531, 30, 9, 1, 4, 1364000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1532, 43, 16, 2, 6, 2412000, CAST(N'2021-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1533, 9, 12, 1, 2, 274000, CAST(N'2021-09-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1534, 13, 7, 1, 2, 568000, CAST(N'2022-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1535, 19, 24, 1, 4, 1916000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1536, 10, 21, 1, 5, 2220000, CAST(N'2021-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1537, 32, 22, 2, 2, 468000, CAST(N'2021-06-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1538, 5, 6, 2, 3, 1101000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1539, 19, 14, 1, 6, 2304000, CAST(N'2021-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1540, 9, 16, 1, 2, 804000, CAST(N'2021-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1541, 3, 21, 2, 5, 2220000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1542, 24, 24, 1, 5, 2395000, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1543, 4, 16, 1, 3, 1206000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1544, 13, 3, 1, 2, 380000, CAST(N'2021-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1545, 30, 8, 1, 4, 1028000, CAST(N'2021-12-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1546, 14, 32, 1, 6, 2910000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1547, 39, 28, 1, 6, 1782000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1548, 27, 28, 1, 2, 594000, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1549, 31, 6, 1, 5, 1835000, CAST(N'2021-08-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1550, 33, 26, 2, 2, 562000, CAST(N'2021-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1551, 46, 38, 1, 3, 1497000, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1552, 2, 1, 2, 3, 789000, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1553, 46, 1, 1, 2, 526000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1554, 4, 23, 1, 2, 578000, CAST(N'2021-07-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1555, 11, 14, 1, 2, 768000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1556, 24, 34, 1, 6, 1446000, CAST(N'2021-08-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1557, 45, 38, 1, 2, 998000, CAST(N'2021-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1558, 10, 15, 1, 6, 2100000, CAST(N'2021-10-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1559, 7, 19, 2, 1, 380000, CAST(N'2021-10-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1560, 29, 25, 1, 2, 468000, CAST(N'2021-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1561, 8, 12, 2, 5, 685000, CAST(N'2021-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1562, 2, 20, 2, 1, 407000, CAST(N'2021-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1563, 6, 8, 1, 4, 1028000, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1564, 16, 6, 1, 3, 1101000, CAST(N'2021-05-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1565, 25, 26, 2, 5, 1405000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1566, 7, 18, 2, 3, 1128000, CAST(N'2022-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1567, 12, 29, 1, 3, 1173000, CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1568, 14, 20, 1, 5, 2035000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1569, 15, 28, 2, 5, 1485000, CAST(N'2021-10-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1570, 46, 39, 1, 4, 1440000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1571, 20, 6, 1, 5, 1835000, CAST(N'2021-05-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1572, 30, 35, 1, 3, 1449000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1573, 32, 6, 2, 3, 1101000, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1574, 43, 34, 2, 4, 964000, CAST(N'2021-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1575, 26, 7, 2, 3, 852000, CAST(N'2021-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1576, 12, 1, 1, 2, 526000, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1577, 1, 20, 2, 3, 1221000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1578, 22, 27, 1, 4, 1224000, CAST(N'2022-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1579, 13, 10, 1, 3, 1494000, CAST(N'2021-03-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1580, 29, 8, 1, 3, 771000, CAST(N'2021-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1581, 38, 32, 2, 4, 1940000, CAST(N'2021-11-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1582, 23, 6, 1, 5, 1835000, CAST(N'2021-12-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1583, 43, 8, 2, 6, 1542000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1584, 17, 35, 2, 3, 1449000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1585, 2, 10, 2, 4, 1992000, CAST(N'2021-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1586, 34, 22, 1, 3, 702000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1587, 30, 28, 1, 4, 1188000, CAST(N'2021-06-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1588, 47, 6, 2, 5, 1835000, CAST(N'2021-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1589, 34, 2, 1, 2, 620000, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1590, 24, 3, 1, 1, 190000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1591, 3, 9, 2, 5, 1705000, CAST(N'2021-03-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1592, 28, 33, 2, 6, 1674000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1593, 35, 6, 2, 2, 734000, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1594, 10, 16, 1, 1, 402000, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1595, 11, 8, 1, 1, 257000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1596, 15, 31, 2, 1, 354000, CAST(N'2021-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1597, 16, 24, 1, 3, 1437000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1598, 19, 31, 1, 2, 708000, CAST(N'2021-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1599, 1, 32, 2, 5, 2425000, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1600, 5, 4, 2, 2, 462000, CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1601, 38, 2, 2, 5, 1550000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1602, 36, 10, 2, 2, 996000, CAST(N'2021-10-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1603, 22, 10, 1, 2, 996000, CAST(N'2021-09-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1604, 1, 10, 2, 5, 2490000, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1605, 47, 16, 2, 6, 2412000, CAST(N'2021-03-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1606, 21, 3, 2, 1, 190000, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1607, 42, 39, 1, 2, 720000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1608, 14, 3, 1, 3, 570000, CAST(N'2021-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1609, 18, 16, 1, 5, 2010000, CAST(N'2021-01-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1610, 46, 25, 1, 5, 1170000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1611, 26, 20, 2, 4, 1628000, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1612, 36, 34, 2, 6, 1446000, CAST(N'2021-02-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1613, 37, 22, 2, 5, 1170000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1614, 23, 25, 1, 2, 468000, CAST(N'2021-02-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1615, 16, 21, 1, 5, 2220000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1616, 21, 1, 2, 1, 263000, CAST(N'2021-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1617, 37, 20, 2, 5, 2035000, CAST(N'2021-08-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1618, 32, 15, 2, 5, 1750000, CAST(N'2021-07-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1619, 3, 32, 2, 6, 2910000, CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1620, 35, 21, 2, 2, 888000, CAST(N'2021-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1621, 34, 15, 1, 2, 700000, CAST(N'2021-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1622, 23, 10, 1, 6, 2988000, CAST(N'2021-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1623, 20, 4, 1, 5, 1155000, CAST(N'2022-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1624, 26, 23, 2, 4, 1156000, CAST(N'2021-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1625, 1, 18, 2, 2, 752000, CAST(N'2021-07-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1626, 27, 31, 1, 5, 1770000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1627, 31, 15, 1, 6, 2100000, CAST(N'2022-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1628, 47, 15, 2, 5, 1750000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1629, 44, 12, 2, 3, 411000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1630, 14, 3, 1, 3, 570000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1631, 8, 19, 2, 3, 1140000, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1632, 21, 22, 2, 3, 702000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1633, 45, 27, 1, 5, 1530000, CAST(N'2021-07-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1634, 47, 16, 2, 4, 1608000, CAST(N'2021-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1635, 40, 3, 1, 2, 380000, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1636, 2, 15, 2, 1, 350000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1637, 16, 27, 1, 2, 612000, CAST(N'2022-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1638, 11, 37, 1, 1, 476000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1639, 20, 14, 1, 4, 1536000, CAST(N'2021-04-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1640, 14, 21, 1, 2, 888000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1641, 7, 35, 2, 5, 2415000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1642, 22, 3, 1, 3, 570000, CAST(N'2021-11-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1643, 36, 2, 2, 6, 1860000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1644, 17, 38, 2, 4, 1996000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1645, 9, 15, 1, 1, 350000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1646, 37, 36, 2, 1, 204000, CAST(N'2021-05-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1647, 6, 30, 1, 2, 462000, CAST(N'2021-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1648, 39, 38, 1, 3, 1497000, CAST(N'2021-03-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1649, 27, 30, 1, 5, 1155000, CAST(N'2021-05-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1650, 32, 20, 2, 3, 1221000, CAST(N'2021-01-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1651, 43, 8, 2, 5, 1285000, CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1652, 30, 38, 1, 1, 499000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1653, 45, 36, 1, 6, 1224000, CAST(N'2021-05-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1654, 46, 9, 1, 3, 1023000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1655, 38, 13, 2, 1, 228000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1656, 42, 26, 1, 6, 1686000, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1657, 46, 22, 1, 1, 234000, CAST(N'2021-08-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1658, 4, 33, 1, 2, 558000, CAST(N'2021-07-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1659, 2, 8, 2, 1, 257000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1660, 46, 25, 1, 3, 702000, CAST(N'2021-03-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1661, 11, 2, 1, 4, 1240000, CAST(N'2021-05-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1662, 44, 15, 2, 1, 350000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1663, 39, 4, 1, 4, 924000, CAST(N'2022-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1664, 36, 31, 2, 5, 1770000, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1665, 5, 1, 2, 4, 1052000, CAST(N'2021-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1666, 7, 4, 2, 5, 1155000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1667, 38, 4, 2, 4, 924000, CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1668, 4, 23, 1, 2, 578000, CAST(N'2021-05-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1669, 35, 26, 2, 2, 562000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1670, 24, 15, 1, 5, 1750000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1671, 39, 20, 1, 1, 407000, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1672, 12, 14, 1, 5, 1920000, CAST(N'2021-10-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1673, 30, 21, 1, 6, 2664000, CAST(N'2021-11-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1674, 37, 2, 2, 4, 1240000, CAST(N'2021-08-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1675, 7, 38, 2, 2, 998000, CAST(N'2021-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1676, 12, 33, 1, 5, 1395000, CAST(N'2021-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1677, 8, 15, 2, 6, 2100000, CAST(N'2021-04-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1678, 19, 33, 1, 4, 1116000, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1679, 22, 18, 1, 5, 1880000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1680, 6, 10, 1, 3, 1494000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1681, 24, 14, 1, 1, 384000, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1682, 7, 15, 2, 6, 2100000, CAST(N'2021-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1683, 36, 3, 2, 2, 380000, CAST(N'2021-02-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1684, 2, 3, 2, 5, 950000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1685, 47, 4, 2, 5, 1155000, CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1686, 18, 2, 1, 1, 310000, CAST(N'2021-04-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1687, 8, 3, 2, 3, 570000, CAST(N'2021-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1688, 32, 37, 2, 6, 2856000, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1689, 26, 27, 2, 4, 1224000, CAST(N'2021-06-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1690, 37, 39, 2, 6, 2160000, CAST(N'2021-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1691, 42, 12, 1, 4, 548000, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1692, 30, 23, 1, 5, 1445000, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1693, 27, 18, 1, 3, 1128000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1694, 46, 24, 1, 3, 1437000, CAST(N'2021-12-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1695, 16, 7, 1, 1, 284000, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1696, 25, 28, 2, 6, 1782000, CAST(N'2021-01-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1697, 28, 38, 2, 1, 499000, CAST(N'2022-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1698, 39, 11, 1, 3, 516000, CAST(N'2021-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1699, 39, 28, 1, 1, 297000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1700, 18, 17, 1, 5, 1865000, CAST(N'2021-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1701, 4, 38, 1, 5, 2495000, CAST(N'2021-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1702, 8, 3, 2, 2, 380000, CAST(N'2021-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1703, 28, 22, 2, 2, 468000, CAST(N'2021-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1704, 13, 3, 1, 2, 380000, CAST(N'2021-06-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1705, 32, 16, 2, 4, 1608000, CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1706, 3, 11, 2, 3, 516000, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1707, 4, 13, 1, 6, 1368000, CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1708, 42, 21, 1, 3, 1332000, CAST(N'2021-04-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1709, 40, 3, 1, 3, 570000, CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1710, 39, 26, 1, 2, 562000, CAST(N'2021-09-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1711, 14, 26, 1, 3, 843000, CAST(N'2021-03-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1712, 18, 21, 1, 1, 444000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1713, 2, 21, 2, 1, 444000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1714, 12, 31, 1, 1, 354000, CAST(N'2021-10-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1715, 7, 23, 2, 5, 1445000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1716, 27, 5, 1, 5, 1180000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1717, 46, 15, 1, 1, 350000, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1718, 41, 22, 1, 5, 1170000, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1719, 22, 22, 1, 4, 936000, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1720, 17, 16, 2, 1, 402000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1721, 17, 26, 2, 6, 1686000, CAST(N'2021-12-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1722, 10, 11, 1, 5, 860000, CAST(N'2021-04-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1723, 18, 34, 1, 1, 241000, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1724, 2, 21, 2, 5, 2220000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1725, 27, 34, 1, 1, 241000, CAST(N'2021-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1726, 14, 6, 1, 4, 1468000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1727, 39, 17, 1, 5, 1865000, CAST(N'2022-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1728, 9, 22, 1, 6, 1404000, CAST(N'2021-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1729, 36, 19, 2, 2, 760000, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1730, 24, 34, 1, 4, 964000, CAST(N'2021-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1731, 44, 15, 2, 1, 350000, CAST(N'2021-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1732, 41, 2, 1, 1, 310000, CAST(N'2021-06-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1733, 25, 30, 2, 4, 924000, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1734, 36, 2, 2, 3, 930000, CAST(N'2021-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1735, 44, 33, 2, 5, 1395000, CAST(N'2021-02-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1736, 32, 18, 2, 6, 2256000, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1737, 42, 33, 1, 3, 837000, CAST(N'2022-01-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1738, 5, 19, 2, 1, 380000, CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1739, 46, 11, 1, 6, 1032000, CAST(N'2021-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1740, 1, 12, 2, 4, 548000, CAST(N'2021-09-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1741, 12, 33, 1, 3, 837000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1742, 39, 38, 1, 6, 2994000, CAST(N'2021-02-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1743, 32, 29, 2, 4, 1564000, CAST(N'2021-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1744, 3, 19, 2, 6, 2280000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1745, 17, 24, 2, 5, 2395000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1746, 29, 12, 1, 6, 822000, CAST(N'2022-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1747, 44, 1, 2, 4, 1052000, CAST(N'2021-07-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1748, 43, 34, 2, 2, 482000, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1749, 8, 16, 2, 2, 804000, CAST(N'2021-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1750, 18, 20, 1, 1, 407000, CAST(N'2021-08-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1751, 31, 8, 1, 4, 1028000, CAST(N'2021-02-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1752, 29, 8, 1, 3, 771000, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1753, 11, 39, 1, 1, 360000, CAST(N'2021-05-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1754, 24, 32, 1, 1, 485000, CAST(N'2021-05-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1755, 24, 11, 1, 5, 860000, CAST(N'2021-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1756, 40, 22, 1, 1, 234000, CAST(N'2021-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1757, 37, 9, 2, 6, 2046000, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1758, 45, 13, 1, 6, 1368000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1759, 16, 39, 1, 5, 1800000, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1760, 38, 13, 2, 3, 684000, CAST(N'2021-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1761, 6, 12, 1, 5, 685000, CAST(N'2021-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1762, 33, 12, 2, 3, 411000, CAST(N'2021-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1763, 4, 17, 1, 2, 746000, CAST(N'2021-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1764, 16, 11, 1, 3, 516000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1765, 6, 10, 1, 1, 498000, CAST(N'2022-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1766, 15, 4, 2, 4, 924000, CAST(N'2022-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1767, 1, 1, 2, 6, 1578000, CAST(N'2022-01-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1768, 47, 3, 2, 6, 1140000, CAST(N'2021-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1769, 4, 16, 1, 2, 804000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1770, 31, 4, 1, 6, 1386000, CAST(N'2021-03-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1771, 21, 26, 2, 5, 1405000, CAST(N'2021-10-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1772, 6, 23, 1, 4, 1156000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1773, 13, 31, 1, 3, 1062000, CAST(N'2021-08-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1774, 17, 21, 2, 1, 444000, CAST(N'2021-05-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1775, 6, 19, 1, 2, 760000, CAST(N'2022-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1776, 15, 24, 2, 6, 2874000, CAST(N'2021-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1777, 27, 21, 1, 5, 2220000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1778, 13, 14, 1, 1, 384000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1779, 1, 35, 2, 3, 1449000, CAST(N'2021-03-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1780, 46, 24, 1, 1, 479000, CAST(N'2021-05-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1781, 20, 31, 1, 2, 708000, CAST(N'2021-05-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1782, 19, 20, 1, 1, 407000, CAST(N'2021-09-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1783, 7, 32, 2, 3, 1455000, CAST(N'2022-01-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1784, 14, 39, 1, 3, 1080000, CAST(N'2021-08-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1785, 41, 33, 1, 2, 558000, CAST(N'2022-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1786, 7, 22, 2, 1, 234000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1787, 22, 15, 1, 5, 1750000, CAST(N'2021-03-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1788, 9, 19, 1, 5, 1900000, CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1789, 18, 7, 1, 3, 852000, CAST(N'2021-04-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1790, 35, 1, 2, 3, 789000, CAST(N'2021-03-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1791, 46, 29, 1, 5, 1955000, CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1792, 12, 22, 1, 2, 468000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1793, 46, 34, 1, 5, 1205000, CAST(N'2021-11-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1794, 11, 22, 1, 2, 468000, CAST(N'2021-08-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1795, 21, 1, 2, 4, 1052000, CAST(N'2021-09-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1796, 14, 26, 1, 5, 1405000, CAST(N'2021-08-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1797, 41, 13, 1, 4, 912000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1798, 23, 26, 1, 2, 562000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1799, 40, 33, 1, 2, 558000, CAST(N'2021-06-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1800, 41, 3, 1, 6, 1140000, CAST(N'2021-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1801, 14, 35, 1, 1, 483000, CAST(N'2021-11-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1802, 43, 28, 2, 2, 594000, CAST(N'2021-12-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1803, 18, 8, 1, 2, 514000, CAST(N'2021-09-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1804, 10, 7, 1, 1, 284000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1805, 6, 28, 1, 6, 1782000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1806, 17, 38, 2, 4, 1996000, CAST(N'2021-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1807, 15, 1, 2, 4, 1052000, CAST(N'2021-08-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1808, 29, 30, 1, 2, 462000, CAST(N'2021-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1809, 19, 35, 1, 4, 1932000, CAST(N'2021-09-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1810, 33, 6, 2, 4, 1468000, CAST(N'2021-01-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1811, 36, 9, 2, 3, 1023000, CAST(N'2021-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1812, 37, 2, 2, 6, 1860000, CAST(N'2021-04-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1813, 10, 23, 1, 5, 1445000, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1814, 18, 27, 1, 1, 306000, CAST(N'2021-11-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1815, 47, 30, 2, 1, 231000, CAST(N'2021-06-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1816, 34, 25, 1, 5, 1170000, CAST(N'2021-08-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1817, 4, 2, 1, 1, 310000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1818, 20, 20, 1, 6, 2442000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1819, 21, 14, 2, 1, 384000, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1820, 18, 21, 1, 4, 1776000, CAST(N'2021-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1821, 16, 7, 1, 1, 284000, CAST(N'2021-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1822, 31, 9, 1, 4, 1364000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1823, 21, 5, 2, 2, 472000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1824, 2, 7, 2, 1, 284000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1825, 11, 23, 1, 6, 1734000, CAST(N'2021-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1826, 47, 12, 2, 2, 274000, CAST(N'2021-01-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1827, 47, 35, 2, 4, 1932000, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1828, 8, 1, 2, 2, 526000, CAST(N'2021-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1829, 3, 18, 2, 3, 1128000, CAST(N'2021-07-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1830, 7, 4, 2, 5, 1155000, CAST(N'2021-02-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1831, 17, 35, 2, 3, 1449000, CAST(N'2021-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1832, 15, 29, 2, 3, 1173000, CAST(N'2021-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1833, 44, 13, 2, 1, 228000, CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1834, 45, 26, 1, 5, 1405000, CAST(N'2021-10-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1835, 15, 10, 2, 6, 2988000, CAST(N'2021-08-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1836, 33, 37, 2, 1, 476000, CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1837, 2, 39, 2, 5, 1800000, CAST(N'2021-02-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1838, 6, 9, 1, 1, 341000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1839, 1, 35, 2, 2, 966000, CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1840, 35, 28, 2, 1, 297000, CAST(N'2021-11-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1841, 6, 1, 1, 5, 1315000, CAST(N'2021-11-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1842, 9, 9, 1, 4, 1364000, CAST(N'2021-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1843, 16, 2, 1, 2, 620000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1844, 28, 25, 2, 5, 1170000, CAST(N'2022-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1845, 6, 14, 1, 4, 1536000, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1846, 6, 4, 1, 6, 1386000, CAST(N'2021-11-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1847, 4, 1, 1, 3, 789000, CAST(N'2021-01-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1848, 34, 21, 1, 4, 1776000, CAST(N'2021-08-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1849, 29, 4, 1, 5, 1155000, CAST(N'2021-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1850, 11, 19, 1, 1, 380000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1851, 4, 25, 1, 6, 1404000, CAST(N'2021-03-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1852, 38, 19, 2, 3, 1140000, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1853, 43, 38, 2, 2, 998000, CAST(N'2021-06-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1854, 44, 9, 2, 3, 1023000, CAST(N'2021-01-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1855, 41, 12, 1, 5, 685000, CAST(N'2021-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1856, 38, 4, 2, 2, 462000, CAST(N'2021-10-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1857, 37, 31, 2, 5, 1770000, CAST(N'2021-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1858, 23, 10, 1, 5, 2490000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1859, 30, 27, 1, 3, 918000, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1860, 13, 24, 1, 6, 2874000, CAST(N'2021-04-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1861, 32, 26, 2, 5, 1405000, CAST(N'2021-10-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1862, 45, 3, 1, 2, 380000, CAST(N'2021-11-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1863, 44, 26, 2, 3, 843000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1864, 40, 35, 1, 4, 1932000, CAST(N'2021-07-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1865, 16, 39, 1, 5, 1800000, CAST(N'2021-02-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1866, 19, 14, 1, 6, 2304000, CAST(N'2021-08-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1867, 12, 30, 1, 5, 1155000, CAST(N'2021-12-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1868, 18, 8, 1, 5, 1285000, CAST(N'2021-04-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1869, 38, 29, 2, 2, 782000, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1870, 45, 39, 1, 5, 1800000, CAST(N'2021-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1871, 19, 39, 1, 3, 1080000, CAST(N'2021-12-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1872, 41, 2, 1, 6, 1860000, CAST(N'2021-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1873, 27, 13, 1, 5, 1140000, CAST(N'2021-05-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1874, 18, 24, 1, 6, 2874000, CAST(N'2021-02-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1875, 28, 24, 2, 1, 479000, CAST(N'2021-05-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1876, 45, 7, 1, 6, 1704000, CAST(N'2021-01-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1877, 31, 24, 1, 2, 958000, CAST(N'2021-01-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1878, 29, 30, 1, 4, 924000, CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1879, 12, 23, 1, 2, 578000, CAST(N'2021-09-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1880, 45, 35, 1, 4, 1932000, CAST(N'2021-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1881, 32, 12, 2, 3, 411000, CAST(N'2021-11-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1882, 34, 35, 1, 6, 2898000, CAST(N'2021-01-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1883, 2, 33, 2, 6, 1674000, CAST(N'2021-07-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1884, 46, 11, 1, 5, 860000, CAST(N'2021-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1885, 25, 7, 2, 5, 1420000, CAST(N'2021-04-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1886, 24, 17, 1, 3, 1119000, CAST(N'2021-06-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1887, 19, 18, 1, 2, 752000, CAST(N'2021-05-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1888, 12, 3, 1, 4, 760000, CAST(N'2021-05-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1889, 25, 13, 2, 3, 684000, CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1890, 27, 3, 1, 3, 570000, CAST(N'2021-04-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1891, 30, 19, 1, 6, 2280000, CAST(N'2021-09-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1892, 21, 17, 2, 6, 2238000, CAST(N'2021-05-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1893, 6, 25, 1, 3, 702000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1894, 46, 21, 1, 6, 2664000, CAST(N'2021-09-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1895, 41, 26, 1, 1, 281000, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1896, 26, 38, 2, 5, 2495000, CAST(N'2021-08-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1897, 8, 27, 2, 2, 612000, CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1898, 33, 12, 2, 5, 685000, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1899, 46, 24, 1, 5, 2395000, CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1900, 4, 30, 1, 6, 1386000, CAST(N'2021-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1901, 15, 4, 2, 3, 693000, CAST(N'2021-06-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1902, 15, 19, 2, 1, 380000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1903, 12, 28, 1, 4, 1188000, CAST(N'2021-09-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1904, 21, 4, 2, 6, 1386000, CAST(N'2021-08-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1905, 13, 23, 1, 2, 578000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1906, 16, 24, 1, 5, 2395000, CAST(N'2021-04-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1907, 12, 16, 1, 6, 2412000, CAST(N'2021-09-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1908, 39, 7, 1, 4, 1136000, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1909, 5, 38, 2, 1, 499000, CAST(N'2021-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1910, 36, 9, 2, 4, 1364000, CAST(N'2021-02-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1911, 25, 36, 2, 1, 204000, CAST(N'2021-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1912, 1, 6, 2, 2, 734000, CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1913, 40, 32, 1, 6, 2910000, CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1914, 47, 25, 2, 3, 702000, CAST(N'2021-02-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1915, 26, 4, 2, 5, 1155000, CAST(N'2021-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1916, 14, 16, 1, 4, 1608000, CAST(N'2021-07-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1917, 36, 36, 2, 2, 408000, CAST(N'2022-01-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1918, 44, 27, 2, 5, 1530000, CAST(N'2021-08-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1919, 29, 22, 1, 2, 468000, CAST(N'2021-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1920, 21, 24, 2, 3, 1437000, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1921, 8, 12, 2, 1, 137000, CAST(N'2021-02-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1922, 5, 17, 2, 5, 1865000, CAST(N'2021-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1923, 15, 24, 2, 1, 479000, CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1924, 17, 3, 2, 3, 570000, CAST(N'2021-03-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1925, 3, 25, 2, 3, 702000, CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1926, 8, 20, 2, 1, 407000, CAST(N'2021-12-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1927, 47, 8, 2, 1, 257000, CAST(N'2021-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1928, 34, 5, 1, 4, 944000, CAST(N'2021-06-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1929, 23, 7, 1, 5, 1420000, CAST(N'2021-12-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1930, 26, 34, 2, 5, 1205000, CAST(N'2021-09-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1931, 32, 34, 2, 1, 241000, CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1932, 41, 5, 1, 5, 1180000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1933, 2, 37, 2, 6, 2856000, CAST(N'2021-10-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1934, 30, 31, 1, 5, 1770000, CAST(N'2021-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1935, 9, 37, 1, 2, 952000, CAST(N'2022-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1936, 13, 14, 1, 2, 768000, CAST(N'2021-11-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1937, 26, 39, 2, 2, 720000, CAST(N'2021-04-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1938, 22, 33, 1, 1, 279000, CAST(N'2021-08-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1939, 41, 2, 1, 2, 620000, CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1940, 40, 3, 1, 4, 760000, CAST(N'2021-01-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1941, 20, 14, 1, 1, 384000, CAST(N'2021-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1942, 36, 32, 2, 3, 1455000, CAST(N'2021-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1943, 18, 38, 1, 6, 2994000, CAST(N'2021-05-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1944, 35, 39, 2, 1, 360000, CAST(N'2021-02-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1945, 5, 24, 2, 3, 1437000, CAST(N'2021-09-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1946, 16, 31, 1, 6, 2124000, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1947, 12, 8, 1, 5, 1285000, CAST(N'2021-02-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1948, 16, 35, 1, 4, 1932000, CAST(N'2021-08-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1949, 6, 37, 1, 4, 1904000, CAST(N'2021-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1950, 45, 12, 1, 4, 548000, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1951, 7, 1, 2, 3, 789000, CAST(N'2021-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1952, 40, 12, 1, 3, 411000, CAST(N'2021-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1953, 2, 6, 2, 5, 1835000, CAST(N'2021-04-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1954, 40, 5, 1, 2, 472000, CAST(N'2022-01-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1955, 28, 37, 2, 5, 2380000, CAST(N'2021-06-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1956, 31, 35, 1, 2, 966000, CAST(N'2021-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1957, 10, 30, 1, 6, 1386000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1958, 38, 12, 2, 3, 411000, CAST(N'2021-11-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1959, 9, 29, 1, 2, 782000, CAST(N'2021-12-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1960, 31, 6, 1, 4, 1468000, CAST(N'2021-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1961, 12, 24, 1, 1, 479000, CAST(N'2021-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1962, 13, 12, 1, 5, 685000, CAST(N'2021-03-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1963, 30, 6, 1, 4, 1468000, CAST(N'2021-03-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1964, 39, 23, 1, 5, 1445000, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1965, 25, 15, 2, 5, 1750000, CAST(N'2021-07-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1966, 8, 11, 2, 5, 860000, CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1967, 42, 1, 1, 6, 1578000, CAST(N'2021-07-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1968, 41, 16, 1, 6, 2412000, CAST(N'2021-05-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1969, 5, 37, 2, 3, 1428000, CAST(N'2021-07-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1970, 5, 33, 2, 1, 279000, CAST(N'2021-02-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1971, 29, 26, 1, 3, 843000, CAST(N'2022-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1972, 19, 27, 1, 3, 918000, CAST(N'2021-04-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1973, 30, 31, 1, 3, 1062000, CAST(N'2021-07-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1974, 19, 16, 1, 4, 1608000, CAST(N'2021-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1975, 30, 26, 1, 3, 843000, CAST(N'2021-04-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1976, 38, 28, 2, 6, 1782000, CAST(N'2022-01-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1977, 36, 19, 2, 3, 1140000, CAST(N'2021-06-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1978, 36, 3, 2, 4, 760000, CAST(N'2021-02-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1979, 36, 23, 2, 4, 1156000, CAST(N'2021-08-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1980, 13, 30, 1, 5, 1155000, CAST(N'2021-02-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1981, 21, 20, 2, 5, 2035000, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1982, 10, 9, 1, 3, 1023000, CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1983, 26, 12, 2, 6, 822000, CAST(N'2021-11-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1984, 35, 17, 2, 1, 373000, CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1985, 31, 21, 1, 4, 1776000, CAST(N'2021-03-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1986, 27, 17, 1, 1, 373000, CAST(N'2021-11-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1987, 21, 3, 2, 4, 760000, CAST(N'2021-07-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1988, 4, 1, 1, 1, 263000, CAST(N'2022-01-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1989, 6, 29, 1, 2, 782000, CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1990, 16, 37, 1, 1, 476000, CAST(N'2021-04-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1991, 26, 3, 2, 6, 1140000, CAST(N'2021-11-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1992, 21, 7, 2, 3, 852000, CAST(N'2021-01-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1993, 14, 30, 1, 5, 1155000, CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1994, 12, 39, 1, 4, 1440000, CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1995, 41, 13, 1, 5, 1140000, CAST(N'2021-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Transactions] ([Id], [CustomerId], [ItemId], [StoreId], [Quantity], [TotalPrice], [DateTransaction]) VALUES (1996, 31, 2, 1, 4, 1240000, CAST(N'2021-01-06T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Stores]
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
