USE [POSEZ2U]
GO
/****** Object:  Table [dbo].[VOID_ITEM_HISTORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOID_ITEM_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[ProductID] [int] NULL,
	[ModifireID] [int] NULL,
	[ShiftID] [int] NULL,
	[Total] [int] NULL,
	[StaffID] [int] NULL,
	[Qty] [int] NULL,
	[FloorID] [nvarchar](50) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_VOID_ITEM_HISTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[VOID_ITEM_HISTORY] ON
INSERT [dbo].[VOID_ITEM_HISTORY] ([ID], [OrderID], [OrderNumber], [ProductID], [ModifireID], [ShiftID], [Total], [StaffID], [Qty], [FloorID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 1, N'0', 77, NULL, 2, 3500, NULL, 1, NULL, 0, CAST(0x9A3B0B00 AS Date), 0, CAST(0x9A3B0B00 AS Date))
INSERT [dbo].[VOID_ITEM_HISTORY] ([ID], [OrderID], [OrderNumber], [ProductID], [ModifireID], [ShiftID], [Total], [StaffID], [Qty], [FloorID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 8, N'0', 76, NULL, 2, 3500, NULL, 1, N'TKA-9', 0, CAST(0x9C3B0B00 AS Date), 0, CAST(0x9C3B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[VOID_ITEM_HISTORY] OFF
/****** Object:  UserDefinedTableType [dbo].[TableTemp]    Script Date: 07/14/2016 09:43:51 ******/
CREATE TYPE [dbo].[TableTemp] AS TABLE(
	[Value] [int] NULL
)
GO
/****** Object:  Table [dbo].[TableTemp]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableTemp](
	[ShiftHistoryID] [int] NOT NULL,
	[StaffID] [int] NOT NULL,
	[ShiftName] [nvarchar](500) NULL,
	[StartShift] [datetime] NULL,
	[EndShift] [datetime] NULL,
	[Status] [int] NULL,
	[CashStart] [float] NOT NULL,
	[CashEnd] [float] NOT NULL,
	[SafeDrop] [float] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TableTemp] ([ShiftHistoryID], [StaffID], [ShiftName], [StartShift], [EndShift], [Status], [CashStart], [CashEnd], [SafeDrop], [UserName]) VALUES (2, 5, N'1', CAST(0x0000A63F00816AA2 AS DateTime), NULL, 1, 100000, 0, 0, N'Boss')
/****** Object:  Table [dbo].[SUB_MENU]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUB_MENU](
	[SubMenuID] [int] IDENTITY(1,1) NOT NULL,
	[SubMenuName] [nvarchar](500) NOT NULL,
	[MenuID] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_SUB_MENU] PRIMARY KEY CLUSTERED 
(
	[SubMenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SUB_MENU] ON
INSERT [dbo].[SUB_MENU] ([SubMenuID], [SubMenuName], [MenuID], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'EAT IN', 1, 1, 1, NULL, 1, CAST(0x0000A56F01815C87 AS DateTime), 1, CAST(0x0000A56F01815C87 AS DateTime))
INSERT [dbo].[SUB_MENU] ([SubMenuID], [SubMenuName], [MenuID], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'TAKEAWAY', 2, 1, 1, NULL, 1, CAST(0x0000A56F01815C87 AS DateTime), 1, CAST(0x0000A56F01815C87 AS DateTime))
INSERT [dbo].[SUB_MENU] ([SubMenuID], [SubMenuName], [MenuID], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'STORE', 3, 1, 1, NULL, 1, CAST(0x0000A56F01815C87 AS DateTime), 1, CAST(0x0000A56F01815C87 AS DateTime))
INSERT [dbo].[SUB_MENU] ([SubMenuID], [SubMenuName], [MenuID], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'WORKING PERIOD', 4, 1, 1, NULL, 1, CAST(0x0000A56F01815C87 AS DateTime), 1, CAST(0x0000A56F01815C87 AS DateTime))
INSERT [dbo].[SUB_MENU] ([SubMenuID], [SubMenuName], [MenuID], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'REPORT', 5, 1, 1, NULL, 1, CAST(0x0000A56F01815C87 AS DateTime), 1, CAST(0x0000A56F01815C87 AS DateTime))
INSERT [dbo].[SUB_MENU] ([SubMenuID], [SubMenuName], [MenuID], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'SETTING', 6, 1, 1, NULL, 1, CAST(0x0000A56F01815C87 AS DateTime), 1, CAST(0x0000A56F01815C87 AS DateTime))
SET IDENTITY_INSERT [dbo].[SUB_MENU] OFF
/****** Object:  Table [dbo].[STAFF]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STAFF](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Fname] [nvarchar](500) NULL,
	[Lname] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Phone] [nvarchar](500) NULL,
	[Adress1] [nvarchar](500) NULL,
	[Adress2] [nvarchar](500) NULL,
	[Adress3] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_STAFF] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[STAFF] ON
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'Thien7/10/2016', N'c/sqqDQV2+7k55SNqqtpjQ==', 0, 1, N'Thien', N'Huynh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A56D0126DAE6 AS DateTime), 5, CAST(0x0000A63F00D97B4E AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'Boss', N'ZS8NOnYjD87tdWQTzpnEsQ==', 1, 1, N'Vyvy', N'Boss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A56D0127127B AS DateTime), 5, CAST(0x0000A63F00D9A309 AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'Vu7/10/2016', N'HGoQTXDj/AkB0qaLL/7qPA==', 0, 3, N'Vu', N'Pham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A56D0127A89E AS DateTime), 5, CAST(0x0000A63F00D9807C AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'Locd7/10/2016', N're92fq+qRNSYXZN0CbpArg==', 0, 2, N'Loc', N'Dep Trai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, CAST(0x0000A63E0133B450 AS DateTime), 5, CAST(0x0000A63F008471E4 AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'Yen', N'lOW3n9XMM8fCuXPLyaQkkQ==', 1, 3, N'Yen', N'yen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, CAST(0x0000A63F00D9CCB7 AS DateTime), 5, CAST(0x0000A63F00D9CCB7 AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, N'Nga', N'HJe7iOvfoYU9ySXScohexQ==', 1, 3, N'Nga', N'Nga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, CAST(0x0000A63F00D9E6A6 AS DateTime), 5, CAST(0x0000A63F00D9E6A6 AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, N'Loc', N'aM5oiARb388IxcBN8lgAoQ==', 1, 1, N'Loc', N'Loc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, CAST(0x0000A63F00E14D30 AS DateTime), 5, CAST(0x0000A63F00E14D30 AS DateTime))
SET IDENTITY_INSERT [dbo].[STAFF] OFF
/****** Object:  Table [dbo].[SHIFT_HISTORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHIFT_HISTORY](
	[ShiftHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [int] NULL,
	[ShiftName] [nvarchar](500) NULL,
	[StartShift] [datetime] NULL,
	[EndShift] [datetime] NULL,
	[Status] [int] NULL,
	[CashStart] [float] NULL,
	[CashEnd] [float] NULL,
	[SafeDrop] [float] NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_SHIFT_HISTORY_1] PRIMARY KEY CLUSTERED 
(
	[ShiftHistoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SHIFT_HISTORY] ON
INSERT [dbo].[SHIFT_HISTORY] ([ShiftHistoryID], [StaffID], [ShiftName], [StartShift], [EndShift], [Status], [CashStart], [CashEnd], [SafeDrop], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 4, N'Shift1', CAST(0x0000A63E01649C73 AS DateTime), CAST(0x0000A63F007E0E6D AS DateTime), 2, 100000, 300000, 0, NULL, 4, CAST(0x0000A63E01649C73 AS DateTime), 5, CAST(0x0000A63F007E0E6D AS DateTime))
INSERT [dbo].[SHIFT_HISTORY] ([ShiftHistoryID], [StaffID], [ShiftName], [StartShift], [EndShift], [Status], [CashStart], [CashEnd], [SafeDrop], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 5, N'1', CAST(0x0000A63F00816AA2 AS DateTime), NULL, 1, 100000, NULL, NULL, NULL, 5, CAST(0x0000A63F00816AA2 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[SHIFT_HISTORY] OFF
/****** Object:  Table [dbo].[SEAT]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Seat] [int] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_SEAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_PRICE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_PRICE](
	[ProductPriceID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CurrentPrice] [float] NULL,
	[WasPrice] [float] NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Portions] [nvarchar](50) NULL,
 CONSTRAINT [PK_PRODUCT_PRICE] PRIMARY KEY CLUSTERED 
(
	[ProductPriceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PRODUCT_PRICE] ON
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (1, 1, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F1 AS DateTime), 0, CAST(0x0000A63D016214F1 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (2, 2, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (3, 3, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (4, 4, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (5, 5, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (6, 6, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (7, 7, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (8, 8, 1, 7000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (9, 9, 1, 8000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (10, 10, 1, 8000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (11, 11, 1, 12000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (12, 12, 1, 8000, 0, NULL, 0, CAST(0x0000A63D016214F6 AS DateTime), 0, CAST(0x0000A63D016214F6 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (13, 13, 1, 12000, 0, NULL, 0, CAST(0x0000A63D01621558 AS DateTime), 0, CAST(0x0000A63D01621558 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (14, 14, 1, 12000, 0, NULL, 0, CAST(0x0000A63D0162155D AS DateTime), 0, CAST(0x0000A63D0162155D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (15, 15, 1, 9000, 0, NULL, 0, CAST(0x0000A63D0162155D AS DateTime), 0, CAST(0x0000A63D0162155D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (16, 16, 1, 9000, 0, NULL, 0, CAST(0x0000A63D0162155D AS DateTime), 0, CAST(0x0000A63D0162155D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (17, 17, 1, 12000, 0, NULL, 0, CAST(0x0000A63D0162155D AS DateTime), 0, CAST(0x0000A63D0162155D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (18, 18, 1, 2000, 0, NULL, 0, CAST(0x0000A63D0162155D AS DateTime), 0, CAST(0x0000A63D0162155D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (19, 19, 1, 2000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (20, 20, 1, 2000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (21, 21, 1, 2000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (22, 22, 1, 2000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (23, 23, 1, 6500, 6000, N'', 0, CAST(0x0000A63F00E37DEB AS DateTime), 0, CAST(0x0000A63F00E37DEB AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (24, 24, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (25, 25, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (26, 26, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (27, 27, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (28, 28, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (29, 29, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (30, 30, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (31, 31, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (32, 32, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (33, 33, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (34, 34, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (35, 35, 1, 6000, 5500, N'', 0, CAST(0x0000A63F00E3084A AS DateTime), 0, CAST(0x0000A63F00E3084A AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (36, 36, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (37, 37, 1, 6000, 5500, N'', 0, CAST(0x0000A63F00E27862 AS DateTime), 0, CAST(0x0000A63F00E27863 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (38, 38, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (39, 39, 1, 5000, 5500, N'', 0, CAST(0x0000A63F00E3602C AS DateTime), 0, CAST(0x0000A63F00E3602C AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (40, 40, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (41, 41, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (42, 42, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (43, 43, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (44, 44, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (45, 45, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (46, 46, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (47, 47, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (48, 48, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (49, 49, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (50, 50, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (51, 51, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (52, 52, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (53, 53, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (54, 54, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (55, 55, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (56, 56, 1, 5800, 0, NULL, 0, CAST(0x0000A63D0162156B AS DateTime), 0, CAST(0x0000A63D0162156B AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (57, 57, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (58, 58, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (59, 59, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (60, 60, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (61, 61, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (62, 62, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (63, 63, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (64, 64, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (65, 65, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (66, 66, 1, 3800, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (67, 67, 1, 4500, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (68, 68, 1, 4500, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (69, 69, 1, 4500, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (70, 70, 1, 4500, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (71, 71, 1, 4500, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (72, 72, 1, 4500, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (73, 73, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162156F AS DateTime), 0, CAST(0x0000A63D0162156F AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (74, 74, 1, 5000, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (75, 75, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (76, 76, 1, 3500, 3500, N'', 0, CAST(0x0000A63F00E86EA7 AS DateTime), 0, CAST(0x0000A63F00E86EA7 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (77, 77, 1, 3500, 3500, N'', 0, CAST(0x0000A63F00E89A3C AS DateTime), 0, CAST(0x0000A63F00E89A3C AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (78, 78, 1, 3500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (79, 79, 1, 3500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (80, 80, 1, 3000, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (81, 81, 1, 5000, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (82, 82, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (83, 83, 1, 3000, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (84, 84, 1, 4500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (85, 85, 1, 3000, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (86, 86, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (87, 87, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (88, 88, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (89, 89, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (90, 90, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (91, 91, 1, 3800, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (92, 92, 1, 3800, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (93, 93, 1, 3800, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (94, 94, 1, 3800, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (95, 95, 1, 3800, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (96, 96, 1, 3800, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (97, 97, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (98, 98, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (99, 99, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (100, 100, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
GO
print 'Processed 100 total records'
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (101, 101, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (102, 102, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (103, 103, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (104, 104, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (105, 105, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (106, 106, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (107, 107, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (108, 108, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (109, 109, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (110, 110, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (111, 111, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (112, 112, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (113, 113, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (114, 114, 1, 0, 0, NULL, 0, CAST(0x0000A63D01621579 AS DateTime), 0, CAST(0x0000A63D01621579 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (115, 115, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (116, 116, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (117, 117, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (118, 118, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (119, 119, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (120, 120, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (121, 121, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (122, 122, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (123, 123, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (124, 124, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (125, 125, 1, 5000, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (126, 126, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (127, 127, 1, 5500, 5500, N'', 0, CAST(0x0000A63E00A290E1 AS DateTime), 0, CAST(0x0000A63E00A290E1 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (128, 128, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (129, 129, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (130, 130, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (131, 131, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (132, 132, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (133, 133, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (134, 134, 1, 5500, 0, NULL, 0, CAST(0x0000A63D0162157D AS DateTime), 0, CAST(0x0000A63D0162157D AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (135, 135, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621582 AS DateTime), 0, CAST(0x0000A63D01621582 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (136, 136, 1, 5000, 0, NULL, 0, CAST(0x0000A63D01621582 AS DateTime), 0, CAST(0x0000A63D01621582 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (137, 137, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621582 AS DateTime), 0, CAST(0x0000A63D01621582 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (138, 138, 1, 4000, 4000, N'', 0, CAST(0x0000A63E00A27328 AS DateTime), 0, CAST(0x0000A63E00A27328 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (139, 139, 1, 7000, 7000, N'', 0, CAST(0x0000A63E00A27A78 AS DateTime), 0, CAST(0x0000A63E00A27A78 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (140, 140, 1, 10000, 10000000, N'', 0, CAST(0x0000A63E00A21217 AS DateTime), 0, CAST(0x0000A63E00A21217 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (141, 141, 1, 13000, 0, N'', 0, CAST(0x0000A63E00A22615 AS DateTime), 0, CAST(0x0000A63E00A22615 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (142, 142, 1, 17000, 0, N'', 0, CAST(0x0000A63E00A23983 AS DateTime), 0, CAST(0x0000A63E00A23983 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (143, 143, 1, 20000, 0, N'', 0, CAST(0x0000A63E00A249E4 AS DateTime), 0, CAST(0x0000A63E00A249E4 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (144, 144, 1, 6000, 0, N'', 0, CAST(0x0000A63F00E77580 AS DateTime), 0, CAST(0x0000A63F00E77580 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (145, 145, 1, 6000, 6000, N'', 0, CAST(0x0000A63F00E7A381 AS DateTime), 0, CAST(0x0000A63F00E7A381 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (146, 146, 1, 6000, 0, N'', 0, CAST(0x0000A63F00E7BA7C AS DateTime), 0, CAST(0x0000A63F00E7BA7C AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (147, 147, 1, 3000, 0, N'', 0, CAST(0x0000A63F00E7DB76 AS DateTime), 0, CAST(0x0000A63F00E7DB76 AS DateTime), N'Regular')
SET IDENTITY_INSERT [dbo].[PRODUCT_PRICE] OFF
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductNameDesc] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[Color] [nvarchar](250) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[ProductNameSort] [nvarchar](500) NULL,
	[Portions] [nvarchar](50) NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] ON
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (1, N'Mixed Fruits', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC32F AS DateTime), 0, CAST(0x0000A63D015AC32F AS DateTime), N'Mixed Fruits', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (2, N'Avocado', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC32F AS DateTime), 0, CAST(0x0000A63D015AC32F AS DateTime), N'Avocado', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (3, N'Mango', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC32F AS DateTime), 0, CAST(0x0000A63D015AC32F AS DateTime), N'Mango', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (4, N'Soursop', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC32F AS DateTime), 0, CAST(0x0000A63D015AC32F AS DateTime), N'Soursop', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (5, N'Strawberry', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC32F AS DateTime), 0, CAST(0x0000A63D015AC32F AS DateTime), N'Strawberry', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (6, N'JackFruit', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC32F AS DateTime), 0, CAST(0x0000A63D015AC32F AS DateTime), N'JackFruit', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (7, N'JackFruit & Yogurt', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'JackFruit & Yogurt', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (8, N'Coconut', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Coconut', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (9, N'Durian', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Durian', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (10, N'Dam Kem', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Dam Kem', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (11, N'Fruit Salad Large', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Fruit Salad Large', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (12, N'Fruit Salad Small', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Fruit Salad Small', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (13, N'Spring Roll', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Spring Roll', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (14, N'Bacon&Egg', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Bacon&Egg', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (15, N'Wedges', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Wedges', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (16, N'Banh Trang Tron', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Banh Trang Tron', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (17, N'Banh Mi Bo Kho', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Banh Mi Bo Kho', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (18, N'Sprite', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Sprite', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (19, N'Coke', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Coke', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (20, N'DietCoke', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'DietCoke', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (21, N'Fanta', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Fanta', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (22, N'Water', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Water', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (23, N'Sto. Avocado & Durian', 1, N'Blue', N'', 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63F00E37DE9 AS DateTime), N'Sto. Avocado & Durian', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (24, N'Sto. Avocado & Coconut', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Avocado & Coconut', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (25, N'Sto. Avocado & Mungbean', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Avocado & Mungbean', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (26, N'Sto. Avocado & Jackfruit', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Avocado & Jackfruit', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (27, N'Sto. Durian & Mungbean', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Durian & Mungbean', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (28, N'Sto. Durian & Coconut', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Durian & Coconut', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (29, N'Sto. Strawberry & Lychee', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry & Lychee', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (30, N'Sto. Strawberry & Coconut', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry & Coconut', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (31, N'Sto. Strawberry & WaterMelon', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry & WaterMelon', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (32, N'Sto. Strawberry & Soursop', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry & Soursop', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (33, N'Sto. Strawberry & Papaya & Passion Fruit', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry & Papaya & Passion Fruit', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (34, N'Sto. Strawberry & Mango & Passion Fruit', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry & Mango & Passion Fruit', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (35, N'Sto. Durian', 1, N'Blue', N'', 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63F00E30848 AS DateTime), N'Sto. Durian', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (36, N'Sto. 3Melon', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. 3Melon', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (37, N'Sto. Avocado', 1, N'Blue', N'', 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63F00E277A6 AS DateTime), N'Sto. Avocado', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (38, N'Sto. Strawberry', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (39, N'Sto. Jackfruit', 1, N'Blue', N'', 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63F00E3602A AS DateTime), N'Sto. Jackfruit', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (40, N'Sto. Panaya', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Panaya', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (41, N'Sto. HoneyMelon', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. HoneyMelon', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (42, N'Sto. Mango', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Mango', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (43, N'Sto. WaterMelon', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. WaterMelon', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (44, N'Sto. Banana', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Sto. Banana', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (45, N'Sto. Coconut', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Sto. Coconut', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (46, N'Sto. MungBean', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Sto. MungBean', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (47, N'Vanilla Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Vanilla Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (48, N'Chocolate Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Chocolate Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (49, N'Strawberry Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Strawberry Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (50, N'Caramel Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Caramel Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (51, N'Banana Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Banana Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (52, N'Coconut Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Coconut Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (53, N'GreenTea Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'GreenTea Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (54, N'Taro Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Taro Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (55, N'Mango Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Mango Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (56, N'BlackSesame Milk Shake', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'BlackSesame Milk Shake', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (57, N'Green Apple Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Green Apple Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (58, N'Peach Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Peach Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (59, N'Lychee Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Lychee Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (60, N'HoneyDew Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'HoneyDew Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (61, N'PassionFruit Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'PassionFruit Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (62, N'Strawberry Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Strawberry Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (63, N'Mango Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Mango Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (64, N'Taro Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC33D AS DateTime), 0, CAST(0x0000A63D015AC33D AS DateTime), N'Taro Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (65, N'Pearl Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Pearl Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (66, N'Chocolate Milk Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Chocolate Milk Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (67, N'Cafe Sua Da', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cafe Sua Da', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (68, N'Cafe Den Da', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cafe Den Da', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (69, N'Cafe Sua Nong', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cafe Sua Nong', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (70, N'Cafe Den Nong', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cafe Den Nong', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (71, N'Bac Xiu Da', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Bac Xiu Da', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (72, N'Bac Xiu Nong', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Bac Xiu Nong', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (73, N'Cafe Phin Nong', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cafe Phin Nong', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (74, N'Cafe Phin Da', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cafe Phin Da', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (75, N'Cafe Kem', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cafe Kem', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (76, N'Cappuccino', 1, N'Blue', N'', 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63F00E86EA4 AS DateTime), N'Cappuccino', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (77, N'FlatWhite', 1, N'Blue', N'', 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63F00E89A39 AS DateTime), N'FlatWhite', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (78, N'Latte', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Latte', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (79, N'LongBlack', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'LongBlack', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (80, N'ShortBlack', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'ShortBlack', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (81, N'HotMocha', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'HotMocha', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (82, N'IceMocha', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'IceMocha', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (83, N'Babycino', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Babycino', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (84, N'Hot Chocolate', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Hot Chocolate', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (85, N'Macchiato', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Macchiato', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (86, N'Ice Cappuccino', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Ice Cappuccino', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (87, N'Ice Latte', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Ice Latte', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (88, N'Ice Flatwhite', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Ice Flatwhite', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (89, N'Ice Chocolate', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Ice Chocolate', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (90, N'Affogato', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Affogato', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (91, N'English Breakfast Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'English Breakfast Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (92, N'Earl Grey Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Earl Grey Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (93, N'Camomile Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Camomile Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (94, N'GreenTea Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'GreenTea Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (95, N'Peppermint Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Peppermint Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (96, N'Lemon & Ginger Tea', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Lemon & Ginger Tea', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (97, N'Black Sesame Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Black Sesame Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (98, N'Chocolate Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Chocolate Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (99, N'Durian Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Durian Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (100, N'Coconut Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Coconut Ice-cream', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (101, N'GreenTea Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'GreenTea Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (102, N'Macadamia Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Macadamia Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (103, N'Mango Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC347 AS DateTime), 0, CAST(0x0000A63D015AC347 AS DateTime), N'Mango Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (104, N'MintChip Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'MintChip Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (105, N'Pandan Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Pandan Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (106, N'Rum & Raisin Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Rum & Raisin Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (107, N'Sticky Rice Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Sticky Rice Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (108, N'Rainbow Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Rainbow Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (109, N'Vanilla Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Vanilla Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (110, N'Cookies n Cream Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Cookies n Cream Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (111, N'Caramel Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Caramel Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (112, N'Tiramisu Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Tiramisu Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (113, N'Choc-choc-chip Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Choc-choc-chip Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (114, N'Taro Ice-cream', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Taro Ice-cream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (115, N'Orange Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Orange Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (116, N'PassionFruit Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'PassionFruit Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (117, N'Apple Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Apple Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (118, N'Coconut Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Coconut Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (119, N'RockMelon Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'RockMelon Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (120, N'WaterMelon Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'WaterMelon Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (121, N'Lemon Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Lemon Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (122, N'Carrot Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Carrot Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (123, N'PennyWorth Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'PennyWorth Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (124, N'Tomato Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC34B AS DateTime), 0, CAST(0x0000A63D015AC34B AS DateTime), N'Tomato Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (125, N'Pineapple Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'Pineapple Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (126, N'3Melon Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'3Melon Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (127, N'3Melon & PassionFruit Juice', 1, N'Blue', N'', 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63E00A290E0 AS DateTime), N'3Melon & PassionFruit Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (128, N'Orange & PassionFruit', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'Orange & PassionFruit', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (129, N'Orange & Carrot Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'Orange & Carrot Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (130, N'Lemon soda Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'Lemon soda Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (131, N'PennyWorth & Mungbean Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'PennyWorth & Mungbean Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (132, N'PennyWorth & Coconut Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'PennyWorth & Coconut Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (133, N'WaterMelon & PineApple Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'WaterMelon & PineApple Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (134, N'HoneyMelon & PineApple Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'HoneyMelon & PineApple Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (135, N'RockMelon & PineApple Juice', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'RockMelon & PineApple Juice', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (136, N'Che 3 Mau', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'Che 3 Mau', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (137, N'Che Thai', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC350 AS DateTime), 0, CAST(0x0000A63D015AC350 AS DateTime), N'Che Thai', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (138, N'1Scoop IceCream', 1, N'BlueViolet', N'', 0, CAST(0x0000A63E00A1CBEB AS DateTime), 0, CAST(0x0000A63E00A2731E AS DateTime), N'1Scoop IceCream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (139, N'2Scoop IceCream', 1, N'BlueViolet', N'', 0, CAST(0x0000A63E00A1E8C5 AS DateTime), 0, CAST(0x0000A63E00A27A75 AS DateTime), N'2Scoop IceCream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (140, N'3Scoop IceCream', 1, N'BlueViolet', N'', 0, CAST(0x0000A63E00A20529 AS DateTime), 0, CAST(0x0000A63E00A21213 AS DateTime), N'3Scoop IceCream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (141, N'4Scoop IceCream', 1, N'BlueViolet', N'', 0, CAST(0x0000A63E00A22613 AS DateTime), 0, CAST(0x0000A63E00A22613 AS DateTime), N'4Scoop IceCream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (142, N'5Scoop IceCream', 1, N'BlueViolet', N'', 0, CAST(0x0000A63E00A23980 AS DateTime), 0, CAST(0x0000A63E00A23980 AS DateTime), N'5Scoop IceCream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (143, N'6Scoop IceCream', 1, N'BlueViolet', N'', 0, CAST(0x0000A63E00A249E1 AS DateTime), 0, CAST(0x0000A63E00A249E1 AS DateTime), N'6Scoop IceCream', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (144, N'Coc Xi Muoi', 1, N'Blue', N'', 0, CAST(0x0000A63F00E7755C AS DateTime), 0, CAST(0x0000A63F00E7755C AS DateTime), N'Coc Xi Muoi', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (145, N'Che Suong Sao Nuoc Dua', 1, N'Blue', N'', 0, CAST(0x0000A63F00E78A02 AS DateTime), 0, CAST(0x0000A63F00E7A380 AS DateTime), N'Che Suong Sao Nuoc Dua', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (146, N'Che Green Jelly', 1, N'Blue', N'', 0, CAST(0x0000A63F00E7BA7A AS DateTime), 0, CAST(0x0000A63F00E7BA7A AS DateTime), N'Che Green Jelly', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (147, N'Banana Cake', 1, N'DarkBlue', N'', 0, CAST(0x0000A63F00E7DB74 AS DateTime), 0, CAST(0x0000A63F00E7DB74 AS DateTime), N'Banana Cake', NULL)
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
/****** Object:  Table [dbo].[PRINTER]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRINTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrinterName] [nvarchar](250) NULL,
	[PrintName] [nvarchar](50) NULL,
	[Header] [nvarchar](50) NULL,
	[PrinterType] [int] NULL,
	[NumberOfTicket] [int] NULL,
	[Status] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_PRINTER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PRINTER] ON
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'EPSON TM-T20 Receipt', N'Bar', N'Drink', 1, 1, 0, 0, CAST(0x0000A5990169EFCF AS DateTime), 0, CAST(0x0000A63F007C93AA AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'EPSON TM-T20 Receipt', N'Kitchen', N'Nha bep', 1, 2, 0, 0, CAST(0x0000A599016A04B8 AS DateTime), 0, CAST(0x0000A63D01651E91 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'EPSON TM-T20 Receipt', N'All', N'ALL', 0, 3, 1, 0, CAST(0x0000A599016F8194 AS DateTime), 0, CAST(0x0000A63E007CF8C4 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'EPSON TM-T20 Receipt', N'JoinTable', N'JoinTable', 2, 1, 1, 0, CAST(0x0000A59A0172019E AS DateTime), 0, CAST(0x0000A63E007CFE7B AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'EPSON TM-T20 Receipt', N'BILL', N'BIll', 4, 1, 1, 0, CAST(0x0000A59A0181A0C6 AS DateTime), 0, CAST(0x0000A63D01652B82 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'EPSON TM-T20 Receipt', N'Transfer Table', N'TRANFER TABLE', 3, 1, 1, 0, CAST(0x0000A5B60161753C AS DateTime), 0, CAST(0x0000A63E007D0829 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'EPSON TM-T20 Receipt', N'REPORT', N'REPORT', 5, 1, 1, 0, CAST(0x0000A5C4015C5EA3 AS DateTime), 0, CAST(0x0000A63F007E2E95 AS DateTime))
SET IDENTITY_INSERT [dbo].[PRINTER] OFF
/****** Object:  Table [dbo].[PRINTE_JOB_DETAIL]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRINTE_JOB_DETAIL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[ProductID] [int] NULL,
	[PrinterID] [int] NULL,
	[TemplatesID] [int] NULL,
	[Status] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_PRINTE_JOB_DETAIL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PRINTE_JOB_DETAIL] ON
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (40, 12, 37, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (41, 12, 38, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (42, 12, 39, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (43, 1, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (44, 1, 2, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (45, 1, 3, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (46, 1, 4, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (47, 1, 5, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (48, 1, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (49, 1, 7, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (50, 1, 8, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (51, 1, 9, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (52, 1, 21, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (53, 1, 23, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (54, 1, 24, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (55, 1, 25, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (56, 1, 26, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (57, 1, 27, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (58, 1, 28, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (59, 1, 29, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (60, 1, 30, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (61, 1, 31, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (62, 1, 32, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (63, 1, 33, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (64, 1, 34, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (65, 1, 35, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (66, 1, 36, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (67, 2, 10, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (68, 2, 11, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (69, 2, 12, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (70, 2, 13, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (71, 3, 14, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (72, 3, 15, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (73, 3, 16, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (74, 3, 17, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (75, 4, 18, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (76, 4, 19, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (81, 9, 22, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (82, 5, 20, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PRINTE_JOB_DETAIL] OFF
/****** Object:  Table [dbo].[PRINT_JOB]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRINT_JOB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrintJobName] [nvarchar](500) NULL,
	[PrintContent] [nvarchar](500) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_PRINT_JOB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEndDate]    Script Date: 07/14/2016 09:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[GetEndDate]
(
	@enddate DATETIME
)
RETURNS DATETIME
AS
BEGIN	
	
	DECLARE @result DATETIME

	 DECLARE @flag INT = 0;

                SELECT  @flag = ( 1 + ( ( 6 + DATEPART(dw, @enddate)
                                          + @@DATEFIRST ) % 7 ) );

                SELECT  @result = CASE WHEN @flag = 1
                                             AND @enddate < GETDATE()
                                        THEN @enddate
                                        WHEN @flag = 2
                                             AND @enddate < GETDATE()
                                        THEN @enddate
                                        WHEN @flag = 3
                                             AND @enddate < GETDATE()
                                        THEN @enddate + 5
                                        WHEN @flag = 4
                                             AND @enddate < GETDATE()
                                        THEN @enddate + 4
                                        WHEN @flag = 5
                                             AND @enddate < GETDATE()
                                        THEN @enddate + 3
                                        WHEN @flag = 6
                                             AND @enddate < GETDATE()
                                        THEN @enddate + 2
                                        WHEN @flag = 7
                                             AND @enddate < GETDATE()
                                        THEN @enddate + 1
                                        ELSE @enddate
                                   END

	return @result
	
END
GO
/****** Object:  Table [dbo].[FLOOR]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FLOOR](
	[FloorID] [int] IDENTITY(1,1) NOT NULL,
	[FloorName] [nvarchar](500) NOT NULL,
	[Priority] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_FLOOR] PRIMARY KEY CLUSTERED 
(
	[FloorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_DEPARMENT] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DEPARTMENT] ON
INSERT [dbo].[DEPARTMENT] ([DepartmentID], [DepartmentName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'Admin', 1, NULL, 0, CAST(0x0000A57B017D1BDC AS DateTime), 0, CAST(0x0000A57B017D1BDC AS DateTime))
INSERT [dbo].[DEPARTMENT] ([DepartmentID], [DepartmentName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'Manager', 1, NULL, 0, CAST(0x0000A57B017D20B3 AS DateTime), 0, CAST(0x0000A57B017D20B3 AS DateTime))
INSERT [dbo].[DEPARTMENT] ([DepartmentID], [DepartmentName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'Staff', 1, NULL, 0, CAST(0x0000A57B017D2522 AS DateTime), 0, CAST(0x0000A57B017D2522 AS DateTime))
SET IDENTITY_INSERT [dbo].[DEPARTMENT] OFF
/****** Object:  Table [dbo].[DATABASE_BACKUP]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATABASE_BACKUP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_DATABASE_BACKUP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONFIG_SAVE_DATA]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONFIG_SAVE_DATA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[LinkPath] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_CONFIG_SAVE_DATA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CONFIG_SAVE_DATA] ON
INSERT [dbo].[CONFIG_SAVE_DATA] ([ID], [Name], [LinkPath], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Type]) VALUES (1, N'BACKUP DATA', N'F:\', 1, 4, NULL, NULL, NULL, 1)
INSERT [dbo].[CONFIG_SAVE_DATA] ([ID], [Name], [LinkPath], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Type]) VALUES (2, N'REPORT', N'F:\', 1, 4, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[CONFIG_SAVE_DATA] OFF
/****** Object:  Table [dbo].[CONFIG]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONFIG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ABN] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Web] [nvarchar](50) NULL,
	[Logan] [nvarchar](50) NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_CONFIG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CONFIG] ON
INSERT [dbo].[CONFIG] ([ID], [Name], [ABN], [Address], [Tel], [Web], [Logan], [Note]) VALUES (1, N'VyVy Garden Cafe', N'ABN: 54 672 058 957', N'Shop 1/281 ILLAWARRA Road MARRICKVILLE NSW 2204', N'Tel:02 8937 0569', N'', N'', N'Thank you,see you soon')
SET IDENTITY_INSERT [dbo].[CONFIG] OFF
/****** Object:  Table [dbo].[CLIENT]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENT](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[Fname] [nvarchar](500) NULL,
	[Lname] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Phone] [nvarchar](500) NULL,
	[Adress1] [nvarchar](500) NULL,
	[Adress2] [nvarchar](500) NULL,
	[Adress3] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[Note] [nvarchar](max) NULL,
	[Balance] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_CLIENT] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENT] ON
INSERT [dbo].[CLIENT] ([ClientID], [Status], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [Balance], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 1, N'Thanh', N'Phan', N'Pcthanh@Gmail.com', N'0972641947', NULL, NULL, NULL, NULL, N'', -181800, 0, CAST(0x0000A5A600763DE3 AS DateTime), 0, CAST(0x0000A5A600763DE3 AS DateTime))
INSERT [dbo].[CLIENT] ([ClientID], [Status], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [Balance], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 1, N'AAA', N'AAA', N'PCTHANH2408@GMAIL.COM', N'123456', NULL, NULL, NULL, NULL, N'XXXXXXXX', -90020, 0, CAST(0x0000A5B500E6AEB4 AS DateTime), 0, CAST(0x0000A5B500E6AEB4 AS DateTime))
INSERT [dbo].[CLIENT] ([ClientID], [Status], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [Balance], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 1, N'Phan Chi Thanh', NULL, N'Yyy', N'555', NULL, NULL, NULL, NULL, N'Hhh', -329020, 0, CAST(0x0000A5B501692CF6 AS DateTime), 0, CAST(0x0000A5B501692CF6 AS DateTime))
SET IDENTITY_INSERT [dbo].[CLIENT] OFF
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](500) NOT NULL,
	[CategoryNameSort] [nvarchar](500) NULL,
	[Status] [int] NOT NULL,
	[Color] [nvarchar](250) NULL,
	[ProductColor] [nvarchar](250) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'Sinh To', N'Sinh To', 1, N'Blue', N'Transparent', N'', 1, CAST(0x0000A63D016461EF AS DateTime), 1, CAST(0x0000A63E0083F129 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'Special Fruit Salad', N'Special Fruit Salad', 1, N'Blue', N'', N'', 1, CAST(0x0000A63E008414CD AS DateTime), 1, CAST(0x0000A63E00843C16 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'Special Food', N'Special Food', 1, N'Blue', N'', N'', 1, CAST(0x0000A63E00845788 AS DateTime), 1, CAST(0x0000A63E008471C0 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'Soft Drink', N'Soft Drink', 1, N'', N'', N'', 1, CAST(0x0000A63E008482DF AS DateTime), 1, CAST(0x0000A63E00849989 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'Sinh to Mix', N'Sinh to Mix', 1, N'Blue', N'Transparent', N'', 1, CAST(0x0000A63E0084B2AF AS DateTime), 1, CAST(0x0000A63E008512F2 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'Milkshake', N'Milkshake', 1, N'', N'', N'', 1, CAST(0x0000A63E008524E3 AS DateTime), 1, CAST(0x0000A63E00854213 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'MilkTea', N'MilkTea', 1, N'Blue', N'Transparent', N'', 1, CAST(0x0000A63E008551F6 AS DateTime), 1, CAST(0x0000A63E0085888A AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'Cafe VietNam', N'Cafe VietNam', 1, N'', N'', N'', 1, CAST(0x0000A63E0085A6CA AS DateTime), 1, CAST(0x0000A63E0085CC81 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, N'Coffee', N'Coffee', 1, N'', N'', N'', 1, CAST(0x0000A63E0085DB2C AS DateTime), 1, CAST(0x0000A63E0085FB96 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, N'Tea', N'Tea', 1, N'', N'', N'', 1, CAST(0x0000A63E00860531 AS DateTime), 1, CAST(0x0000A63E00861D12 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (11, N'Ice Cream', N'Ice Cream', 1, N'', N'', N'', 1, CAST(0x0000A63E00863003 AS DateTime), 1, CAST(0x0000A63E00865729 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (12, N'Juice', N'Juice', 1, N'', N'', N'', 1, CAST(0x0000A63E00866B62 AS DateTime), 1, CAST(0x0000A63E0086DB81 AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (13, N'Juice MIX', N'Juice MIX', 1, N'', N'', N'', 1, CAST(0x0000A63E0086E76C AS DateTime), 1, CAST(0x0000A63E0087016B AS DateTime))
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, N'Che Sweet', N'Che Sweet', 1, N'', N'', N'', 1, CAST(0x0000A63E008711E7 AS DateTime), 1, CAST(0x0000A63F00E81C57 AS DateTime))
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
/****** Object:  Table [dbo].[CATALOGUE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATALOGUE](
	[CatalogueID] [int] IDENTITY(1,1) NOT NULL,
	[CatalogueName] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[Color] [nvarchar](250) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_CATALOGUE] PRIMARY KEY CLUSTERED 
(
	[CatalogueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATALOGUE] ON
INSERT [dbo].[CATALOGUE] ([CatalogueID], [CatalogueName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'Drink', 1, N'Blue', N'', 0, CAST(0x0000A63D016428BC AS DateTime), 0, CAST(0x0000A63D0164FF24 AS DateTime))
INSERT [dbo].[CATALOGUE] ([CatalogueID], [CatalogueName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'Food', 1, N'Chartreuse', N'', 0, CAST(0x0000A63E0083B298 AS DateTime), 0, CAST(0x0000A63E0083B298 AS DateTime))
SET IDENTITY_INSERT [dbo].[CATALOGUE] OFF
/****** Object:  Table [dbo].[Card]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[CardName] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[SurChart] [int] NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Card] ON
INSERT [dbo].[Card] ([CardID], [CardName], [Status], [SurChart]) VALUES (1, N'MASTER-CARD', 0, 0)
INSERT [dbo].[Card] ([CardID], [CardName], [Status], [SurChart]) VALUES (2, N'VISA', 0, 0)
INSERT [dbo].[Card] ([CardID], [CardName], [Status], [SurChart]) VALUES (3, N'AMEX', 0, 0)
INSERT [dbo].[Card] ([CardID], [CardName], [Status], [SurChart]) VALUES (4, N'AMERICAN-EXPRESS', 0, 0)
SET IDENTITY_INSERT [dbo].[Card] OFF
/****** Object:  UserDefinedFunction [dbo].[Auto_Create_Code]    Script Date: 07/14/2016 09:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Thien Huynh>
-- Create date: <03/01/2016>
-- Description:	<Auto_Create_Code>
-- =============================================


-- SELECT [dbo].[Auto_Create_Code] ('P',1)


CREATE FUNCTION [dbo].[Auto_Create_Code]
(
	@StartCode NVARCHAR(1)='',
	@id int
)
RETURNS nvarchar(10)
AS
BEGIN	
	declare @length int
	declare @zeroes nvarchar(10)
	declare @zcount int -- the number of zeroes
	set @zcount = 0
	set @zeroes = ''
	set @length = len(cast(@id as nvarchar))
	while( @zcount + @length < 9 ) begin
		set @zeroes = @zeroes + '0'
		set @zcount = @zcount + 1
	end	
	return @StartCode + @zeroes + cast(@id as nvarchar)
	
END
GO
/****** Object:  Table [dbo].[ACC_PAYMENT]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACC_PAYMENT](
	[PayMentID] [int] IDENTITY(1,1) NOT NULL,
	[CusNo] [int] NULL,
	[SubTotal] [int] NULL,
	[InvoiceID] [int] NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[Cash] [int] NULL,
	[Card] [int] NULL,
	[IsCredit] [int] NULL,
	[IsDebit] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [int] NOT NULL,
 CONSTRAINT [PK_ACC_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[PayMentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ACC_PAYMENT] ON
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (1, 0, 10000, 1, N'12016710', 0, 0, 1, 0, CAST(0x0000A63F00F4DB98 AS DateTime), 2, CAST(0x0000A63F00F4DB98 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (2, 0, 50000, 2, N'22016710', 0, 0, 1, 0, CAST(0x0000A63F00FF91C8 AS DateTime), 2, CAST(0x0000A63F00FF91C8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (3, 0, 40000, 3, N'32016710', 0, 0, 1, 0, CAST(0x0000A63F010307B8 AS DateTime), 2, CAST(0x0000A63F010307B8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (4, 0, 5000, 4, N'42016710', 0, 0, 1, 0, CAST(0x0000A63F010F836C AS DateTime), 2, CAST(0x0000A63F010F836C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (5, 0, 7000, 5, N'52016710', 0, 0, 1, 0, CAST(0x0000A63F011030DC AS DateTime), 2, CAST(0x0000A63F011030DC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (6, 0, 4000, 6, N'62016711', 0, 0, 1, 0, CAST(0x0000A640007B3D38 AS DateTime), 2, CAST(0x0000A640007B3D38 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (7, 0, 5000, 7, N'72016711', 0, 0, 1, 0, CAST(0x0000A6400082BA68 AS DateTime), 2, CAST(0x0000A6400082BA68 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (8, 0, 4500, 8, N'82016711', 0, 0, 1, 0, CAST(0x0000A6400085401C AS DateTime), 2, CAST(0x0000A6400085401C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (9, 0, 4000, 9, N'92016711', 0, 0, 1, 0, CAST(0x0000A64000855E94 AS DateTime), 2, CAST(0x0000A64000855E94 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (10, 0, 3500, 10, N'102016711', 0, 0, 1, 0, CAST(0x0000A6400086C52C AS DateTime), 2, CAST(0x0000A6400086C52C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (11, 0, 5000, 11, N'112016711', 0, 0, 1, 0, CAST(0x0000A64000871158 AS DateTime), 2, CAST(0x0000A64000871158 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (12, 0, 50000, 12, N'122016711', 0, 0, 1, 0, CAST(0x0000A640008D6BE8 AS DateTime), 2, CAST(0x0000A640008D6BE8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (13, 0, 5000, 13, N'132016711', 0, 0, 1, 0, CAST(0x0000A640008FB704 AS DateTime), 2, CAST(0x0000A640008FB704 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (14, 0, 10000, 14, N'142016711', 0, 0, 1, 0, CAST(0x0000A64000900EE8 AS DateTime), 2, CAST(0x0000A64000900EE8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (15, 0, 5000, 15, N'152016711', 0, 0, 1, 0, CAST(0x0000A640009B96DC AS DateTime), 2, CAST(0x0000A640009B96DC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (16, 0, 50000, 16, N'162016711', 0, 0, 1, 0, CAST(0x0000A640009E25F0 AS DateTime), 2, CAST(0x0000A640009E25F0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (17, 0, 5000, 17, N'172016711', 0, 0, 1, 0, CAST(0x0000A640009E4468 AS DateTime), 2, CAST(0x0000A640009E4468 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (18, 0, 10000, 18, N'182016711', 0, 0, 1, 0, CAST(0x0000A640009E62E0 AS DateTime), 2, CAST(0x0000A640009E62E0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (19, 0, 50000, 19, N'192016711', 0, 0, 1, 0, CAST(0x0000A640009E898C AS DateTime), 2, CAST(0x0000A640009E898C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (20, 0, 5000, 20, N'202016711', 0, 0, 1, 0, CAST(0x0000A640009EA480 AS DateTime), 2, CAST(0x0000A640009EA480 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (21, 0, 20000, 21, N'212016711', 0, 0, 1, 0, CAST(0x0000A640009F2A18 AS DateTime), 2, CAST(0x0000A640009F2A18 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (22, 0, 5000, 22, N'222016711', 0, 0, 1, 0, CAST(0x0000A64000A07DF0 AS DateTime), 2, CAST(0x0000A64000A07DF0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (23, 0, 5000, 23, N'232016711', 0, 0, 1, 0, CAST(0x0000A64000A56F90 AS DateTime), 2, CAST(0x0000A64000A56F90 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (24, 0, 4000, 24, N'242016711', 0, 0, 1, 0, CAST(0x0000A64000A584A8 AS DateTime), 2, CAST(0x0000A64000A584A8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (25, 0, 10000, 25, N'252016711', 0, 0, 1, 0, CAST(0x0000A64000A7C9E8 AS DateTime), 2, CAST(0x0000A64000A7C9E8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (26, 0, 4000, 26, N'262016711', 0, 0, 1, 0, CAST(0x0000A64000A7DF00 AS DateTime), 2, CAST(0x0000A64000A7DF00 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (27, 0, 5000, 27, N'272016711', 0, 0, 1, 0, CAST(0x0000A64000A8A890 AS DateTime), 2, CAST(0x0000A64000A8A890 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (28, 0, 10000, 28, N'282016711', 0, 0, 1, 0, CAST(0x0000A64000AA57D0 AS DateTime), 2, CAST(0x0000A64000AA57D0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (29, 0, 5000, 29, N'292016711', 0, 0, 1, 0, CAST(0x0000A64000AAF3AC AS DateTime), 2, CAST(0x0000A64000AAF3AC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (30, 0, 10000, 30, N'302016711', 0, 0, 1, 0, CAST(0x0000A64000AFD160 AS DateTime), 2, CAST(0x0000A64000AFD160 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (31, 0, 20000, 31, N'312016711', 0, 0, 1, 0, CAST(0x0000A64000B084AC AS DateTime), 2, CAST(0x0000A64000B084AC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (32, 0, 5000, 32, N'322016711', 0, 0, 1, 0, CAST(0x0000A64000B210C4 AS DateTime), 2, CAST(0x0000A64000B210C4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (33, 0, 5000, 33, N'332016711', 0, 0, 1, 0, CAST(0x0000A64000B2212C AS DateTime), 2, CAST(0x0000A64000B2212C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (34, 0, 20000, 34, N'342016711', 0, 0, 1, 0, CAST(0x0000A64000B232C0 AS DateTime), 2, CAST(0x0000A64000B232C0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (35, 0, 5000, 35, N'352016711', 0, 0, 1, 0, CAST(0x0000A64000B4297C AS DateTime), 2, CAST(0x0000A64000B4297C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (36, 0, 10000, 36, N'362016711', 0, 0, 1, 0, CAST(0x0000A64000B43660 AS DateTime), 2, CAST(0x0000A64000B43660 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (37, 0, 4000, 37, N'372016711', 0, 0, 1, 0, CAST(0x0000A64000B454D8 AS DateTime), 2, CAST(0x0000A64000B454D8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (38, 0, 10000, 38, N'382016711', 0, 0, 1, 0, CAST(0x0000A64000B64A68 AS DateTime), 2, CAST(0x0000A64000B64A68 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (39, 0, 5000, 39, N'392016711', 0, 0, 1, 0, CAST(0x0000A64000B6D708 AS DateTime), 2, CAST(0x0000A64000B6D708 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (40, 0, 5000, 40, N'402016711', 0, 0, 1, 0, CAST(0x0000A64000B7CAC8 AS DateTime), 2, CAST(0x0000A64000B7CAC8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (41, 0, 5000, 41, N'412016711', 0, 0, 1, 0, CAST(0x0000A64000BE0CBC AS DateTime), 2, CAST(0x0000A64000BE0CBC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (42, 0, 4500, 42, N'422016711', 0, 0, 1, 0, CAST(0x0000A64000C12870 AS DateTime), 2, CAST(0x0000A64000C12870 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (43, 0, 10000, 43, N'432016711', 0, 0, 1, 0, CAST(0x0000A64000C13A04 AS DateTime), 2, CAST(0x0000A64000C13A04 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (44, 0, 10000, 44, N'442016711', 0, 0, 1, 0, CAST(0x0000A64000C15D2C AS DateTime), 2, CAST(0x0000A64000C15D2C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (45, 0, 10000, 45, N'452016711', 0, 0, 1, 0, CAST(0x0000A64000C2B230 AS DateTime), 2, CAST(0x0000A64000C2B230 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (46, 0, 4500, 46, N'462016711', 0, 0, 1, 0, CAST(0x0000A64000C2CD24 AS DateTime), 2, CAST(0x0000A64000C2CD24 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (47, 0, 20000, 47, N'472016711', 0, 0, 1, 0, CAST(0x0000A64000CAFDA0 AS DateTime), 2, CAST(0x0000A64000CAFDA0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (48, 0, 10000, 48, N'482016711', 0, 0, 1, 0, CAST(0x0000A64000CBF28C AS DateTime), 2, CAST(0x0000A64000CBF28C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (49, 0, 10000, 49, N'492016711', 0, 0, 1, 0, CAST(0x0000A64000D28C64 AS DateTime), 2, CAST(0x0000A64000D28C64 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (50, 0, 5000, 50, N'502016711', 0, 0, 1, 0, CAST(0x0000A64000D5366C AS DateTime), 2, CAST(0x0000A64000D5366C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (51, 0, 5000, 51, N'512016711', 0, 0, 1, 0, CAST(0x0000A64000D63008 AS DateTime), 2, CAST(0x0000A64000D63008 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (52, 0, 5000, 52, N'522016711', 0, 0, 1, 0, CAST(0x0000A64000D8BCC4 AS DateTime), 2, CAST(0x0000A64000D8BCC4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (53, 0, 50000, 53, N'532016711', 0, 0, 1, 0, CAST(0x0000A64000DA85CC AS DateTime), 2, CAST(0x0000A64000DA85CC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (54, 0, 5000, 54, N'542016711', 0, 0, 1, 0, CAST(0x0000A64000DABE0C AS DateTime), 2, CAST(0x0000A64000DABE0C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (55, 0, 10000, 55, N'552016711', 0, 0, 1, 0, CAST(0x0000A64000E180E8 AS DateTime), 2, CAST(0x0000A64000E180E8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (56, 0, 20000, 56, N'562016711', 0, 0, 1, 0, CAST(0x0000A64000E2C584 AS DateTime), 2, CAST(0x0000A64000E2C584 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (57, 0, 10000, 57, N'572016711', 0, 0, 1, 0, CAST(0x0000A64000E2FDC4 AS DateTime), 2, CAST(0x0000A64000E2FDC4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (58, 0, 20000, 58, N'582016711', 0, 0, 1, 0, CAST(0x0000A64000E71ECC AS DateTime), 2, CAST(0x0000A64000E71ECC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (59, 0, 5000, 59, N'592016711', 0, 0, 1, 0, CAST(0x0000A64000EB887C AS DateTime), 2, CAST(0x0000A64000EB887C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (60, 0, 3500, 60, N'602016711', 0, 0, 1, 0, CAST(0x0000A64000EE41C0 AS DateTime), 2, CAST(0x0000A64000EE41C0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (61, 0, 10000, 61, N'612016711', 0, 0, 1, 0, CAST(0x0000A64000EF7144 AS DateTime), 2, CAST(0x0000A64000EF7144 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (62, 0, 20000, 62, N'622016711', 0, 0, 1, 0, CAST(0x0000A64000F04A10 AS DateTime), 2, CAST(0x0000A64000F04A10 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (63, 0, 20000, 63, N'632016711', 0, 0, 1, 0, CAST(0x0000A64000F573F0 AS DateTime), 2, CAST(0x0000A64000F573F0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (64, 0, 9000, 64, N'642016711', 0, 0, 1, 0, CAST(0x0000A64000F765FC AS DateTime), 2, CAST(0x0000A64000F765FC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (65, 0, 4000, 65, N'652016711', 0, 0, 1, 0, CAST(0x0000A64000FB78F4 AS DateTime), 2, CAST(0x0000A64000FB78F4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (66, 0, 3500, 66, N'662016711', 0, 0, 1, 0, CAST(0x0000A64000FDB72C AS DateTime), 2, CAST(0x0000A64000FDB72C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (67, 0, 5000, 67, N'672016711', 0, 0, 1, 0, CAST(0x0000A64001055658 AS DateTime), 2, CAST(0x0000A64001055658 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (68, 0, 5000, 68, N'682016711', 0, 0, 1, 0, CAST(0x0000A640010CE648 AS DateTime), 2, CAST(0x0000A640010CE648 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (69, 0, 20000, 69, N'692016711', 0, 0, 1, 0, CAST(0x0000A640010E7710 AS DateTime), 2, CAST(0x0000A640010E7710 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (70, 0, 5000, 70, N'702016711', 0, 0, 1, 0, CAST(0x0000A6400118F62C AS DateTime), 2, CAST(0x0000A6400118F62C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (71, 0, 6800, 71, N'712016711', 0, 0, 1, 0, CAST(0x0000A640011DC120 AS DateTime), 2, CAST(0x0000A640011DC120 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (72, 0, 5000, 72, N'722016711', 0, 0, 1, 0, CAST(0x0000A640011DC954 AS DateTime), 2, CAST(0x0000A640011DC954 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (73, 0, 10000, 73, N'732016711', 0, 0, 1, 0, CAST(0x0000A6400122AA8C AS DateTime), 2, CAST(0x0000A6400122AA8C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (74, 0, 5000, 74, N'742016711', 0, 0, 1, 0, CAST(0x0000A6400124DF64 AS DateTime), 2, CAST(0x0000A6400124DF64 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (75, 0, 10000, 75, N'752016712', 0, 0, 1, 0, CAST(0x0000A64100768630 AS DateTime), 2, CAST(0x0000A64100768630 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (76, 0, 3500, 76, N'762016712', 0, 0, 1, 0, CAST(0x0000A64100769698 AS DateTime), 2, CAST(0x0000A64100769698 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (77, 0, 50000, 77, N'772016712', 0, 0, 1, 0, CAST(0x0000A6410076A700 AS DateTime), 2, CAST(0x0000A6410076A700 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (78, 0, 4000, 78, N'782016712', 0, 0, 1, 0, CAST(0x0000A6410077F628 AS DateTime), 2, CAST(0x0000A6410077F628 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (79, 0, 5000, 79, N'792016712', 0, 0, 1, 0, CAST(0x0000A641007A4AA4 AS DateTime), 2, CAST(0x0000A641007A4AA4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (80, 0, 20000, 80, N'802016712', 0, 0, 1, 0, CAST(0x0000A641007F722C AS DateTime), 2, CAST(0x0000A641007F722C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (81, 0, 5000, 81, N'812016712', 0, 0, 1, 0, CAST(0x0000A64100816438 AS DateTime), 2, CAST(0x0000A64100816438 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (82, 0, 10000, 82, N'822016712', 0, 0, 1, 0, CAST(0x0000A6410083D858 AS DateTime), 2, CAST(0x0000A6410083D858 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (83, 0, 20000, 83, N'832016712', 0, 0, 1, 0, CAST(0x0000A64100894D38 AS DateTime), 2, CAST(0x0000A64100894D38 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (84, 0, 50000, 84, N'842016712', 0, 0, 1, 0, CAST(0x0000A641008A7104 AS DateTime), 2, CAST(0x0000A641008A7104 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (85, 0, 5000, 85, N'852016712', 0, 0, 1, 0, CAST(0x0000A641008F0868 AS DateTime), 2, CAST(0x0000A641008F0868 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (86, 0, 20000, 86, N'862016712', 0, 0, 1, 0, CAST(0x0000A641008FD900 AS DateTime), 2, CAST(0x0000A641008FD900 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (87, 0, 5000, 87, N'872016712', 0, 0, 1, 0, CAST(0x0000A641009B8C50 AS DateTime), 2, CAST(0x0000A641009B8C50 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (88, 0, 5000, 88, N'882016712', 0, 0, 1, 0, CAST(0x0000A641009CE3AC AS DateTime), 2, CAST(0x0000A641009CE3AC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (89, 0, 20000, 89, N'892016712', 0, 0, 1, 0, CAST(0x0000A641009DF710 AS DateTime), 2, CAST(0x0000A641009DF710 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (90, 0, 30000, 90, N'902016712', 0, 0, 1, 0, CAST(0x0000A641009FC39C AS DateTime), 2, CAST(0x0000A641009FC39C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (91, 0, 5000, 91, N'912016712', 0, 0, 1, 0, CAST(0x0000A64100A22880 AS DateTime), 2, CAST(0x0000A64100A22880 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (92, 0, 5000, 92, N'922016712', 0, 0, 1, 0, CAST(0x0000A64100A23C6C AS DateTime), 2, CAST(0x0000A64100A23C6C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (93, 0, 20000, 93, N'932016712', 0, 0, 1, 0, CAST(0x0000A64100A25AE4 AS DateTime), 2, CAST(0x0000A64100A25AE4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (94, 0, 50000, 94, N'942016712', 0, 0, 1, 0, CAST(0x0000A64100A6CF20 AS DateTime), 2, CAST(0x0000A64100A6CF20 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (95, 0, 10000, 95, N'952016712', 0, 0, 1, 0, CAST(0x0000A64100A8CBB8 AS DateTime), 2, CAST(0x0000A64100A8CBB8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (96, 0, 3500, 96, N'962016712', 0, 0, 1, 0, CAST(0x0000A64100AA78A0 AS DateTime), 2, CAST(0x0000A64100AA78A0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (97, 0, 5000, 97, N'972016712', 0, 0, 1, 0, CAST(0x0000A64100ABC8F4 AS DateTime), 2, CAST(0x0000A64100ABC8F4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (98, 0, 5000, 98, N'982016712', 0, 0, 1, 0, CAST(0x0000A64100ABD704 AS DateTime), 2, CAST(0x0000A64100ABD704 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (99, 0, 5000, 99, N'992016712', 0, 0, 1, 0, CAST(0x0000A64100AC35F0 AS DateTime), 2, CAST(0x0000A64100AC35F0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (100, 0, 10000, 100, N'1002016712', 0, 0, 1, 0, CAST(0x0000A64100ADA138 AS DateTime), 2, CAST(0x0000A64100ADA138 AS DateTime), 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (101, 0, 10000, 101, N'1012016712', 0, 0, 1, 0, CAST(0x0000A64100ADC0DC AS DateTime), 2, CAST(0x0000A64100ADC0DC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (102, 0, 5000, 102, N'1022016712', 0, 0, 1, 0, CAST(0x0000A64100B02F20 AS DateTime), 2, CAST(0x0000A64100B02F20 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (103, 0, 5000, 103, N'1032016712', 0, 0, 1, 0, CAST(0x0000A64100B50950 AS DateTime), 2, CAST(0x0000A64100B50950 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (104, 0, 50000, 104, N'1042016712', 0, 0, 1, 0, CAST(0x0000A64100B6ABAC AS DateTime), 2, CAST(0x0000A64100B6ABAC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (105, 0, 50000, 105, N'1052016712', 0, 0, 1, 0, CAST(0x0000A64100B868FC AS DateTime), 2, CAST(0x0000A64100B868FC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (106, 0, 5000, 106, N'1062016712', 0, 0, 1, 0, CAST(0x0000A64100C4B4A4 AS DateTime), 2, CAST(0x0000A64100C4B4A4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (107, 0, 5000, 107, N'1072016712', 0, 0, 1, 0, CAST(0x0000A64100C4ECE4 AS DateTime), 2, CAST(0x0000A64100C4ECE4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (108, 0, 5000, 108, N'1082016712', 0, 0, 1, 0, CAST(0x0000A64100C51138 AS DateTime), 2, CAST(0x0000A64100C51138 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (109, 0, 10000, 109, N'1092016712', 0, 0, 1, 0, CAST(0x0000A64100C52524 AS DateTime), 2, CAST(0x0000A64100C52524 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (110, 0, 20000, 110, N'1102016712', 0, 0, 1, 0, CAST(0x0000A64100C6BBC8 AS DateTime), 2, CAST(0x0000A64100C6BBC8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (111, 0, 20000, 111, N'1112016712', 0, 0, 1, 0, CAST(0x0000A64100C6E01C AS DateTime), 2, CAST(0x0000A64100C6E01C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (112, 0, 20000, 112, N'1122016712', 0, 0, 1, 0, CAST(0x0000A64100C94E60 AS DateTime), 2, CAST(0x0000A64100C94E60 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (113, 0, 4000, 113, N'1132016712', 0, 0, 1, 0, CAST(0x0000A64100CC3B34 AS DateTime), 2, CAST(0x0000A64100CC3B34 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (114, 0, 12000, 114, N'1142016712', 0, 0, 1, 0, CAST(0x0000A64100CD63B0 AS DateTime), 2, CAST(0x0000A64100CD63B0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (115, 0, 10000, 115, N'1152016712', 0, 0, 1, 0, CAST(0x0000A64100D0B9FC AS DateTime), 2, CAST(0x0000A64100D0B9FC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (116, 0, 5000, 116, N'1162016712', 0, 0, 1, 0, CAST(0x0000A64100D38150 AS DateTime), 2, CAST(0x0000A64100D38150 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (117, 0, 4000, 117, N'1172016712', 0, 0, 1, 0, CAST(0x0000A64100D5DA7C AS DateTime), 2, CAST(0x0000A64100D5DA7C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (118, 0, 3500, 118, N'1182016712', 0, 0, 1, 0, CAST(0x0000A64100E1684C AS DateTime), 2, CAST(0x0000A64100E1684C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (119, 0, 20000, 119, N'1192016712', 0, 0, 1, 0, CAST(0x0000A64100E201D0 AS DateTime), 2, CAST(0x0000A64100E201D0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (120, 0, 20000, 120, N'1202016712', 0, 0, 1, 0, CAST(0x0000A64100E35350 AS DateTime), 2, CAST(0x0000A64100E35350 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (121, 0, 5000, 121, N'1212016712', 0, 0, 1, 0, CAST(0x0000A64100EAB910 AS DateTime), 2, CAST(0x0000A64100EAB910 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (122, 0, 20000, 122, N'1222016712', 0, 0, 1, 0, CAST(0x0000A64100EB83CC AS DateTime), 2, CAST(0x0000A64100EB83CC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (123, 0, 10000, 123, N'1232016712', 0, 0, 1, 0, CAST(0x0000A64100EEC884 AS DateTime), 2, CAST(0x0000A64100EEC884 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (124, 0, 10000, 124, N'1242016712', 0, 0, 1, 0, CAST(0x0000A64100F95100 AS DateTime), 2, CAST(0x0000A64100F95100 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (125, 0, 4000, 125, N'1252016712', 0, 0, 1, 0, CAST(0x0000A64100FBB4B8 AS DateTime), 2, CAST(0x0000A64100FBB4B8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (126, 0, 10000, 126, N'1262016712', 0, 0, 1, 0, CAST(0x0000A64100FBDC90 AS DateTime), 2, CAST(0x0000A64100FBDC90 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (127, 0, 4000, 127, N'1272016712', 0, 0, 1, 0, CAST(0x0000A64100FC240C AS DateTime), 2, CAST(0x0000A64100FC240C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (128, 0, 4000, 128, N'1282016712', 0, 0, 1, 0, CAST(0x0000A64100FC59F4 AS DateTime), 2, CAST(0x0000A64100FC59F4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (129, 0, 3535, 129, N'1292016712', 0, 0, 1, 0, CAST(0x0000A64101010670 AS DateTime), 2, CAST(0x0000A64101010670 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (130, 0, 3500, 130, N'1302016712', 0, 0, 1, 0, CAST(0x0000A641010B06FC AS DateTime), 2, CAST(0x0000A641010B06FC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (131, 0, 10000, 131, N'1312016712', 0, 0, 1, 0, CAST(0x0000A641010F8A74 AS DateTime), 2, CAST(0x0000A641010F8A74 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (132, 0, 20000, 132, N'1322016712', 0, 0, 1, 0, CAST(0x0000A6410112923C AS DateTime), 2, CAST(0x0000A6410112923C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (133, 0, 4000, 133, N'1332016712', 0, 0, 1, 0, CAST(0x0000A6410115A6E8 AS DateTime), 2, CAST(0x0000A6410115A6E8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (134, 0, 5000, 134, N'1342016712', 0, 0, 1, 0, CAST(0x0000A641011CA90C AS DateTime), 2, CAST(0x0000A641011CA90C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (135, 0, 5000, 135, N'1352016713', 0, 0, 1, 0, CAST(0x0000A64200796E54 AS DateTime), 2, CAST(0x0000A64200796E54 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (136, 0, 44000, 136, N'1362016713', 0, 0, 1, 0, CAST(0x0000A642007ADF78 AS DateTime), 2, CAST(0x0000A642007ADF78 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (137, 0, 20000, 137, N'1372016713', 0, 0, 1, 0, CAST(0x0000A64200803E14 AS DateTime), 2, CAST(0x0000A64200803E14 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (138, 0, 5000, 138, N'1382016713', 0, 0, 1, 0, CAST(0x0000A6420082F500 AS DateTime), 2, CAST(0x0000A6420082F500 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (139, 0, 5000, 139, N'1392016713', 0, 0, 1, 0, CAST(0x0000A6420083DF60 AS DateTime), 2, CAST(0x0000A6420083DF60 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (140, 0, 50000, 140, N'1402016713', 0, 0, 1, 0, CAST(0x0000A642008EB534 AS DateTime), 2, CAST(0x0000A642008EB534 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (141, 0, 20000, 141, N'1412016713', 0, 0, 1, 0, CAST(0x0000A6420092C700 AS DateTime), 2, CAST(0x0000A6420092C700 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (142, 0, 10000, 142, N'1422016713', 0, 0, 1, 0, CAST(0x0000A642009443DC AS DateTime), 2, CAST(0x0000A642009443DC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (143, 0, 5000, 143, N'1432016713', 0, 0, 1, 0, CAST(0x0000A6420096DEA8 AS DateTime), 2, CAST(0x0000A6420096DEA8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (144, 0, 20000, 144, N'1442016713', 0, 0, 1, 0, CAST(0x0000A64200996DBC AS DateTime), 2, CAST(0x0000A64200996DBC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (145, 0, 50000, 145, N'1452016713', 0, 0, 1, 0, CAST(0x0000A64200A02288 AS DateTime), 2, CAST(0x0000A64200A02288 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (146, 0, 5000, 146, N'1462016713', 0, 0, 1, 0, CAST(0x0000A64200A4D288 AS DateTime), 2, CAST(0x0000A64200A4D288 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (147, 0, 4500, 147, N'1472016713', 0, 0, 1, 0, CAST(0x0000A64200A59768 AS DateTime), 2, CAST(0x0000A64200A59768 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (148, 0, 5000, 148, N'1482016713', 0, 0, 1, 0, CAST(0x0000A64200A5B004 AS DateTime), 2, CAST(0x0000A64200A5B004 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (149, 0, 10000, 149, N'1492016713', 0, 0, 1, 0, CAST(0x0000A64200A621B0 AS DateTime), 2, CAST(0x0000A64200A621B0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (150, 0, 4000, 150, N'1502016713', 0, 0, 1, 0, CAST(0x0000A64200A68FD8 AS DateTime), 2, CAST(0x0000A64200A68FD8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (151, 0, 10000, 151, N'1512016713', 0, 0, 1, 0, CAST(0x0000A64200A6B7B0 AS DateTime), 2, CAST(0x0000A64200A6B7B0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (152, 0, 10000, 152, N'1522016713', 0, 0, 1, 0, CAST(0x0000A64200A76AFC AS DateTime), 2, CAST(0x0000A64200A76AFC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (153, 0, 5000, 153, N'1532016713', 0, 0, 1, 0, CAST(0x0000A64200AE441C AS DateTime), 2, CAST(0x0000A64200AE441C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (154, 0, 5000, 154, N'1542016713', 0, 0, 1, 0, CAST(0x0000A64200AED440 AS DateTime), 2, CAST(0x0000A64200AED440 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (155, 0, 5000, 155, N'1552016713', 0, 0, 1, 0, CAST(0x0000A64200AFF230 AS DateTime), 2, CAST(0x0000A64200AFF230 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (156, 0, 9000, 156, N'1562016713', 0, 0, 1, 0, CAST(0x0000A64200B1E7C0 AS DateTime), 2, CAST(0x0000A64200B1E7C0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (157, 0, 20000, 157, N'1572016713', 0, 0, 1, 0, CAST(0x0000A64200B23AF4 AS DateTime), 2, CAST(0x0000A64200B23AF4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (158, 0, 20000, 158, N'1582016713', 0, 0, 1, 0, CAST(0x0000A64200B27C94 AS DateTime), 2, CAST(0x0000A64200B27C94 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (159, 0, 10000, 159, N'1592016713', 0, 0, 1, 0, CAST(0x0000A64200B2A91C AS DateTime), 2, CAST(0x0000A64200B2A91C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (160, 0, 5000, 160, N'1602016713', 0, 0, 1, 0, CAST(0x0000A64200B53A88 AS DateTime), 2, CAST(0x0000A64200B53A88 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (161, 0, 5000, 161, N'1612016713', 0, 0, 1, 0, CAST(0x0000A64200B55450 AS DateTime), 2, CAST(0x0000A64200B55450 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (162, 0, 20000, 162, N'1622016713', 0, 0, 1, 0, CAST(0x0000A64200B565E4 AS DateTime), 2, CAST(0x0000A64200B565E4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (163, 0, 5000, 163, N'1632016713', 0, 0, 1, 0, CAST(0x0000A64200B5764C AS DateTime), 2, CAST(0x0000A64200B5764C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (164, 0, 20000, 164, N'1642016713', 0, 0, 1, 0, CAST(0x0000A64200B8CA40 AS DateTime), 2, CAST(0x0000A64200B8CA40 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (165, 0, 20000, 165, N'1652016713', 0, 0, 1, 0, CAST(0x0000A64200BB9518 AS DateTime), 2, CAST(0x0000A64200BB9518 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (166, 0, 20000, 166, N'1662016713', 0, 0, 1, 0, CAST(0x0000A64200C603CC AS DateTime), 2, CAST(0x0000A64200C603CC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (167, 0, 20000, 167, N'1672016713', 0, 0, 1, 0, CAST(0x0000A64200C65BB0 AS DateTime), 2, CAST(0x0000A64200C65BB0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (168, 0, 15000, 168, N'1682016713', 0, 0, 1, 0, CAST(0x0000A64200C8E290 AS DateTime), 2, CAST(0x0000A64200C8E290 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (169, 0, 20000, 169, N'1692016713', 0, 0, 1, 0, CAST(0x0000A64200C9D77C AS DateTime), 2, CAST(0x0000A64200C9D77C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (170, 0, 8000, 170, N'1702016713', 0, 0, 1, 0, CAST(0x0000A64200D141EC AS DateTime), 2, CAST(0x0000A64200D141EC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (171, 0, 4000, 171, N'1712016713', 0, 0, 1, 0, CAST(0x0000A64200D3C41C AS DateTime), 2, CAST(0x0000A64200D3C41C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (172, 0, 8000, 172, N'1722016713', 0, 0, 1, 0, CAST(0x0000A64200D4BDB8 AS DateTime), 2, CAST(0x0000A64200D4BDB8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (173, 0, 3500, 173, N'1732016713', 0, 0, 1, 0, CAST(0x0000A64200D6B348 AS DateTime), 2, CAST(0x0000A64200D6B348 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (174, 0, 50000, 174, N'1742016713', 0, 0, 1, 0, CAST(0x0000A64200EC8B78 AS DateTime), 2, CAST(0x0000A64200EC8B78 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (175, 0, 4000, 175, N'1752016713', 0, 0, 1, 0, CAST(0x0000A64200F0E4C0 AS DateTime), 2, CAST(0x0000A64200F0E4C0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (176, 0, 20000, 176, N'1762016713', 0, 0, 1, 0, CAST(0x0000A64200F7D550 AS DateTime), 2, CAST(0x0000A64200F7D550 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (177, 0, 3500, 177, N'1772016713', 0, 0, 1, 0, CAST(0x0000A64200FB3178 AS DateTime), 2, CAST(0x0000A64200FB3178 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (178, 0, 50000, 178, N'1782016713', 0, 0, 1, 0, CAST(0x0000A64200FD6C2C AS DateTime), 2, CAST(0x0000A64200FD6C2C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (179, 0, 4000, 179, N'1792016713', 0, 0, 1, 0, CAST(0x0000A64200FDA598 AS DateTime), 2, CAST(0x0000A64200FDA598 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (180, 0, 4000, 180, N'1802016713', 0, 0, 1, 0, CAST(0x0000A64201036C80 AS DateTime), 2, CAST(0x0000A64201036C80 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (181, 0, 10000, 181, N'1812016713', 0, 0, 1, 0, CAST(0x0000A642010FC638 AS DateTime), 2, CAST(0x0000A642010FC638 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (182, 0, 10000, 182, N'1822016713', 0, 0, 1, 0, CAST(0x0000A642011355F0 AS DateTime), 2, CAST(0x0000A642011355F0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (183, 0, 5000, 183, N'1832016713', 0, 0, 1, 0, CAST(0x0000A6420114DE84 AS DateTime), 2, CAST(0x0000A6420114DE84 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (184, 0, 3000, 184, N'1842016713', 0, 0, 1, 0, CAST(0x0000A64201168914 AS DateTime), 2, CAST(0x0000A64201168914 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (185, 0, 10000, 185, N'1852016713', 0, 0, 1, 0, CAST(0x0000A6420118EA74 AS DateTime), 2, CAST(0x0000A6420118EA74 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (186, 0, 8000, 186, N'1862016713', 0, 0, 1, 0, CAST(0x0000A642011AE25C AS DateTime), 2, CAST(0x0000A642011AE25C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (187, 0, 20000, 187, N'1872016713', 0, 0, 1, 0, CAST(0x0000A642011BF494 AS DateTime), 2, CAST(0x0000A642011BF494 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (188, 0, 10000, 188, N'1882016713', 0, 0, 1, 0, CAST(0x0000A642011DDAE8 AS DateTime), 2, CAST(0x0000A642011DDAE8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (189, 0, 5000, 189, N'1892016713', 0, 0, 1, 0, CAST(0x0000A642011E17D8 AS DateTime), 2, CAST(0x0000A642011E17D8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (190, 0, 10000, 190, N'1902016713', 0, 0, 1, 0, CAST(0x0000A642011E3074 AS DateTime), 2, CAST(0x0000A642011E3074 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (191, 0, 5000, 191, N'1912016713', 0, 0, 1, 0, CAST(0x0000A642011E5144 AS DateTime), 2, CAST(0x0000A642011E5144 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (192, 0, 12000, 192, N'1922016713', 0, 0, 1, 0, CAST(0x0000A6420121BA50 AS DateTime), 2, CAST(0x0000A6420121BA50 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (193, 0, 4000, 193, N'1932016714', 0, 0, 1, 0, CAST(0x0000A643007AAE40 AS DateTime), 2, CAST(0x0000A643007AAE40 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (194, 0, 20000, 194, N'1942016714', 0, 0, 1, 0, CAST(0x0000A643007ADBF4 AS DateTime), 2, CAST(0x0000A643007ADBF4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (195, 0, 5000, 195, N'1952016714', 0, 0, 1, 0, CAST(0x0000A64300820BCC AS DateTime), 2, CAST(0x0000A64300820BCC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (196, 0, 5000, 196, N'1962016714', 0, 0, 1, 0, CAST(0x0000A6430082E498 AS DateTime), 2, CAST(0x0000A6430082E498 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (197, 0, 10000, 197, N'1972016714', 0, 0, 1, 0, CAST(0x0000A6430082FF8C AS DateTime), 2, CAST(0x0000A6430082FF8C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (198, 0, 5000, 198, N'1982016714', 0, 0, 1, 0, CAST(0x0000A6430088FB30 AS DateTime), 2, CAST(0x0000A6430088FB30 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (199, 0, 50000, 199, N'1992016714', 0, 0, 1, 0, CAST(0x0000A643008A6B28 AS DateTime), 2, CAST(0x0000A643008A6B28 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (200, 0, 3500, 200, N'2002016714', 0, 0, 1, 0, CAST(0x0000A643008BF3BC AS DateTime), 2, CAST(0x0000A643008BF3BC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (201, 0, 10000, 201, N'2012016714', 0, 0, 1, 0, CAST(0x0000A643008ED730 AS DateTime), 2, CAST(0x0000A643008ED730 AS DateTime), 2)
GO
print 'Processed 200 total records'
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (202, 0, 50000, 202, N'2022016714', 0, 0, 1, 0, CAST(0x0000A64300908D78 AS DateTime), 2, CAST(0x0000A64300908D78 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (203, 0, 5000, 203, N'2032016714', 0, 0, 1, 0, CAST(0x0000A643009325EC AS DateTime), 2, CAST(0x0000A643009325EC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (204, 0, 5000, 204, N'2042016714', 0, 0, 1, 0, CAST(0x0000A64300946CE0 AS DateTime), 2, CAST(0x0000A64300946CE0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (205, 0, 4000, 205, N'2052016714', 0, 0, 1, 0, CAST(0x0000A643009672D8 AS DateTime), 2, CAST(0x0000A643009672D8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (206, 0, 5000, 206, N'2062016714', 0, 0, 1, 0, CAST(0x0000A64300968598 AS DateTime), 2, CAST(0x0000A64300968598 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (207, 0, 5000, 207, N'2072016714', 0, 0, 1, 0, CAST(0x0000A64300976314 AS DateTime), 2, CAST(0x0000A64300976314 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (208, 0, 5000, 208, N'2082016714', 0, 0, 1, 0, CAST(0x0000A6430097A70C AS DateTime), 2, CAST(0x0000A6430097A70C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (209, 0, 4500, 209, N'2092016714', 0, 0, 1, 0, CAST(0x0000A643009A5A74 AS DateTime), 2, CAST(0x0000A643009A5A74 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (210, 0, 11000, 210, N'2102016714', 0, 0, 1, 0, CAST(0x0000A643009DE6A8 AS DateTime), 2, CAST(0x0000A643009DE6A8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (211, 0, 20000, 211, N'2112016714', 0, 0, 1, 0, CAST(0x0000A643009E0C28 AS DateTime), 2, CAST(0x0000A643009E0C28 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (212, 0, 20000, 212, N'2122016714', 0, 0, 1, 0, CAST(0x0000A64300A0599C AS DateTime), 2, CAST(0x0000A64300A0599C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (213, 0, 20000, 213, N'2132016714', 0, 0, 1, 0, CAST(0x0000A64300A06D88 AS DateTime), 2, CAST(0x0000A64300A06D88 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (214, 0, 20000, 214, N'2142016714', 0, 0, 1, 0, CAST(0x0000A64300A2876C AS DateTime), 2, CAST(0x0000A64300A2876C AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[ACC_PAYMENT] OFF
/****** Object:  Table [dbo].[INVOICE_HISTORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Total] [int] NULL,
	[Payment] [int] NULL,
	[Change] [int] NULL,
	[Discount] [int] NULL,
	[DiscountType] [int] NULL,
	[InvoiceByCardID] [nvarchar](50) NULL,
	[CashOut] [int] NULL,
	[Seat] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[ShiftID] [int] NULL,
 CONSTRAINT [PK_INVOICE_HISTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceModifireID] [int] NOT NULL,
	[InvoiceID] [int] NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[OrderModifireID] [int] NULL,
	[Status] [int] NULL,
	[ProductID] [int] NULL,
	[KeyModi] [int] NULL,
	[ModifireID] [int] NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_INVOICE_DETAIL_MODIFIRE_HISTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVOICE_DETAIL_MODIFIRE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL_MODIFIRE](
	[InvoiceModifireID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[OrderModifireID] [int] NULL,
	[Status] [int] NULL,
	[ProductID] [int] NULL,
	[KeyModi] [int] NULL,
	[ModifireID] [int] NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_INVOICE_DETAIL_MODIFIRE] PRIMARY KEY CLUSTERED 
(
	[InvoiceModifireID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ON
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, N'12016710', 1, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F00F4DBF2 AS DateTime), 0, CAST(0x0000A63F00F4DBF2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 1, N'12016710', 2, 0, 77, 2, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F00F4DBF2 AS DateTime), 0, CAST(0x0000A63F00F4DBF2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 6, N'62016711', 0, 0, 76, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A640007B3DEA AS DateTime), 0, CAST(0x0000A640007B3DEA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 9, N'92016711', 0, 0, 76, 1, 9, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000855ECD AS DateTime), 0, CAST(0x0000A64000855ECD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 15, N'152016711', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A640009B97E0 AS DateTime), 0, CAST(0x0000A640009B97E0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 16, N'162016711', 7, 0, 76, 3, 9, 500, 1, 3500, 0, 0, 0, CAST(0x0000A640009E2658 AS DateTime), 0, CAST(0x0000A640009E2658 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 18, N'182016711', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A640009E639F AS DateTime), 0, CAST(0x0000A640009E639F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 24, N'242016711', 0, 0, 76, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000A5858D AS DateTime), 0, CAST(0x0000A64000A5858D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 26, N'262016711', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000A7DF35 AS DateTime), 0, CAST(0x0000A64000A7DF35 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 28, N'282016711', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000AA58E9 AS DateTime), 0, CAST(0x0000A64000AA58E9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 33, N'332016711', 8, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000B22240 AS DateTime), 0, CAST(0x0000A64000B22240 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 37, N'372016711', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000B45592 AS DateTime), 0, CAST(0x0000A64000B45592 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 38, N'382016711', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000B64AD7 AS DateTime), 0, CAST(0x0000A64000B64AD7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 40, N'402016711', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000B7CB6F AS DateTime), 0, CAST(0x0000A64000B7CB6F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 41, N'412016711', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000BE0DD9 AS DateTime), 0, CAST(0x0000A64000BE0DD9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 41, N'412016711', 0, 0, 78, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000BE0DD9 AS DateTime), 0, CAST(0x0000A64000BE0DD9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 44, N'442016711', 0, 0, 78, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000C15D32 AS DateTime), 0, CAST(0x0000A64000C15D32 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 45, N'452016711', 0, 0, 76, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000C2B2C3 AS DateTime), 0, CAST(0x0000A64000C2B2C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 45, N'452016711', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000C2B2C3 AS DateTime), 0, CAST(0x0000A64000C2B2C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 48, N'482016711', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000CBF2B8 AS DateTime), 0, CAST(0x0000A64000CBF2B8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 49, N'492016711', 9, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000D28D3C AS DateTime), 0, CAST(0x0000A64000D28D3C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 57, N'572016711', 0, 0, 78, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000E2FEE9 AS DateTime), 0, CAST(0x0000A64000E2FEE9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 59, N'592016711', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000EB892A AS DateTime), 0, CAST(0x0000A64000EB892A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 62, N'622016711', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000F04A6F AS DateTime), 0, CAST(0x0000A64000F04A6F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 62, N'622016711', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000F04A6F AS DateTime), 0, CAST(0x0000A64000F04A6F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 65, N'652016711', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000FB797C AS DateTime), 0, CAST(0x0000A64000FB797C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 73, N'732016711', 10, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6400122AB47 AS DateTime), 0, CAST(0x0000A6400122AB47 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 74, N'742016711', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6400124E08F AS DateTime), 0, CAST(0x0000A6400124E08F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 74, N'742016711', 0, 0, 78, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6400124E08F AS DateTime), 0, CAST(0x0000A6400124E08F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 78, N'782016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6410077F715 AS DateTime), 0, CAST(0x0000A6410077F715 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 80, N'802016712', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A641007F72F9 AS DateTime), 0, CAST(0x0000A641007F72F9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 81, N'812016712', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A641008164B2 AS DateTime), 0, CAST(0x0000A641008164B2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 85, N'852016712', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A641008F095D AS DateTime), 0, CAST(0x0000A641008F095D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 88, N'882016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A641009CE3D1 AS DateTime), 0, CAST(0x0000A641009CE3D1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 89, N'892016712', 1, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A641009DF727 AS DateTime), 0, CAST(0x0000A641009DF727 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 91, N'912016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100A22901 AS DateTime), 0, CAST(0x0000A64100A22901 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 92, N'922016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100A23D51 AS DateTime), 0, CAST(0x0000A64100A23D51 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 95, N'952016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100A8CC34 AS DateTime), 0, CAST(0x0000A64100A8CC34 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 105, N'1052016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100B869F7 AS DateTime), 0, CAST(0x0000A64100B869F7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 108, N'1082016712', 3, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100C5123B AS DateTime), 0, CAST(0x0000A64100C5123B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 109, N'1092016712', 2, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100C5263B AS DateTime), 0, CAST(0x0000A64100C5263B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 110, N'1102016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100C6BBFB AS DateTime), 0, CAST(0x0000A64100C6BBFB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 111, N'1112016712', 5, 0, 115, 3, 0, 1000, 0, 5000, 0, 1, 0, CAST(0x0000A64100C6E040 AS DateTime), 0, CAST(0x0000A64100C6E040 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 113, N'1132016712', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100CC3B77 AS DateTime), 0, CAST(0x0000A64100CC3B77 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 117, N'1172016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100D5DB24 AS DateTime), 0, CAST(0x0000A64100D5DB24 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 127, N'1272016712', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100FC24C3 AS DateTime), 0, CAST(0x0000A64100FC24C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 128, N'1282016712', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100FC5AD5 AS DateTime), 0, CAST(0x0000A64100FC5AD5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 133, N'1332016712', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6410115A79E AS DateTime), 0, CAST(0x0000A6410115A79E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 135, N'1352016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200796F1E AS DateTime), 0, CAST(0x0000A64200796F1E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 136, N'1362016713', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642007ADFFF AS DateTime), 0, CAST(0x0000A642007ADFFF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 140, N'1402016713', 4, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642008EB61F AS DateTime), 0, CAST(0x0000A642008EB61F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 142, N'1422016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6420094448C AS DateTime), 0, CAST(0x0000A6420094448C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 144, N'1442016713', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200996E11 AS DateTime), 0, CAST(0x0000A64200996E11 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 145, N'1452016713', 5, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200A022F8 AS DateTime), 0, CAST(0x0000A64200A022F8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 147, N'1472016713', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200A597DA AS DateTime), 0, CAST(0x0000A64200A597DA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 147, N'1472016713', 0, 0, 78, 1, 9, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200A597DA AS DateTime), 0, CAST(0x0000A64200A597DA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 152, N'1522016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200A76B23 AS DateTime), 0, CAST(0x0000A64200A76B23 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 154, N'1542016713', 6, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200AED484 AS DateTime), 0, CAST(0x0000A64200AED484 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 157, N'1572016713', 0, 0, 76, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200B23B19 AS DateTime), 0, CAST(0x0000A64200B23B19 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 158, N'1582016713', 0, 0, 76, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200B27D0E AS DateTime), 0, CAST(0x0000A64200B27D0E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 160, N'1602016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200B53B33 AS DateTime), 0, CAST(0x0000A64200B53B33 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 161, N'1612016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200B5549B AS DateTime), 0, CAST(0x0000A64200B5549B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 164, N'1642016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200B8CB4D AS DateTime), 0, CAST(0x0000A64200B8CB4D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 166, N'1662016713', 8, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200C60457 AS DateTime), 0, CAST(0x0000A64200C60457 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 166, N'1662016713', 9, 0, 76, 3, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200C60457 AS DateTime), 0, CAST(0x0000A64200C60457 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 170, N'1702016713', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200D14300 AS DateTime), 0, CAST(0x0000A64200D14300 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 170, N'1702016713', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200D14300 AS DateTime), 0, CAST(0x0000A64200D14300 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 171, N'1712016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200D3C4DC AS DateTime), 0, CAST(0x0000A64200D3C4DC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 172, N'1722016713', 10, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200D4BE6C AS DateTime), 0, CAST(0x0000A64200D4BE6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 172, N'1722016713', 11, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200D4BE6C AS DateTime), 0, CAST(0x0000A64200D4BE6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 174, N'1742016713', 12, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200EC8C91 AS DateTime), 0, CAST(0x0000A64200EC8C91 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 175, N'1752016713', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200F0E5C1 AS DateTime), 0, CAST(0x0000A64200F0E5C1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 179, N'1792016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200FDA5F2 AS DateTime), 0, CAST(0x0000A64200FDA5F2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 180, N'1802016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64201036D9F AS DateTime), 0, CAST(0x0000A64201036D9F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 181, N'1812016713', 14, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642010FC702 AS DateTime), 0, CAST(0x0000A642010FC702 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 186, N'1862016713', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642011AE2C9 AS DateTime), 0, CAST(0x0000A642011AE2C9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 186, N'1862016713', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642011AE2C9 AS DateTime), 0, CAST(0x0000A642011AE2C9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 191, N'1912016713', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642011E522D AS DateTime), 0, CAST(0x0000A642011E522D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 193, N'1932016714', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A643007AAE91 AS DateTime), 0, CAST(0x0000A643007AAE91 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 194, N'1942016714', 1, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A643007ADC8B AS DateTime), 0, CAST(0x0000A643007ADC8B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 195, N'1952016714', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300820C13 AS DateTime), 0, CAST(0x0000A64300820C13 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 201, N'2012016714', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A643008ED743 AS DateTime), 0, CAST(0x0000A643008ED743 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 202, N'2022016714', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300908DA4 AS DateTime), 0, CAST(0x0000A64300908DA4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 202, N'2022016714', 0, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300908DA4 AS DateTime), 0, CAST(0x0000A64300908DA4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 202, N'2022016714', 0, 0, 78, 2, 9, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300908DA4 AS DateTime), 0, CAST(0x0000A64300908DA4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 203, N'2032016714', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6430093261A AS DateTime), 0, CAST(0x0000A6430093261A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 205, N'2052016714', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300967336 AS DateTime), 0, CAST(0x0000A64300967336 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 210, N'2102016714', 2, 0, 76, 3, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A643009DE6D0 AS DateTime), 0, CAST(0x0000A643009DE6D1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 213, N'2132016714', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300A06E47 AS DateTime), 0, CAST(0x0000A64300A06E47 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 214, N'2142016714', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300A28876 AS DateTime), 0, CAST(0x0000A64300A28876 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] OFF
/****** Object:  Table [dbo].[INVOICE_DETAIL_HISTORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDetailID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[OrderDetailID] [int] NULL,
	[KeyItem] [int] NULL,
	[Status] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[PrintType] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_INVOICE_DETAIL_HISTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVOICE_DETAIL]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL](
	[InvoiceDetailID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[OrderDetailID] [int] NULL,
	[KeyItem] [int] NULL,
	[Status] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[PrintType] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_INVOICE_DETAIL] PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL] ON
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, N'12016710', 1, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A63F00F4DBEF AS DateTime), 0, CAST(0x0000A63F00F4DBEF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 1, N'12016710', 2, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A63F00F4DBEF AS DateTime), 0, CAST(0x0000A63F00F4DBEF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 2, N'22016710', 8, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A63F00FF91E2 AS DateTime), 0, CAST(0x0000A63F00FF91E2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 2, N'22016710', 9, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A63F00FF91E2 AS DateTime), 0, CAST(0x0000A63F00FF91E2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 2, N'22016710', 10, 3, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63F00FF91E2 AS DateTime), 0, CAST(0x0000A63F00FF91E2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 2, N'22016710', 11, 4, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63F00FF91E2 AS DateTime), 0, CAST(0x0000A63F00FF91E2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 3, N'32016710', 12, 1, 0, 23, 6500, 1, 6500, 0, 0, NULL, 0, CAST(0x0000A63F0103087F AS DateTime), 0, CAST(0x0000A63F0103087F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 3, N'32016710', 13, 2, 0, 23, 6500, 1, 6500, 0, 0, NULL, 0, CAST(0x0000A63F0103087F AS DateTime), 0, CAST(0x0000A63F0103087F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 3, N'32016710', 14, 3, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63F0103087F AS DateTime), 0, CAST(0x0000A63F0103087F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 3, N'32016710', 15, 4, 0, 12, 8000, 1, 8000, 0, 0, NULL, 0, CAST(0x0000A63F0103087F AS DateTime), 0, CAST(0x0000A63F0103087F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 3, N'32016710', 16, 5, 0, 12, 8000, 1, 8000, 0, 0, NULL, 0, CAST(0x0000A63F0103087F AS DateTime), 0, CAST(0x0000A63F0103087F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 4, N'42016710', 23, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A63F010F8438 AS DateTime), 0, CAST(0x0000A63F010F8438 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 5, N'52016710', 3, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A63F01103205 AS DateTime), 0, CAST(0x0000A63F01103205 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 5, N'52016710', 4, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A63F01103205 AS DateTime), 0, CAST(0x0000A63F01103205 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 6, N'62016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640007B3DE9 AS DateTime), 0, CAST(0x0000A640007B3DE9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 7, N'72016711', 0, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A6400082BA76 AS DateTime), 0, CAST(0x0000A6400082BA76 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 8, N'82016711', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A640008540E7 AS DateTime), 0, CAST(0x0000A640008540E7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 9, N'92016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000855ECD AS DateTime), 0, CAST(0x0000A64000855ECD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 10, N'102016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6400086C5B5 AS DateTime), 0, CAST(0x0000A6400086C5B5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 11, N'112016711', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6400087115A AS DateTime), 0, CAST(0x0000A6400087115A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 12, N'122016711', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A640008D6D0E AS DateTime), 0, CAST(0x0000A640008D6D0E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 13, N'132016711', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A640008FB7BE AS DateTime), 0, CAST(0x0000A640008FB7BE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 14, N'142016711', 28, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000900F67 AS DateTime), 0, CAST(0x0000A64000900F67 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 15, N'152016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009B97E0 AS DateTime), 0, CAST(0x0000A640009B97E0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 16, N'162016711', 30, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E2658 AS DateTime), 0, CAST(0x0000A640009E2658 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 16, N'162016711', 31, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E2658 AS DateTime), 0, CAST(0x0000A640009E2658 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 16, N'162016711', 32, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E2658 AS DateTime), 0, CAST(0x0000A640009E2658 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 16, N'162016711', 33, 4, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E2658 AS DateTime), 0, CAST(0x0000A640009E2658 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 16, N'162016711', 34, 5, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E2658 AS DateTime), 0, CAST(0x0000A640009E2658 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 16, N'162016711', 0, 6, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E2658 AS DateTime), 0, CAST(0x0000A640009E2658 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 17, N'172016711', 36, 1, 0, 92, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A640009E455B AS DateTime), 0, CAST(0x0000A640009E455B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 18, N'182016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E639F AS DateTime), 0, CAST(0x0000A640009E639F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 18, N'182016711', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E639F AS DateTime), 0, CAST(0x0000A640009E639F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 19, N'192016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E89CF AS DateTime), 0, CAST(0x0000A640009E89CF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 19, N'192016711', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009E89CF AS DateTime), 0, CAST(0x0000A640009E89CF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 19, N'192016711', 0, 3, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A640009E89CF AS DateTime), 0, CAST(0x0000A640009E89CF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 20, N'202016711', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A640009EA5A8 AS DateTime), 0, CAST(0x0000A640009EA5A8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 21, N'212016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640009F2B19 AS DateTime), 0, CAST(0x0000A640009F2B19 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 22, N'222016711', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000A07F03 AS DateTime), 0, CAST(0x0000A64000A07F03 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 23, N'232016711', 37, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000A56FB1 AS DateTime), 0, CAST(0x0000A64000A56FB1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 24, N'242016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000A5858D AS DateTime), 0, CAST(0x0000A64000A5858D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 25, N'252016711', 41, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000A7CA6A AS DateTime), 0, CAST(0x0000A64000A7CA6A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 26, N'262016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000A7DF33 AS DateTime), 0, CAST(0x0000A64000A7DF33 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 27, N'272016711', 40, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000A8A978 AS DateTime), 0, CAST(0x0000A64000A8A978 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 28, N'282016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000AA58E9 AS DateTime), 0, CAST(0x0000A64000AA58E9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 29, N'292016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000AAF3B9 AS DateTime), 0, CAST(0x0000A64000AAF3B9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 30, N'302016711', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000AFD207 AS DateTime), 0, CAST(0x0000A64000AFD207 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 31, N'312016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000B085C4 AS DateTime), 0, CAST(0x0000A64000B085C4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 32, N'322016711', 35, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000B21159 AS DateTime), 0, CAST(0x0000A64000B21159 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 33, N'332016711', 42, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000B22240 AS DateTime), 0, CAST(0x0000A64000B22240 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 34, N'342016711', 38, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000B232FE AS DateTime), 0, CAST(0x0000A64000B232FE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 34, N'342016711', 39, 2, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000B232FE AS DateTime), 0, CAST(0x0000A64000B232FE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 35, N'352016711', 43, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000B42A5D AS DateTime), 0, CAST(0x0000A64000B42A5D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 36, N'362016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000B436B2 AS DateTime), 0, CAST(0x0000A64000B436B2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 37, N'372016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000B45591 AS DateTime), 0, CAST(0x0000A64000B45591 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 38, N'382016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000B64AD7 AS DateTime), 0, CAST(0x0000A64000B64AD7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 39, N'392016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000B6D7FB AS DateTime), 0, CAST(0x0000A64000B6D7FB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 40, N'402016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000B7CB6F AS DateTime), 0, CAST(0x0000A64000B7CB6F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 41, N'412016711', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000BE0DD9 AS DateTime), 0, CAST(0x0000A64000BE0DD9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 42, N'422016711', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000C128D2 AS DateTime), 0, CAST(0x0000A64000C128D2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 43, N'432016711', 44, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000C13AA9 AS DateTime), 0, CAST(0x0000A64000C13AA9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 43, N'432016711', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000C13AA9 AS DateTime), 0, CAST(0x0000A64000C13AA9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 44, N'442016711', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000C15D32 AS DateTime), 0, CAST(0x0000A64000C15D32 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 44, N'442016711', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000C15D32 AS DateTime), 0, CAST(0x0000A64000C15D32 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 45, N'452016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000C2B2C3 AS DateTime), 0, CAST(0x0000A64000C2B2C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 45, N'452016711', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000C2B2C3 AS DateTime), 0, CAST(0x0000A64000C2B2C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 46, N'462016711', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000C2CDD9 AS DateTime), 0, CAST(0x0000A64000C2CDD9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 47, N'472016711', 46, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000CAFE2D AS DateTime), 0, CAST(0x0000A64000CAFE2D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 47, N'472016711', 47, 2, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000CAFE2D AS DateTime), 0, CAST(0x0000A64000CAFE2D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 48, N'482016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000CBF2B8 AS DateTime), 0, CAST(0x0000A64000CBF2B8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 49, N'492016711', 49, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000D28D3B AS DateTime), 0, CAST(0x0000A64000D28D3B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 49, N'492016711', 50, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000D28D3B AS DateTime), 0, CAST(0x0000A64000D28D3B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 50, N'502016711', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000D536F5 AS DateTime), 0, CAST(0x0000A64000D536F5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 51, N'512016711', 48, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000D630F6 AS DateTime), 0, CAST(0x0000A64000D630F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 52, N'522016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000D8BDEA AS DateTime), 0, CAST(0x0000A64000D8BDEA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 53, N'532016711', 51, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000DA86ED AS DateTime), 0, CAST(0x0000A64000DA86ED AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 53, N'532016711', 52, 2, 0, 92, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A64000DA86ED AS DateTime), 0, CAST(0x0000A64000DA86ED AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 53, N'532016711', 53, 3, 0, 50, 5800, 1, 5800, 0, 0, NULL, 0, CAST(0x0000A64000DA86ED AS DateTime), 0, CAST(0x0000A64000DA86ED AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 54, N'542016711', 45, 1, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000DABE24 AS DateTime), 0, CAST(0x0000A64000DABE24 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 55, N'552016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000E181CB AS DateTime), 0, CAST(0x0000A64000E181CB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 55, N'552016711', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000E181CB AS DateTime), 0, CAST(0x0000A64000E181CB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 56, N'562016711', 0, 1, 0, 127, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A64000E2C5EE AS DateTime), 0, CAST(0x0000A64000E2C5EE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 57, N'572016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000E2FEE9 AS DateTime), 0, CAST(0x0000A64000E2FEE9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 57, N'572016711', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000E2FEE9 AS DateTime), 0, CAST(0x0000A64000E2FEE9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 58, N'582016711', 54, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000E71F1A AS DateTime), 0, CAST(0x0000A64000E71F1A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 58, N'582016711', 55, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000E71F1A AS DateTime), 0, CAST(0x0000A64000E71F1A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 58, N'582016711', 56, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000E71F1A AS DateTime), 0, CAST(0x0000A64000E71F1A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 59, N'592016711', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000EB8929 AS DateTime), 0, CAST(0x0000A64000EB8929 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 60, N'602016711', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000EE4237 AS DateTime), 0, CAST(0x0000A64000EE4237 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 61, N'612016711', 62, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000EF7153 AS DateTime), 0, CAST(0x0000A64000EF7153 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (91, 62, N'622016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000F04A6F AS DateTime), 0, CAST(0x0000A64000F04A6F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (92, 62, N'622016711', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000F04A6F AS DateTime), 0, CAST(0x0000A64000F04A6F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (93, 63, N'632016711', 63, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000F573FF AS DateTime), 0, CAST(0x0000A64000F573FF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (94, 63, N'632016711', 64, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000F573FF AS DateTime), 0, CAST(0x0000A64000F573FF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 63, N'632016711', 65, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000F573FF AS DateTime), 0, CAST(0x0000A64000F573FF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 63, N'632016711', 66, 4, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000F573FF AS DateTime), 0, CAST(0x0000A64000F573FF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 64, N'642016711', 68, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000F766C7 AS DateTime), 0, CAST(0x0000A64000F766C7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 64, N'642016711', 69, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64000F766C7 AS DateTime), 0, CAST(0x0000A64000F766C7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 65, N'652016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000FB797C AS DateTime), 0, CAST(0x0000A64000FB797C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 66, N'662016711', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64000FDB833 AS DateTime), 0, CAST(0x0000A64000FDB833 AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 67, N'672016711', 72, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6400105575B AS DateTime), 0, CAST(0x0000A6400105575B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 68, N'682016711', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640010CE75E AS DateTime), 0, CAST(0x0000A640010CE75E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (103, 69, N'692016711', 70, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A640010E77AC AS DateTime), 0, CAST(0x0000A640010E77AC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (104, 69, N'692016711', 71, 2, 0, 136, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A640010E77AC AS DateTime), 0, CAST(0x0000A640010E77AC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (105, 70, N'702016711', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6400118F6F2 AS DateTime), 0, CAST(0x0000A6400118F6F2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (106, 71, N'712016711', 75, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A640011DC132 AS DateTime), 0, CAST(0x0000A640011DC132 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (107, 71, N'712016711', 76, 2, 0, 92, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A640011DC132 AS DateTime), 0, CAST(0x0000A640011DC132 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 72, N'722016711', 73, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A640011DCA59 AS DateTime), 0, CAST(0x0000A640011DCA59 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 73, N'732016711', 77, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6400122AB46 AS DateTime), 0, CAST(0x0000A6400122AB46 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 74, N'742016711', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6400124E08F AS DateTime), 0, CAST(0x0000A6400124E08F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 75, N'752016712', 0, 1, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A641007686C2 AS DateTime), 0, CAST(0x0000A641007686C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 75, N'752016712', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641007686C3 AS DateTime), 0, CAST(0x0000A641007686C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 76, N'762016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641007696BB AS DateTime), 0, CAST(0x0000A641007696BB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 77, N'772016712', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6410076A75C AS DateTime), 0, CAST(0x0000A6410076A75C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 78, N'782016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6410077F714 AS DateTime), 0, CAST(0x0000A6410077F714 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 79, N'792016712', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A641007A4B24 AS DateTime), 0, CAST(0x0000A641007A4B24 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 80, N'802016712', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641007F72F9 AS DateTime), 0, CAST(0x0000A641007F72F9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 81, N'812016712', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641008164B2 AS DateTime), 0, CAST(0x0000A641008164B2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 82, N'822016712', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6410083D8AE AS DateTime), 0, CAST(0x0000A6410083D8AE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 82, N'822016712', 0, 2, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A6410083D8AE AS DateTime), 0, CAST(0x0000A6410083D8AE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 83, N'832016712', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100894D4A AS DateTime), 0, CAST(0x0000A64100894D4A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 84, N'842016712', 0, 1, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A641008A717E AS DateTime), 0, CAST(0x0000A641008A717E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (123, 85, N'852016712', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641008F095D AS DateTime), 0, CAST(0x0000A641008F095D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (124, 86, N'862016712', 0, 1, 0, 37, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A641008FD951 AS DateTime), 0, CAST(0x0000A641008FD951 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (125, 87, N'872016712', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A641009B8CC4 AS DateTime), 0, CAST(0x0000A641009B8CC4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (126, 88, N'882016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009CE3D0 AS DateTime), 0, CAST(0x0000A641009CE3D0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 89, N'892016712', 78, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009DF726 AS DateTime), 0, CAST(0x0000A641009DF726 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (128, 89, N'892016712', 79, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009DF726 AS DateTime), 0, CAST(0x0000A641009DF726 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (129, 89, N'892016712', 80, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009DF726 AS DateTime), 0, CAST(0x0000A641009DF726 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (130, 89, N'892016712', 81, 4, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009DF726 AS DateTime), 0, CAST(0x0000A641009DF726 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (131, 89, N'892016712', 82, 5, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009DF726 AS DateTime), 0, CAST(0x0000A641009DF726 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (132, 90, N'902016712', 89, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A641009FC3F3 AS DateTime), 0, CAST(0x0000A641009FC3F3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (133, 90, N'902016712', 90, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009FC3F3 AS DateTime), 0, CAST(0x0000A641009FC3F3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (134, 90, N'902016712', 91, 3, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641009FC3F3 AS DateTime), 0, CAST(0x0000A641009FC3F3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (135, 91, N'912016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100A22900 AS DateTime), 0, CAST(0x0000A64100A22900 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (136, 92, N'922016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100A23D51 AS DateTime), 0, CAST(0x0000A64100A23D51 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (137, 93, N'932016712', 85, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100A25B21 AS DateTime), 0, CAST(0x0000A64100A25B21 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (138, 93, N'932016712', 86, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100A25B21 AS DateTime), 0, CAST(0x0000A64100A25B21 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (139, 93, N'932016712', 87, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100A25B21 AS DateTime), 0, CAST(0x0000A64100A25B21 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (140, 93, N'932016712', 0, 4, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100A25B21 AS DateTime), 0, CAST(0x0000A64100A25B21 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (141, 94, N'942016712', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100A6D01A AS DateTime), 0, CAST(0x0000A64100A6D01A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (142, 94, N'942016712', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100A6D01A AS DateTime), 0, CAST(0x0000A64100A6D01A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (143, 95, N'952016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100A8CC33 AS DateTime), 0, CAST(0x0000A64100A8CC33 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (144, 96, N'962016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100AA78EC AS DateTime), 0, CAST(0x0000A64100AA78EC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (145, 97, N'972016712', 92, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100ABC9E0 AS DateTime), 0, CAST(0x0000A64100ABC9E0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (146, 98, N'982016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100ABD7F6 AS DateTime), 0, CAST(0x0000A64100ABD7F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (147, 99, N'992016712', 93, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100AC3646 AS DateTime), 0, CAST(0x0000A64100AC3646 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (148, 100, N'1002016712', 94, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100ADA212 AS DateTime), 0, CAST(0x0000A64100ADA212 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (149, 101, N'1012016712', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100ADC11C AS DateTime), 0, CAST(0x0000A64100ADC11C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (150, 102, N'1022016712', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100B03034 AS DateTime), 0, CAST(0x0000A64100B03034 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (151, 103, N'1032016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100B509A8 AS DateTime), 0, CAST(0x0000A64100B509A8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (152, 104, N'1042016712', 95, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100B6ABB3 AS DateTime), 0, CAST(0x0000A64100B6ABB3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (153, 105, N'1052016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100B869F7 AS DateTime), 0, CAST(0x0000A64100B869F7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (154, 106, N'1062016712', 0, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A64100C4B57A AS DateTime), 0, CAST(0x0000A64100C4B57A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (155, 107, N'1072016712', 0, 1, 0, 39, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A64100C4EDB2 AS DateTime), 0, CAST(0x0000A64100C4EDB2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (156, 108, N'1082016712', 98, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100C5123B AS DateTime), 0, CAST(0x0000A64100C5123B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (157, 109, N'1092016712', 96, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100C5263B AS DateTime), 0, CAST(0x0000A64100C5263B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (158, 109, N'1092016712', 97, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100C5263B AS DateTime), 0, CAST(0x0000A64100C5263B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (159, 110, N'1102016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100C6BBFB AS DateTime), 0, CAST(0x0000A64100C6BBFB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (160, 110, N'1102016712', 0, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100C6BBFB AS DateTime), 0, CAST(0x0000A64100C6BBFB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (161, 110, N'1102016712', 0, 3, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100C6BBFB AS DateTime), 0, CAST(0x0000A64100C6BBFB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (162, 111, N'1112016712', 104, 1, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100C6E03F AS DateTime), 0, CAST(0x0000A64100C6E03F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (163, 111, N'1112016712', 105, 2, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A64100C6E03F AS DateTime), 0, CAST(0x0000A64100C6E03F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (164, 111, N'1112016712', 106, 3, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A64100C6E03F AS DateTime), 0, CAST(0x0000A64100C6E03F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (165, 111, N'1112016712', 107, 4, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100C6E03F AS DateTime), 0, CAST(0x0000A64100C6E03F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (166, 112, N'1122016712', 103, 1, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100C94ED2 AS DateTime), 0, CAST(0x0000A64100C94ED2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (167, 113, N'1132016712', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100CC3B77 AS DateTime), 0, CAST(0x0000A64100CC3B77 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (168, 114, N'1142016712', 109, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100CD6412 AS DateTime), 0, CAST(0x0000A64100CD6412 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (169, 114, N'1142016712', 110, 2, 0, 37, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A64100CD6412 AS DateTime), 0, CAST(0x0000A64100CD6412 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (170, 115, N'1152016712', 102, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100D0BAB7 AS DateTime), 0, CAST(0x0000A64100D0BAB7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (171, 116, N'1162016712', 108, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100D3824B AS DateTime), 0, CAST(0x0000A64100D3824B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (172, 117, N'1172016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100D5DB23 AS DateTime), 0, CAST(0x0000A64100D5DB23 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (173, 118, N'1182016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100E16887 AS DateTime), 0, CAST(0x0000A64100E16887 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (174, 119, N'1192016712', 117, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100E2026C AS DateTime), 0, CAST(0x0000A64100E2026C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (175, 119, N'1192016712', 118, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100E2026C AS DateTime), 0, CAST(0x0000A64100E2026C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (176, 119, N'1192016712', 119, 3, 0, 64, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A64100E2026C AS DateTime), 0, CAST(0x0000A64100E2026C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (177, 120, N'1202016712', 121, 1, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A64100E35445 AS DateTime), 0, CAST(0x0000A64100E35445 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (178, 120, N'1202016712', 122, 2, 0, 120, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A64100E35445 AS DateTime), 0, CAST(0x0000A64100E35445 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (179, 121, N'1212016712', 111, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64100EABA13 AS DateTime), 0, CAST(0x0000A64100EABA13 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (180, 122, N'1222016712', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100EB8469 AS DateTime), 0, CAST(0x0000A64100EB8469 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (181, 122, N'1222016712', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100EB8469 AS DateTime), 0, CAST(0x0000A64100EB8469 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (182, 122, N'1222016712', 0, 3, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100EB8469 AS DateTime), 0, CAST(0x0000A64100EB8469 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (183, 123, N'1232016712', 125, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A64100EEC948 AS DateTime), 0, CAST(0x0000A64100EEC948 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (184, 123, N'1232016712', 126, 2, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A64100EEC948 AS DateTime), 0, CAST(0x0000A64100EEC948 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (185, 124, N'1242016712', 123, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100F95224 AS DateTime), 0, CAST(0x0000A64100F95224 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (186, 124, N'1242016712', 124, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100F95224 AS DateTime), 0, CAST(0x0000A64100F95224 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (187, 125, N'1252016712', 127, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100FBB515 AS DateTime), 0, CAST(0x0000A64100FBB515 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (188, 126, N'1262016712', 0, 1, 0, 138, 4000, 1, 4000, 0, 0, NULL, 0, CAST(0x0000A64100FBDCF5 AS DateTime), 0, CAST(0x0000A64100FBDCF5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (189, 127, N'1272016712', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100FC24C3 AS DateTime), 0, CAST(0x0000A64100FC24C3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (190, 128, N'1282016712', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64100FC5AD5 AS DateTime), 0, CAST(0x0000A64100FC5AD5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (191, 129, N'1292016712', 128, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641010106C9 AS DateTime), 0, CAST(0x0000A641010106C9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (192, 130, N'1302016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A641010B0735 AS DateTime), 0, CAST(0x0000A641010B0735 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (193, 131, N'1312016712', 130, 1, 0, 70, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A641010F8B0C AS DateTime), 0, CAST(0x0000A641010F8B0C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (194, 131, N'1312016712', 131, 2, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A641010F8B0C AS DateTime), 0, CAST(0x0000A641010F8B0C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (195, 132, N'1322016712', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6410112926B AS DateTime), 0, CAST(0x0000A6410112926B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (196, 133, N'1332016712', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6410115A79E AS DateTime), 0, CAST(0x0000A6410115A79E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (197, 134, N'1342016712', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A641011CA949 AS DateTime), 0, CAST(0x0000A641011CA949 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (198, 135, N'1352016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200796F19 AS DateTime), 0, CAST(0x0000A64200796F19 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (199, 136, N'1362016713', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A642007ADFFF AS DateTime), 0, CAST(0x0000A642007ADFFF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (200, 137, N'1372016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200803E60 AS DateTime), 0, CAST(0x0000A64200803E60 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (201, 137, N'1372016713', 0, 2, 0, 21, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A64200803E60 AS DateTime), 0, CAST(0x0000A64200803E60 AS DateTime), NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (202, 138, N'1382016713', 132, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6420082F530 AS DateTime), 0, CAST(0x0000A6420082F530 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (203, 139, N'1392016713', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6420083DF89 AS DateTime), 0, CAST(0x0000A6420083DF89 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (204, 140, N'1402016713', 140, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A642008EB61F AS DateTime), 0, CAST(0x0000A642008EB61F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (205, 141, N'1412016713', 139, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6420092C70D AS DateTime), 0, CAST(0x0000A6420092C70D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (206, 142, N'1422016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6420094448C AS DateTime), 0, CAST(0x0000A6420094448C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (207, 143, N'1432016713', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6420096DF4A AS DateTime), 0, CAST(0x0000A6420096DF4A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (208, 144, N'1442016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200996E10 AS DateTime), 0, CAST(0x0000A64200996E10 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (209, 144, N'1442016713', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200996E10 AS DateTime), 0, CAST(0x0000A64200996E10 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (210, 144, N'1442016713', 0, 3, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200996E10 AS DateTime), 0, CAST(0x0000A64200996E10 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (211, 145, N'1452016713', 141, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A022F7 AS DateTime), 0, CAST(0x0000A64200A022F7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (212, 145, N'1452016713', 142, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A022F7 AS DateTime), 0, CAST(0x0000A64200A022F7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (213, 145, N'1452016713', 143, 3, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A022F7 AS DateTime), 0, CAST(0x0000A64200A022F7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (214, 145, N'1452016713', 144, 4, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A022F7 AS DateTime), 0, CAST(0x0000A64200A022F7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (215, 145, N'1452016713', 145, 5, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A022F7 AS DateTime), 0, CAST(0x0000A64200A022F7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (216, 146, N'1462016713', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A4D346 AS DateTime), 0, CAST(0x0000A64200A4D346 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (217, 147, N'1472016713', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A597DA AS DateTime), 0, CAST(0x0000A64200A597DA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (218, 148, N'1482016713', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200A5B039 AS DateTime), 0, CAST(0x0000A64200A5B039 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (219, 149, N'1492016713', 146, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200A62264 AS DateTime), 0, CAST(0x0000A64200A62264 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (220, 149, N'1492016713', 147, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200A62264 AS DateTime), 0, CAST(0x0000A64200A62264 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (221, 150, N'1502016713', 148, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A69086 AS DateTime), 0, CAST(0x0000A64200A69086 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (222, 151, N'1512016713', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200A6B87D AS DateTime), 0, CAST(0x0000A64200A6B87D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (223, 152, N'1522016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200A76B22 AS DateTime), 0, CAST(0x0000A64200A76B22 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (224, 153, N'1532016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200AE44E7 AS DateTime), 0, CAST(0x0000A64200AE44E7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (225, 154, N'1542016713', 151, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200AED484 AS DateTime), 0, CAST(0x0000A64200AED484 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (226, 155, N'1552016713', 150, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200AFF235 AS DateTime), 0, CAST(0x0000A64200AFF235 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (227, 156, N'1562016713', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200B1E7C6 AS DateTime), 0, CAST(0x0000A64200B1E7C6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (228, 156, N'1562016713', 0, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200B1E7C6 AS DateTime), 0, CAST(0x0000A64200B1E7C6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (229, 157, N'1572016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200B23B19 AS DateTime), 0, CAST(0x0000A64200B23B19 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (230, 158, N'1582016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200B27D0E AS DateTime), 0, CAST(0x0000A64200B27D0E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (231, 159, N'1592016713', 153, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200B2A927 AS DateTime), 0, CAST(0x0000A64200B2A927 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (232, 159, N'1592016713', 0, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200B2A927 AS DateTime), 0, CAST(0x0000A64200B2A927 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (233, 160, N'1602016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200B53B33 AS DateTime), 0, CAST(0x0000A64200B53B33 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (234, 161, N'1612016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200B5549B AS DateTime), 0, CAST(0x0000A64200B5549B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (235, 162, N'1622016713', 152, 1, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200B566FC AS DateTime), 0, CAST(0x0000A64200B566FC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (236, 163, N'1632016713', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200B576BF AS DateTime), 0, CAST(0x0000A64200B576BF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (237, 164, N'1642016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200B8CB4D AS DateTime), 0, CAST(0x0000A64200B8CB4D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (238, 165, N'1652016713', 149, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200BB95E2 AS DateTime), 0, CAST(0x0000A64200BB95E2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (239, 166, N'1662016713', 161, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200C60456 AS DateTime), 0, CAST(0x0000A64200C60456 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (240, 166, N'1662016713', 162, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200C60456 AS DateTime), 0, CAST(0x0000A64200C60456 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (241, 166, N'1662016713', 163, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200C60456 AS DateTime), 0, CAST(0x0000A64200C60456 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (242, 166, N'1662016713', 164, 4, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200C60456 AS DateTime), 0, CAST(0x0000A64200C60456 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (243, 167, N'1672016713', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200C65CC9 AS DateTime), 0, CAST(0x0000A64200C65CC9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (244, 168, N'1682016713', 165, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200C8E3AC AS DateTime), 0, CAST(0x0000A64200C8E3AC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (245, 168, N'1682016713', 166, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200C8E3AC AS DateTime), 0, CAST(0x0000A64200C8E3AC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (246, 169, N'1692016713', 158, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200C9D7E1 AS DateTime), 0, CAST(0x0000A64200C9D7E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (247, 169, N'1692016713', 159, 2, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64200C9D7E1 AS DateTime), 0, CAST(0x0000A64200C9D7E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (248, 169, N'1692016713', 160, 3, 0, 1, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A64200C9D7E1 AS DateTime), 0, CAST(0x0000A64200C9D7E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (249, 170, N'1702016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200D14300 AS DateTime), 0, CAST(0x0000A64200D14300 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (250, 170, N'1702016713', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200D14300 AS DateTime), 0, CAST(0x0000A64200D14300 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (251, 171, N'1712016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200D3C4DC AS DateTime), 0, CAST(0x0000A64200D3C4DC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (252, 172, N'1722016713', 174, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200D4BE6C AS DateTime), 0, CAST(0x0000A64200D4BE6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (253, 172, N'1722016713', 175, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200D4BE6C AS DateTime), 0, CAST(0x0000A64200D4BE6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (254, 173, N'1732016713', 167, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200D6B459 AS DateTime), 0, CAST(0x0000A64200D6B459 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (255, 174, N'1742016713', 176, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200EC8C91 AS DateTime), 0, CAST(0x0000A64200EC8C91 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (256, 175, N'1752016713', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200F0E5C1 AS DateTime), 0, CAST(0x0000A64200F0E5C1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (257, 176, N'1762016713', 170, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200F7D560 AS DateTime), 0, CAST(0x0000A64200F7D560 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (258, 176, N'1762016713', 171, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200F7D560 AS DateTime), 0, CAST(0x0000A64200F7D560 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (259, 176, N'1762016713', 172, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200F7D560 AS DateTime), 0, CAST(0x0000A64200F7D560 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (260, 176, N'1762016713', 173, 4, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200F7D560 AS DateTime), 0, CAST(0x0000A64200F7D560 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (261, 177, N'1772016713', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200FB329C AS DateTime), 0, CAST(0x0000A64200FB329C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (262, 178, N'1782016713', 179, 1, 0, 44, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A64200FD6CA9 AS DateTime), 0, CAST(0x0000A64200FD6CA9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (263, 178, N'1782016713', 180, 2, 0, 44, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A64200FD6CA9 AS DateTime), 0, CAST(0x0000A64200FD6CA9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (264, 179, N'1792016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64200FDA5F2 AS DateTime), 0, CAST(0x0000A64200FDA5F2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (265, 180, N'1802016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64201036D9F AS DateTime), 0, CAST(0x0000A64201036D9F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (266, 181, N'1812016713', 185, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A642010FC702 AS DateTime), 0, CAST(0x0000A642010FC702 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (267, 181, N'1812016713', 186, 2, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A642010FC702 AS DateTime), 0, CAST(0x0000A642010FC702 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (268, 182, N'1822016713', 182, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A64201135701 AS DateTime), 0, CAST(0x0000A64201135701 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (269, 182, N'1822016713', 183, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64201135701 AS DateTime), 0, CAST(0x0000A64201135701 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (270, 183, N'1832016713', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6420114DF2B AS DateTime), 0, CAST(0x0000A6420114DF2B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (271, 184, N'1842016713', 187, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A64201168A0A AS DateTime), 0, CAST(0x0000A64201168A0A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (272, 185, N'1852016713', 192, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6420118EAEE AS DateTime), 0, CAST(0x0000A6420118EAEE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (273, 185, N'1852016713', 193, 2, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A6420118EAEE AS DateTime), 0, CAST(0x0000A6420118EAEE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (274, 186, N'1862016713', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A642011AE2C9 AS DateTime), 0, CAST(0x0000A642011AE2C9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (275, 186, N'1862016713', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A642011AE2C9 AS DateTime), 0, CAST(0x0000A642011AE2C9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (276, 187, N'1872016713', 188, 1, 0, 137, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A642011BF595 AS DateTime), 0, CAST(0x0000A642011BF595 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (277, 187, N'1872016713', 189, 2, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A642011BF595 AS DateTime), 0, CAST(0x0000A642011BF595 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (278, 188, N'1882016713', 190, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A642011DDB5F AS DateTime), 0, CAST(0x0000A642011DDB5F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (279, 189, N'1892016713', 181, 1, 0, 117, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A642011E18BE AS DateTime), 0, CAST(0x0000A642011E18BE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (280, 190, N'1902016713', 177, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A642011E30A4 AS DateTime), 0, CAST(0x0000A642011E30A4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (281, 190, N'1902016713', 178, 2, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A642011E30A4 AS DateTime), 0, CAST(0x0000A642011E30A4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (282, 191, N'1912016713', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A642011E522D AS DateTime), 0, CAST(0x0000A642011E522D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (283, 192, N'1922016713', 0, 1, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A6420121BB5A AS DateTime), 0, CAST(0x0000A6420121BB5A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (284, 193, N'1932016714', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643007AAE8E AS DateTime), 0, CAST(0x0000A643007AAE8E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (285, 194, N'1942016714', 194, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643007ADC8B AS DateTime), 0, CAST(0x0000A643007ADC8B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (286, 195, N'1952016714', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300820C13 AS DateTime), 0, CAST(0x0000A64300820C13 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (287, 196, N'1962016714', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6430082E562 AS DateTime), 0, CAST(0x0000A6430082E562 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (288, 197, N'1972016714', 0, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A6430082FFEE AS DateTime), 0, CAST(0x0000A6430082FFEE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (289, 198, N'1982016714', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6430088FC1E AS DateTime), 0, CAST(0x0000A6430088FC1E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (290, 199, N'1992016714', 0, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A643008A6B9C AS DateTime), 0, CAST(0x0000A643008A6B9C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (291, 200, N'2002016714', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643008BF484 AS DateTime), 0, CAST(0x0000A643008BF484 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (292, 201, N'2012016714', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643008ED743 AS DateTime), 0, CAST(0x0000A643008ED743 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (293, 202, N'2022016714', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300908DA4 AS DateTime), 0, CAST(0x0000A64300908DA4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (294, 202, N'2022016714', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300908DA4 AS DateTime), 0, CAST(0x0000A64300908DA4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (295, 203, N'2032016714', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6430093261A AS DateTime), 0, CAST(0x0000A6430093261A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (296, 204, N'2042016714', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300946D09 AS DateTime), 0, CAST(0x0000A64300946D09 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (297, 205, N'2052016714', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300967336 AS DateTime), 0, CAST(0x0000A64300967336 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (298, 206, N'2062016714', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6430096861C AS DateTime), 0, CAST(0x0000A6430096861C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (299, 207, N'2072016714', 0, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A64300976334 AS DateTime), 0, CAST(0x0000A64300976334 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (300, 208, N'2082016714', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6430097A7F8 AS DateTime), 0, CAST(0x0000A6430097A7F8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (301, 209, N'2092016714', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A643009A5B64 AS DateTime), 0, CAST(0x0000A643009A5B64 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (302, 210, N'2102016714', 200, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643009DE6CB AS DateTime), 0, CAST(0x0000A643009DE6CB AS DateTime), NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (303, 210, N'2102016714', 201, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643009DE6CB AS DateTime), 0, CAST(0x0000A643009DE6CB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (304, 210, N'2102016714', 202, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643009DE6CB AS DateTime), 0, CAST(0x0000A643009DE6CB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (305, 211, N'2112016714', 195, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A643009E0C8E AS DateTime), 0, CAST(0x0000A643009E0C8E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (306, 211, N'2112016714', 196, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A643009E0C8E AS DateTime), 0, CAST(0x0000A643009E0C8E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (307, 211, N'2112016714', 197, 3, 0, 14, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A643009E0C8E AS DateTime), 0, CAST(0x0000A643009E0C8E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (308, 212, N'2122016714', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300A05A83 AS DateTime), 0, CAST(0x0000A64300A05A83 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (309, 212, N'2122016714', 0, 2, 0, 37, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A64300A05A83 AS DateTime), 0, CAST(0x0000A64300A05A83 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (310, 213, N'2132016714', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300A06E47 AS DateTime), 0, CAST(0x0000A64300A06E47 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (311, 213, N'2132016714', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300A06E47 AS DateTime), 0, CAST(0x0000A64300A06E47 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (312, 214, N'2142016714', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A64300A28876 AS DateTime), 0, CAST(0x0000A64300A28876 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL] OFF
/****** Object:  Table [dbo].[INVOICE_BY_CARD]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_BY_CARD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceByCardID] [int] NOT NULL,
	[InvoiceID] [int] NULL,
	[CardID] [int] NULL,
	[Total] [float] NULL,
	[CreateBy] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_INVOICE_BY_CARD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVOICE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Total] [int] NULL,
	[Payment] [int] NULL,
	[Change] [int] NULL,
	[Discount] [int] NULL,
	[DiscountType] [int] NULL,
	[InvoiceByCardID] [bigint] NULL,
	[CashOut] [int] NULL,
	[Seat] [int] NULL,
	[Account] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[ShiftID] [int] NULL,
 CONSTRAINT [PK_INVOICE] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[INVOICE] ON
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (1, N'12016710', 1, N'0', 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A63F00F4DBE0 AS DateTime), 8, CAST(0x0000A63F00F4DBE0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (2, N'22016710', 3, N'32016710', 1, 25000, 50000, 25000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A63F00FF91DF AS DateTime), 8, CAST(0x0000A63F00FF91DF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (3, N'32016710', 4, N'42016710', 1, 36000, 40000, 4000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A63F0103087D AS DateTime), 8, CAST(0x0000A63F0103087D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (4, N'42016710', 9, N'92016710', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A63F010F8435 AS DateTime), 8, CAST(0x0000A63F010F8435 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (5, N'52016710', 2, N'22016710', 1, 7000, 7000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A63F01103203 AS DateTime), 8, CAST(0x0000A63F01103203 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (6, N'62016711', 15, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640007B3DE7 AS DateTime), 8, CAST(0x0000A640007B3DE7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (7, N'72016711', 15, N'0', 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6400082BA74 AS DateTime), 8, CAST(0x0000A6400082BA74 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (8, N'82016711', 16, N'0', 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640008540E4 AS DateTime), 8, CAST(0x0000A640008540E4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (9, N'92016711', 16, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000855ECB AS DateTime), 8, CAST(0x0000A64000855ECB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (10, N'102016711', 16, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6400086C5B2 AS DateTime), 8, CAST(0x0000A6400086C5B2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (11, N'112016711', 16, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000871158 AS DateTime), 8, CAST(0x0000A64000871158 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (12, N'122016711', 17, N'0', 1, 4500, 50000, 45500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640008D6D0D AS DateTime), 8, CAST(0x0000A640008D6D0D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (13, N'132016711', 17, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640008FB7BD AS DateTime), 8, CAST(0x0000A640008FB7BD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (14, N'142016711', 14, N'142016711', 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000900F65 AS DateTime), 8, CAST(0x0000A64000900F65 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (15, N'152016711', 19, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640009B97DD AS DateTime), 8, CAST(0x0000A640009B97DD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (16, N'162016711', 15, N'152016711', 1, 21500, 50000, 28500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640009E2655 AS DateTime), 8, CAST(0x0000A640009E2655 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (17, N'172016711', 17, N'172016711', 1, 3800, 5000, 1200, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640009E455A AS DateTime), 8, CAST(0x0000A640009E455A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (18, N'182016711', 19, N'0', 1, 7500, 10000, 2500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640009E639D AS DateTime), 8, CAST(0x0000A640009E639D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (19, N'192016711', 19, N'0', 1, 10000, 50000, 40000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640009E89CD AS DateTime), 8, CAST(0x0000A640009E89CD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (20, N'202016711', 19, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640009EA5A6 AS DateTime), 8, CAST(0x0000A640009EA5A6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (21, N'212016711', 19, N'0', 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640009F2B17 AS DateTime), 8, CAST(0x0000A640009F2B17 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (22, N'222016711', 19, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000A07F01 AS DateTime), 8, CAST(0x0000A64000A07F01 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (23, N'232016711', 18, N'182016711', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000A56FAF AS DateTime), 8, CAST(0x0000A64000A56FAF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (24, N'242016711', 23, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000A5858B AS DateTime), 8, CAST(0x0000A64000A5858B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (25, N'252016711', 21, N'212016711', 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000A7C99A AS DateTime), 8, CAST(0x0000A64000A7C99A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (26, N'262016711', 10, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000A7DF31 AS DateTime), 8, CAST(0x0000A64000A7DF31 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (27, N'272016711', 20, N'202016711', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000A8A977 AS DateTime), 8, CAST(0x0000A64000A8A977 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (28, N'282016711', 10, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000AA58E6 AS DateTime), 8, CAST(0x0000A64000AA58E6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (29, N'292016711', 11, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000AAF3B8 AS DateTime), 8, CAST(0x0000A64000AAF3B8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (30, N'302016711', 11, N'0', 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000AFD205 AS DateTime), 8, CAST(0x0000A64000AFD205 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (31, N'312016711', 11, N'0', 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B085C2 AS DateTime), 8, CAST(0x0000A64000B085C2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (32, N'322016711', 16, N'162016711', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B21157 AS DateTime), 8, CAST(0x0000A64000B21157 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (33, N'332016711', 22, N'222016711', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B2223E AS DateTime), 8, CAST(0x0000A64000B2223E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (34, N'342016711', 19, N'192016711', 1, 9000, 20000, 11000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B232FC AS DateTime), 8, CAST(0x0000A64000B232FC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (35, N'352016711', 23, N'232016711', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B42A5B AS DateTime), 8, CAST(0x0000A64000B42A5B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (36, N'362016711', 12, N'0', 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B436B0 AS DateTime), 8, CAST(0x0000A64000B436B0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (37, N'372016711', 12, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B45590 AS DateTime), 8, CAST(0x0000A64000B45590 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (38, N'382016711', 12, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B64AD6 AS DateTime), 8, CAST(0x0000A64000B64AD6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (39, N'392016711', 12, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B6D7F9 AS DateTime), 8, CAST(0x0000A64000B6D7F9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (40, N'402016711', 12, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000B7CB6D AS DateTime), 8, CAST(0x0000A64000B7CB6D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (41, N'412016711', 13, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000BE0DD7 AS DateTime), 8, CAST(0x0000A64000BE0DD7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (42, N'422016711', 13, N'0', 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000C128D0 AS DateTime), 8, CAST(0x0000A64000C128D0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (43, N'432016711', 24, N'242016711', 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000C13AA7 AS DateTime), 8, CAST(0x0000A64000C13AA7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (44, N'442016711', 13, N'0', 1, 8500, 10000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000C15D30 AS DateTime), 8, CAST(0x0000A64000C15D30 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (45, N'452016711', 13, N'0', 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000C2B2C1 AS DateTime), 8, CAST(0x0000A64000C2B2C1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (46, N'462016711', 13, N'0', 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000C2CDD8 AS DateTime), 8, CAST(0x0000A64000C2CDD8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (47, N'472016711', 26, N'262016711', 1, 9000, 20000, 11000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000CAFE2C AS DateTime), 8, CAST(0x0000A64000CAFE2C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (48, N'482016711', 15, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000CBF2B6 AS DateTime), 8, CAST(0x0000A64000CBF2B6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (49, N'492016711', 28, N'282016711', 1, 7500, 10000, 2500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000D28D3A AS DateTime), 8, CAST(0x0000A64000D28D3A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (50, N'502016711', 18, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000D536F3 AS DateTime), 8, CAST(0x0000A64000D536F3 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (51, N'512016711', 27, N'272016711', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000D630F4 AS DateTime), 8, CAST(0x0000A64000D630F4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (52, N'522016711', 18, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000D8BDE8 AS DateTime), 8, CAST(0x0000A64000D8BDE8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (53, N'532016711', 29, N'292016711', 1, 13100, 50000, 36900, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000DA86EB AS DateTime), 8, CAST(0x0000A64000DA86EB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (54, N'542016711', 25, N'252016711', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000DABE23 AS DateTime), 8, CAST(0x0000A64000DABE23 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (55, N'552016711', 19, N'0', 1, 7000, 10000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000E181C8 AS DateTime), 8, CAST(0x0000A64000E181C8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (56, N'562016711', 19, N'0', 1, 5500, 20000, 14500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000E2C5EC AS DateTime), 8, CAST(0x0000A64000E2C5EC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (57, N'572016711', 19, N'0', 1, 7500, 10000, 2500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000E2FEE7 AS DateTime), 8, CAST(0x0000A64000E2FEE7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (58, N'582016711', 30, N'302016711', 1, 12500, 20000, 7500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000E71F18 AS DateTime), 8, CAST(0x0000A64000E71F18 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (59, N'592016711', 21, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000EB8928 AS DateTime), 8, CAST(0x0000A64000EB8928 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (60, N'602016711', 21, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000EE4235 AS DateTime), 8, CAST(0x0000A64000EE4235 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (61, N'612016711', 32, N'322016711', 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000EF7151 AS DateTime), 8, CAST(0x0000A64000EF7151 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (62, N'622016711', 21, N'0', 1, 8000, 20000, 12000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000F04A6D AS DateTime), 8, CAST(0x0000A64000F04A6D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (63, N'632016711', 31, N'312016711', 1, 17000, 20000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000F573FE AS DateTime), 8, CAST(0x0000A64000F573FE AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (64, N'642016711', 33, N'332016711', 1, 9000, 9000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000F766C4 AS DateTime), 8, CAST(0x0000A64000F766C4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (65, N'652016711', 22, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000FB797A AS DateTime), 8, CAST(0x0000A64000FB797A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (66, N'662016711', 22, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64000FDB831 AS DateTime), 8, CAST(0x0000A64000FDB831 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (67, N'672016711', 35, N'352016711', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64001055759 AS DateTime), 8, CAST(0x0000A64001055759 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (68, N'682016711', 24, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640010CE75C AS DateTime), 8, CAST(0x0000A640010CE75C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (69, N'692016711', 34, N'342016711', 1, 9500, 20000, 10500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640010E77AB AS DateTime), 8, CAST(0x0000A640010E77AB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (70, N'702016711', 26, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6400118F6F1 AS DateTime), 8, CAST(0x0000A6400118F6F1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (71, N'712016711', 37, N'372016711', 1, 6800, 6800, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640011DC131 AS DateTime), 8, CAST(0x0000A640011DC131 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (72, N'722016711', 36, N'362016711', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A640011DCA58 AS DateTime), 8, CAST(0x0000A640011DCA58 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (73, N'732016711', 38, N'382016711', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6400122AB44 AS DateTime), 8, CAST(0x0000A6400122AB44 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (74, N'742016711', 27, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6400124E08D AS DateTime), 8, CAST(0x0000A6400124E08D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (75, N'752016712', 2, N'0', 1, 6500, 10000, 3500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641007685C4 AS DateTime), 8, CAST(0x0000A641007685C4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (76, N'762016712', 2, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641007696BA AS DateTime), 8, CAST(0x0000A641007696BA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (77, N'772016712', 2, N'0', 1, 4500, 50000, 45500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6410076A75B AS DateTime), 8, CAST(0x0000A6410076A75B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (78, N'782016712', 2, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6410077F712 AS DateTime), 8, CAST(0x0000A6410077F712 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (79, N'792016712', 2, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641007A4B22 AS DateTime), 8, CAST(0x0000A641007A4B22 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (80, N'802016712', 2, N'0', 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641007F72F7 AS DateTime), 8, CAST(0x0000A641007F72F7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (81, N'812016712', 2, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641008164B0 AS DateTime), 8, CAST(0x0000A641008164B0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (82, N'822016712', 2, N'0', 1, 9500, 10000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6410083D8AD AS DateTime), 8, CAST(0x0000A6410083D8AD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (83, N'832016712', 2, N'0', 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100894D49 AS DateTime), 8, CAST(0x0000A64100894D49 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (84, N'842016712', 2, N'0', 1, 4500, 50000, 45500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641008A717D AS DateTime), 8, CAST(0x0000A641008A717D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (85, N'852016712', 2, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641008F095B AS DateTime), 8, CAST(0x0000A641008F095B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (86, N'862016712', 3, N'0', 1, 6000, 20000, 14000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641008FD93A AS DateTime), 8, CAST(0x0000A641008FD93A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (87, N'872016712', 4, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641009B8CC3 AS DateTime), 8, CAST(0x0000A641009B8CC3 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (88, N'882016712', 4, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641009CE3CF AS DateTime), 8, CAST(0x0000A641009CE3CF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (89, N'892016712', 1, N'12016712', 1, 18000, 20000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641009DF724 AS DateTime), 8, CAST(0x0000A641009DF724 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (90, N'902016712', 3, N'32016712', 1, 11500, 30000, 18500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641009FC3F1 AS DateTime), 8, CAST(0x0000A641009FC3F1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (91, N'912016712', 5, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100A228FF AS DateTime), 8, CAST(0x0000A64100A228FF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (92, N'922016712', 5, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100A23D4F AS DateTime), 8, CAST(0x0000A64100A23D4F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (93, N'932016712', 2, N'22016712', 1, 16000, 20000, 4000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100A25B1F AS DateTime), 8, CAST(0x0000A64100A25B1F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (94, N'942016712', 5, N'0', 1, 7000, 50000, 43000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100A6D018 AS DateTime), 8, CAST(0x0000A64100A6D018 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (95, N'952016712', 7, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100A8CC32 AS DateTime), 8, CAST(0x0000A64100A8CC32 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (96, N'962016712', 8, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100AA78EA AS DateTime), 8, CAST(0x0000A64100AA78EA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (97, N'972016712', 4, N'42016712', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100ABC9DF AS DateTime), 8, CAST(0x0000A64100ABC9DF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (98, N'982016712', 8, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100ABD7F4 AS DateTime), 8, CAST(0x0000A64100ABD7F4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (99, N'992016712', 5, N'52016712', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100AC3641 AS DateTime), 8, CAST(0x0000A64100AC3641 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (100, N'1002016712', 6, N'62016712', 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100ADA211 AS DateTime), 8, CAST(0x0000A64100ADA211 AS DateTime), N'', 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (101, N'1012016712', 8, N'0', 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100ADC11A AS DateTime), 8, CAST(0x0000A64100ADC11A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (102, N'1022016712', 9, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100B03032 AS DateTime), 8, CAST(0x0000A64100B03032 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (103, N'1032016712', 9, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100B509A6 AS DateTime), 8, CAST(0x0000A64100B509A6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (104, N'1042016712', 7, N'72016712', 1, 3500, 50000, 46500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100B6ABB1 AS DateTime), 8, CAST(0x0000A64100B6ABB1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (105, N'1052016712', 11, N'0', 1, 4000, 50000, 46000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100B869F6 AS DateTime), 8, CAST(0x0000A64100B869F6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (106, N'1062016712', 15, N'0', 1, 3000, 5000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100C4B578 AS DateTime), 8, CAST(0x0000A64100C4B578 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (107, N'1072016712', 15, N'0', 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100C4EDB1 AS DateTime), 8, CAST(0x0000A64100C4EDB1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (108, N'1082016712', 9, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100C51239 AS DateTime), 8, CAST(0x0000A64100C51239 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (109, N'1092016712', 8, N'0', 1, 7500, 10000, 2500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100C52639 AS DateTime), 8, CAST(0x0000A64100C52639 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (110, N'1102016712', 15, N'0', 1, 13000, 20000, 7000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100C6BBF8 AS DateTime), 8, CAST(0x0000A64100C6BBF8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (111, N'1112016712', 10, N'102016712', 1, 19000, 20000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100C6E03E AS DateTime), 8, CAST(0x0000A64100C6E03E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (112, N'1122016712', 12, N'122016712', 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100C94ED0 AS DateTime), 8, CAST(0x0000A64100C94ED0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (113, N'1132016712', 16, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100CC3B75 AS DateTime), 8, CAST(0x0000A64100CC3B75 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (114, N'1142016712', 14, N'142016712', 1, 10500, 12000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100CD6410 AS DateTime), 8, CAST(0x0000A64100CD6410 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (115, N'1152016712', 11, N'112016712', 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100D0BAB5 AS DateTime), 8, CAST(0x0000A64100D0BAB5 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (116, N'1162016712', 13, N'132016712', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100D3823D AS DateTime), 8, CAST(0x0000A64100D3823D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (117, N'1172016712', 17, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100D5DB22 AS DateTime), 8, CAST(0x0000A64100D5DB22 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (118, N'1182016712', 19, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100E16885 AS DateTime), 8, CAST(0x0000A64100E16885 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (119, N'1192016712', 17, N'172016712', 1, 11800, 20000, 8200, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100E2026A AS DateTime), 8, CAST(0x0000A64100E2026A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (120, N'1202016712', 18, N'182016712', 1, 17000, 20000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100E35442 AS DateTime), 8, CAST(0x0000A64100E35442 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (121, N'1212016712', 15, N'152016712', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100EABA11 AS DateTime), 8, CAST(0x0000A64100EABA11 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (122, N'1222016712', 20, N'0', 1, 10500, 20000, 9500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100EB8467 AS DateTime), 8, CAST(0x0000A64100EB8467 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (123, N'1232016712', 16, N'162016712', 1, 6000, 10000, 4000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100EEC946 AS DateTime), 8, CAST(0x0000A64100EEC946 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (124, N'1242016712', 19, N'192016712', 1, 7000, 10000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100F95222 AS DateTime), 8, CAST(0x0000A64100F95222 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (125, N'1252016712', 20, N'202016712', 1, 3500, 4000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100FBB512 AS DateTime), 8, CAST(0x0000A64100FBB512 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (126, N'1262016712', 22, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100FBDCF2 AS DateTime), 8, CAST(0x0000A64100FBDCF2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (127, N'1272016712', 22, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100FC24C1 AS DateTime), 8, CAST(0x0000A64100FC24C1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (128, N'1282016712', 22, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64100FC5AD2 AS DateTime), 8, CAST(0x0000A64100FC5AD2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (129, N'1292016712', 21, N'212016712', 1, 3500, 3535, 35, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641010106C6 AS DateTime), 8, CAST(0x0000A641010106C6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (130, N'1302016712', 23, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641010B0733 AS DateTime), 8, CAST(0x0000A641010B0733 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (131, N'1312016712', 22, N'222016712', 1, 9500, 10000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641010F8B09 AS DateTime), 8, CAST(0x0000A641010F8B09 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (132, N'1322016712', 24, N'0', 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6410112926A AS DateTime), 8, CAST(0x0000A6410112926A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (133, N'1332016712', 24, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6410115A79C AS DateTime), 8, CAST(0x0000A6410115A79C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (134, N'1342016712', 24, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A641011CA947 AS DateTime), 8, CAST(0x0000A641011CA947 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (135, N'1352016713', 2, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200796E46 AS DateTime), 8, CAST(0x0000A64200796E46 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (136, N'1362016713', 2, N'0', 1, 4000, 44000, 40000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642007ADFFC AS DateTime), 8, CAST(0x0000A642007ADFFC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (137, N'1372016713', 2, N'0', 1, 5500, 20000, 14500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200803E5E AS DateTime), 8, CAST(0x0000A64200803E5E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (138, N'1382016713', 1, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420082F52F AS DateTime), 8, CAST(0x0000A6420082F52F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (139, N'1392016713', 4, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420083DF87 AS DateTime), 8, CAST(0x0000A6420083DF87 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (140, N'1402016713', 4, N'0', 1, 4000, 50000, 46000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642008EB61D AS DateTime), 8, CAST(0x0000A642008EB61D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (141, N'1412016713', 3, N'32016713', 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420092C70B AS DateTime), 8, CAST(0x0000A6420092C70B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (142, N'1422016713', 6, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420094448B AS DateTime), 8, CAST(0x0000A6420094448B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (143, N'1432016713', 6, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420096DF48 AS DateTime), 8, CAST(0x0000A6420096DF48 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (144, N'1442016713', 6, N'0', 1, 11000, 20000, 9000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200996E0F AS DateTime), 8, CAST(0x0000A64200996E0F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (145, N'1452016713', 2, N'22016713', 1, 18000, 50000, 32000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A022F6 AS DateTime), 8, CAST(0x0000A64200A022F6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (146, N'1462016713', 8, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A4D344 AS DateTime), 8, CAST(0x0000A64200A4D344 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (147, N'1472016713', 10, N'0', 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A597D8 AS DateTime), 8, CAST(0x0000A64200A597D8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (148, N'1482016713', 10, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A5B038 AS DateTime), 8, CAST(0x0000A64200A5B038 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (149, N'1492016713', 5, N'52016713', 1, 9000, 10000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A62262 AS DateTime), 8, CAST(0x0000A64200A62262 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (150, N'1502016713', 6, N'62016713', 1, 3500, 4000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A69085 AS DateTime), 8, CAST(0x0000A64200A69085 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (151, N'1512016713', 10, N'0', 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A6B87B AS DateTime), 8, CAST(0x0000A64200A6B87B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (152, N'1522016713', 10, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200A76B20 AS DateTime), 8, CAST(0x0000A64200A76B20 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (153, N'1532016713', 12, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200AE44E5 AS DateTime), 8, CAST(0x0000A64200AE44E5 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (154, N'1542016713', 9, N'92016713', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200AED481 AS DateTime), 8, CAST(0x0000A64200AED481 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (155, N'1552016713', 8, N'82016713', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200AFF233 AS DateTime), 8, CAST(0x0000A64200AFF233 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (156, N'1562016713', 13, N'0', 1, 9000, 9000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B1E7C4 AS DateTime), 8, CAST(0x0000A64200B1E7C4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (157, N'1572016713', 13, N'0', 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B23B17 AS DateTime), 8, CAST(0x0000A64200B23B17 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (158, N'1582016713', 13, N'0', 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B27D0C AS DateTime), 8, CAST(0x0000A64200B27D0C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (159, N'1592016713', 11, N'112016713', 1, 9000, 10000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B2A925 AS DateTime), 8, CAST(0x0000A64200B2A925 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (160, N'1602016713', 13, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B53B31 AS DateTime), 8, CAST(0x0000A64200B53B31 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (161, N'1612016713', 13, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B55499 AS DateTime), 8, CAST(0x0000A64200B55499 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (162, N'1622016713', 10, N'102016713', 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B566FA AS DateTime), 8, CAST(0x0000A64200B566FA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (163, N'1632016713', 13, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B576BD AS DateTime), 8, CAST(0x0000A64200B576BD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (164, N'1642016713', 14, N'0', 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200B8CB4B AS DateTime), 8, CAST(0x0000A64200B8CB4B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (165, N'1652016713', 7, N'72016713', 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200BB95E0 AS DateTime), 8, CAST(0x0000A64200BB95E0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (166, N'1662016713', 12, N'122016713', 1, 17000, 20000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200C60455 AS DateTime), 8, CAST(0x0000A64200C60455 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (167, N'1672016713', 16, N'0', 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200C65CC8 AS DateTime), 8, CAST(0x0000A64200C65CC8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (168, N'1682016713', 14, N'142016713', 1, 9000, 15000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200C8E3AA AS DateTime), 8, CAST(0x0000A64200C8E3AA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (169, N'1692016713', 13, N'132016713', 1, 15000, 20000, 5000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200C9D7E0 AS DateTime), 8, CAST(0x0000A64200C9D7E0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (170, N'1702016713', 18, N'0', 1, 8000, 8000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200D142FE AS DateTime), 8, CAST(0x0000A64200D142FE AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (171, N'1712016713', 19, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200D3C4DA AS DateTime), 8, CAST(0x0000A64200D3C4DA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (172, N'1722016713', 17, N'172016713', 1, 8000, 8000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200D4BE6A AS DateTime), 8, CAST(0x0000A64200D4BE6A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (173, N'1732016713', 15, N'152016713', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200D6B457 AS DateTime), 8, CAST(0x0000A64200D6B457 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (174, N'1742016713', 18, N'182016713', 1, 4000, 50000, 46000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200EC8C8F AS DateTime), 8, CAST(0x0000A64200EC8C8F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (175, N'1752016713', 20, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200F0E5BF AS DateTime), 8, CAST(0x0000A64200F0E5BF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (176, N'1762016713', 16, N'162016713', 1, 14000, 20000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200F7D55E AS DateTime), 8, CAST(0x0000A64200F7D55E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (177, N'1772016713', 20, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200FB329A AS DateTime), 8, CAST(0x0000A64200FB329A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (178, N'1782016713', 20, N'202016713', 1, 10000, 50000, 40000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200FD6CA6 AS DateTime), 8, CAST(0x0000A64200FD6CA6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (179, N'1792016713', 22, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64200FDA5EF AS DateTime), 8, CAST(0x0000A64200FDA5EF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (180, N'1802016713', 23, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64201036D9D AS DateTime), 8, CAST(0x0000A64201036D9D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (181, N'1812016713', 23, N'232016713', 1, 7000, 10000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642010FC700 AS DateTime), 8, CAST(0x0000A642010FC700 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (182, N'1822016713', 22, N'222016713', 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64201135700 AS DateTime), 8, CAST(0x0000A64201135700 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (183, N'1832016713', 26, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420114DF28 AS DateTime), 8, CAST(0x0000A6420114DF28 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (184, N'1842016713', 24, N'242016713', 1, 3000, 3000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64201168A08 AS DateTime), 8, CAST(0x0000A64201168A08 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (185, N'1852016713', 27, N'272016713', 1, 6500, 10000, 3500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420118EAED AS DateTime), 8, CAST(0x0000A6420118EAED AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (186, N'1862016713', 29, N'0', 1, 8000, 8000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642011AE2C7 AS DateTime), 8, CAST(0x0000A642011AE2C7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (187, N'1872016713', 25, N'252016713', 1, 18000, 20000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642011BF593 AS DateTime), 8, CAST(0x0000A642011BF593 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (188, N'1882016713', 26, N'262016713', 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642011DDB5D AS DateTime), 8, CAST(0x0000A642011DDB5D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (189, N'1892016713', 21, N'0', 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642011E18BB AS DateTime), 8, CAST(0x0000A642011E18BB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (190, N'1902016713', 19, N'0', 1, 10000, 10000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642011E30A2 AS DateTime), 8, CAST(0x0000A642011E30A2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (191, N'1912016713', 29, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A642011E522B AS DateTime), 8, CAST(0x0000A642011E522B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (192, N'1922016713', 29, N'0', 1, 12000, 12000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6420121BB58 AS DateTime), 8, CAST(0x0000A6420121BB58 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (193, N'1932016714', 3, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643007AAE66 AS DateTime), 8, CAST(0x0000A643007AAE66 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (194, N'1942016714', 1, N'0', 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643007ADC89 AS DateTime), 8, CAST(0x0000A643007ADC89 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (195, N'1952016714', 3, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300820C11 AS DateTime), 8, CAST(0x0000A64300820C11 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (196, N'1962016714', 3, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6430082E55F AS DateTime), 8, CAST(0x0000A6430082E55F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (197, N'1972016714', 3, N'0', 1, 5000, 10000, 5000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6430082FFEC AS DateTime), 8, CAST(0x0000A6430082FFEC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (198, N'1982016714', 3, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6430088FC1C AS DateTime), 8, CAST(0x0000A6430088FC1C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (199, N'1992016714', 3, N'0', 1, 5000, 50000, 45000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643008A6B99 AS DateTime), 8, CAST(0x0000A643008A6B99 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (200, N'2002016714', 4, N'0', 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643008BF482 AS DateTime), 8, CAST(0x0000A643008BF482 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (201, N'2012016714', 5, N'0', 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643008ED741 AS DateTime), 8, CAST(0x0000A643008ED741 AS DateTime), N'', 2)
GO
print 'Processed 200 total records'
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (202, N'2022016714', 5, N'0', 1, 8500, 50000, 41500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300908DA2 AS DateTime), 8, CAST(0x0000A64300908DA2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (203, N'2032016714', 5, N'0', 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300932618 AS DateTime), 8, CAST(0x0000A64300932618 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (204, N'2042016714', 5, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300946D08 AS DateTime), 8, CAST(0x0000A64300946D08 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (205, N'2052016714', 5, N'0', 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300967334 AS DateTime), 8, CAST(0x0000A64300967334 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (206, N'2062016714', 5, N'0', 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6430096861A AS DateTime), 8, CAST(0x0000A6430096861A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (207, N'2072016714', 5, N'0', 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300976333 AS DateTime), 8, CAST(0x0000A64300976333 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (208, N'2082016714', 5, N'0', 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6430097A7F6 AS DateTime), 8, CAST(0x0000A6430097A7F6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (209, N'2092016714', 5, N'0', 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643009A5B62 AS DateTime), 8, CAST(0x0000A643009A5B62 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (210, N'2102016714', 3, N'32016714', 1, 11000, 11000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643009DE5FB AS DateTime), 8, CAST(0x0000A643009DE5FB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (211, N'2112016714', 2, N'0', 1, 20000, 20000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A643009E0C8C AS DateTime), 8, CAST(0x0000A643009E0C8C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (212, N'2122016714', 5, N'0', 1, 9500, 20000, 10500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300A05A81 AS DateTime), 8, CAST(0x0000A64300A05A81 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (213, N'2132016714', 5, N'0', 1, 7500, 20000, 12500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300A06E45 AS DateTime), 8, CAST(0x0000A64300A06E45 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (214, N'2142016714', 5, N'0', 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A64300A28873 AS DateTime), 8, CAST(0x0000A64300A28873 AS DateTime), N'', 2)
SET IDENTITY_INSERT [dbo].[INVOICE] OFF
/****** Object:  UserDefinedFunction [dbo].[GetStartDate]    Script Date: 07/14/2016 09:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[GetStartDate]
(
	@startdate DATETIME
)
RETURNS DATETIME
AS
BEGIN	
	
	DECLARE @result DATETIME

	 DECLARE @flag INT = 0;

                SELECT  @flag = ( 1 + ( ( 6 + DATEPART(dw, @startdate)
                                          + @@DATEFIRST ) % 7 ) );

                SELECT  @result = CASE WHEN @flag = 1 THEN @startdate - 6
                                          WHEN @flag = 2 THEN @startdate
                                          WHEN @flag = 3 THEN @startdate - 1
                                          WHEN @flag = 4 THEN @startdate - 2
                                          WHEN @flag = 5 THEN @startdate - 3
                                          WHEN @flag = 6 THEN @startdate - 4
                                          WHEN @flag = 7 THEN @startdate - 5
                                          ELSE @startdate
                                     END

	return @result
	
END
GO
/****** Object:  Table [dbo].[PERMISSION]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISSION](
	[PermissionID] [int] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[SubMenuID] [int] NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_PERMISSION] PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PERMISSION] ON
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, N'EAT IN', 1, 1, 1, 4, CAST(0x0000A57B0180DB4E AS DateTime), 4, CAST(0x0000A57B0180DB4E AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, N'TAKEAWAY', 1, 1, 2, 4, CAST(0x0000A57B0180DB4E AS DateTime), 4, CAST(0x0000A57B0180DB4E AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, N'STORE', 1, 1, 3, 4, CAST(0x0000A57B0180DB4E AS DateTime), 4, CAST(0x0000A57B0180DB4E AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, N'WORKING PERIOD', 1, 1, 4, 4, CAST(0x0000A57B0180DB4E AS DateTime), 4, CAST(0x0000A57B0180DB4E AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, N'REPORT', 1, 1, 5, 4, CAST(0x0000A57B0180DB4E AS DateTime), 4, CAST(0x0000A57B0180DB4E AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, N'SETTING', 1, 1, 6, 4, CAST(0x0000A57B0180DB4E AS DateTime), 4, CAST(0x0000A57B0180DB4E AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, N'EAT IN', 1, 2, 1, 4, CAST(0x0000A57B0180FE4A AS DateTime), 4, CAST(0x0000A57B0180FE4A AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, N'TAKEAWAY', 1, 2, 2, 4, CAST(0x0000A57B0180FE4A AS DateTime), 4, CAST(0x0000A57B0180FE4A AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, N'WORKING PERIOD', 1, 2, 4, 4, CAST(0x0000A57B0180FE4A AS DateTime), 4, CAST(0x0000A57B0180FE4A AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, N'REPORT', 1, 2, 5, 4, CAST(0x0000A57B0180FE4A AS DateTime), 4, CAST(0x0000A57B0180FE4A AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, N'EAT IN', 1, 3, 1, 4, CAST(0x0000A57B01811072 AS DateTime), 4, CAST(0x0000A57B01811072 AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, N'WORKING PERIOD', 1, 3, 4, 4, CAST(0x0000A57B01811072 AS DateTime), 4, CAST(0x0000A57B01811072 AS DateTime), N'')
INSERT [dbo].[PERMISSION] ([PermissionID], [PermissionName], [Status], [DepartmentID], [SubMenuID], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, N'TAKEAWAY', 1, 3, 2, 4, CAST(0x0000A57B01811072 AS DateTime), 4, CAST(0x0000A57B01811072 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[PERMISSION] OFF
/****** Object:  Table [dbo].[PAYMENT_TYPE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_TYPE](
	[PaymentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTypeName] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_PAYMENT_TYPE] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PAYMENT_TYPE] ON
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'CASH', 1, NULL, 0, CAST(0x0000A56F00E3F0EE AS DateTime), 0, CAST(0x0000A56F00E3F0EE AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'CARD', 1, NULL, 0, CAST(0x0000A56F00E42BAA AS DateTime), 0, CAST(0x0000A56F00E42BAA AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'CHEQUE', 1, NULL, 0, CAST(0x0000A56F00E43832 AS DateTime), 0, CAST(0x0000A56F00E43832 AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'ACCOUNT', 1, NULL, 0, CAST(0x0000A56F00E43FFC AS DateTime), 0, CAST(0x0000A56F00E43FFC AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'GIFT CARD', 1, NULL, 0, CAST(0x0000A56F00E4469B AS DateTime), 0, CAST(0x0000A56F00E4469B AS DateTime))
SET IDENTITY_INSERT [dbo].[PAYMENT_TYPE] OFF
/****** Object:  Table [dbo].[PAYMENT_INVOICE_HISTORY_ALL]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_INVOICE_HISTORY_ALL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentHistoryID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [int] NULL,
	[PaymentTypeID] [int] NOT NULL,
	[Total] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_PAYMENT_INVOICE_HISTORY_ALL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENT_INVOICE_HISTORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_INVOICE_HISTORY](
	[PaymentHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [int] NULL,
	[PaymentTypeID] [int] NOT NULL,
	[Total] [float] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_PAYMENT_INVOICE_HISTORY] PRIMARY KEY CLUSTERED 
(
	[PaymentHistoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ON
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 12016710, 1, 10000, 1, 0, CAST(0x0000A63F00F4DBF4 AS DateTime), 0, CAST(0x0000A63F00F4DBF5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, 22016710, 1, 50000, 1, 0, CAST(0x0000A63F00FF91E2 AS DateTime), 0, CAST(0x0000A63F00FF91E2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 3, 32016710, 1, 40000, 1, 0, CAST(0x0000A63F0103087F AS DateTime), 0, CAST(0x0000A63F0103087F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 4, 42016710, 1, 5000, 1, 0, CAST(0x0000A63F010F8439 AS DateTime), 0, CAST(0x0000A63F010F8439 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 5, 52016710, 1, 7000, 1, 0, CAST(0x0000A63F01103205 AS DateTime), 0, CAST(0x0000A63F01103205 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 6, 62016711, 1, 4000, 1, 0, CAST(0x0000A640007B3DEA AS DateTime), 0, CAST(0x0000A640007B3DEA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 7, 72016711, 1, 5000, 1, 0, CAST(0x0000A6400082BA76 AS DateTime), 0, CAST(0x0000A6400082BA76 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 8, 82016711, 1, 4500, 1, 0, CAST(0x0000A640008540E7 AS DateTime), 0, CAST(0x0000A640008540E7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 9, 92016711, 1, 4000, 1, 0, CAST(0x0000A64000855ECD AS DateTime), 0, CAST(0x0000A64000855ECD AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 10, 102016711, 1, 3500, 1, 0, CAST(0x0000A6400086C5B5 AS DateTime), 0, CAST(0x0000A6400086C5B5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 11, 112016711, 1, 5000, 1, 0, CAST(0x0000A6400087115A AS DateTime), 0, CAST(0x0000A6400087115A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 12, 122016711, 1, 50000, 1, 0, CAST(0x0000A640008D6D0E AS DateTime), 0, CAST(0x0000A640008D6D0E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 13, 132016711, 1, 5000, 1, 0, CAST(0x0000A640008FB7BF AS DateTime), 0, CAST(0x0000A640008FB7BF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 14, 142016711, 1, 10000, 1, 0, CAST(0x0000A64000900F67 AS DateTime), 0, CAST(0x0000A64000900F67 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 15, 152016711, 1, 5000, 1, 0, CAST(0x0000A640009B97E0 AS DateTime), 0, CAST(0x0000A640009B97E0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 16, 162016711, 1, 50000, 1, 0, CAST(0x0000A640009E265A AS DateTime), 0, CAST(0x0000A640009E265A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 17, 172016711, 1, 5000, 1, 0, CAST(0x0000A640009E455C AS DateTime), 0, CAST(0x0000A640009E455C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 18, 182016711, 1, 10000, 1, 0, CAST(0x0000A640009E639F AS DateTime), 0, CAST(0x0000A640009E639F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 19, 192016711, 1, 50000, 1, 0, CAST(0x0000A640009E89D0 AS DateTime), 0, CAST(0x0000A640009E89D0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 20, 202016711, 1, 5000, 1, 0, CAST(0x0000A640009EA5A8 AS DateTime), 0, CAST(0x0000A640009EA5A8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 21, 212016711, 1, 20000, 1, 0, CAST(0x0000A640009F2B19 AS DateTime), 0, CAST(0x0000A640009F2B19 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 22, 222016711, 1, 5000, 1, 0, CAST(0x0000A64000A07F04 AS DateTime), 0, CAST(0x0000A64000A07F04 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 23, 232016711, 1, 5000, 1, 0, CAST(0x0000A64000A56FB1 AS DateTime), 0, CAST(0x0000A64000A56FB1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 24, 242016711, 1, 4000, 1, 0, CAST(0x0000A64000A5858D AS DateTime), 0, CAST(0x0000A64000A5858D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 25, 252016711, 1, 10000, 1, 0, CAST(0x0000A64000A7CA6E AS DateTime), 0, CAST(0x0000A64000A7CA6F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 26, 262016711, 1, 4000, 1, 0, CAST(0x0000A64000A7DF36 AS DateTime), 0, CAST(0x0000A64000A7DF36 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 27, 272016711, 1, 5000, 1, 0, CAST(0x0000A64000A8A979 AS DateTime), 0, CAST(0x0000A64000A8A979 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 28, 282016711, 1, 10000, 1, 0, CAST(0x0000A64000AA58E9 AS DateTime), 0, CAST(0x0000A64000AA58E9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 29, 292016711, 1, 5000, 1, 0, CAST(0x0000A64000AAF3BA AS DateTime), 0, CAST(0x0000A64000AAF3BA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 30, 302016711, 1, 10000, 1, 0, CAST(0x0000A64000AFD207 AS DateTime), 0, CAST(0x0000A64000AFD207 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 31, 312016711, 1, 20000, 1, 0, CAST(0x0000A64000B085C5 AS DateTime), 0, CAST(0x0000A64000B085C5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 32, 322016711, 1, 5000, 1, 0, CAST(0x0000A64000B21159 AS DateTime), 0, CAST(0x0000A64000B21159 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 33, 332016711, 1, 5000, 1, 0, CAST(0x0000A64000B22240 AS DateTime), 0, CAST(0x0000A64000B22240 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 34, 342016711, 1, 20000, 1, 0, CAST(0x0000A64000B232FE AS DateTime), 0, CAST(0x0000A64000B232FE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 35, 352016711, 1, 5000, 1, 0, CAST(0x0000A64000B42A5D AS DateTime), 0, CAST(0x0000A64000B42A5D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 36, 362016711, 1, 10000, 1, 0, CAST(0x0000A64000B436B2 AS DateTime), 0, CAST(0x0000A64000B436B2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 37, 372016711, 1, 4000, 1, 0, CAST(0x0000A64000B45592 AS DateTime), 0, CAST(0x0000A64000B45592 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 38, 382016711, 1, 10000, 1, 0, CAST(0x0000A64000B64AD7 AS DateTime), 0, CAST(0x0000A64000B64AD7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 39, 392016711, 1, 5000, 1, 0, CAST(0x0000A64000B6D7FB AS DateTime), 0, CAST(0x0000A64000B6D7FB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 40, 402016711, 1, 5000, 1, 0, CAST(0x0000A64000B7CB6F AS DateTime), 0, CAST(0x0000A64000B7CB6F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 41, 412016711, 1, 5000, 1, 0, CAST(0x0000A64000BE0DD9 AS DateTime), 0, CAST(0x0000A64000BE0DD9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 42, 422016711, 1, 4500, 1, 0, CAST(0x0000A64000C128D2 AS DateTime), 0, CAST(0x0000A64000C128D2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 43, 432016711, 1, 10000, 1, 0, CAST(0x0000A64000C13AA9 AS DateTime), 0, CAST(0x0000A64000C13AA9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 44, 442016711, 1, 10000, 1, 0, CAST(0x0000A64000C15D32 AS DateTime), 0, CAST(0x0000A64000C15D32 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 45, 452016711, 1, 10000, 1, 0, CAST(0x0000A64000C2B2C4 AS DateTime), 0, CAST(0x0000A64000C2B2C4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 46, 462016711, 1, 4500, 1, 0, CAST(0x0000A64000C2CDDA AS DateTime), 0, CAST(0x0000A64000C2CDDA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 47, 472016711, 1, 20000, 1, 0, CAST(0x0000A64000CAFE2D AS DateTime), 0, CAST(0x0000A64000CAFE2D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 48, 482016711, 1, 10000, 1, 0, CAST(0x0000A64000CBF2B8 AS DateTime), 0, CAST(0x0000A64000CBF2B8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 49, 492016711, 1, 10000, 1, 0, CAST(0x0000A64000D28D3C AS DateTime), 0, CAST(0x0000A64000D28D3C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 50, 502016711, 1, 5000, 1, 0, CAST(0x0000A64000D536F5 AS DateTime), 0, CAST(0x0000A64000D536F5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 51, 512016711, 1, 5000, 1, 0, CAST(0x0000A64000D630F6 AS DateTime), 0, CAST(0x0000A64000D630F6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 52, 522016711, 1, 5000, 1, 0, CAST(0x0000A64000D8BDEA AS DateTime), 0, CAST(0x0000A64000D8BDEA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 53, 532016711, 1, 50000, 1, 0, CAST(0x0000A64000DA86ED AS DateTime), 0, CAST(0x0000A64000DA86ED AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 54, 542016711, 1, 5000, 1, 0, CAST(0x0000A64000DABE25 AS DateTime), 0, CAST(0x0000A64000DABE25 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 55, 552016711, 1, 10000, 1, 0, CAST(0x0000A64000E181CB AS DateTime), 0, CAST(0x0000A64000E181CB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 56, 562016711, 1, 20000, 1, 0, CAST(0x0000A64000E2C5EE AS DateTime), 0, CAST(0x0000A64000E2C5EE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 57, 572016711, 1, 10000, 1, 0, CAST(0x0000A64000E2FEE9 AS DateTime), 0, CAST(0x0000A64000E2FEE9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 58, 582016711, 1, 20000, 1, 0, CAST(0x0000A64000E71F1A AS DateTime), 0, CAST(0x0000A64000E71F1A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 59, 592016711, 1, 5000, 1, 0, CAST(0x0000A64000EB892A AS DateTime), 0, CAST(0x0000A64000EB892A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 60, 602016711, 1, 3500, 1, 0, CAST(0x0000A64000EE4237 AS DateTime), 0, CAST(0x0000A64000EE4237 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 61, 612016711, 1, 10000, 1, 0, CAST(0x0000A64000EF7153 AS DateTime), 0, CAST(0x0000A64000EF7153 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 62, 622016711, 1, 20000, 1, 0, CAST(0x0000A64000F04A6F AS DateTime), 0, CAST(0x0000A64000F04A6F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 63, 632016711, 1, 20000, 1, 0, CAST(0x0000A64000F57400 AS DateTime), 0, CAST(0x0000A64000F57400 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 64, 642016711, 1, 9000, 1, 0, CAST(0x0000A64000F766C7 AS DateTime), 0, CAST(0x0000A64000F766C7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 65, 652016711, 1, 4000, 1, 0, CAST(0x0000A64000FB797C AS DateTime), 0, CAST(0x0000A64000FB797C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 66, 662016711, 1, 3500, 1, 0, CAST(0x0000A64000FDB833 AS DateTime), 0, CAST(0x0000A64000FDB833 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 67, 672016711, 1, 5000, 1, 0, CAST(0x0000A6400105575B AS DateTime), 0, CAST(0x0000A6400105575B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 68, 682016711, 1, 5000, 1, 0, CAST(0x0000A640010CE75E AS DateTime), 0, CAST(0x0000A640010CE75E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 69, 692016711, 1, 20000, 1, 0, CAST(0x0000A640010E77AC AS DateTime), 0, CAST(0x0000A640010E77AC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 70, 702016711, 1, 5000, 1, 0, CAST(0x0000A6400118F6F2 AS DateTime), 0, CAST(0x0000A6400118F6F2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 71, 712016711, 1, 6800, 1, 0, CAST(0x0000A640011DC133 AS DateTime), 0, CAST(0x0000A640011DC133 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 72, 722016711, 1, 5000, 1, 0, CAST(0x0000A640011DCA59 AS DateTime), 0, CAST(0x0000A640011DCA59 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 73, 732016711, 1, 10000, 1, 0, CAST(0x0000A6400122AB47 AS DateTime), 0, CAST(0x0000A6400122AB47 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 74, 742016711, 1, 5000, 1, 0, CAST(0x0000A6400124E08F AS DateTime), 0, CAST(0x0000A6400124E08F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 75, 752016712, 1, 10000, 1, 0, CAST(0x0000A641007686C8 AS DateTime), 0, CAST(0x0000A641007686C8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 76, 762016712, 1, 3500, 1, 0, CAST(0x0000A641007696BC AS DateTime), 0, CAST(0x0000A641007696BC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 77, 772016712, 1, 50000, 1, 0, CAST(0x0000A6410076A75D AS DateTime), 0, CAST(0x0000A6410076A75D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 78, 782016712, 1, 4000, 1, 0, CAST(0x0000A6410077F716 AS DateTime), 0, CAST(0x0000A6410077F716 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 79, 792016712, 1, 5000, 1, 0, CAST(0x0000A641007A4B24 AS DateTime), 0, CAST(0x0000A641007A4B24 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 80, 802016712, 1, 20000, 1, 0, CAST(0x0000A641007F72F9 AS DateTime), 0, CAST(0x0000A641007F72F9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 81, 812016712, 1, 5000, 1, 0, CAST(0x0000A641008164B2 AS DateTime), 0, CAST(0x0000A641008164B2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 82, 822016712, 1, 10000, 1, 0, CAST(0x0000A6410083D8AE AS DateTime), 0, CAST(0x0000A6410083D8AE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 83, 832016712, 1, 20000, 1, 0, CAST(0x0000A64100894D4A AS DateTime), 0, CAST(0x0000A64100894D4A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 84, 842016712, 1, 50000, 1, 0, CAST(0x0000A641008A717E AS DateTime), 0, CAST(0x0000A641008A717E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 85, 852016712, 1, 5000, 1, 0, CAST(0x0000A641008F095D AS DateTime), 0, CAST(0x0000A641008F095D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 86, 862016712, 1, 20000, 1, 0, CAST(0x0000A641008FD951 AS DateTime), 0, CAST(0x0000A641008FD951 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 87, 872016712, 1, 5000, 1, 0, CAST(0x0000A641009B8CC4 AS DateTime), 0, CAST(0x0000A641009B8CC4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 88, 882016712, 1, 5000, 1, 0, CAST(0x0000A641009CE3D1 AS DateTime), 0, CAST(0x0000A641009CE3D1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 89, 892016712, 1, 20000, 1, 0, CAST(0x0000A641009DF727 AS DateTime), 0, CAST(0x0000A641009DF727 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 90, 902016712, 1, 30000, 1, 0, CAST(0x0000A641009FC3F4 AS DateTime), 0, CAST(0x0000A641009FC3F4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (91, 91, 912016712, 1, 5000, 1, 0, CAST(0x0000A64100A22901 AS DateTime), 0, CAST(0x0000A64100A22901 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (92, 92, 922016712, 1, 5000, 1, 0, CAST(0x0000A64100A23D51 AS DateTime), 0, CAST(0x0000A64100A23D51 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (93, 93, 932016712, 1, 20000, 1, 0, CAST(0x0000A64100A25B21 AS DateTime), 0, CAST(0x0000A64100A25B21 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (94, 94, 942016712, 1, 50000, 1, 0, CAST(0x0000A64100A6D01A AS DateTime), 0, CAST(0x0000A64100A6D01A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 95, 952016712, 1, 10000, 1, 0, CAST(0x0000A64100A8CC34 AS DateTime), 0, CAST(0x0000A64100A8CC34 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 96, 962016712, 1, 3500, 1, 0, CAST(0x0000A64100AA78EC AS DateTime), 0, CAST(0x0000A64100AA78EC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 97, 972016712, 1, 5000, 1, 0, CAST(0x0000A64100ABC9E0 AS DateTime), 0, CAST(0x0000A64100ABC9E0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 98, 982016712, 1, 5000, 1, 0, CAST(0x0000A64100ABD7F6 AS DateTime), 0, CAST(0x0000A64100ABD7F6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 99, 992016712, 1, 5000, 1, 0, CAST(0x0000A64100AC3647 AS DateTime), 0, CAST(0x0000A64100AC3647 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 100, 1002016712, 1, 10000, 1, 0, CAST(0x0000A64100ADA212 AS DateTime), 0, CAST(0x0000A64100ADA212 AS DateTime), N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 101, 1012016712, 1, 10000, 1, 0, CAST(0x0000A64100ADC11C AS DateTime), 0, CAST(0x0000A64100ADC11C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 102, 1022016712, 1, 5000, 1, 0, CAST(0x0000A64100B03034 AS DateTime), 0, CAST(0x0000A64100B03034 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (103, 103, 1032016712, 1, 5000, 1, 0, CAST(0x0000A64100B509A8 AS DateTime), 0, CAST(0x0000A64100B509A8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (104, 104, 1042016712, 1, 50000, 1, 0, CAST(0x0000A64100B6ABB3 AS DateTime), 0, CAST(0x0000A64100B6ABB3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (105, 105, 1052016712, 1, 50000, 1, 0, CAST(0x0000A64100B869F7 AS DateTime), 0, CAST(0x0000A64100B869F7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (106, 106, 1062016712, 1, 5000, 1, 0, CAST(0x0000A64100C4B57B AS DateTime), 0, CAST(0x0000A64100C4B57B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (107, 107, 1072016712, 1, 5000, 1, 0, CAST(0x0000A64100C4EDB2 AS DateTime), 0, CAST(0x0000A64100C4EDB2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 108, 1082016712, 1, 5000, 1, 0, CAST(0x0000A64100C5123B AS DateTime), 0, CAST(0x0000A64100C5123B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 109, 1092016712, 1, 10000, 1, 0, CAST(0x0000A64100C5263B AS DateTime), 0, CAST(0x0000A64100C5263B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 110, 1102016712, 1, 20000, 1, 0, CAST(0x0000A64100C6BBFB AS DateTime), 0, CAST(0x0000A64100C6BBFB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 111, 1112016712, 1, 20000, 1, 0, CAST(0x0000A64100C6E040 AS DateTime), 0, CAST(0x0000A64100C6E040 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 112, 1122016712, 1, 20000, 1, 0, CAST(0x0000A64100C94ED2 AS DateTime), 0, CAST(0x0000A64100C94ED2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 113, 1132016712, 1, 4000, 1, 0, CAST(0x0000A64100CC3B77 AS DateTime), 0, CAST(0x0000A64100CC3B77 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 114, 1142016712, 1, 12000, 1, 0, CAST(0x0000A64100CD6412 AS DateTime), 0, CAST(0x0000A64100CD6412 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 115, 1152016712, 1, 10000, 1, 0, CAST(0x0000A64100D0BAB7 AS DateTime), 0, CAST(0x0000A64100D0BAB7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 116, 1162016712, 1, 5000, 1, 0, CAST(0x0000A64100D3824B AS DateTime), 0, CAST(0x0000A64100D3824B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 117, 1172016712, 1, 4000, 1, 0, CAST(0x0000A64100D5DB24 AS DateTime), 0, CAST(0x0000A64100D5DB24 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 118, 1182016712, 1, 3500, 1, 0, CAST(0x0000A64100E16888 AS DateTime), 0, CAST(0x0000A64100E16888 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 119, 1192016712, 1, 20000, 1, 0, CAST(0x0000A64100E2026D AS DateTime), 0, CAST(0x0000A64100E2026D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 120, 1202016712, 1, 20000, 1, 0, CAST(0x0000A64100E35445 AS DateTime), 0, CAST(0x0000A64100E35445 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 121, 1212016712, 1, 5000, 1, 0, CAST(0x0000A64100EABA13 AS DateTime), 0, CAST(0x0000A64100EABA13 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 122, 1222016712, 1, 20000, 1, 0, CAST(0x0000A64100EB846A AS DateTime), 0, CAST(0x0000A64100EB846A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (123, 123, 1232016712, 1, 10000, 1, 0, CAST(0x0000A64100EEC948 AS DateTime), 0, CAST(0x0000A64100EEC948 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (124, 124, 1242016712, 1, 10000, 1, 0, CAST(0x0000A64100F95224 AS DateTime), 0, CAST(0x0000A64100F95224 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (125, 125, 1252016712, 1, 4000, 1, 0, CAST(0x0000A64100FBB515 AS DateTime), 0, CAST(0x0000A64100FBB515 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (126, 126, 1262016712, 1, 10000, 1, 0, CAST(0x0000A64100FBDCF5 AS DateTime), 0, CAST(0x0000A64100FBDCF5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 127, 1272016712, 1, 4000, 1, 0, CAST(0x0000A64100FC24C4 AS DateTime), 0, CAST(0x0000A64100FC24C4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (128, 128, 1282016712, 1, 4000, 1, 0, CAST(0x0000A64100FC5AD5 AS DateTime), 0, CAST(0x0000A64100FC5AD5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (129, 129, 1292016712, 1, 3535, 1, 0, CAST(0x0000A641010106C9 AS DateTime), 0, CAST(0x0000A641010106C9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (130, 130, 1302016712, 1, 3500, 1, 0, CAST(0x0000A641010B0735 AS DateTime), 0, CAST(0x0000A641010B0735 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (131, 131, 1312016712, 1, 10000, 1, 0, CAST(0x0000A641010F8B0C AS DateTime), 0, CAST(0x0000A641010F8B0C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (132, 132, 1322016712, 1, 20000, 1, 0, CAST(0x0000A6410112926B AS DateTime), 0, CAST(0x0000A6410112926B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (133, 133, 1332016712, 1, 4000, 1, 0, CAST(0x0000A6410115A79E AS DateTime), 0, CAST(0x0000A6410115A79E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (134, 134, 1342016712, 1, 5000, 1, 0, CAST(0x0000A641011CA949 AS DateTime), 0, CAST(0x0000A641011CA949 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (135, 135, 1352016713, 1, 5000, 1, 0, CAST(0x0000A64200796F20 AS DateTime), 0, CAST(0x0000A64200796F20 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (136, 136, 1362016713, 1, 44000, 1, 0, CAST(0x0000A642007ADFFF AS DateTime), 0, CAST(0x0000A642007ADFFF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (137, 137, 1372016713, 1, 20000, 1, 0, CAST(0x0000A64200803E60 AS DateTime), 0, CAST(0x0000A64200803E60 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (138, 138, 1382016713, 1, 5000, 1, 0, CAST(0x0000A6420082F530 AS DateTime), 0, CAST(0x0000A6420082F530 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (139, 139, 1392016713, 1, 5000, 1, 0, CAST(0x0000A6420083DF89 AS DateTime), 0, CAST(0x0000A6420083DF89 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (140, 140, 1402016713, 1, 50000, 1, 0, CAST(0x0000A642008EB61F AS DateTime), 0, CAST(0x0000A642008EB61F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (141, 141, 1412016713, 1, 20000, 1, 0, CAST(0x0000A6420092C70D AS DateTime), 0, CAST(0x0000A6420092C70D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (142, 142, 1422016713, 1, 10000, 1, 0, CAST(0x0000A6420094448C AS DateTime), 0, CAST(0x0000A6420094448C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (143, 143, 1432016713, 1, 5000, 1, 0, CAST(0x0000A6420096DF4A AS DateTime), 0, CAST(0x0000A6420096DF4A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (144, 144, 1442016713, 1, 20000, 1, 0, CAST(0x0000A64200996E11 AS DateTime), 0, CAST(0x0000A64200996E11 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (145, 145, 1452016713, 1, 50000, 1, 0, CAST(0x0000A64200A022F8 AS DateTime), 0, CAST(0x0000A64200A022F8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (146, 146, 1462016713, 1, 5000, 1, 0, CAST(0x0000A64200A4D346 AS DateTime), 0, CAST(0x0000A64200A4D346 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (147, 147, 1472016713, 1, 4500, 1, 0, CAST(0x0000A64200A597DB AS DateTime), 0, CAST(0x0000A64200A597DB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (148, 148, 1482016713, 1, 5000, 1, 0, CAST(0x0000A64200A5B03A AS DateTime), 0, CAST(0x0000A64200A5B03A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (149, 149, 1492016713, 1, 10000, 1, 0, CAST(0x0000A64200A62264 AS DateTime), 0, CAST(0x0000A64200A62264 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (150, 150, 1502016713, 1, 4000, 1, 0, CAST(0x0000A64200A69087 AS DateTime), 0, CAST(0x0000A64200A69087 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (151, 151, 1512016713, 1, 10000, 1, 0, CAST(0x0000A64200A6B87D AS DateTime), 0, CAST(0x0000A64200A6B87D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (152, 152, 1522016713, 1, 10000, 1, 0, CAST(0x0000A64200A76B23 AS DateTime), 0, CAST(0x0000A64200A76B23 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (153, 153, 1532016713, 1, 5000, 1, 0, CAST(0x0000A64200AE44E7 AS DateTime), 0, CAST(0x0000A64200AE44E7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (154, 154, 1542016713, 1, 5000, 1, 0, CAST(0x0000A64200AED484 AS DateTime), 0, CAST(0x0000A64200AED484 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (155, 155, 1552016713, 1, 5000, 1, 0, CAST(0x0000A64200AFF235 AS DateTime), 0, CAST(0x0000A64200AFF235 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (156, 156, 1562016713, 1, 9000, 1, 0, CAST(0x0000A64200B1E7C6 AS DateTime), 0, CAST(0x0000A64200B1E7C6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (157, 157, 1572016713, 1, 20000, 1, 0, CAST(0x0000A64200B23B1A AS DateTime), 0, CAST(0x0000A64200B23B1A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (158, 158, 1582016713, 1, 20000, 1, 0, CAST(0x0000A64200B27D0E AS DateTime), 0, CAST(0x0000A64200B27D0E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (159, 159, 1592016713, 1, 10000, 1, 0, CAST(0x0000A64200B2A927 AS DateTime), 0, CAST(0x0000A64200B2A927 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (160, 160, 1602016713, 1, 5000, 1, 0, CAST(0x0000A64200B53B33 AS DateTime), 0, CAST(0x0000A64200B53B33 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (161, 161, 1612016713, 1, 5000, 1, 0, CAST(0x0000A64200B5549C AS DateTime), 0, CAST(0x0000A64200B5549C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (162, 162, 1622016713, 1, 20000, 1, 0, CAST(0x0000A64200B566FC AS DateTime), 0, CAST(0x0000A64200B566FC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (163, 163, 1632016713, 1, 5000, 1, 0, CAST(0x0000A64200B576BF AS DateTime), 0, CAST(0x0000A64200B576BF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (164, 164, 1642016713, 1, 20000, 1, 0, CAST(0x0000A64200B8CB4D AS DateTime), 0, CAST(0x0000A64200B8CB4D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (165, 165, 1652016713, 1, 20000, 1, 0, CAST(0x0000A64200BB95E2 AS DateTime), 0, CAST(0x0000A64200BB95E2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (166, 166, 1662016713, 1, 20000, 1, 0, CAST(0x0000A64200C60457 AS DateTime), 0, CAST(0x0000A64200C60457 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (167, 167, 1672016713, 1, 20000, 1, 0, CAST(0x0000A64200C65CCA AS DateTime), 0, CAST(0x0000A64200C65CCA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (168, 168, 1682016713, 1, 15000, 1, 0, CAST(0x0000A64200C8E3AC AS DateTime), 0, CAST(0x0000A64200C8E3AC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (169, 169, 1692016713, 1, 20000, 1, 0, CAST(0x0000A64200C9D7E1 AS DateTime), 0, CAST(0x0000A64200C9D7E1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (170, 170, 1702016713, 1, 8000, 1, 0, CAST(0x0000A64200D14301 AS DateTime), 0, CAST(0x0000A64200D14301 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (171, 171, 1712016713, 1, 4000, 1, 0, CAST(0x0000A64200D3C4DC AS DateTime), 0, CAST(0x0000A64200D3C4DC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (172, 172, 1722016713, 1, 8000, 1, 0, CAST(0x0000A64200D4BE6D AS DateTime), 0, CAST(0x0000A64200D4BE6D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (173, 173, 1732016713, 1, 3500, 1, 0, CAST(0x0000A64200D6B459 AS DateTime), 0, CAST(0x0000A64200D6B459 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (174, 174, 1742016713, 1, 50000, 1, 0, CAST(0x0000A64200EC8C91 AS DateTime), 0, CAST(0x0000A64200EC8C91 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (175, 175, 1752016713, 1, 4000, 1, 0, CAST(0x0000A64200F0E5C1 AS DateTime), 0, CAST(0x0000A64200F0E5C1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (176, 176, 1762016713, 1, 20000, 1, 0, CAST(0x0000A64200F7D560 AS DateTime), 0, CAST(0x0000A64200F7D560 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (177, 177, 1772016713, 1, 3500, 1, 0, CAST(0x0000A64200FB329C AS DateTime), 0, CAST(0x0000A64200FB329C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (178, 178, 1782016713, 1, 50000, 1, 0, CAST(0x0000A64200FD6CA9 AS DateTime), 0, CAST(0x0000A64200FD6CA9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (179, 179, 1792016713, 1, 4000, 1, 0, CAST(0x0000A64200FDA5F2 AS DateTime), 0, CAST(0x0000A64200FDA5F2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (180, 180, 1802016713, 1, 4000, 1, 0, CAST(0x0000A64201036D9F AS DateTime), 0, CAST(0x0000A64201036D9F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (181, 181, 1812016713, 1, 10000, 1, 0, CAST(0x0000A642010FC702 AS DateTime), 0, CAST(0x0000A642010FC702 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (182, 182, 1822016713, 1, 10000, 1, 0, CAST(0x0000A64201135701 AS DateTime), 0, CAST(0x0000A64201135701 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (183, 183, 1832016713, 1, 5000, 1, 0, CAST(0x0000A6420114DF2B AS DateTime), 0, CAST(0x0000A6420114DF2B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (184, 184, 1842016713, 1, 3000, 1, 0, CAST(0x0000A64201168A0A AS DateTime), 0, CAST(0x0000A64201168A0A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (185, 185, 1852016713, 1, 10000, 1, 0, CAST(0x0000A6420118EAEF AS DateTime), 0, CAST(0x0000A6420118EAEF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (186, 186, 1862016713, 1, 8000, 1, 0, CAST(0x0000A642011AE2CA AS DateTime), 0, CAST(0x0000A642011AE2CA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (187, 187, 1872016713, 1, 20000, 1, 0, CAST(0x0000A642011BF595 AS DateTime), 0, CAST(0x0000A642011BF595 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (188, 188, 1882016713, 1, 10000, 1, 0, CAST(0x0000A642011DDB5F AS DateTime), 0, CAST(0x0000A642011DDB5F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (189, 189, 1892016713, 1, 5000, 1, 0, CAST(0x0000A642011E18BE AS DateTime), 0, CAST(0x0000A642011E18BE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (190, 190, 1902016713, 1, 10000, 1, 0, CAST(0x0000A642011E30A4 AS DateTime), 0, CAST(0x0000A642011E30A4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (191, 191, 1912016713, 1, 5000, 1, 0, CAST(0x0000A642011E522D AS DateTime), 0, CAST(0x0000A642011E522D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (192, 192, 1922016713, 1, 12000, 1, 0, CAST(0x0000A6420121BB5A AS DateTime), 0, CAST(0x0000A6420121BB5A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (193, 193, 1932016714, 1, 4000, 1, 0, CAST(0x0000A643007AAE93 AS DateTime), 0, CAST(0x0000A643007AAE94 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (194, 194, 1942016714, 1, 20000, 1, 0, CAST(0x0000A643007ADC8C AS DateTime), 0, CAST(0x0000A643007ADC8C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (195, 195, 1952016714, 1, 5000, 1, 0, CAST(0x0000A64300820C13 AS DateTime), 0, CAST(0x0000A64300820C13 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (196, 196, 1962016714, 1, 5000, 1, 0, CAST(0x0000A6430082E562 AS DateTime), 0, CAST(0x0000A6430082E562 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (197, 197, 1972016714, 1, 10000, 1, 0, CAST(0x0000A6430082FFEE AS DateTime), 0, CAST(0x0000A6430082FFEE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (198, 198, 1982016714, 1, 5000, 1, 0, CAST(0x0000A6430088FC1E AS DateTime), 0, CAST(0x0000A6430088FC1E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (199, 199, 1992016714, 1, 50000, 1, 0, CAST(0x0000A643008A6B9C AS DateTime), 0, CAST(0x0000A643008A6B9C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (200, 200, 2002016714, 1, 3500, 1, 0, CAST(0x0000A643008BF484 AS DateTime), 0, CAST(0x0000A643008BF484 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (201, 201, 2012016714, 1, 10000, 1, 0, CAST(0x0000A643008ED743 AS DateTime), 0, CAST(0x0000A643008ED743 AS DateTime), N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (202, 202, 2022016714, 1, 50000, 1, 0, CAST(0x0000A64300908DA4 AS DateTime), 0, CAST(0x0000A64300908DA4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (203, 203, 2032016714, 1, 5000, 1, 0, CAST(0x0000A6430093261A AS DateTime), 0, CAST(0x0000A6430093261A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (204, 204, 2042016714, 1, 5000, 1, 0, CAST(0x0000A64300946D0A AS DateTime), 0, CAST(0x0000A64300946D0A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (205, 205, 2052016714, 1, 4000, 1, 0, CAST(0x0000A64300967337 AS DateTime), 0, CAST(0x0000A64300967337 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (206, 206, 2062016714, 1, 5000, 1, 0, CAST(0x0000A6430096861C AS DateTime), 0, CAST(0x0000A6430096861C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (207, 207, 2072016714, 1, 5000, 1, 0, CAST(0x0000A64300976334 AS DateTime), 0, CAST(0x0000A64300976334 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (208, 208, 2082016714, 1, 5000, 1, 0, CAST(0x0000A6430097A7F8 AS DateTime), 0, CAST(0x0000A6430097A7F8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (209, 209, 2092016714, 1, 4500, 1, 0, CAST(0x0000A643009A5B65 AS DateTime), 0, CAST(0x0000A643009A5B65 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (210, 210, 2102016714, 1, 11000, 1, 0, CAST(0x0000A643009DE6D2 AS DateTime), 0, CAST(0x0000A643009DE6D3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (211, 211, 2112016714, 1, 20000, 1, 0, CAST(0x0000A643009E0C8F AS DateTime), 0, CAST(0x0000A643009E0C8F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (212, 212, 2122016714, 1, 20000, 1, 0, CAST(0x0000A64300A05A83 AS DateTime), 0, CAST(0x0000A64300A05A83 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (213, 213, 2132016714, 1, 20000, 1, 0, CAST(0x0000A64300A06E47 AS DateTime), 0, CAST(0x0000A64300A06E47 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (214, 214, 2142016714, 1, 20000, 1, 0, CAST(0x0000A64300A28876 AS DateTime), 0, CAST(0x0000A64300A28876 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[PAYMENT_INVOICE_HISTORY] OFF
/****** Object:  Table [dbo].[ORDER_OPEN_ITEM_ALL]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_OPEN_ITEM_ALL](
	[iD] [int] IDENTITY(1,1) NOT NULL,
	[dynID] [int] NULL,
	[ItemNameShort] [nvarchar](50) NULL,
	[ItemNameDesc] [nvarchar](50) NULL,
	[UnitPrice] [int] NULL,
	[PrinterID] [int] NULL,
	[PrintType] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_ORDER_OPEN_ITEM_ALL] PRIMARY KEY CLUSTERED 
(
	[iD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_OPEN_ITEM]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_OPEN_ITEM](
	[dynID] [int] IDENTITY(1,1) NOT NULL,
	[ItemNameShort] [nvarchar](50) NULL,
	[ItemNameDesc] [nvarchar](50) NULL,
	[UnitPrice] [int] NULL,
	[PrinterID] [int] NULL,
	[PrintType] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [date] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_Order_Open_Item] PRIMARY KEY CLUSTERED 
(
	[dynID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER_OPEN_ITEM] ON
INSERT [dbo].[ORDER_OPEN_ITEM] ([dynID], [ItemNameShort], [ItemNameDesc], [UnitPrice], [PrinterID], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'Ko Da', N'Ko Da', 1000, 0, 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ORDER_OPEN_ITEM] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL_MODIFIRE_DATE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE](
	[OrderModifireID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailID] [int] NOT NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[KeyModi] [int] NULL,
	[ModifireID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_ORDER_DETAIL_MODIFIRE_DATE] PRIMARY KEY CLUSTERED 
(
	[OrderModifireID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ON
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 0, N'12016714', 1, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6430078E242 AS DateTime), 0, CAST(0x0000A6430078E242 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 0, N'32016714', 3, 76, 3, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A643009230C4 AS DateTime), 0, CAST(0x0000A643009230C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 0, N'62016714', 6, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300B8481D AS DateTime), 0, CAST(0x0000A64300B8481D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 0, N'72016714', 7, 84, 2, 7, 0, 500, 1, 4500, 0, 0, 0, CAST(0x0000A64300BB06EE AS DateTime), 0, CAST(0x0000A64300BB06EE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 0, N'82016714', 8, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300BB1139 AS DateTime), 0, CAST(0x0000A64300BB1139 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 0, N'92016714', 9, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300BB2DAC AS DateTime), 0, CAST(0x0000A64300BB2DAC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 0, N'92016714', 9, 76, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64300BB2DAC AS DateTime), 0, CAST(0x0000A64300BB2DAC AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL_MODIFIRE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL_MODIFIRE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderModifireID] [int] NOT NULL,
	[OrderDetailID] [int] NOT NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[KeyModi] [int] NULL,
	[ModifireID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_ORDER_DETAIL_MODIFIRE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ON
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 0, N'12016710', 1, 77, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F00F4B858 AS DateTime), 0, CAST(0x0000A63F00F4B858 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, 0, N'12016710', 1, 77, 2, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F00F4B858 AS DateTime), 0, CAST(0x0000A63F00F4B858 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 3, 0, N'72016710', 7, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F01071D6A AS DateTime), 0, CAST(0x0000A63F01071D6A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 4, 0, N'82016710', 8, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F01083B8E AS DateTime), 0, CAST(0x0000A63F01083B8E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 5, 0, N'102016710', 10, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F010AB947 AS DateTime), 0, CAST(0x0000A63F010AB947 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 6, 0, N'132016710', 13, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A63F0113AAC3 AS DateTime), 0, CAST(0x0000A63F0113AAC3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 7, 0, N'152016711', 15, 76, 3, 9, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A640008F9116 AS DateTime), 0, CAST(0x0000A640008F9116 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 8, 0, N'222016711', 22, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000AA7CB0 AS DateTime), 0, CAST(0x0000A64000AA7CB0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 9, 0, N'282016711', 28, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64000D04FCE AS DateTime), 0, CAST(0x0000A64000D04FCE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 10, 0, N'382016711', 38, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64001227480 AS DateTime), 0, CAST(0x0000A64001227480 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 1, 0, N'12016712', 1, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A641008F934C AS DateTime), 0, CAST(0x0000A641008F934C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 2, 0, N'82016712', 8, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100B564F3 AS DateTime), 0, CAST(0x0000A64100B564F3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 3, 0, N'92016712', 9, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64100B59600 AS DateTime), 0, CAST(0x0000A64100B59600 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 5, 0, N'102016712', 10, 115, 3, 0, 0, 1000, 0, 5000, 0, 1, 0, CAST(0x0000A64100C42843 AS DateTime), 0, CAST(0x0000A64100C42843 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 4, 0, N'42016713', 4, 78, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642008E2C0E AS DateTime), 0, CAST(0x0000A642008E2C0E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 5, 0, N'22016713', 2, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642009D02BD AS DateTime), 0, CAST(0x0000A642009D02BD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 6, 0, N'92016713', 9, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200AB1572 AS DateTime), 0, CAST(0x0000A64200AB1572 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 8, 0, N'122016713', 12, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200C1840F AS DateTime), 0, CAST(0x0000A64200C1840F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 9, 0, N'122016713', 12, 76, 3, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200C1840F AS DateTime), 0, CAST(0x0000A64200C1840F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 10, 0, N'172016713', 17, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200D18D09 AS DateTime), 0, CAST(0x0000A64200D18D09 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 11, 0, N'172016713', 17, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200D18D09 AS DateTime), 0, CAST(0x0000A64200D18D09 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 12, 0, N'182016713', 18, 78, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A64200E8F2F8 AS DateTime), 0, CAST(0x0000A64200E8F2F8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 14, 0, N'232016713', 23, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A642010DCE53 AS DateTime), 0, CAST(0x0000A642010DCE53 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_MODIFIRE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL_DATE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL_DATE](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[ProductID] [int] NOT NULL,
	[KeyItem] [int] NULL,
	[Status] [int] NOT NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[PrintType] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_ORDER_DETAIL_DATE] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_DATE] ON
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (194, 1, N'12016714', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6430078E23B AS DateTime), 0, CAST(0x0000A6430078E23B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (195, 2, N'22016714', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A643008A9DB1 AS DateTime), 0, CAST(0x0000A643008A9DB1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (196, 2, N'22016714', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A643008A9DB1 AS DateTime), 0, CAST(0x0000A643008A9DB1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (197, 2, N'22016714', 14, 3, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A643008A9DB1 AS DateTime), 0, CAST(0x0000A643008A9DB1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (200, 3, N'32016714', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A643009230C0 AS DateTime), 0, CAST(0x0000A643009230C0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (201, 3, N'32016714', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A643009230C4 AS DateTime), 0, CAST(0x0000A643009230C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (202, 3, N'32016714', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A643009230C4 AS DateTime), 0, CAST(0x0000A643009230C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (203, 4, N'42016714', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64300AEBDF7 AS DateTime), 0, CAST(0x0000A64300AEBDF8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (210, 5, N'52016714', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64300B44D41 AS DateTime), 0, CAST(0x0000A64300B44D41 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (211, 5, N'52016714', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64300B44D41 AS DateTime), 0, CAST(0x0000A64300B44D41 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (212, 6, N'62016714', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64300B84814 AS DateTime), 0, CAST(0x0000A64300B84814 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (213, 6, N'62016714', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64300B84814 AS DateTime), 0, CAST(0x0000A64300B84814 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (214, 6, N'62016714', 147, 3, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A64300B84814 AS DateTime), 0, CAST(0x0000A64300B84814 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (215, 6, N'62016714', 72, 4, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64300B84814 AS DateTime), 0, CAST(0x0000A64300B84814 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (216, 6, N'62016714', 69, 5, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64300B84814 AS DateTime), 0, CAST(0x0000A64300B84814 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (217, 6, N'62016714', 115, 6, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64300B84814 AS DateTime), 0, CAST(0x0000A64300B84814 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (218, 7, N'72016714', 84, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64300BB06EC AS DateTime), 0, CAST(0x0000A64300BB06EC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (219, 8, N'82016714', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64300BB1139 AS DateTime), 0, CAST(0x0000A64300BB1139 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (220, 9, N'92016714', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64300BB2DAC AS DateTime), 0, CAST(0x0000A64300BB2DAC AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_DATE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[ProductID] [int] NOT NULL,
	[KeyItem] [int] NULL,
	[Status] [int] NOT NULL,
	[Price] [float] NULL,
	[Qty] [float] NULL,
	[Total] [float] NULL,
	[Seat] [int] NULL,
	[DynId] [int] NULL,
	[PrintType] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_ORDER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL] ON
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 1, N'1201679', 12, 1, 0, 8000, 1, 8000, 0, 0, 0, 0, CAST(0x0000A63E0164B522 AS DateTime), 0, CAST(0x0000A63E0164B523 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, 1, N'1201679', 2, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E0164B523 AS DateTime), 0, CAST(0x0000A63E0164B523 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 3, 2, N'2201679', 58, 1, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E0164FEFF AS DateTime), 0, CAST(0x0000A63E0164FEFF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 4, 2, N'2201679', 63, 2, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E0164FEFF AS DateTime), 0, CAST(0x0000A63E0164FEFF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 5, 2, N'2201679', 61, 3, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E0164FEFF AS DateTime), 0, CAST(0x0000A63E0164FEFF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 6, 2, N'2201679', 65, 4, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E0164FEFF AS DateTime), 0, CAST(0x0000A63E0164FEFF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 1, 1, N'12016710', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F00F4B851 AS DateTime), 0, CAST(0x0000A63F00F4B852 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 2, 1, N'12016710', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F00F4B852 AS DateTime), 0, CAST(0x0000A63F00F4B852 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 3, 2, N'22016710', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F00F5154A AS DateTime), 0, CAST(0x0000A63F00F5154A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 4, 2, N'22016710', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F00F5154A AS DateTime), 0, CAST(0x0000A63F00F5154A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 8, 3, N'32016710', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F00FAB134 AS DateTime), 0, CAST(0x0000A63F00FAB134 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 9, 3, N'32016710', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A63F00FAB134 AS DateTime), 0, CAST(0x0000A63F00FAB134 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 10, 3, N'32016710', 17, 3, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63F00FAB134 AS DateTime), 0, CAST(0x0000A63F00FAB134 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 11, 3, N'32016710', 81, 4, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63F00FAB134 AS DateTime), 0, CAST(0x0000A63F00FAB134 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 12, 4, N'42016710', 23, 1, 0, 6500, 1, 6500, 0, 0, 0, 0, CAST(0x0000A63F00FAF6A3 AS DateTime), 0, CAST(0x0000A63F00FAF6A3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 13, 4, N'42016710', 23, 2, 0, 6500, 1, 6500, 0, 0, 0, 0, CAST(0x0000A63F00FAF6A3 AS DateTime), 0, CAST(0x0000A63F00FAF6A3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 14, 4, N'42016710', 2, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63F00FAF6A3 AS DateTime), 0, CAST(0x0000A63F00FAF6A3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 15, 4, N'42016710', 12, 4, 0, 8000, 1, 8000, 0, 0, 0, 0, CAST(0x0000A63F00FAF6A3 AS DateTime), 0, CAST(0x0000A63F00FAF6A3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 16, 4, N'42016710', 12, 5, 0, 8000, 1, 8000, 0, 0, 0, 0, CAST(0x0000A63F00FAF6A3 AS DateTime), 0, CAST(0x0000A63F00FAF6A3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 17, 5, N'52016710', 84, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A63F00FDE6E0 AS DateTime), 0, CAST(0x0000A63F00FDE6E0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 18, 5, N'52016710', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F00FDE6E0 AS DateTime), 0, CAST(0x0000A63F00FDE6E0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 19, 6, N'62016710', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F00FFD697 AS DateTime), 0, CAST(0x0000A63F00FFD697 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 20, 7, N'72016710', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F01071D6A AS DateTime), 0, CAST(0x0000A63F01071D6A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 21, 8, N'82016710', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F01083B8D AS DateTime), 0, CAST(0x0000A63F01083B8D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 22, 8, N'82016710', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A63F01083B8D AS DateTime), 0, CAST(0x0000A63F01083B8D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 23, 9, N'92016710', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A63F010906E9 AS DateTime), 0, CAST(0x0000A63F010906E9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 24, 10, N'102016710', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F010AB946 AS DateTime), 0, CAST(0x0000A63F010AB946 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 25, 11, N'112016710', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F010E3FE7 AS DateTime), 0, CAST(0x0000A63F010E3FE7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 26, 12, N'122016710', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F01104593 AS DateTime), 0, CAST(0x0000A63F01104593 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 27, 13, N'132016710', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63F0113AAC2 AS DateTime), 0, CAST(0x0000A63F0113AAC2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 28, 14, N'142016711', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000851F1E AS DateTime), 0, CAST(0x0000A64000851F1E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 30, 15, N'152016711', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A640008F9116 AS DateTime), 0, CAST(0x0000A640008F9116 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 31, 15, N'152016711', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A640008F9116 AS DateTime), 0, CAST(0x0000A640008F9116 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 32, 15, N'152016711', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A640008F9116 AS DateTime), 0, CAST(0x0000A640008F9116 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 33, 15, N'152016711', 76, 4, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A640008F9116 AS DateTime), 0, CAST(0x0000A640008F9116 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 34, 15, N'152016711', 76, 5, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A640008F9116 AS DateTime), 0, CAST(0x0000A640008F9116 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 35, 16, N'162016711', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000915C79 AS DateTime), 0, CAST(0x0000A64000915C79 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 36, 17, N'172016711', 92, 1, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A640009907E5 AS DateTime), 0, CAST(0x0000A640009907E5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 37, 18, N'182016711', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000A24795 AS DateTime), 0, CAST(0x0000A64000A24795 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 38, 19, N'192016711', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000A2690E AS DateTime), 0, CAST(0x0000A64000A2690E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 39, 19, N'192016711', 68, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000A2690E AS DateTime), 0, CAST(0x0000A64000A2690E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 40, 20, N'202016711', 84, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000A27DCE AS DateTime), 0, CAST(0x0000A64000A27DCE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 41, 21, N'212016711', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000A32274 AS DateTime), 0, CAST(0x0000A64000A32274 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 42, 22, N'222016711', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000AA7CAC AS DateTime), 0, CAST(0x0000A64000AA7CAC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 43, 23, N'232016711', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000B23E70 AS DateTime), 0, CAST(0x0000A64000B23E70 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 44, 24, N'242016711', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000BB16BB AS DateTime), 0, CAST(0x0000A64000BB16BB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 45, 25, N'252016711', 68, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000C30686 AS DateTime), 0, CAST(0x0000A64000C30686 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 46, 26, N'262016711', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000C435B4 AS DateTime), 0, CAST(0x0000A64000C435B4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 47, 26, N'262016711', 68, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000C435B4 AS DateTime), 0, CAST(0x0000A64000C435B4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 48, 27, N'272016711', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000CC0EE4 AS DateTime), 0, CAST(0x0000A64000CC0EE4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 49, 28, N'282016711', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000D04FCD AS DateTime), 0, CAST(0x0000A64000D04FCD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 50, 28, N'282016711', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000D04FCD AS DateTime), 0, CAST(0x0000A64000D04FCD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 51, 29, N'292016711', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000D1EAE7 AS DateTime), 0, CAST(0x0000A64000D1EAE7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 52, 29, N'292016711', 92, 2, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A64000D1EAE7 AS DateTime), 0, CAST(0x0000A64000D1EAE7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 53, 29, N'292016711', 50, 3, 0, 5800, 1, 5800, 0, 0, 0, 0, CAST(0x0000A64000D1EAE7 AS DateTime), 0, CAST(0x0000A64000D1EAE7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 54, 30, N'302016711', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000DDE8D2 AS DateTime), 0, CAST(0x0000A64000DDE8D2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 55, 30, N'302016711', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000DDE8D2 AS DateTime), 0, CAST(0x0000A64000DDE8D2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 56, 30, N'302016711', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000DDE8D2 AS DateTime), 0, CAST(0x0000A64000DDE8D2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 62, 32, N'322016711', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000EB0822 AS DateTime), 0, CAST(0x0000A64000EB0822 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 63, 31, N'312016711', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000EB3274 AS DateTime), 0, CAST(0x0000A64000EB3274 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 64, 31, N'312016711', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000EB3274 AS DateTime), 0, CAST(0x0000A64000EB3274 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 65, 31, N'312016711', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64000EB3274 AS DateTime), 0, CAST(0x0000A64000EB3274 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 66, 31, N'312016711', 69, 4, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000EB3274 AS DateTime), 0, CAST(0x0000A64000EB3274 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 68, 33, N'332016711', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000F55CF8 AS DateTime), 0, CAST(0x0000A64000F55CF8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 69, 33, N'332016711', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64000F55CFC AS DateTime), 0, CAST(0x0000A64000F55CFC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 70, 34, N'342016711', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A640010498A2 AS DateTime), 0, CAST(0x0000A640010498A2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 71, 34, N'342016711', 136, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A640010498A2 AS DateTime), 0, CAST(0x0000A640010498A2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 72, 35, N'352016711', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64001049FF2 AS DateTime), 0, CAST(0x0000A64001049FF2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 73, 36, N'362016711', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6400114FC0B AS DateTime), 0, CAST(0x0000A6400114FC0B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 75, 37, N'372016711', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A640011594DA AS DateTime), 0, CAST(0x0000A640011594DA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 76, 37, N'372016711', 92, 2, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A640011594DA AS DateTime), 0, CAST(0x0000A640011594DA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 77, 38, N'382016711', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6400122747F AS DateTime), 0, CAST(0x0000A6400122747F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 78, 1, N'12016712', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A641008F9348 AS DateTime), 0, CAST(0x0000A641008F9348 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 79, 1, N'12016712', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A641008F9349 AS DateTime), 0, CAST(0x0000A641008F9349 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 80, 1, N'12016712', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A641008F9349 AS DateTime), 0, CAST(0x0000A641008F9349 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 81, 1, N'12016712', 77, 4, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A641008F9349 AS DateTime), 0, CAST(0x0000A641008F9349 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 82, 1, N'12016712', 77, 5, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A641008F9349 AS DateTime), 0, CAST(0x0000A641008F9349 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 85, 2, N'22016712', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100990E4F AS DateTime), 0, CAST(0x0000A64100990E4F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 86, 2, N'22016712', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100990E4F AS DateTime), 0, CAST(0x0000A64100990E4F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 87, 2, N'22016712', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100990E4F AS DateTime), 0, CAST(0x0000A64100990E4F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 89, 3, N'32016712', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A641009F7582 AS DateTime), 0, CAST(0x0000A641009F7582 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 90, 3, N'32016712', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A641009F7582 AS DateTime), 0, CAST(0x0000A641009F7582 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 91, 3, N'32016712', 77, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A641009F7582 AS DateTime), 0, CAST(0x0000A641009F7582 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 92, 4, N'42016712', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100A6DA17 AS DateTime), 0, CAST(0x0000A64100A6DA17 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 93, 5, N'52016712', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100A6E1EE AS DateTime), 0, CAST(0x0000A64100A6E1EE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 94, 6, N'62016712', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100A9F142 AS DateTime), 0, CAST(0x0000A64100A9F142 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 95, 7, N'72016712', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100ADCBA2 AS DateTime), 0, CAST(0x0000A64100ADCBA2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 96, 8, N'82016712', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100B564F3 AS DateTime), 0, CAST(0x0000A64100B564F3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 97, 8, N'82016712', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100B564F3 AS DateTime), 0, CAST(0x0000A64100B564F3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 98, 9, N'92016712', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100B59600 AS DateTime), 0, CAST(0x0000A64100B59600 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (91, 102, 11, N'112016712', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100BE3C3B AS DateTime), 0, CAST(0x0000A64100BE3C3B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (92, 103, 12, N'122016712', 68, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100C05609 AS DateTime), 0, CAST(0x0000A64100C05609 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (93, 104, 10, N'102016712', 68, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100C42826 AS DateTime), 0, CAST(0x0000A64100C42826 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (94, 105, 10, N'102016712', 81, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64100C42826 AS DateTime), 0, CAST(0x0000A64100C42826 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 106, 10, N'102016712', 115, 3, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64100C42826 AS DateTime), 0, CAST(0x0000A64100C42826 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 107, 10, N'102016712', 67, 4, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100C42826 AS DateTime), 0, CAST(0x0000A64100C42826 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 108, 13, N'132016712', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100C43393 AS DateTime), 0, CAST(0x0000A64100C43393 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 109, 14, N'142016712', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100C84578 AS DateTime), 0, CAST(0x0000A64100C84578 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 110, 14, N'142016712', 37, 2, 0, 6000, 1, 6000, 0, 0, 0, 0, CAST(0x0000A64100C84578 AS DateTime), 0, CAST(0x0000A64100C84578 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 111, 15, N'152016712', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100D38B22 AS DateTime), 0, CAST(0x0000A64100D38B22 AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 117, 17, N'172016712', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64100E137FA AS DateTime), 0, CAST(0x0000A64100E137FA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 118, 17, N'172016712', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100E137FE AS DateTime), 0, CAST(0x0000A64100E137FE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (103, 119, 17, N'172016712', 64, 3, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A64100E137FE AS DateTime), 0, CAST(0x0000A64100E137FE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (104, 121, 18, N'182016712', 17, 1, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A64100E34754 AS DateTime), 0, CAST(0x0000A64100E34754 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (105, 122, 18, N'182016712', 120, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64100E34754 AS DateTime), 0, CAST(0x0000A64100E34754 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (106, 123, 19, N'192016712', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100EEA7ED AS DateTime), 0, CAST(0x0000A64100EEA7ED AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (107, 124, 19, N'192016712', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100EEA7ED AS DateTime), 0, CAST(0x0000A64100EEA7ED AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 125, 16, N'162016712', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A64100EEBFFC AS DateTime), 0, CAST(0x0000A64100EEBFFC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 126, 16, N'162016712', 80, 2, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A64100EEBFFC AS DateTime), 0, CAST(0x0000A64100EEBFFC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 127, 20, N'202016712', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100F47030 AS DateTime), 0, CAST(0x0000A64100F47030 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 128, 21, N'212016712', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64100FC8235 AS DateTime), 0, CAST(0x0000A64100FC8235 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 130, 22, N'222016712', 70, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A641010B3ED7 AS DateTime), 0, CAST(0x0000A641010B3ED7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 131, 22, N'222016712', 115, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A641010B3ED7 AS DateTime), 0, CAST(0x0000A641010B3ED7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 132, 1, N'12016713', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A6420082DF37 AS DateTime), 0, CAST(0x0000A6420082DF37 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 139, 3, N'32016713', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A642008E1376 AS DateTime), 0, CAST(0x0000A642008E1376 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 140, 4, N'42016713', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642008E2C0E AS DateTime), 0, CAST(0x0000A642008E2C0E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 141, 2, N'22016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642009D02BD AS DateTime), 0, CAST(0x0000A642009D02BD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 142, 2, N'22016713', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642009D02BD AS DateTime), 0, CAST(0x0000A642009D02BD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 143, 2, N'22016713', 77, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642009D02BD AS DateTime), 0, CAST(0x0000A642009D02BD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 144, 2, N'22016713', 76, 4, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642009D02BD AS DateTime), 0, CAST(0x0000A642009D02BD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 145, 2, N'22016713', 76, 5, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642009D02BD AS DateTime), 0, CAST(0x0000A642009D02BD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 146, 5, N'52016713', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A642009EF52B AS DateTime), 0, CAST(0x0000A642009EF52B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (123, 147, 5, N'52016713', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A642009EF52B AS DateTime), 0, CAST(0x0000A642009EF52B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (124, 148, 6, N'62016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642009F162A AS DateTime), 0, CAST(0x0000A642009F162A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (125, 149, 7, N'72016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200A5300B AS DateTime), 0, CAST(0x0000A64200A5300B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (126, 150, 8, N'82016713', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200A537C8 AS DateTime), 0, CAST(0x0000A64200A537C8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 151, 9, N'92016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200AB1572 AS DateTime), 0, CAST(0x0000A64200AB1572 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (128, 152, 10, N'102016713', 68, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200AB71BD AS DateTime), 0, CAST(0x0000A64200AB71BD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (129, 153, 11, N'112016713', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200B00B54 AS DateTime), 0, CAST(0x0000A64200B00B54 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (130, 158, 13, N'132016713', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200BCCBF7 AS DateTime), 0, CAST(0x0000A64200BCCBF7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (131, 159, 13, N'132016713', 84, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200BCCBF7 AS DateTime), 0, CAST(0x0000A64200BCCBF7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (132, 160, 13, N'132016713', 1, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A64200BCCBFC AS DateTime), 0, CAST(0x0000A64200BCCBFC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (133, 161, 12, N'122016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200C1840F AS DateTime), 0, CAST(0x0000A64200C1840F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (134, 162, 12, N'122016713', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200C1840F AS DateTime), 0, CAST(0x0000A64200C1840F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (135, 163, 12, N'122016713', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200C1840F AS DateTime), 0, CAST(0x0000A64200C1840F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (136, 164, 12, N'122016713', 69, 4, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200C1840F AS DateTime), 0, CAST(0x0000A64200C1840F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (137, 165, 14, N'142016713', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200C6159F AS DateTime), 0, CAST(0x0000A64200C6159F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (138, 166, 14, N'142016713', 67, 3, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A64200C6159F AS DateTime), 0, CAST(0x0000A64200C6159F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (139, 167, 15, N'152016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200C6BDAF AS DateTime), 0, CAST(0x0000A64200C6BDAF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (140, 170, 16, N'162016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200D15824 AS DateTime), 0, CAST(0x0000A64200D15824 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (141, 171, 16, N'162016713', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200D15824 AS DateTime), 0, CAST(0x0000A64200D15824 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (142, 172, 16, N'162016713', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200D15824 AS DateTime), 0, CAST(0x0000A64200D15824 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (143, 173, 16, N'162016713', 76, 4, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200D15829 AS DateTime), 0, CAST(0x0000A64200D15829 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (144, 174, 17, N'172016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200D18D09 AS DateTime), 0, CAST(0x0000A64200D18D09 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (145, 175, 17, N'172016713', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200D18D09 AS DateTime), 0, CAST(0x0000A64200D18D09 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (146, 176, 18, N'182016713', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64200E8F2F7 AS DateTime), 0, CAST(0x0000A64200E8F2F7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (147, 177, 19, N'192016713', 81, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64200FD3E8A AS DateTime), 0, CAST(0x0000A64200FD3E8A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (148, 178, 19, N'192016713', 81, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64200FD3E8A AS DateTime), 0, CAST(0x0000A64200FD3E8A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (149, 179, 20, N'202016713', 44, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64200FD601D AS DateTime), 0, CAST(0x0000A64200FD601D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (150, 180, 20, N'202016713', 44, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A64200FD601D AS DateTime), 0, CAST(0x0000A64200FD601D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (151, 181, 21, N'212016713', 117, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A642010330B1 AS DateTime), 0, CAST(0x0000A642010330B1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (152, 182, 22, N'222016713', 84, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A642010D98B5 AS DateTime), 0, CAST(0x0000A642010D98B5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (153, 183, 22, N'222016713', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642010D98B5 AS DateTime), 0, CAST(0x0000A642010D98B5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (154, 185, 23, N'232016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A642010DCE53 AS DateTime), 0, CAST(0x0000A642010DCE53 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (155, 186, 23, N'232016713', 80, 2, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A642010DCE53 AS DateTime), 0, CAST(0x0000A642010DCE53 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (156, 187, 24, N'242016713', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A642010DD7F7 AS DateTime), 0, CAST(0x0000A642010DD7F7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (157, 188, 25, N'252016713', 137, 1, 0, 6000, 1, 6000, 0, 0, 0, 0, CAST(0x0000A642011531BA AS DateTime), 0, CAST(0x0000A642011531BA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (158, 189, 25, N'252016713', 17, 2, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A642011531BA AS DateTime), 0, CAST(0x0000A642011531BA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (159, 190, 26, N'262016713', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A64201169FD5 AS DateTime), 0, CAST(0x0000A64201169FD5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (160, 192, 27, N'272016713', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6420118CB92 AS DateTime), 0, CAST(0x0000A6420118CB92 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (161, 193, 27, N'272016713', 147, 2, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A6420118CB92 AS DateTime), 0, CAST(0x0000A6420118CB92 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL] OFF
/****** Object:  Table [dbo].[ORDER_DATE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DATE](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[ClientID] [int] NULL,
	[FloorID] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[TotalAmount] [float] NULL,
	[Seat] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[ShiftID] [int] NULL,
	[PrinterNote] [int] NULL,
 CONSTRAINT [PK_ORDERDATE] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER_DATE] ON
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (1, N'12016714', 0, N'TKA-2', 1, 4000, 0, 8, CAST(0x0000A6430078E15E AS DateTime), 8, CAST(0x0000A6430078E15E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (2, N'22016714', 0, N'TKA-3', 1, 20000, 0, 8, CAST(0x0000A643008A9DAF AS DateTime), 8, CAST(0x0000A643008A9DAF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (3, N'32016714', 0, N'1', 1, 11000, 0, 8, CAST(0x0000A643008D6D5C AS DateTime), 8, CAST(0x0000A643008D6D5C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (4, N'42016714', 0, N'22', 0, 4500, 0, 8, CAST(0x0000A64300AEBDE0 AS DateTime), 8, CAST(0x0000A64300AEBDE0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (5, N'52016714', 0, N'24', 0, 8000, 0, 8, CAST(0x0000A64300AEC7A0 AS DateTime), 8, CAST(0x0000A64300AEC7A0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (6, N'62016714', 0, N'5', 0, 25500, 0, 8, CAST(0x0000A64300B19242 AS DateTime), 8, CAST(0x0000A64300B19242 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (7, N'72016714', 0, N'19', 0, 10000, 0, 8, CAST(0x0000A64300BB06D7 AS DateTime), 8, CAST(0x0000A64300BB06D7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (8, N'82016714', 0, N'12', 0, 4000, 0, 8, CAST(0x0000A64300BB1137 AS DateTime), 8, CAST(0x0000A64300BB1137 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (9, N'92016714', 0, N'20', 0, 4500, 0, 8, CAST(0x0000A64300BB2DAB AS DateTime), 8, CAST(0x0000A64300BB2DAB AS DateTime), NULL, 2, 0)
SET IDENTITY_INSERT [dbo].[ORDER_DATE] OFF
/****** Object:  Table [dbo].[ORDER]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[ClientID] [int] NULL,
	[FloorID] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[TotalAmount] [float] NULL,
	[Seat] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[ShiftID] [int] NULL,
	[PrinterNote] [int] NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER] ON
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (1, 1, N'1201679', 0, N'1', 1, 15000, 0, 4, CAST(0x0000A63E0164B513 AS DateTime), 4, CAST(0x0000A63E0164B513 AS DateTime), NULL, 1, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (2, 2, N'2201679', 0, N'13', 1, 15200, 0, 4, CAST(0x0000A63E0164FEFD AS DateTime), 4, CAST(0x0000A63E0164FEFD AS DateTime), NULL, 1, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (3, 1, N'12016710', 0, N'TKA-2', 1, 8000, 0, 8, CAST(0x0000A63F00F4B768 AS DateTime), 8, CAST(0x0000A63F00F4B768 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (4, 2, N'22016710', 0, N'4', 1, 7000, 0, 8, CAST(0x0000A63F00F51548 AS DateTime), 8, CAST(0x0000A63F00F51548 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (5, 3, N'32016710', 0, N'32', 1, 25000, 0, 8, CAST(0x0000A63F00F8AD0C AS DateTime), 8, CAST(0x0000A63F00F8AD0C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (6, 4, N'42016710', 0, N'3', 1, 36000, 0, 8, CAST(0x0000A63F00FAF6A2 AS DateTime), 8, CAST(0x0000A63F00FAF6A2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (7, 5, N'52016710', 0, N'TKA-6', 0, 8000, 0, 8, CAST(0x0000A63F00FDE6DE AS DateTime), 8, CAST(0x0000A63F00FDE6DE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (8, 6, N'62016710', 0, N'TKA-7', 0, 3500, 0, 8, CAST(0x0000A63F00FFD695 AS DateTime), 8, CAST(0x0000A63F00FFD695 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (9, 7, N'72016710', 0, N'TKA-8', 0, 4000, 0, 8, CAST(0x0000A63F01071D69 AS DateTime), 8, CAST(0x0000A63F01071D69 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (10, 8, N'82016710', 0, N'TKA-9', 0, 8500, 0, 8, CAST(0x0000A63F01083B8C AS DateTime), 8, CAST(0x0000A63F01083B8C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (11, 9, N'92016710', 0, N'34', 1, 4500, 0, 8, CAST(0x0000A63F010906E8 AS DateTime), 8, CAST(0x0000A63F010906E8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (12, 10, N'102016710', 0, N'TKA-11', 0, 4000, 0, 8, CAST(0x0000A63F010AB944 AS DateTime), 8, CAST(0x0000A63F010AB944 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (13, 11, N'112016710', 0, N'TKA-12', 0, 3500, 0, 8, CAST(0x0000A63F010E3FE5 AS DateTime), 8, CAST(0x0000A63F010E3FE5 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (14, 12, N'122016710', 0, N'TKA-13', 0, 3500, 0, 8, CAST(0x0000A63F01104592 AS DateTime), 8, CAST(0x0000A63F01104592 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (15, 13, N'132016710', 0, N'TKA-14', 0, 4000, 0, 8, CAST(0x0000A63F0113AAC1 AS DateTime), 8, CAST(0x0000A63F0113AAC1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (16, 14, N'142016711', 0, N'15', 1, 4500, 0, 8, CAST(0x0000A64000851F1D AS DateTime), 8, CAST(0x0000A64000851F1D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (17, 15, N'152016711', 0, N'1', 1, 18000, 0, 8, CAST(0x0000A640008AE57D AS DateTime), 8, CAST(0x0000A640008AE57D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (18, 16, N'162016711', 0, N'16', 1, 4500, 0, 8, CAST(0x0000A64000915C77 AS DateTime), 8, CAST(0x0000A64000915C77 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (19, 17, N'172016711', 0, N'19', 1, 3800, 0, 8, CAST(0x0000A640009907E3 AS DateTime), 8, CAST(0x0000A640009907E3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (20, 18, N'182016711', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A64000A24794 AS DateTime), 8, CAST(0x0000A64000A24794 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (21, 19, N'192016711', 0, N'17', 1, 9000, 0, 8, CAST(0x0000A64000A2690D AS DateTime), 8, CAST(0x0000A64000A2690D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (22, 20, N'202016711', 0, N'20', 1, 4500, 0, 8, CAST(0x0000A64000A27DCD AS DateTime), 8, CAST(0x0000A64000A27DCD AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (23, 21, N'212016711', 0, N'15', 1, 3500, 0, 8, CAST(0x0000A64000A32273 AS DateTime), 8, CAST(0x0000A64000A32273 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (24, 22, N'222016711', 0, N'18', 1, 4000, 0, 8, CAST(0x0000A64000AA7C9B AS DateTime), 8, CAST(0x0000A64000AA7C9B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (25, 23, N'232016711', 0, N'19', 1, 4500, 0, 8, CAST(0x0000A64000B23E6F AS DateTime), 8, CAST(0x0000A64000B23E6F AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (26, 24, N'242016711', 0, N'19', 1, 4500, 0, 8, CAST(0x0000A64000BB16BA AS DateTime), 8, CAST(0x0000A64000BB16BA AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (27, 25, N'252016711', 0, N'15', 1, 4500, 0, 8, CAST(0x0000A64000C30684 AS DateTime), 8, CAST(0x0000A64000C30684 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (28, 26, N'262016711', 0, N'16', 1, 9000, 0, 8, CAST(0x0000A64000C435B3 AS DateTime), 8, CAST(0x0000A64000C435B3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (29, 27, N'272016711', 0, N'14', 1, 3500, 0, 8, CAST(0x0000A64000CC0EE2 AS DateTime), 8, CAST(0x0000A64000CC0EE2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (30, 28, N'282016711', 0, N'13', 1, 7500, 0, 8, CAST(0x0000A64000D04FCC AS DateTime), 8, CAST(0x0000A64000D04FCC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (31, 29, N'292016711', 0, N'10', 1, 13100, 0, 8, CAST(0x0000A64000D1EAE5 AS DateTime), 8, CAST(0x0000A64000D1EAE5 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (32, 30, N'302016711', 0, N'12', 1, 12500, 0, 8, CAST(0x0000A64000DDE8D1 AS DateTime), 8, CAST(0x0000A64000DDE8D1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (33, 31, N'312016711', 0, N'13', 1, 17000, 0, 8, CAST(0x0000A64000E4FD48 AS DateTime), 8, CAST(0x0000A64000E4FD48 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (34, 32, N'322016711', 0, N'12', 1, 3500, 0, 8, CAST(0x0000A64000EB0820 AS DateTime), 8, CAST(0x0000A64000EB0820 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (35, 33, N'332016711', 0, N'12', 1, 9000, 0, 8, CAST(0x0000A64000F4805C AS DateTime), 8, CAST(0x0000A64000F4805C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (36, 34, N'342016711', 0, N'12', 1, 9500, 0, 8, CAST(0x0000A640010498A0 AS DateTime), 8, CAST(0x0000A640010498A0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (37, 35, N'352016711', 0, N'13', 1, 3500, 0, 8, CAST(0x0000A64001049FF1 AS DateTime), 8, CAST(0x0000A64001049FF1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (38, 36, N'362016711', 0, N'11', 1, 3500, 0, 8, CAST(0x0000A6400114FC0A AS DateTime), 8, CAST(0x0000A6400114FC0A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (39, 37, N'372016711', 0, N'12', 1, 6800, 0, 8, CAST(0x0000A6400115099D AS DateTime), 8, CAST(0x0000A6400115099D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (40, 38, N'382016711', 0, N'20', 1, 4000, 0, 8, CAST(0x0000A6400122747E AS DateTime), 8, CAST(0x0000A6400122747E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (41, 1, N'12016712', 0, N'1', 1, 18000, 0, 8, CAST(0x0000A641008F9332 AS DateTime), 8, CAST(0x0000A641008F9332 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (42, 2, N'22016712', 0, N'3', 1, 12500, 0, 8, CAST(0x0000A6410098FB3A AS DateTime), 8, CAST(0x0000A6410098FB3A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (43, 3, N'32016712', 0, N'2', 1, 11500, 0, 8, CAST(0x0000A641009F5E00 AS DateTime), 8, CAST(0x0000A641009F5E00 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (44, 4, N'42016712', 0, N'12', 1, 3500, 0, 8, CAST(0x0000A64100A6DA16 AS DateTime), 8, CAST(0x0000A64100A6DA16 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (45, 5, N'52016712', 0, N'16', 1, 4500, 0, 8, CAST(0x0000A64100A6E1ED AS DateTime), 8, CAST(0x0000A64100A6E1ED AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (46, 6, N'62016712', 0, N'3', 1, 3500, 0, 8, CAST(0x0000A64100A9F141 AS DateTime), 8, CAST(0x0000A64100A9F141 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (47, 7, N'72016712', 0, N'4', 1, 3500, 0, 8, CAST(0x0000A64100ADCBA1 AS DateTime), 8, CAST(0x0000A64100ADCBA1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (48, 8, N'82016712', 0, N'TKA-9', 1, 7500, 0, 8, CAST(0x0000A64100B564F1 AS DateTime), 8, CAST(0x0000A64100B564F1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (49, 9, N'92016712', 0, N'TKA-10', 1, 4000, 0, 8, CAST(0x0000A64100B595FF AS DateTime), 8, CAST(0x0000A64100B595FF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (50, 10, N'102016712', 0, N'4', 1, 19000, 0, 8, CAST(0x0000A64100B8DC4D AS DateTime), 8, CAST(0x0000A64100B8DC4D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (51, 11, N'112016712', 0, N'13', 1, 4500, 0, 8, CAST(0x0000A64100BE3C3A AS DateTime), 8, CAST(0x0000A64100BE3C3A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (52, 12, N'122016712', 0, N'5', 1, 4500, 0, 8, CAST(0x0000A64100C05608 AS DateTime), 8, CAST(0x0000A64100C05608 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (53, 13, N'132016712', 0, N'17', 1, 4500, 0, 8, CAST(0x0000A64100C43391 AS DateTime), 8, CAST(0x0000A64100C43391 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (54, 14, N'142016712', 0, N'16', 1, 10500, 0, 8, CAST(0x0000A64100C84577 AS DateTime), 8, CAST(0x0000A64100C84577 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (55, 15, N'152016712', 0, N'13', 1, 4500, 0, 8, CAST(0x0000A64100D38B21 AS DateTime), 8, CAST(0x0000A64100D38B21 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (56, 16, N'162016712', 0, N'4', 1, 6000, 0, 8, CAST(0x0000A64100E0D8F9 AS DateTime), 8, CAST(0x0000A64100E0D8F9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (57, 17, N'172016712', 0, N'5', 1, 11800, 0, 8, CAST(0x0000A64100E0F5D6 AS DateTime), 8, CAST(0x0000A64100E0F5D6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (58, 18, N'182016712', 0, N'3', 1, 17000, 0, 8, CAST(0x0000A64100E3353B AS DateTime), 8, CAST(0x0000A64100E3353B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (59, 19, N'192016712', 0, N'6', 1, 7000, 0, 8, CAST(0x0000A64100EEA7EC AS DateTime), 8, CAST(0x0000A64100EEA7EC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (60, 20, N'202016712', 0, N'2', 1, 3500, 0, 8, CAST(0x0000A64100F4702F AS DateTime), 8, CAST(0x0000A64100F4702F AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (61, 21, N'212016712', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A64100FC8234 AS DateTime), 8, CAST(0x0000A64100FC8234 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (62, 22, N'222016712', 0, N'25', 1, 9500, 0, 8, CAST(0x0000A641010B1EF8 AS DateTime), 8, CAST(0x0000A641010B1EF8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (63, 1, N'12016713', 0, N'TKA-2', 1, 4500, 0, 8, CAST(0x0000A6420082DF20 AS DateTime), 8, CAST(0x0000A6420082DF21 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (64, 2, N'22016713', 0, N'1', 1, 18000, 0, 8, CAST(0x0000A64200830514 AS DateTime), 8, CAST(0x0000A64200830514 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (65, 3, N'32016713', 0, N'2', 1, 4500, 0, 8, CAST(0x0000A642008E1375 AS DateTime), 8, CAST(0x0000A642008E1375 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (66, 4, N'42016713', 0, N'TKA-5', 1, 4000, 0, 8, CAST(0x0000A642008E2C0C AS DateTime), 8, CAST(0x0000A642008E2C0C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (67, 5, N'52016713', 0, N'2', 1, 9000, 0, 8, CAST(0x0000A642009EF52A AS DateTime), 8, CAST(0x0000A642009EF52A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (68, 6, N'62016713', 0, N'3', 1, 3500, 0, 8, CAST(0x0000A642009F1628 AS DateTime), 8, CAST(0x0000A642009F1628 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (69, 7, N'72016713', 0, N'4', 1, 3500, 0, 8, CAST(0x0000A64200A5300A AS DateTime), 8, CAST(0x0000A64200A5300A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (70, 8, N'82016713', 0, N'5', 1, 4500, 0, 8, CAST(0x0000A64200A537C7 AS DateTime), 8, CAST(0x0000A64200A537C7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (71, 9, N'92016713', 0, N'3', 1, 4000, 0, 8, CAST(0x0000A64200AB1571 AS DateTime), 8, CAST(0x0000A64200AB1571 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (72, 10, N'102016713', 0, N'6', 1, 4500, 0, 8, CAST(0x0000A64200AB71BC AS DateTime), 8, CAST(0x0000A64200AB71BC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (73, 11, N'112016713', 0, N'12', 1, 4500, 0, 8, CAST(0x0000A64200B00B53 AS DateTime), 8, CAST(0x0000A64200B00B53 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (74, 12, N'122016713', 0, N'13', 1, 17000, 0, 8, CAST(0x0000A64200B5DDF7 AS DateTime), 8, CAST(0x0000A64200B5DDF7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (75, 13, N'132016713', 0, N'11', 1, 15000, 0, 8, CAST(0x0000A64200BC8291 AS DateTime), 8, CAST(0x0000A64200BC8291 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (76, 14, N'142016713', 0, N'13', 1, 13500, 0, 8, CAST(0x0000A64200C6159E AS DateTime), 8, CAST(0x0000A64200C6159E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (77, 15, N'152016713', 0, N'15', 1, 3500, 0, 8, CAST(0x0000A64200C6BDAE AS DateTime), 8, CAST(0x0000A64200C6BDAE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (78, 16, N'162016713', 0, N'3', 1, 14000, 0, 8, CAST(0x0000A64200CE768A AS DateTime), 8, CAST(0x0000A64200CE768A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (79, 17, N'172016713', 0, N'1', 1, 8000, 0, 8, CAST(0x0000A64200D18D07 AS DateTime), 8, CAST(0x0000A64200D18D07 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (80, 18, N'182016713', 0, N'5', 1, 4000, 0, 8, CAST(0x0000A64200E8F2F6 AS DateTime), 8, CAST(0x0000A64200E8F2F6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (81, 19, N'192016713', 0, N'TKA-20', 1, 10000, 0, 8, CAST(0x0000A64200FD3E89 AS DateTime), 8, CAST(0x0000A64200FD3E89 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (82, 20, N'202016713', 0, N'1', 1, 10000, 0, 8, CAST(0x0000A64200FD601C AS DateTime), 8, CAST(0x0000A64200FD601C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (83, 21, N'212016713', 0, N'TKA-22', 1, 5000, 0, 8, CAST(0x0000A642010330B0 AS DateTime), 8, CAST(0x0000A642010330B0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (84, 22, N'222016713', 0, N'2', 1, 8000, 0, 8, CAST(0x0000A642010D98B4 AS DateTime), 8, CAST(0x0000A642010D98B4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (85, 23, N'232016713', 0, N'4', 1, 7000, 0, 8, CAST(0x0000A642010DB3D6 AS DateTime), 8, CAST(0x0000A642010DB3D6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (86, 24, N'242016713', 0, N'5', 1, 3000, 0, 8, CAST(0x0000A642010DD7F6 AS DateTime), 8, CAST(0x0000A642010DD7F6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (87, 25, N'252016713', 0, N'21', 1, 18000, 0, 8, CAST(0x0000A642011531B9 AS DateTime), 8, CAST(0x0000A642011531B9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (88, 26, N'262016713', 0, N'14', 1, 3500, 0, 8, CAST(0x0000A64201169FD1 AS DateTime), 8, CAST(0x0000A64201169FD1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (89, 27, N'272016713', 0, N'4', 1, 6500, 0, 8, CAST(0x0000A6420118A782 AS DateTime), 8, CAST(0x0000A6420118A782 AS DateTime), NULL, 2, 0)
SET IDENTITY_INSERT [dbo].[ORDER] OFF
/****** Object:  Table [dbo].[MODIFIRE_PRICE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODIFIRE_PRICE](
	[ModifirePriceID] [int] IDENTITY(1,1) NOT NULL,
	[ModifireID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CurrentPrice] [float] NULL,
	[WasPrice] [float] NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_MODIFIRE_PRICE] PRIMARY KEY CLUSTERED 
(
	[ModifirePriceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MODIFIRE_PRICE] ON
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 1, 1, 0, 0, N'', 0, CAST(0x0000A63E00A139D2 AS DateTime), 0, CAST(0x0000A63E00A139D2 AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 2, 1, 0, 0, N'', 0, CAST(0x0000A63E00A14E0B AS DateTime), 0, CAST(0x0000A63E00A14E0B AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 3, 1, 0, 0, N'', 0, CAST(0x0000A63E00A15CFA AS DateTime), 0, CAST(0x0000A63E00A15CFA AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, 4, 1, 0, 0, N'', 0, CAST(0x0000A63E00A171A0 AS DateTime), 0, CAST(0x0000A63E00A171A0 AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, 5, 1, 0, 0, N'', 0, CAST(0x0000A63E00A18EF8 AS DateTime), 0, CAST(0x0000A63E00A18EF8 AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 6, 1, 500, 0, N'', 0, CAST(0x0000A63F00E7F98B AS DateTime), 0, CAST(0x0000A63F00E7F98B AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 7, 1, 500, 0, N'', 0, CAST(0x0000A63F00EA7A8E AS DateTime), 0, CAST(0x0000A63F00EA7A8E AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 8, 1, 500, 0, N'', 0, CAST(0x0000A63F00EA93E8 AS DateTime), 0, CAST(0x0000A63F00EA93E8 AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 9, 1, 500, 0, N'', 0, CAST(0x0000A63F00EAA70D AS DateTime), 0, CAST(0x0000A63F00EAA70D AS DateTime))
INSERT [dbo].[MODIFIRE_PRICE] ([ModifirePriceID], [ModifireID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 10, 1, 500, 0, N'', 0, CAST(0x0000A63F00EABA22 AS DateTime), 0, CAST(0x0000A63F00EABA22 AS DateTime))
SET IDENTITY_INSERT [dbo].[MODIFIRE_PRICE] OFF
/****** Object:  Table [dbo].[MODIFIRE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODIFIRE](
	[ModifireID] [int] IDENTITY(1,1) NOT NULL,
	[ModifireName] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[Color] [nvarchar](250) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_MODIFIRE] PRIMARY KEY CLUSTERED 
(
	[ModifireID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MODIFIRE] ON
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'BlackSesame ', 1, N'Blue', N'', 0, CAST(0x0000A63E00A139C8 AS DateTime), 0, CAST(0x0000A63E00A139C8 AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'Chocolate', 1, N'Blue', N'', 0, CAST(0x0000A63E00A14E09 AS DateTime), 0, CAST(0x0000A63E00A14E09 AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'Coconut', 1, N'Blue', N'', 0, CAST(0x0000A63E00A15CF8 AS DateTime), 0, CAST(0x0000A63E00A15CF8 AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'Durian', 1, N'Blue', N'', 0, CAST(0x0000A63E00A1719E AS DateTime), 0, CAST(0x0000A63E00A1719E AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'GreenTea', 1, N'Blue', N'', 0, CAST(0x0000A63E00A18EF5 AS DateTime), 0, CAST(0x0000A63E00A18EF5 AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'Large', 1, N'Blue', N'', 0, CAST(0x0000A63F00E7F981 AS DateTime), 0, CAST(0x0000A63F00E7F981 AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'Soy Milk', 1, N'Blue', N'', 0, CAST(0x0000A63F00EA7A8C AS DateTime), 0, CAST(0x0000A63F00EA7A8C AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'Hazenut', 1, N'Blue', N'', 0, CAST(0x0000A63F00EA93E4 AS DateTime), 0, CAST(0x0000A63F00EA93E4 AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, N'Caramel', 1, N'Blue', N'', 0, CAST(0x0000A63F00EAA70A AS DateTime), 0, CAST(0x0000A63F00EAA70A AS DateTime))
INSERT [dbo].[MODIFIRE] ([ModifireID], [ModifireName], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, N'Vanilla', 1, N'Blue', N'', 0, CAST(0x0000A63F00EABA20 AS DateTime), 0, CAST(0x0000A63F00EABA20 AS DateTime))
SET IDENTITY_INSERT [dbo].[MODIFIRE] OFF
/****** Object:  Table [dbo].[MENU]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](500) NOT NULL,
	[Priority] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MENU] ON
INSERT [dbo].[MENU] ([MenuID], [MenuName], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'EAT IN', 1, 1, NULL, 0, CAST(0x0000A56D0129260B AS DateTime), 0, CAST(0x0000A56D0129260B AS DateTime))
INSERT [dbo].[MENU] ([MenuID], [MenuName], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'TAKEAWAY', 1, 1, NULL, 0, CAST(0x0000A56D012930A2 AS DateTime), 0, CAST(0x0000A56D012930A2 AS DateTime))
INSERT [dbo].[MENU] ([MenuID], [MenuName], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'STORE', 1, 1, NULL, 0, CAST(0x0000A56F0179E2D5 AS DateTime), 0, CAST(0x0000A56F0179E2D5 AS DateTime))
INSERT [dbo].[MENU] ([MenuID], [MenuName], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'WORKING PERIOD', 1, 1, NULL, 0, CAST(0x0000A56F017A02C4 AS DateTime), 0, CAST(0x0000A56F017A02C4 AS DateTime))
INSERT [dbo].[MENU] ([MenuID], [MenuName], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'REPORT', 1, 1, NULL, 0, CAST(0x0000A56F017A1232 AS DateTime), 0, CAST(0x0000A56F017A1232 AS DateTime))
INSERT [dbo].[MENU] ([MenuID], [MenuName], [Priority], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'SETTING', 1, 1, NULL, 0, CAST(0x0000A56F017A1C50 AS DateTime), 0, CAST(0x0000A56F017A1C50 AS DateTime))
SET IDENTITY_INSERT [dbo].[MENU] OFF
/****** Object:  Table [dbo].[MAP_PRODUCT_TO_CATEGORY]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_MAP_PRODUCT_TO_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (11, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (12, 2, 1, N'', 0, CAST(0x0000A63E00843767 AS DateTime), 0, CAST(0x0000A63E00843767 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (13, 3, 1, N'', 0, CAST(0x0000A63E00846D40 AS DateTime), 0, CAST(0x0000A63E00846D40 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, 3, 1, N'', 0, CAST(0x0000A63E00846D40 AS DateTime), 0, CAST(0x0000A63E00846D40 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (15, 3, 1, N'', 0, CAST(0x0000A63E00846D40 AS DateTime), 0, CAST(0x0000A63E00846D40 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (16, 3, 1, N'', 0, CAST(0x0000A63E00846D40 AS DateTime), 0, CAST(0x0000A63E00846D40 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (17, 3, 1, N'', 0, CAST(0x0000A63E00846D40 AS DateTime), 0, CAST(0x0000A63E00846D40 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (18, 4, 1, N'', 0, CAST(0x0000A63E008494F9 AS DateTime), 0, CAST(0x0000A63E008494F9 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (19, 4, 1, N'', 0, CAST(0x0000A63E008494F9 AS DateTime), 0, CAST(0x0000A63E008494F9 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (20, 4, 1, N'', 0, CAST(0x0000A63E008494F9 AS DateTime), 0, CAST(0x0000A63E008494F9 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (21, 4, 1, N'', 0, CAST(0x0000A63E008494F9 AS DateTime), 0, CAST(0x0000A63E008494F9 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (22, 4, 1, N'', 0, CAST(0x0000A63E008494F9 AS DateTime), 0, CAST(0x0000A63E008494F9 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (23, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (23, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (24, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (24, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (25, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (25, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (26, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (26, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (27, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (27, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (28, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (28, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (29, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (29, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (30, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (30, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (31, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (31, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (32, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (32, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (33, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (33, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (34, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (34, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (35, 1, 1, N'', 0, CAST(0x0000A63D0164F0E2 AS DateTime), 0, CAST(0x0000A63D0164F0E2 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (35, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (36, 1, 1, N'', 0, CAST(0x0000A63D0164F0E2 AS DateTime), 0, CAST(0x0000A63D0164F0E2 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (36, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (37, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (37, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (38, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (38, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (39, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (39, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (40, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (40, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (41, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (41, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (42, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (42, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (43, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (43, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (44, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (44, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (45, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (45, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (46, 1, 1, N'', 0, CAST(0x0000A63E0083ED4E AS DateTime), 0, CAST(0x0000A63E0083ED4E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (46, 5, 1, N'', 0, CAST(0x0000A63E00850A5B AS DateTime), 0, CAST(0x0000A63E00850A5B AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (47, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (48, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (49, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (50, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (51, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (52, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (53, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (54, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (55, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (56, 6, 1, N'', 0, CAST(0x0000A63E00853EE5 AS DateTime), 0, CAST(0x0000A63E00853EE5 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (57, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (58, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (59, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (60, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (61, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (62, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (63, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (64, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (65, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (66, 7, 1, N'', 0, CAST(0x0000A63E00858386 AS DateTime), 0, CAST(0x0000A63E00858386 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (67, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (68, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (69, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (70, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (71, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (72, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (73, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (74, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (75, 8, 1, N'', 0, CAST(0x0000A63E0085BD3F AS DateTime), 0, CAST(0x0000A63E0085BD3F AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (76, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (77, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (78, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (79, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (80, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (81, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (82, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (83, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (84, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (85, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (86, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (87, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (88, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (89, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (90, 9, 1, N'', 0, CAST(0x0000A63E0085F85E AS DateTime), 0, CAST(0x0000A63E0085F85E AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (91, 10, 1, N'', 0, CAST(0x0000A63E00861977 AS DateTime), 0, CAST(0x0000A63E00861977 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (92, 10, 1, N'', 0, CAST(0x0000A63E00861977 AS DateTime), 0, CAST(0x0000A63E00861977 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (93, 10, 1, N'', 0, CAST(0x0000A63E00861977 AS DateTime), 0, CAST(0x0000A63E00861977 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (94, 10, 1, N'', 0, CAST(0x0000A63E00861977 AS DateTime), 0, CAST(0x0000A63E00861977 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (95, 10, 1, N'', 0, CAST(0x0000A63E00861977 AS DateTime), 0, CAST(0x0000A63E00861977 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (96, 10, 1, N'', 0, CAST(0x0000A63E00861977 AS DateTime), 0, CAST(0x0000A63E00861977 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (97, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (98, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (99, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (100, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (101, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (102, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (103, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (104, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (105, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (106, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (107, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (108, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (109, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (110, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (111, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (112, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (113, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (114, 11, 1, N'', 0, CAST(0x0000A63E0086537C AS DateTime), 0, CAST(0x0000A63E0086537C AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (115, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (116, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (117, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (118, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (119, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (120, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (121, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (122, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (123, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (124, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (125, 12, 1, N'', 0, CAST(0x0000A63E0086D264 AS DateTime), 0, CAST(0x0000A63E0086D264 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (126, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (127, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (128, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (129, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (130, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (131, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (132, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (133, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (134, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (135, 13, 1, N'', 0, CAST(0x0000A63E0086FD73 AS DateTime), 0, CAST(0x0000A63E0086FD73 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (136, 14, 1, N'', 0, CAST(0x0000A63E00872764 AS DateTime), 0, CAST(0x0000A63E00872764 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (137, 14, 1, N'', 0, CAST(0x0000A63E00872764 AS DateTime), 0, CAST(0x0000A63E00872764 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (138, 11, 1, N'', 0, CAST(0x0000A63E00A260DE AS DateTime), 0, CAST(0x0000A63E00A260DE AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (139, 11, 1, N'', 0, CAST(0x0000A63E00A260DE AS DateTime), 0, CAST(0x0000A63E00A260DE AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (140, 11, 1, N'', 0, CAST(0x0000A63E00A260DE AS DateTime), 0, CAST(0x0000A63E00A260DE AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (141, 11, 1, N'', 0, CAST(0x0000A63E00A260DE AS DateTime), 0, CAST(0x0000A63E00A260DE AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (142, 11, 1, N'', 0, CAST(0x0000A63E00A260DE AS DateTime), 0, CAST(0x0000A63E00A260DE AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (143, 11, 1, N'', 0, CAST(0x0000A63E00A260DE AS DateTime), 0, CAST(0x0000A63E00A260DE AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (144, 13, 1, N'', 0, CAST(0x0000A63F00E82AEE AS DateTime), 0, CAST(0x0000A63F00E82AEE AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (145, 14, 1, N'', 0, CAST(0x0000A63F00E81B56 AS DateTime), 0, CAST(0x0000A63F00E81B56 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (146, 14, 1, N'', 0, CAST(0x0000A63F00E81B56 AS DateTime), 0, CAST(0x0000A63F00E81B56 AS DateTime))
INSERT [dbo].[MAP_PRODUCT_TO_CATEGORY] ([ProductID], [CategoryID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (147, 3, 1, N'', 0, CAST(0x0000A63F00E84D7B AS DateTime), 0, CAST(0x0000A63F00E84D7B AS DateTime))
/****** Object:  Table [dbo].[MAP_MODIFIRE_TO_PRODUCT]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT](
	[ModifireID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_MAP_MODIFIRE_TO_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ModifireID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 127, 0, N'', 0, CAST(0x0000A63E00A28158 AS DateTime), 0, CAST(0x0000A63E00A28F76 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 138, 1, N'', 0, CAST(0x0000A63E00A26E3B AS DateTime), 0, CAST(0x0000A63E00A26E3B AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 139, 1, N'', 0, CAST(0x0000A63E00A278B6 AS DateTime), 0, CAST(0x0000A63E00A278B6 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 127, 0, N'', 0, CAST(0x0000A63E00A28158 AS DateTime), 0, CAST(0x0000A63E00A28F76 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 138, 1, N'', 0, CAST(0x0000A63E00A26E3B AS DateTime), 0, CAST(0x0000A63E00A26E3B AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 139, 1, N'', 0, CAST(0x0000A63E00A278B6 AS DateTime), 0, CAST(0x0000A63E00A278B6 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 127, 0, N'', 0, CAST(0x0000A63E00A28158 AS DateTime), 0, CAST(0x0000A63E00A28F76 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 138, 1, N'', 0, CAST(0x0000A63E00A26E3B AS DateTime), 0, CAST(0x0000A63E00A26E3B AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 139, 1, N'', 0, CAST(0x0000A63E00A278B6 AS DateTime), 0, CAST(0x0000A63E00A278B6 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, 127, 0, N'', 0, CAST(0x0000A63E00A28158 AS DateTime), 0, CAST(0x0000A63E00A28F76 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, 138, 1, N'', 0, CAST(0x0000A63E00A26E3B AS DateTime), 0, CAST(0x0000A63E00A26E3B AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, 139, 1, N'', 0, CAST(0x0000A63E00A278B6 AS DateTime), 0, CAST(0x0000A63E00A278B6 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, 127, 0, N'', 0, CAST(0x0000A63E00A28158 AS DateTime), 0, CAST(0x0000A63E00A28F76 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, 138, 1, N'', 0, CAST(0x0000A63E00A26E3B AS DateTime), 0, CAST(0x0000A63E00A26E3B AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, 139, 1, N'', 0, CAST(0x0000A63E00A278B6 AS DateTime), 0, CAST(0x0000A63E00A278B6 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 76, 1, N'', 0, CAST(0x0000A63F00E86D70 AS DateTime), 0, CAST(0x0000A63F00E86D70 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 77, 1, N'', 0, CAST(0x0000A63F00E89843 AS DateTime), 0, CAST(0x0000A63F00E89843 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 78, 1, N'', 0, CAST(0x0000A63F00E8D180 AS DateTime), 0, CAST(0x0000A63F00E8D180 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 79, 1, N'', 0, CAST(0x0000A63F00E8D871 AS DateTime), 0, CAST(0x0000A63F00E8D871 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 80, 1, N'', 0, CAST(0x0000A63F00E98135 AS DateTime), 0, CAST(0x0000A63F00E98135 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 81, 1, N'', 0, CAST(0x0000A63F00E8AC39 AS DateTime), 0, CAST(0x0000A63F00E8AC39 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 82, 1, N'', 0, CAST(0x0000A63F00E8CBB7 AS DateTime), 0, CAST(0x0000A63F00E8CBB7 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 83, 1, N'', 0, CAST(0x0000A63F00E9621C AS DateTime), 0, CAST(0x0000A63F00E9621C AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 84, 1, N'', 0, CAST(0x0000A63F00E8A717 AS DateTime), 0, CAST(0x0000A63F00E8A717 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 85, 1, N'', 0, CAST(0x0000A63F00E8E63E AS DateTime), 0, CAST(0x0000A63F00E8E63E AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 86, 1, N'', 0, CAST(0x0000A63F00E8B2FD AS DateTime), 0, CAST(0x0000A63F00E8B2FD AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 87, 1, N'', 0, CAST(0x0000A63F00E8C0EF AS DateTime), 0, CAST(0x0000A63F00E8C0EF AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 88, 1, N'', 0, CAST(0x0000A63F00E8BB58 AS DateTime), 0, CAST(0x0000A63F00E8BB58 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 89, 1, N'', 0, CAST(0x0000A63F00E8B774 AS DateTime), 0, CAST(0x0000A63F00E8B774 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 90, 1, N'', 0, CAST(0x0000A63F00E96DAE AS DateTime), 0, CAST(0x0000A63F00E96DAE AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 102, 1, N'', 0, CAST(0x0000A63F00E8FD33 AS DateTime), 0, CAST(0x0000A63F00E8FD33 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 76, 1, N'', 0, CAST(0x0000A63F00EADC47 AS DateTime), 0, CAST(0x0000A63F00EADC47 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 77, 1, N'', 0, CAST(0x0000A63F00EAF614 AS DateTime), 0, CAST(0x0000A63F00EAF614 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 78, 1, N'', 0, CAST(0x0000A63F00EB3EE7 AS DateTime), 0, CAST(0x0000A63F00EB3EE7 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 79, 1, N'', 0, CAST(0x0000A63F00EB4654 AS DateTime), 0, CAST(0x0000A63F00EB4654 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 80, 1, N'', 0, CAST(0x0000A63F00EB5DD3 AS DateTime), 0, CAST(0x0000A63F00EB5DD3 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 81, 1, N'', 0, CAST(0x0000A63F00EB0B24 AS DateTime), 0, CAST(0x0000A63F00EB0B24 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 82, 1, N'', 0, CAST(0x0000A63F00EB356A AS DateTime), 0, CAST(0x0000A63F00EB356A AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 83, 1, N'', 0, CAST(0x0000A63F00EAD1C0 AS DateTime), 0, CAST(0x0000A63F00EAD1C0 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 84, 1, N'', 0, CAST(0x0000A63F00EB038F AS DateTime), 0, CAST(0x0000A63F00EB038F AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 85, 1, N'', 0, CAST(0x0000A63F00EB52EB AS DateTime), 0, CAST(0x0000A63F00EB52EB AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 90, 1, N'', 0, CAST(0x0000A63F00EAC8F3 AS DateTime), 0, CAST(0x0000A63F00EAC8F3 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 76, 1, N'', 0, CAST(0x0000A63F00EADC47 AS DateTime), 0, CAST(0x0000A63F00EADC47 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 77, 1, N'', 0, CAST(0x0000A63F00EAF614 AS DateTime), 0, CAST(0x0000A63F00EAF614 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 78, 1, N'', 0, CAST(0x0000A63F00EB3EE7 AS DateTime), 0, CAST(0x0000A63F00EB3EE7 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 79, 1, N'', 0, CAST(0x0000A63F00EB4654 AS DateTime), 0, CAST(0x0000A63F00EB4654 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 80, 1, N'', 0, CAST(0x0000A63F00EB5DD3 AS DateTime), 0, CAST(0x0000A63F00EB5DD3 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 81, 1, N'', 0, CAST(0x0000A63F00EB0B24 AS DateTime), 0, CAST(0x0000A63F00EB0B24 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 82, 1, N'', 0, CAST(0x0000A63F00EB356A AS DateTime), 0, CAST(0x0000A63F00EB356A AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 83, 1, N'', 0, CAST(0x0000A63F00EAD1C0 AS DateTime), 0, CAST(0x0000A63F00EAD1C0 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 84, 1, N'', 0, CAST(0x0000A63F00EB038F AS DateTime), 0, CAST(0x0000A63F00EB038F AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 85, 1, N'', 0, CAST(0x0000A63F00EB52EB AS DateTime), 0, CAST(0x0000A63F00EB52EB AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 90, 1, N'', 0, CAST(0x0000A63F00EAC8F3 AS DateTime), 0, CAST(0x0000A63F00EAC8F3 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 76, 1, N'', 0, CAST(0x0000A63F00EADC47 AS DateTime), 0, CAST(0x0000A63F00EADC47 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 77, 1, N'', 0, CAST(0x0000A63F00EAF614 AS DateTime), 0, CAST(0x0000A63F00EAF614 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 78, 1, N'', 0, CAST(0x0000A63F00EB3EE7 AS DateTime), 0, CAST(0x0000A63F00EB3EE7 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 79, 1, N'', 0, CAST(0x0000A63F00EB4654 AS DateTime), 0, CAST(0x0000A63F00EB4654 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 80, 1, N'', 0, CAST(0x0000A63F00EB5DD3 AS DateTime), 0, CAST(0x0000A63F00EB5DD3 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 81, 1, N'', 0, CAST(0x0000A63F00EB0B24 AS DateTime), 0, CAST(0x0000A63F00EB0B24 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 82, 1, N'', 0, CAST(0x0000A63F00EB356A AS DateTime), 0, CAST(0x0000A63F00EB356A AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 83, 1, N'', 0, CAST(0x0000A63F00EAD1C0 AS DateTime), 0, CAST(0x0000A63F00EAD1C0 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 84, 1, N'', 0, CAST(0x0000A63F00EB038F AS DateTime), 0, CAST(0x0000A63F00EB038F AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 85, 1, N'', 0, CAST(0x0000A63F00EB52EB AS DateTime), 0, CAST(0x0000A63F00EB52EB AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 90, 1, N'', 0, CAST(0x0000A63F00EAC8F3 AS DateTime), 0, CAST(0x0000A63F00EAC8F3 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 76, 1, N'', 0, CAST(0x0000A63F00EADC47 AS DateTime), 0, CAST(0x0000A63F00EADC47 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 77, 1, N'', 0, CAST(0x0000A63F00EAF614 AS DateTime), 0, CAST(0x0000A63F00EAF614 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 78, 1, N'', 0, CAST(0x0000A63F00EB3EE7 AS DateTime), 0, CAST(0x0000A63F00EB3EE7 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 79, 1, N'', 0, CAST(0x0000A63F00EB4654 AS DateTime), 0, CAST(0x0000A63F00EB4654 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 80, 1, N'', 0, CAST(0x0000A63F00EB5DD3 AS DateTime), 0, CAST(0x0000A63F00EB5DD3 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 81, 1, N'', 0, CAST(0x0000A63F00EB0B24 AS DateTime), 0, CAST(0x0000A63F00EB0B24 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 82, 1, N'', 0, CAST(0x0000A63F00EB356A AS DateTime), 0, CAST(0x0000A63F00EB356A AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 83, 1, N'', 0, CAST(0x0000A63F00EAD1C0 AS DateTime), 0, CAST(0x0000A63F00EAD1C0 AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 84, 1, N'', 0, CAST(0x0000A63F00EB038F AS DateTime), 0, CAST(0x0000A63F00EB038F AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 85, 1, N'', 0, CAST(0x0000A63F00EB52EB AS DateTime), 0, CAST(0x0000A63F00EB52EB AS DateTime))
INSERT [dbo].[MAP_MODIFIRE_TO_PRODUCT] ([ModifireID], [ProductID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 90, 1, N'', 0, CAST(0x0000A63F00EAC8F3 AS DateTime), 0, CAST(0x0000A63F00EAC8F3 AS DateTime))
/****** Object:  Table [dbo].[MAP_CATEGORY_TO_CATALOGUE]    Script Date: 07/14/2016 09:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE](
	[CategoryID] [int] NOT NULL,
	[CatalogueID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_MAP_CATEGORY_TO_CATALOGUE] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[CatalogueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 1, 1, N'', 0, CAST(0x0000A63D0164FD6C AS DateTime), 0, CAST(0x0000A63D0164FD6C AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 1, 1, N'', 0, CAST(0x0000A63E00875C70 AS DateTime), 0, CAST(0x0000A63E00875C70 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 2, 1, N'', 0, CAST(0x0000A63E008751D6 AS DateTime), 0, CAST(0x0000A63E008751D6 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 2, 1, N'', 0, CAST(0x0000A63E008751D6 AS DateTime), 0, CAST(0x0000A63E008751D6 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (9, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (10, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (11, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (12, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (13, 1, 1, N'', 0, CAST(0x0000A63E00873F99 AS DateTime), 0, CAST(0x0000A63E00873F99 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, 1, 1, N'', 0, CAST(0x0000A63E00875C70 AS DateTime), 0, CAST(0x0000A63E00875C70 AS DateTime))
INSERT [dbo].[MAP_CATEGORY_TO_CATALOGUE] ([CategoryID], [CatalogueID], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, 2, 1, N'', 0, CAST(0x0000A63E008751D6 AS DateTime), 0, CAST(0x0000A63E008751D6 AS DateTime))
/****** Object:  StoredProcedure [dbo].[LISTTKA]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LISTTKA]
AS
BEGIN
	SELECT C.Fname AS CusName,C.Phone AS CusPhone,O.TotalAmount AS Total,O.CreateDate AS Waiting,O.FloorID AS TKAID

FROM ORDER_DATE O LEFT JOIN CLIENT C ON O.ClientID=C.ClientID
	
WHERE (O.ClientID=C.ClientID OR O.ClientID=0)AND O.FloorID LIKE '%TKA-%'AND O.Status!=1 AND CONVERT(DATE,O.CreateDate)=CONVERT(DATE,GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[getProductByCategory]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getProductByCategory] @categoryid INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;
	
       SELECT     dbo.PRODUCT.ProductID,dbo.PRODUCT.ProductNameDesc, dbo.PRODUCT.ProductNameSort, dbo.PRODUCT.Color, dbo.PRODUCT_PRICE.CurrentPrice, 
                      dbo.MAP_PRODUCT_TO_CATEGORY.CategoryID
FROM         dbo.MAP_PRODUCT_TO_CATEGORY INNER JOIN
                      dbo.PRODUCT ON dbo.MAP_PRODUCT_TO_CATEGORY.ProductID = dbo.PRODUCT.ProductID INNER JOIN
                      dbo.PRODUCT_PRICE ON dbo.MAP_PRODUCT_TO_CATEGORY.ProductID = dbo.PRODUCT_PRICE.ProductID
WHERE     (dbo.MAP_PRODUCT_TO_CATEGORY.CategoryID =@categoryid and dbo.PRODUCT.Status=1)

    END
GO
/****** Object:  StoredProcedure [dbo].[getModifireByProduct]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getModifireByProduct] @productid INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;
	
       SELECT     dbo.MAP_MODIFIRE_TO_PRODUCT.ProductID, dbo.MODIFIRE.ModifireID, dbo.MODIFIRE.ModifireName, dbo.MODIFIRE_PRICE.CurrentPrice, 
                      dbo.MODIFIRE.Color
FROM         dbo.MAP_MODIFIRE_TO_PRODUCT INNER JOIN
                      dbo.MODIFIRE ON dbo.MAP_MODIFIRE_TO_PRODUCT.ModifireID = dbo.MODIFIRE.ModifireID INNER JOIN
                      dbo.MODIFIRE_PRICE ON dbo.MAP_MODIFIRE_TO_PRODUCT.ModifireID = dbo.MODIFIRE_PRICE.ModifireID
WHERE     (dbo.MAP_MODIFIRE_TO_PRODUCT.ProductID = @productid and dbo.MODIFIRE.Status=1)

    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_SearchProduct]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_SearchProduct]
	@txtsearch NVARCHAR(500),
	@type INT = 5
AS 
	-- Add the parameters for the stored procedure here
SET @txtsearch = LTRIM(RTRIM(@txtsearch));
IF ( @type = 1 )
	IF (@txtsearch != '')
		BEGIN
			SELECT  CatalogueID,
					CatalogueName
			FROM    dbo.CATALOGUE
			WHERE   CatalogueName LIKE '%' + @txtsearch + '%'
		END
	ELSE 
		BEGIN
			SELECT  CatalogueID,
					CatalogueName
			FROM    dbo.CATALOGUE
		END

 IF ( @type = 2 )
	IF (@txtsearch != '')
		BEGIN
			SELECT  CategoryID,
					CategoryName, CategoryNameSort, Color, ProductColor
			FROM    dbo.CATEGORY
			WHERE   CategoryName LIKE '%' + @txtsearch + '%'
		END
	ELSE 
		BEGIN
			SELECT  CategoryID,
					CategoryName, CategoryNameSort, Color, ProductColor
			FROM    dbo.CATEGORY
		END

 IF ( @type = 3)
	IF (@txtsearch != '')
		BEGIN
			SELECT  p.ProductID,
					ProductNameDesc, ProductNameSort, Color, pp.CurrentPrice
			FROM    dbo.PRODUCT p left join dbo.PRODUCT_PRICE as pp on p.ProductID = pp.ProductID
			WHERE   ProductNameDesc LIKE '%' + @txtsearch + '%'
		END
	ELSE 
		BEGIN
			SELECT  p.ProductID,
					ProductNameDesc, ProductNameSort, Color, pp.CurrentPrice
			FROM    dbo.PRODUCT p left join dbo.PRODUCT_PRICE as pp on p.ProductID = pp.ProductID
		END
IF (@type = 4)
	IF (@txtsearch != '')
		BEGIN 
			SELECT m.ModifireID,
					ModifireName, Color, mf.CurrentPrice
			FROM dbo.MODIFIRE as m left join dbo.MODIFIRE_PRICE as mf on m.ModifireID = mf.ModifireID
			WHERE ModifireName LIKE '%' + @txtsearch + '%'
		END
	ELSE 
		BEGIN 
			SELECT m.ModifireID,
					ModifireName, Color, mf.CurrentPrice
			FROM dbo.MODIFIRE as m left join dbo.MODIFIRE_PRICE as mf on m.ModifireID = mf.ModifireID
		END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataPermissionByDepartmet]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

/*

DECLARE @tablecategory TableTemp
--INSERT INTO @tablecategory(Value) VALUES (1)
INSERT INTO @tablecategory(Value) VALUES (3)
INSERT INTO @tablecategory(Value) VALUES (4)

exec pos_th_SaveDataMapCategoryToCatalogue @catalogueid=9,@userid=0,@tablecategory=@tablecategory


*/



create PROCEDURE [dbo].[pos_th_SaveDataPermissionByDepartmet]
    @departmentid INT = 0 ,
    @userid INT = 0 ,
    @tablesubmenu TableTemp READONLY
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;


		--SELECT * FROM @tablecategory

        UPDATE  dbo.PERMISSION
        SET     Status = 1 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   DepartmentID = @departmentid
                AND Status = 0
                AND SubMenuID IN ( SELECT   Value
                                   FROM     @tablesubmenu )

        INSERT  INTO dbo.PERMISSION
                ( PermissionName ,
                  Status ,
                  DepartmentID ,
                  SubMenuID ,
                  CreateBy ,
                  CreateDate ,
                  UpdateBy ,
                  UpdateDate ,
                  Note
                )
                SELECT  b.SubMenuName ,
                        1 ,
                        @departmentid ,
                        a.Value ,
                        @userid ,
                        GETDATE() ,
                        @userid ,
                        GETDATE() ,
                        ''
                FROM    @tablesubmenu a
                        INNER JOIN dbo.SUB_MENU b ON a.Value = b.SubMenuID
                WHERE   Value NOT IN ( SELECT   SubMenuID
                                       FROM     dbo.PERMISSION
                                       WHERE    DepartmentID = @departmentid )


        UPDATE  dbo.PERMISSION
        SET     Status = 0 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   DepartmentID = @departmentid
                AND SubMenuID NOT IN ( SELECT  Value
                                        FROM    @tablesubmenu )

    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapProductToCategory]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

/*

DECLARE @tablecategory TableTemp
--INSERT INTO @tablecategory(Value) VALUES (1)
INSERT INTO @tablecategory(Value) VALUES (3)
INSERT INTO @tablecategory(Value) VALUES (4)

exec pos_th_SaveDataMapProductToCategory @catalogueid=9,@userid=0,@tablecategory=@tablecategory


*/



create PROCEDURE [dbo].[pos_th_SaveDataMapProductToCategory]
    @categoryid INT = 0 ,
    @userid INT = 0 ,
    @tableproduct TableTemp READONLY
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;


		--SELECT * FROM @tablecategory

		    UPDATE  dbo.MAP_PRODUCT_TO_CATEGORY
        SET     Status = 1 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   CategoryID = @categoryid AND Status=0
                AND ProductID IN ( SELECT  Value
                                        FROM   @tableproduct )

        INSERT  INTO dbo.MAP_PRODUCT_TO_CATEGORY
                ( ProductID ,
                  CategoryID ,
                  Status ,
                  Note ,
                  CreateBy ,
                  CreateDate ,
                  UpdateBy ,
                  UpdateDate
	            )
                SELECT  Value ,
                        @categoryid ,
                        1 ,
                        '' ,
                        @userid ,
                        GETDATE() ,
                        @userid ,
                        GETDATE()
                FROM    @tableproduct
                WHERE   Value NOT IN ( SELECT   ProductID
                                       FROM     dbo.MAP_PRODUCT_TO_CATEGORY
                                       WHERE    CategoryID = @categoryid
                                         )


        UPDATE  MAP_PRODUCT_TO_CATEGORY
        SET     Status = 0 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   CategoryID = @categoryid
                AND ProductID NOT IN ( SELECT  Value
                                        FROM    @tableproduct )

    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapModifireToProduct]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[pos_th_SaveDataMapModifireToProduct]
	-- Add the parameters for the stored procedure here
   @productid INT = 0 ,
    @userid INT = 0 ,
    @tablemodifire TableTemp READONLY
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;


		--SELECT * FROM @tablecategory

		    UPDATE  MAP_MODIFIRE_TO_PRODUCT
        SET     Status = 1 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   ProductID = @productid AND Status=0
                AND ModifireID IN ( SELECT  Value
                                        FROM   @tablemodifire )

        INSERT  INTO dbo.MAP_MODIFIRE_TO_PRODUCT
                ( ModifireID ,
                  ProductID ,
                  Status ,
                  Note ,
                  CreateBy ,
                  CreateDate ,
                  UpdateBy ,
                  UpdateDate
	            )
                SELECT  Value ,
                        @productid ,
                        1 ,
                        '' ,
                        @userid ,
                        GETDATE() ,
                        @userid ,
                        GETDATE()
                FROM    @tablemodifire
                WHERE   Value NOT IN ( SELECT   ModifireID
                                       FROM     dbo.MAP_MODIFIRE_TO_PRODUCT
                                       WHERE    ProductID = @productid
                                         )


        UPDATE  MAP_MODIFIRE_TO_PRODUCT
        SET     Status = 0 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   ProductID = @productid
                AND ModifireID NOT IN ( SELECT  Value
                                        FROM    @tablemodifire )

    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapCategoryToCatalogue]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

/*

DECLARE @tablecategory TableTemp
--INSERT INTO @tablecategory(Value) VALUES (1)
INSERT INTO @tablecategory(Value) VALUES (3)
INSERT INTO @tablecategory(Value) VALUES (4)

exec pos_th_SaveDataMapCategoryToCatalogue @catalogueid=9,@userid=0,@tablecategory=@tablecategory


*/



create PROCEDURE [dbo].[pos_th_SaveDataMapCategoryToCatalogue]
    @catalogueid INT = 0 ,
    @userid INT = 0 ,
    @tablecategory TableTemp READONLY
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;


		--SELECT * FROM @tablecategory

		    UPDATE  MAP_CATEGORY_TO_CATALOGUE
        SET     Status = 1 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   CatalogueID = @catalogueid AND Status=0
                AND CategoryID IN ( SELECT  Value
                                        FROM   @tablecategory )

        INSERT  INTO dbo.MAP_CATEGORY_TO_CATALOGUE
                ( CategoryID ,
                  CatalogueID ,
                  Status ,
                  Note ,
                  CreateBy ,
                  CreateDate ,
                  UpdateBy ,
                  UpdateDate
	            )
                SELECT  Value ,
                        @catalogueid ,
                        1 ,
                        '' ,
                        @userid ,
                        GETDATE() ,
                        @userid ,
                        GETDATE()
                FROM    @tablecategory
                WHERE   Value NOT IN ( SELECT   categoryid
                                       FROM     dbo.MAP_CATEGORY_TO_CATALOGUE
                                       WHERE    CatalogueID = @catalogueid
                                         )


        UPDATE  MAP_CATEGORY_TO_CATALOGUE
        SET     Status = 0 ,
                UpdateBy = @userid ,
                UpdateDate = GETDATE()
        WHERE   CatalogueID = @catalogueid
                AND CategoryID NOT IN ( SELECT  Value
                                        FROM    @tablecategory )

    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetShiftReport]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetShiftReport]
    @dateselect NVARCHAR(20) = ''
AS
    BEGIN
	
        SET NOCOUNT ON;

        DECLARE @startdate DATETIME= CONVERT(DATETIME, @dateselect
            + ' 00:00:00');
        DECLARE @enddate DATETIME= CONVERT(DATETIME, @dateselect + ' 23:59:59');

        SELECT  sh.ShiftHistoryID ,
                sh.ShiftName ,
                s.UserName ,
                sh.StartShift ,
                sh.EndShift ,
                sh.CashStart ,
                sh.CashEnd ,
                sh.SafeDrop ,
                ISNULL(SUM(inv.TotalCash), 0) AS TotalCash ,
                ISNULL(SUM(inv.Total), 0) AS TotalSale
        FROM    dbo.SHIFT_HISTORY sh
                INNER JOIN dbo.STAFF s ON s.StaffID = sh.StaffID
                LEFT JOIN ( SELECT  INV.ShiftID ,
                                    INV.Total ,
                                    INV.Change ,
                                    INV.InvoiceID ,
                                    ISNULL(SUM(PHM.Total), 0)
                                    - ISNULL(INV.Change, 0) AS TotalCash
                            FROM    dbo.INVOICE INV
                                    LEFT JOIN dbo.PAYMENT_INVOICE_HISTORY PHM ON PHM.InvoiceID = INV.InvoiceID
                            WHERE   PaymentTypeID = 1
                            GROUP BY INV.ShiftID ,
                                    INV.Change ,
                                    INV.Total ,
                                    INV.InvoiceID
                          ) AS INV ON inv.ShiftID = sh.ShiftHistoryID
        WHERE   sh.CreateDate BETWEEN @startdate AND @enddate and sh.Status=2
        GROUP BY sh.ShiftHistoryID ,
                sh.ShiftName ,
                s.UserName ,
                sh.StartShift ,
                sh.EndShift ,
                sh.CashStart ,
                sh.CashEnd ,
                sh.SafeDrop 
      
    END
GO
/****** Object:  View [dbo].[view_report_invoice]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_report_invoice]

AS

SELECT  cte.CategoryID ,
        cte.CategoryName ,
        inv.InvoiceID ,
        inv.InvoiceNumber ,
        inv.CreateDate ,
		inv.OrderID,
        invd.ProductID ,
		p.ProductNameDesc,
        invd.Qty ,
        invd.Price ,
        invd.Total
FROM    dbo.INVOICE inv
        INNER JOIN dbo.INVOICE_DETAIL invd ON invd.InvoiceNumber = inv.InvoiceNumber
		INNER JOIN dbo.PRODUCT p ON p.ProductID=invd.ProductID
        INNER JOIN dbo.MAP_PRODUCT_TO_CATEGORY mappc ON mappc.ProductID = invd.ProductID
        INNER JOIN dbo.CATEGORY cte ON cte.CategoryID = mappc.CategoryID
WHERE   inv.Status = 1

UNION ALL

SELECT  cte.CategoryID ,
        cte.CategoryName ,
        inv.InvoiceID ,
        inv.InvoiceNumber ,
        inv.CreateDate ,
		inv.OrderID,
        invd.ProductID ,
		p.ProductNameDesc,
        invd.Qty ,
        invd.Price ,
        invd.Total
FROM    dbo.INVOICE_HISTORY inv
        INNER JOIN dbo.INVOICE_DETAIL_HISTORY invd ON invd.InvoiceNumber = inv.InvoiceNumber
		INNER JOIN dbo.PRODUCT p ON p.ProductID=invd.ProductID
        INNER JOIN dbo.MAP_PRODUCT_TO_CATEGORY mappc ON mappc.ProductID = invd.ProductID
        INNER JOIN dbo.CATEGORY cte ON cte.CategoryID = mappc.CategoryID
WHERE   inv.Status = 1
GO
/****** Object:  View [dbo].[VIEW_PAYMENT_INVOICE_HISTORY_ALL]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_PAYMENT_INVOICE_HISTORY_ALL]

AS

SELECT 
	   [PaymentHistoryID]
      ,[InvoiceID]
      ,[InvoiceNumber]
      ,[PaymentTypeID]
      ,[Total]
      ,[Status]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[Note]
  FROM [VyvyMarickville].[dbo].[PAYMENT_INVOICE_HISTORY_ALL]
  
  UNION ALL

  SELECT 
	   [PaymentHistoryID]
      ,[InvoiceID]
      ,[InvoiceNumber]
      ,[PaymentTypeID]
      ,[Total]
      ,[Status]
      ,[CreateBy]
      ,[CreateDate]
      ,[UpdateBy]
      ,[UpdateDate]
      ,[Note]
  FROM [VyvyMarickville].[dbo].[PAYMENT_INVOICE_HISTORY]
GO
/****** Object:  View [dbo].[VIEW_ORDER_DETAIL_MODIFIRE_ALL]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ORDER_DETAIL_MODIFIRE_ALL]

AS

SELECT  OrderModifireID ,
        OrderDetailID ,
        OrderNumber ,
        OrderID ,
        ProductID ,
        KeyModi ,
        ModifireID ,
        Status ,
        Price ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.ORDER_DETAIL_MODIFIRE

UNION ALL

SELECT  OrderModifireID ,
        OrderDetailID ,
        OrderNumber ,
        OrderID ,
        ProductID ,
        KeyModi ,
        ModifireID ,
        Status ,
        Price ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.ORDER_DETAIL_MODIFIRE_DATE
GO
/****** Object:  View [dbo].[VIEW_ORDER_DETAIL_ALL]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ORDER_DETAIL_ALL]
AS

SELECT  OrderDetailID ,
        OrderID ,
        OrderNumber ,
        ProductID ,
        KeyItem ,
        Status,
        Price ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        PrintType ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.ORDER_DETAIL

UNION ALL

SELECT OrderDetailID ,
        OrderID ,
        OrderNumber ,
        ProductID ,
        KeyItem ,
        Status ,
        Price ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        PrintType ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.ORDER_DETAIL_DATE
GO
/****** Object:  View [dbo].[VIEW_ORDER_ALL]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_ORDER_ALL]
AS

SELECT  OrderID ,
        OrderNumber ,
        ClientID ,
        FloorID ,
        Status ,
        TotalAmount ,
        Seat ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note ,
        ShiftID
FROM    dbo.[ORDER]
UNION ALL
SELECT  OrderID ,
        OrderNumber ,
        ClientID ,
        FloorID ,
        Status ,
        TotalAmount ,
        Seat ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note ,
        ShiftID
FROM    dbo.ORDER_DATE
GO
/****** Object:  View [dbo].[VIEW_INVOICE_DETAIL_MODIFIRE_ALL]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_INVOICE_DETAIL_MODIFIRE_ALL]

AS

SELECT  InvoiceModifireID ,
        InvoiceID ,
        InvoiceNumber ,
        OrderModifireID ,
        Status ,
        ProductID ,
        KeyModi ,
        ModifireID ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.INVOICE_DETAIL_MODIFIRE

UNION ALL

SELECT   InvoiceModifireID ,
        InvoiceID ,
        InvoiceNumber ,
        OrderModifireID ,
        Status ,
        ProductID ,
        KeyModi ,
        ModifireID ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.INVOICE_DETAIL_MODIFIRE_HISTORY
GO
/****** Object:  View [dbo].[VIEW_INVOICE_DETAIL_ALL]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_INVOICE_DETAIL_ALL]

AS

SELECT  InvoiceDetailID ,
        InvoiceID ,
        InvoiceNumber ,
        OrderDetailID ,
        KeyItem ,
        Status ,
        ProductID ,
        Price ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        PrintType ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.INVOICE_DETAIL

UNION ALL

SELECT  InvoiceDetailID ,
        InvoiceID ,
        InvoiceNumber ,
        OrderDetailID ,
        KeyItem ,
        Status ,
        ProductID ,
        Price ,
        Qty ,
        Total ,
        Seat ,
        DynId ,
        PrintType ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note
FROM    dbo.INVOICE_DETAIL_HISTORY
GO
/****** Object:  View [dbo].[VIEW_INVOICE_ALL]    Script Date: 07/14/2016 09:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_INVOICE_ALL]

AS

SELECT  InvoiceID ,
        InvoiceNumber ,
        OrderID ,
		OrderNumber,
        Status ,
        Total ,
        Payment ,
        Change ,
        Discount ,
        DiscountType ,
        InvoiceByCardID ,
        CashOut ,
        Seat ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note ,
        ShiftID
FROM    dbo.INVOICE

UNION ALL
SELECT  InvoiceID ,
        InvoiceNumber ,
        OrderID ,
		OrderNumber,
        Status ,
        Total ,
        Payment ,
        Change ,
        Discount ,
        DiscountType ,
        InvoiceByCardID ,
        CashOut ,
        Seat ,
        CreateBy ,
        CreateDate ,
        UpdateBy ,
        UpdateDate ,
        Note ,
        ShiftID
FROM    dbo.INVOICE_HISTORY
GO
/****** Object:  StoredProcedure [dbo].[UpdateToServer]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateToServer] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	INSERT INTO  dbo.[ORDER]
	SELECT * FROM ORDER_DATE D WHERE CONVERT(date, D.CreateDate)<CONVERT(date,SYSDATETIME());
	
	DELETE FROM  ORDER_DATE  WHERE CONVERT(date,CreateDate)<CONVERT(date,SYSDATETIME());
	
	INSERT INTO dbo.[ORDER_DETAIL_MODIFIRE] 
	select * from ORDER_DETAIL_MODIFIRE_DATE M WHERE CONVERT(date, M.CreateDate)<CONVERT(date,SYSDATETIME());
	
	DELETE FROM ORDER_DETAIL_MODIFIRE_DATE  WHERE CONVERT(date, CreateDate)<CONVERT(date,SYSDATETIME());
	
	
	INSERT INTO dbo.[ORDER_DETAIL]  
	select * from ORDER_DETAIL_DATE  M WHERE CONVERT(date, M.CreateDate)<CONVERT(date,SYSDATETIME());
	
	DELETE FROM ORDER_DETAIL_DATE  WHERE CONVERT(date, CreateDate)<CONVERT(date,SYSDATETIME());
	
	INSERT INTO dbo.[ORDER_OPEN_ITEM_ALL] 
	SELECT * FROM ORDER_OPEN_ITEM O  WHERE CONVERT(date, O.CreateDate)<CONVERT(date,SYSDATETIME());
	
	DELETE FROM ORDER_OPEN_ITEM  WHERE CONVERT(date, CreateDate)<CONVERT(date,SYSDATETIME());
END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByCard]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Thien Huynh>
-- Create date: <25/1/2016>
-- Description:	<pos_th_GetDataSaleByCard>
-- =============================================

--  EXEC pos_th_GetDataSaleByCard @dateselect='2016-1-25',@type=0

CREATE PROCEDURE [dbo].[pos_th_GetDataSaleByCard]
    @dateselect NVARCHAR(20) = '' ,
    @type INT = 0
AS
    BEGIN

        SET NOCOUNT ON;

        DECLARE @startdate DATETIME= CONVERT(DATETIME, @dateselect
            + ' 00:00:00');
        DECLARE @enddate DATETIME= CONVERT(DATETIME, @dateselect + ' 23:59:59');

        IF ( @type = 1 )
            BEGIN
                SELECT  @startdate = [dbo].[GetStartDate](@startdate)

                SELECT  @enddate = [dbo].[GetEndDate](@enddate)
            END


        SELECT  ibc.CardID,c.CardName,SUM(ibc.Total) AS Total
        FROM    dbo.INVOICE_BY_CARD ibc
		LEFT JOIN dbo.Card c ON c.CardID = ibc.CardID
        WHERE   ibc.CreateDate BETWEEN @startdate AND @enddate
		GROUP BY ibc.CardID,c.CardName
		ORDER BY c.CardName
		
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByAccount]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Thien Huynh>
-- Create date: <25/1/2016>
-- Description:	<pos_th_GetDataSaleByAccount>
-- =============================================

-- EXEC pos_th_GetDataSaleByAccount @dateselect='2016-02-22',@type=0

CREATE PROCEDURE [dbo].[pos_th_GetDataSaleByAccount]
    @dateselect NVARCHAR(20) = '' ,
    @type INT = 0
AS
    BEGIN

        SET NOCOUNT ON;

        DECLARE @startdate DATETIME= CONVERT(DATETIME, @dateselect
            + ' 00:00:00');
        DECLARE @enddate DATETIME= CONVERT(DATETIME, @dateselect + ' 23:59:59');

        IF ( @type = 1 )
            BEGIN
                SELECT  @startdate = [dbo].[GetStartDate](@startdate)

                SELECT  @enddate = [dbo].[GetEndDate](@enddate)
            END

        SELECT  c.ClientID ,
                ISNULL(c.Fname, '') + ' ' + ISNULL(c.Lname, '') AS FullName ,
                ISNULL(SUM(accp.SubTotal), 0) AS Total
        FROM    dbo.CLIENT c
                INNER JOIN dbo.ACC_PAYMENT accp ON c.ClientID = accp.cusNo
        WHERE   accp.CreateDate BETWEEN @startdate AND @enddate
        GROUP BY c.ClientID ,
                c.Fname ,
                c.Lname
        ORDER BY c.Fname ,
                c.Lname
		
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataProductAndModifire]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetDataProductAndModifire]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT P.ProductID as ID, P.ProductNameDesc AS NameDesc, P.ProductNameSort as NameSort, P.Color as Color, PP.CurrentPrice as CurrentPrice, PP.Portions as Portions, PP.ProductPriceID as PriceID, 'PRODUCT' as Type
	FROM PRODUCT as P LEFT JOIN PRODUCT_PRICE as PP ON P.ProductID = PP.ProductID
	WHERE P.Status = 1

	UNION

	SELECT M.ModifireID as ID, M.ModifireName AS NameDesc, M.ModifireName as NameSort, M.Color as Color, MP.CurrentPrice as CurrentPrice, '' as Portions, MP.ModifirePriceID as PriceID, 'MODIFIRE' as Type
	FROM MODIFIRE as M LEFT JOIN MODIFIRE_PRICE as MP ON M.ModifireID = MP.ModifireID
	WHERE M.Status = 1
END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataListShiftHistoryByUserID]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Thien Huynh>
-- Create date: <03/01/2016>
-- Description:	<get list Shift History>
-- =============================================

--  EXEC pos_th_GetDataListShiftHistoryByUserID @userid=4,@type=1

CREATE PROCEDURE [dbo].[pos_th_GetDataListShiftHistoryByUserID]
    @userid INT = 0 ,
    @type INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;

		  IF OBJECT_ID(N'dbo.TableTemp', N'U') IS NOT NULL
            BEGIN
                DROP TABLE TableTemp
            END

        --DECLARE @deparmentid INT= 0;

        --SELECT TOP 1
        --        @deparmentid = DepartmentID
        --FROM    dbo.STAFF
        --WHERE   StaffID = @userid

        IF ( @type = 0 )
            BEGIN

                SELECT  sh.ShiftHistoryID ,
                        s.StaffID ,
                        sh.ShiftName ,
                        sh.StartShift ,
                        sh.EndShift ,
                        sh.Status ,
                        ISNULL(sh.CashStart, 0) AS CashStart ,
                        ISNULL(sh.CashEnd, 0) AS CashEnd ,
                        ISNULL(sh.SafeDrop, 0) AS SafeDrop ,
                        ISNULL(s.UserName,'') AS UserName
                INTO    TableTemp
                FROM    dbo.SHIFT_HISTORY sh
                        INNER JOIN dbo.STAFF s ON s.StaffID = sh.StaffID
                WHERE   sh.Status = 1
				
				
      --          IF ( @deparmentid = 3 )
      --              BEGIN
      --                  SELECT  *
      --                  FROM    TableTemp
      --                  WHERE   StaffID = @userid
						--ORDER BY StartShift DESC
      --              END
      --          ELSE
      --              BEGIN
                        SELECT  *
                        FROM    TableTemp
						ORDER BY StartShift DESC
                   -- END

				

            END
        ELSE
            BEGIN

                SELECT  sh.ShiftHistoryID ,
                        s.StaffID ,
                        sh.ShiftName ,
                        sh.StartShift ,
                        sh.EndShift ,
                        sh.Status ,
                        ISNULL(sh.CashStart, 0) AS CashStart ,
                        ISNULL(sh.CashEnd, 0) AS CashEnd ,
                        ISNULL(sh.SafeDrop, 0) AS SafeDrop ,
                       ISNULL(s.UserName,'') AS UserName
						INTO   TableTemp
                FROM    dbo.SHIFT_HISTORY sh
                        INNER JOIN dbo.STAFF s ON s.StaffID = sh.StaffID
                WHERE   sh.Status = 2 AND CONVERT(NVARCHAR(10),sh.StartShift,103)=CONVERT(NVARCHAR(10),GETDATE(),103)
              


				  --IF ( @deparmentid = 3 )
      --              BEGIN
      --                  SELECT  *
      --                  FROM    TableTemp
      --                  --WHERE   StaffID = @userid
						--ORDER BY StartShift DESC
      --              END
      --          ELSE
      --              BEGIN
                        SELECT  *
                        FROM    TableTemp
						ORDER BY StartShift DESC
                    --END
            END
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataBackupDatabase]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<THIEN HUYNH>
-- Create date: <24/02/2016>
-- Description:	<GET DATA BACKUP DATABASE>
-- =============================================
CREATE PROCEDURE [dbo].[pos_th_GetDataBackupDatabase]
AS
    BEGIN

        SET NOCOUNT ON;

        SELECT TOP 10  
				a.ID,
				a.FileName ,
                CONVERT(NVARCHAR(10), a.CreateDate, 103) AS CreateDate ,
                s.Fname + ' ' + s.Lname AS FullName ,
                ISNULL(a.Notes, '') AS Description
        FROM    dbo.DATABASE_BACKUP a
                LEFT JOIN dbo.STAFF s ON s.StaffID = a.CreateBy
   
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListProductByCategory]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<thien huynh>
-- Create date: <29/11/2015>
-- Description:	<Description,,>
-- =============================================
/*

		EXEC pos_th_GetAllListProductByCategory @categoryid=1

*/



CREATE PROCEDURE [dbo].[pos_th_GetAllListProductByCategory] @categoryid INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;
	
        SELECT  ProductID,ProductNameDesc,ProductNameSort
        FROM    dbo.PRODUCT
        WHERE   Status = 1
                AND ProductID NOT IN ( SELECT  ProductID
                                        FROM    dbo.MAP_PRODUCT_TO_CATEGORY
                                        WHERE   CategoryID = @categoryid
                                                AND Status = 1 )

    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListPermissionByDepartmentID]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<thien huynh>
-- Create date: <29/11/2015>
-- Description:	<Description,,>
-- =============================================

--EXEC pos_th_GetAllListPermissionByDepartmentID @departmentid=2

create PROCEDURE [dbo].[pos_th_GetAllListPermissionByDepartmentID] @departmentid INT
AS
    BEGIN

        SET NOCOUNT ON;
        SELECT  SubMenuID ,
                SubMenuName
        FROM    dbo.SUB_MENU
        WHERE   Status = 1
                AND SubMenuID NOT IN ( SELECT   SubMenuID
                                       FROM     dbo.PERMISSION
                                       WHERE    DepartmentID = @departmentid
                                                AND Status = 1 )
  
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListCategoryByCatalogue]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<thien huynh>
-- Create date: <29/11/2015>
-- Description:	<Description,,>
-- =============================================
/*

		EXEC pos_th_GetAllListCategoryByCatalogue @catalogueid=3

*/



create PROCEDURE [dbo].[pos_th_GetAllListCategoryByCatalogue] @catalogueid INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;
	
        SELECT  CategoryID,CategoryName,ISNULL(CategoryNameSort,'') AS CategoryNameSort 
        FROM    dbo.CATEGORY
        WHERE   Status = 1
                AND CategoryID NOT IN ( SELECT  CategoryID
                                        FROM    dbo.MAP_CATEGORY_TO_CATALOGUE
                                        WHERE   CatalogueID = @catalogueid
                                                AND Status = 1 )

    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetListProductPrice]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetListProductPrice] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT pp.ProductPriceID,p.ProductID,p.ProductNameDesc,pp.CurrentPrice, pp.Portions
	FROM PRODUCT as p Left Join PRODUCT_PRICE as pp ON p.ProductID = pp.ProductID
	Where p.Status = 1 and pp.Status = 1
END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetListModifireToProduct]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Vu Pham>
-- Create date: <01/12/2015>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[pos_th_GetListModifireToProduct]
	-- Add the parameters for the stored procedure here
	@productID INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM dbo.MODIFIRE 
	Where Status = 1 and 
		  MODIFIRE.ModifireID IN (Select ModifireID
									  From dbo.MAP_MODIFIRE_TO_PRODUCT
									  Where ProductID = @productID
											and Status = 1)
END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetListModifire]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[pos_th_GetListModifire]
	-- Add the parameters for the stored procedure here
	@productID INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM dbo.MODIFIRE 
	Where Status = 1 and 
		  MODIFIRE.ModifireID NOT IN (Select ModifireID
									  From dbo.MAP_MODIFIRE_TO_PRODUCT
									  Where ProductID = @productID
											and Status = 1)
END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDetailProductPrice]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetDetailProductPrice] 
	-- Add the parameters for the stored procedure here
	@productpriceID INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT pp.ProductPriceID,p.ProductID,p.ProductNameDesc,pp.CurrentPrice, pp.Portions
	FROM PRODUCT as p Left Join PRODUCT_PRICE as pp ON p.ProductID = pp.ProductID
	Where pp.ProductPriceID = @productpriceID and p.Status = 1 and pp.Status = 1
END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSummaryReport]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetDataSummaryReport]
    @dateselect NVARCHAR(20) = '' ,
    @type INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;

        DECLARE @startdate DATETIME= CONVERT(DATETIME, @dateselect + ' 00:00:00');
        DECLARE @enddate DATETIME= CONVERT(DATETIME, @dateselect + ' 23:59:59');

        IF ( @type = 1 )
            BEGIN
                SELECT  @startdate = [dbo].[GetStartDate](@startdate)

                SELECT  @enddate = [dbo].[GetEndDate](@enddate)
            END

        --SELECT  @startdate ,
        --        @enddate


        SELECT  A.NetSale ,
                a.Discount ,
                a.Change ,
                a.Refund ,
               ( B.CashTotal  - A.Change ) AS CashTotal ,
                B.CardTotal ,
                b.ChequeTotal ,
                b.AccountTotal ,
                b.GrifCardTotal
        FROM    ( SELECT    ISNULL(SUM(inv.Total), 0) AS NetSale ,
                            ISNULL(SUM(inv.Discount), 0) AS Discount ,
                            ISNULL(SUM(inv.Change), 0) AS Change ,
                            0 AS Refund
                  FROM      VIEW_INVOICE_ALL inv
                            INNER JOIN VIEW_ORDER_ALL oc ON oc.OrderNumber = inv.OrderNumber
                                                            AND oc.Status = 1
                  WHERE     inv.Status = 1
                            AND inv.CreateDate BETWEEN @startdate AND @enddate
                ) AS A ,
                ( SELECT    ISNULL(MAX(temp.TotalCash), 0) AS CashTotal ,
                            ISNULL(MAX(temp.TotalCard), 0) AS CardTotal ,
                            ISNULL(MAX(temp.TotalCheque), 0) AS ChequeTotal ,
                            ISNULL(MAX(temp.TotalAccount), 0) AS AccountTotal ,
                            ISNULL(MAX(temp.TotalGiftCard), 0) AS GrifCardTotal
                  FROM      ( SELECT    CASE WHEN PaymentTypeID = 1
                                             THEN SUM(Total)
                                             ELSE 0
                                        END AS TotalCash ,
                                        CASE WHEN PaymentTypeID = 2
                                             THEN SUM(Total)
                                             ELSE 0
                                        END AS TotalCard ,
                                        CASE WHEN PaymentTypeID = 3
                                             THEN SUM(Total)
                                             ELSE 0
                                        END AS TotalCheque ,
                                        CASE WHEN PaymentTypeID = 4
                                             THEN SUM(Total)
                                             ELSE 0
                                        END AS TotalAccount ,
                                        CASE WHEN PaymentTypeID = 5
                                             THEN SUM(Total)
                                             ELSE 0
                                        END AS TotalGiftCard
                              FROM      VIEW_PAYMENT_INVOICE_HISTORY_ALL
                              WHERE     Status = 1
                                        AND CreateDate BETWEEN @startdate AND @enddate
                              GROUP BY  PaymentTypeID
                            ) AS temp
                ) AS B
    
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetReportSaleByStaff]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetReportSaleByStaff]
    @dateselect NVARCHAR(20) = '' ,
    @type INT = 0
AS
    BEGIN

        SET NOCOUNT ON;
        DECLARE @startdate DATETIME= CONVERT(DATETIME, @dateselect + ' 00:00:00');
        DECLARE @enddate DATETIME= CONVERT(DATETIME, @dateselect + ' 23:59:59');

        IF ( @type = 1 )
            BEGIN
                SELECT  @startdate = [dbo].[GetStartDate](@startdate)

                SELECT  @enddate = [dbo].[GetEndDate](@enddate)
            END
		

        SELECT  s.StaffID,s.UserName,SUM(inv.Total) AS Total
        FROM    dbo.VIEW_INVOICE_ALL inv
				INNER JOIN dbo.STAFF s ON s.StaffID=inv.CreateBy
        WHERE   inv.CreateDate BETWEEN @startdate AND @enddate AND inv.Status=1
		GROUP BY s.StaffID,s.UserName
   
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetQTYItemSaleReport]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetQTYItemSaleReport]
    @dateselect NVARCHAR(20) = '' ,
    @type INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;

        DECLARE @startdate DATETIME= CONVERT(DATETIME, @dateselect
            + ' 00:00:00');
        DECLARE @enddate DATETIME= CONVERT(DATETIME, @dateselect + ' 23:59:59');

        IF ( @type = 1 )
            BEGIN
                SELECT  @startdate = [dbo].[GetStartDate](@startdate)

                SELECT  @enddate = [dbo].[GetEndDate](@enddate)
            END

		--SELECT @startdate,@enddate

        SELECT  ProductID ,
				ProductNameDesc ,
				SUM(qty) AS TotalQty
        FROM    view_report_invoice
        WHERE   CreateDate BETWEEN @startdate AND @enddate
		GROUP BY ProductID ,
				ProductNameDesc 
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetQTYGroupSaleReport]    Script Date: 07/14/2016 09:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pos_th_GetQTYGroupSaleReport]
    @dateselect NVARCHAR(20) = '' ,
    @type INT = 0
AS
    BEGIN
	
        SET NOCOUNT ON;

        DECLARE @startdate DATETIME= CONVERT(DATETIME, @dateselect
            + ' 00:00:00');
        DECLARE @enddate DATETIME= CONVERT(DATETIME, @dateselect + ' 23:59:59');

        IF ( @type = 1 )
            BEGIN
                SELECT  @startdate = [dbo].[GetStartDate](@startdate)

                SELECT  @enddate = [dbo].[GetEndDate](@enddate)
            END

		--SELECT @startdate,@enddate

        SELECT  CategoryID ,
				CategoryName ,
				SUM(qty) AS TotalQty
        FROM    view_report_invoice
        WHERE   CreateDate BETWEEN @startdate AND @enddate
		GROUP BY CategoryID ,
				CategoryName
    END
GO
/****** Object:  Default [DF_CATALOGUE_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CATALOGUE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CATALOGUE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CATALOGUE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CATALOGUE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CATEGORY_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CATEGORY_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CATEGORY_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CATEGORY_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CATEGORY_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CLIENT_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CLIENT_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CLIENT_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CLIENT_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CLIENT_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_Type]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_DATABASE_BACKUP_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_DATABASE_BACKUP_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_DEPARMENT_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_DEPARMENT_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_DEPARMENT_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_DEPARMENT_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_DEPARMENT_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_FLOOR_Priority]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_FLOOR_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_FLOOR_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_FLOOR_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_FLOOR_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_FLOOR_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_Satust]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_OrderDetailID]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_OrderDetailID]  DEFAULT ((0)) FOR [OrderDetailID]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_Satust]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MENU_Priority]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_MENU_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MENU_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MENU_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MENU_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MENU_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MODIFIRE_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MODIFIRE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MODIFIRE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MODIFIRE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MODIFIRE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDERDATE_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDERDATE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDERDATE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDERDATE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDERDATE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_Satust]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_Satust_1]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_Satust_1]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_CreateBy_1]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_CreateBy_1]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_CreateDate_1]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_UpdateBy_1]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_UpdateBy_1]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_UpdateDate_1]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_UpdateDate_1]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_Satust]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_Satust]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PERMISSION_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PERMISSION_DeparmentID]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_DeparmentID]  DEFAULT ((0)) FOR [DepartmentID]
GO
/****** Object:  Default [DF_PERMISSION_SubMenuID]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_SubMenuID]  DEFAULT ((0)) FOR [SubMenuID]
GO
/****** Object:  Default [DF_PERMISSION_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PERMISSION_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PERMISSION_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PERMISSION_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CategoryID]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CategoryID]  DEFAULT ((0)) FOR [CategoryID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_ProductID]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_ProductID]  DEFAULT ((0)) FOR [ProductID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_PrinterID]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_PrinterID]  DEFAULT ((0)) FOR [PrinterID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_TemplatesID]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_TemplatesID]  DEFAULT ((0)) FOR [TemplatesID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRINTER_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRINTER_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRINTER_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRINTER_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRODUCT_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PRODUCT_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRODUCT_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRODUCT_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRODUCT_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_StartShift]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_StartShift]  DEFAULT (getdate()) FOR [StartShift]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CashStart]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CashStart]  DEFAULT ((0)) FOR [CashStart]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CashEnd]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CashEnd]  DEFAULT ((0)) FOR [CashEnd]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_SafeDrop]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_SafeDrop]  DEFAULT ((0)) FOR [SafeDrop]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_STAFF_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_STAFF_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_STAFF_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_STAFF_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_STAFF_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_SUB_MENU_Priority]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_SUB_MENU_Status]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_SUB_MENU_CreateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_SUB_MENU_CreateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_SUB_MENU_UpdateBy]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_SUB_MENU_UpdateDate]    Script Date: 07/14/2016 09:43:50 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
