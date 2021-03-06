USE [VyvyMarickville]
GO
/****** Object:  Table [dbo].[VOID_ITEM_HISTORY]    Script Date: 08/29/2016 13:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOID_ITEM_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [int] NULL,
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
/****** Object:  UserDefinedTableType [dbo].[TableTemp]    Script Date: 08/29/2016 13:33:28 ******/
CREATE TYPE [dbo].[TableTemp] AS TABLE(
	[Value] [int] NULL
)
GO
/****** Object:  Table [dbo].[TableTemp]    Script Date: 08/29/2016 13:33:27 ******/
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
/****** Object:  Table [dbo].[SUB_MENU]    Script Date: 08/29/2016 13:33:27 ******/
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
/****** Object:  Table [dbo].[STAFF]    Script Date: 08/29/2016 13:33:27 ******/
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
/****** Object:  Table [dbo].[SHIFT_HISTORY]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[SEAT]    Script Date: 08/29/2016 13:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Seat] [int] NULL,
	[OrderNumber] [int] NULL,
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
/****** Object:  Table [dbo].[PRODUCT_PRICE]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[PRINTER]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'EPSON TM-T81 Receipt', N'All', N'ALL', 0, 3, 1, 0, CAST(0x0000A599016F8194 AS DateTime), 0, CAST(0x0000A64B01283658 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'EPSON TM-T81 Receipt', N'JoinTable', N'JoinTable', 2, 1, 1, 0, CAST(0x0000A59A0172019E AS DateTime), 0, CAST(0x0000A64B01283C4B AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'EPSON TM-T81 Receipt', N'BILL', N'BIll', 4, 1, 1, 0, CAST(0x0000A59A0181A0C6 AS DateTime), 0, CAST(0x0000A64B0128411A AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'EPSON TM-T81 Receipt', N'Transfer Table', N'TRANFER TABLE', 3, 1, 1, 0, CAST(0x0000A5B60161753C AS DateTime), 0, CAST(0x0000A64B012844CA AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'EPSON TM-T81 Receipt', N'REPORT', N'REPORT', 5, 1, 1, 0, CAST(0x0000A5C4015C5EA3 AS DateTime), 0, CAST(0x0000A64B01284892 AS DateTime))
SET IDENTITY_INSERT [dbo].[PRINTER] OFF
/****** Object:  Table [dbo].[PRINTE_JOB_DETAIL]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[PRINT_JOB]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  UserDefinedFunction [dbo].[GetEndDate]    Script Date: 08/29/2016 13:33:32 ******/
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
/****** Object:  Table [dbo].[FLOOR]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[DATABASE_BACKUP]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[CONFIG_SAVE_DATA]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[CONFIG]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[CLIENT]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[CATALOGUE]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[Card]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  UserDefinedFunction [dbo].[Auto_Create_Code]    Script Date: 08/29/2016 13:33:32 ******/
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
/****** Object:  Table [dbo].[ACC_PAYMENT]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[INVOICE_HISTORY]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[INVOICE_DETAIL_MODIFIRE]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, N'12016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007B07F8 AS DateTime), 0, CAST(0x0000A66F007B07F8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 1, N'12016827', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007B07F8 AS DateTime), 0, CAST(0x0000A66F007B07F8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 1, N'12016827', 0, 0, 76, 3, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007B07F8 AS DateTime), 0, CAST(0x0000A66F007B07F8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 2, N'22016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007C439A AS DateTime), 0, CAST(0x0000A66F007C439A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 4, N'42016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007D7716 AS DateTime), 0, CAST(0x0000A66F007D7716 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 7, N'72016827', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F0084C88B AS DateTime), 0, CAST(0x0000A66F0084C88B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 13, N'132016827', 0, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00912115 AS DateTime), 0, CAST(0x0000A66F00912115 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 14, N'142016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00923B10 AS DateTime), 0, CAST(0x0000A66F00923B10 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 15, N'152016827', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F0092B9CD AS DateTime), 0, CAST(0x0000A66F0092B9CD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 18, N'182016827', 8, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00942FB8 AS DateTime), 0, CAST(0x0000A66F00942FB8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 20, N'202016827', 0, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00957329 AS DateTime), 0, CAST(0x0000A66F00957329 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 26, N'262016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00990942 AS DateTime), 0, CAST(0x0000A66F00990942 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 27, N'272016827', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009A5283 AS DateTime), 0, CAST(0x0000A66F009A5283 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 31, N'312016827', 0, 0, 76, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009E73D5 AS DateTime), 0, CAST(0x0000A66F009E73D5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 33, N'332016827', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009F9F54 AS DateTime), 0, CAST(0x0000A66F009F9F54 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 35, N'352016827', 16, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00A2224A AS DateTime), 0, CAST(0x0000A66F00A2224A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 41, N'412016827', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00ACEF92 AS DateTime), 0, CAST(0x0000A66F00ACEF92 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 42, N'422016827', 0, 0, 84, 1, 7, 500, 1, 4500, 0, 0, 0, CAST(0x0000A66F00B07AB0 AS DateTime), 0, CAST(0x0000A66F00B07AB0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 42, N'422016827', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B07AB0 AS DateTime), 0, CAST(0x0000A66F00B07AB0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 44, N'442016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B14004 AS DateTime), 0, CAST(0x0000A66F00B14004 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 45, N'452016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B27170 AS DateTime), 0, CAST(0x0000A66F00B27170 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 48, N'482016827', 25, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B394AD AS DateTime), 0, CAST(0x0000A66F00B394AD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 49, N'492016827', 23, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B3AF49 AS DateTime), 0, CAST(0x0000A66F00B3AF49 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 52, N'522016827', 0, 0, 76, 3, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00BC2583 AS DateTime), 0, CAST(0x0000A66F00BC2583 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 54, N'542016827', 19, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00BEB9C2 AS DateTime), 0, CAST(0x0000A66F00BEB9C2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 60, N'602016827', 0, 0, 78, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00C8FD9C AS DateTime), 0, CAST(0x0000A66F00C8FD9C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 60, N'602016827', 0, 0, 78, 2, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00C8FD9C AS DateTime), 0, CAST(0x0000A66F00C8FD9C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 61, N'612016827', 26, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00C964B3 AS DateTime), 0, CAST(0x0000A66F00C964B3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 61, N'612016827', 27, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00C964B3 AS DateTime), 0, CAST(0x0000A66F00C964B3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 68, N'682016827', 0, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D02C99 AS DateTime), 0, CAST(0x0000A66F00D02C99 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 68, N'682016827', 0, 0, 77, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D02C99 AS DateTime), 0, CAST(0x0000A66F00D02C99 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 70, N'702016827', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D1ABC4 AS DateTime), 0, CAST(0x0000A66F00D1ABC4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 71, N'712016827', 28, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D4D886 AS DateTime), 0, CAST(0x0000A66F00D4D886 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 76, N'762016827', 39, 0, 78, 4, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00EA97E4 AS DateTime), 0, CAST(0x0000A66F00EA97E4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 80, N'802016827', 36, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F19AE8 AS DateTime), 0, CAST(0x0000A66F00F19AE8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 82, N'822016827', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F68D52 AS DateTime), 0, CAST(0x0000A66F00F68D52 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 82, N'822016827', 0, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F68D52 AS DateTime), 0, CAST(0x0000A66F00F68D52 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 84, N'842016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F77036 AS DateTime), 0, CAST(0x0000A66F00F77036 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 85, N'852016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F86D65 AS DateTime), 0, CAST(0x0000A66F00F86D65 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 88, N'882016827', 34, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00FCF86E AS DateTime), 0, CAST(0x0000A66F00FCF86E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 89, N'892016827', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00FFF57D AS DateTime), 0, CAST(0x0000A66F00FFF57D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 97, N'972016827', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F01099291 AS DateTime), 0, CAST(0x0000A66F01099291 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 104, N'1042016827', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F011E9F3A AS DateTime), 0, CAST(0x0000A66F011E9F3A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 107, N'1072016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670007A9775 AS DateTime), 0, CAST(0x0000A670007A9775 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 107, N'1072016828', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670007A9775 AS DateTime), 0, CAST(0x0000A670007A9775 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 110, N'1102016828', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000811C1B AS DateTime), 0, CAST(0x0000A67000811C1B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 112, N'1122016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000821F64 AS DateTime), 0, CAST(0x0000A67000821F64 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 113, N'1132016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700084DD32 AS DateTime), 0, CAST(0x0000A6700084DD32 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 114, N'1142016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700084EBEA AS DateTime), 0, CAST(0x0000A6700084EBEA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 116, N'1162016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700086D488 AS DateTime), 0, CAST(0x0000A6700086D488 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 117, N'1172016828', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670008A702D AS DateTime), 0, CAST(0x0000A670008A702D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 120, N'1202016828', 0, 0, 77, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000942D47 AS DateTime), 0, CAST(0x0000A67000942D47 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 123, N'1232016828', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700094D9E3 AS DateTime), 0, CAST(0x0000A6700094D9E3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 126, N'1262016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700095DC8C AS DateTime), 0, CAST(0x0000A6700095DC8C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 127, N'1272016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670009B9AFC AS DateTime), 0, CAST(0x0000A670009B9AFC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 133, N'1332016828', 13, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000AC5ACC AS DateTime), 0, CAST(0x0000A67000AC5ACC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 133, N'1332016828', 14, 0, 77, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000AC5ACC AS DateTime), 0, CAST(0x0000A67000AC5ACC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 135, N'1352016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B09453 AS DateTime), 0, CAST(0x0000A67000B09453 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 136, N'1362016828', 15, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B22B63 AS DateTime), 0, CAST(0x0000A67000B22B63 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 138, N'1382016828', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B68BA8 AS DateTime), 0, CAST(0x0000A67000B68BA8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 139, N'1392016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B7BD33 AS DateTime), 0, CAST(0x0000A67000B7BD33 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 140, N'1402016828', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B7DFFA AS DateTime), 0, CAST(0x0000A67000B7DFFA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 143, N'1432016828', 19, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000BD4B6C AS DateTime), 0, CAST(0x0000A67000BD4B6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 144, N'1442016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000C0EC1A AS DateTime), 0, CAST(0x0000A67000C0EC1A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 154, N'1542016828', 0, 0, 78, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D06B53 AS DateTime), 0, CAST(0x0000A67000D06B53 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 156, N'1562016828', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D15FA3 AS DateTime), 0, CAST(0x0000A67000D15FA3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 159, N'1592016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D97122 AS DateTime), 0, CAST(0x0000A67000D97122 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 159, N'1592016828', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D97122 AS DateTime), 0, CAST(0x0000A67000D97122 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 164, N'1642016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000EBE2CF AS DateTime), 0, CAST(0x0000A67000EBE2CF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 169, N'1692016828', 28, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67001000417 AS DateTime), 0, CAST(0x0000A67001000417 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 170, N'1702016828', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700102AA3D AS DateTime), 0, CAST(0x0000A6700102AA3D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 175, N'1752016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670010E9DF3 AS DateTime), 0, CAST(0x0000A670010E9DF3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 175, N'1752016828', 0, 0, 76, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670010E9DF3 AS DateTime), 0, CAST(0x0000A670010E9DF3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 176, N'1762016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67001107608 AS DateTime), 0, CAST(0x0000A67001107608 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 178, N'1782016828', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700121B60F AS DateTime), 0, CAST(0x0000A6700121B60F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 181, N'1812016829', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100748999 AS DateTime), 0, CAST(0x0000A67100748999 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 182, N'1822016829', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100753158 AS DateTime), 0, CAST(0x0000A67100753158 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 182, N'1822016829', 0, 0, 77, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100753158 AS DateTime), 0, CAST(0x0000A67100753158 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 184, N'1842016829', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6710077E316 AS DateTime), 0, CAST(0x0000A6710077E316 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 187, N'1872016829', 5, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A671007BD91B AS DateTime), 0, CAST(0x0000A671007BD91B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 189, N'1892016829', 0, 0, 76, 1, 7, 500, 1, 3500, 0, 0, 0, CAST(0x0000A671007E73D1 AS DateTime), 0, CAST(0x0000A671007E73D1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 191, N'1912016829', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100853633 AS DateTime), 0, CAST(0x0000A67100853633 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 193, N'1932016829', 8, 0, 79, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6710095AF46 AS DateTime), 0, CAST(0x0000A6710095AF46 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 204, N'2042016829', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100A368AF AS DateTime), 0, CAST(0x0000A67100A368AF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 204, N'2042016829', 0, 0, 77, 2, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100A368AF AS DateTime), 0, CAST(0x0000A67100A368AF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 205, N'2052016829', 0, 0, 79, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100A42D78 AS DateTime), 0, CAST(0x0000A67100A42D78 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 207, N'2072016829', 9, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100A9B9CB AS DateTime), 0, CAST(0x0000A67100A9B9CB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 213, N'2132016829', 0, 0, 77, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100BA63CC AS DateTime), 0, CAST(0x0000A67100BA63CC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 217, N'2172016829', 0, 0, 76, 1, 6, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100C4AF94 AS DateTime), 0, CAST(0x0000A67100C4AF94 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] OFF
/****** Object:  Table [dbo].[INVOICE_DETAIL_HISTORY]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[INVOICE_DETAIL]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, N'12016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F007B07F4 AS DateTime), 0, CAST(0x0000A66F007B07F4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 1, N'12016827', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F007B07F4 AS DateTime), 0, CAST(0x0000A66F007B07F4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 1, N'12016827', 0, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F007B07F4 AS DateTime), 0, CAST(0x0000A66F007B07F4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 2, N'22016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F007C439A AS DateTime), 0, CAST(0x0000A66F007C439A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 3, N'32016827', 4, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F007C57DC AS DateTime), 0, CAST(0x0000A66F007C57DC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 3, N'32016827', 0, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F007C57DC AS DateTime), 0, CAST(0x0000A66F007C57DC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 4, N'42016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F007D7716 AS DateTime), 0, CAST(0x0000A66F007D7716 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 5, N'52016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F007FFA58 AS DateTime), 0, CAST(0x0000A66F007FFA58 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 6, N'62016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F0084AB3C AS DateTime), 0, CAST(0x0000A66F0084AB3C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 6, N'62016827', 0, 2, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F0084AB3C AS DateTime), 0, CAST(0x0000A66F0084AB3C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 7, N'72016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F0084C88A AS DateTime), 0, CAST(0x0000A66F0084C88A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 8, N'82016827', 0, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F008579B3 AS DateTime), 0, CAST(0x0000A66F008579B3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 9, N'92016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F0088E3D1 AS DateTime), 0, CAST(0x0000A66F0088E3D1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 9, N'92016827', 0, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F0088E3D1 AS DateTime), 0, CAST(0x0000A66F0088E3D1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 10, N'102016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00897B17 AS DateTime), 0, CAST(0x0000A66F00897B17 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 11, N'112016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F008A4EF7 AS DateTime), 0, CAST(0x0000A66F008A4EF7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 11, N'112016827', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F008A4EF7 AS DateTime), 0, CAST(0x0000A66F008A4EF9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 12, N'122016827', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F008C633E AS DateTime), 0, CAST(0x0000A66F008C633E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 12, N'122016827', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F008C633E AS DateTime), 0, CAST(0x0000A66F008C633E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 13, N'132016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00912115 AS DateTime), 0, CAST(0x0000A66F00912115 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 14, N'142016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00923B10 AS DateTime), 0, CAST(0x0000A66F00923B10 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 15, N'152016827', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F0092B9CD AS DateTime), 0, CAST(0x0000A66F0092B9CD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 16, N'162016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00935D8E AS DateTime), 0, CAST(0x0000A66F00935D8E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 17, N'172016827', 0, 1, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F00936AA2 AS DateTime), 0, CAST(0x0000A66F00936AA2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 18, N'182016827', 20, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00942FB7 AS DateTime), 0, CAST(0x0000A66F00942FB7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 19, N'192016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009464BB AS DateTime), 0, CAST(0x0000A66F009464BB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 20, N'202016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00957328 AS DateTime), 0, CAST(0x0000A66F00957328 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 20, N'202016827', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00957328 AS DateTime), 0, CAST(0x0000A66F00957328 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 20, N'202016827', 0, 3, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F00957328 AS DateTime), 0, CAST(0x0000A66F00957328 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 21, N'212016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00959056 AS DateTime), 0, CAST(0x0000A66F00959056 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 21, N'212016827', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00959056 AS DateTime), 0, CAST(0x0000A66F00959056 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 22, N'222016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F0095E823 AS DateTime), 0, CAST(0x0000A66F0095E823 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 22, N'222016827', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F0095E823 AS DateTime), 0, CAST(0x0000A66F0095E823 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 22, N'222016827', 0, 3, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F0095E823 AS DateTime), 0, CAST(0x0000A66F0095E823 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 23, N'232016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00972A28 AS DateTime), 0, CAST(0x0000A66F00972A28 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 24, N'242016827', 36, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F0097EA97 AS DateTime), 0, CAST(0x0000A66F0097EA97 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 25, N'252016827', 25, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F0098B8A7 AS DateTime), 0, CAST(0x0000A66F0098B8A7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 26, N'262016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00990942 AS DateTime), 0, CAST(0x0000A66F00990942 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 27, N'272016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009A5283 AS DateTime), 0, CAST(0x0000A66F009A5283 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 27, N'272016827', 0, 2, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009A5283 AS DateTime), 0, CAST(0x0000A66F009A5283 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 28, N'282016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009B6E25 AS DateTime), 0, CAST(0x0000A66F009B6E25 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 29, N'292016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009C54A2 AS DateTime), 0, CAST(0x0000A66F009C54A2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 30, N'302016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009C7A72 AS DateTime), 0, CAST(0x0000A66F009C7A72 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 31, N'312016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009E73D4 AS DateTime), 0, CAST(0x0000A66F009E73D4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 32, N'322016827', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F009F9086 AS DateTime), 0, CAST(0x0000A66F009F9086 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 33, N'332016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F009F9F54 AS DateTime), 0, CAST(0x0000A66F009F9F54 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 34, N'342016827', 0, 1, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F009FD0A0 AS DateTime), 0, CAST(0x0000A66F009FD0A0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 34, N'342016827', 0, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F009FD0A0 AS DateTime), 0, CAST(0x0000A66F009FD0A0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 35, N'352016827', 48, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00A2224A AS DateTime), 0, CAST(0x0000A66F00A2224A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 36, N'362016827', 0, 1, 0, 136, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F00A300B8 AS DateTime), 0, CAST(0x0000A66F00A300B8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 37, N'372016827', 49, 1, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A66F00A443C8 AS DateTime), 0, CAST(0x0000A66F00A443C8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 38, N'382016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00A50108 AS DateTime), 0, CAST(0x0000A66F00A50108 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 39, N'392016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00A5D9BB AS DateTime), 0, CAST(0x0000A66F00A5D9BB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 40, N'402016827', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00A9BDE5 AS DateTime), 0, CAST(0x0000A66F00A9BDE5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 41, N'412016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00ACEF92 AS DateTime), 0, CAST(0x0000A66F00ACEF92 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 42, N'422016827', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00B07AAF AS DateTime), 0, CAST(0x0000A66F00B07AAF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 42, N'422016827', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B07AAF AS DateTime), 0, CAST(0x0000A66F00B07AAF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 43, N'432016827', 50, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B0A00B AS DateTime), 0, CAST(0x0000A66F00B0A00B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 44, N'442016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B14004 AS DateTime), 0, CAST(0x0000A66F00B14004 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 45, N'452016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B27170 AS DateTime), 0, CAST(0x0000A66F00B27170 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 46, N'462016827', 55, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F00B2F667 AS DateTime), 0, CAST(0x0000A66F00B2F667 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 47, N'472016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B30C39 AS DateTime), 0, CAST(0x0000A66F00B30C39 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 48, N'482016827', 70, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B394AD AS DateTime), 0, CAST(0x0000A66F00B394AD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 48, N'482016827', 71, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B394AD AS DateTime), 0, CAST(0x0000A66F00B394AD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 48, N'482016827', 72, 3, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B394AD AS DateTime), 0, CAST(0x0000A66F00B394AD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 48, N'482016827', 73, 4, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B394AD AS DateTime), 0, CAST(0x0000A66F00B394AD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 49, N'492016827', 66, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B3AF48 AS DateTime), 0, CAST(0x0000A66F00B3AF48 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 50, N'502016827', 61, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00B3FE4D AS DateTime), 0, CAST(0x0000A66F00B3FE4D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 51, N'512016827', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00B63DBD AS DateTime), 0, CAST(0x0000A66F00B63DBD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 52, N'522016827', 75, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00BC2583 AS DateTime), 0, CAST(0x0000A66F00BC2583 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 52, N'522016827', 76, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00BC2583 AS DateTime), 0, CAST(0x0000A66F00BC2583 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 52, N'522016827', 0, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00BC2583 AS DateTime), 0, CAST(0x0000A66F00BC2583 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 53, N'532016827', 78, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00BC5A5D AS DateTime), 0, CAST(0x0000A66F00BC5A5D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 53, N'532016827', 79, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00BC5A5D AS DateTime), 0, CAST(0x0000A66F00BC5A5D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 54, N'542016827', 62, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00BEB9C2 AS DateTime), 0, CAST(0x0000A66F00BEB9C2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 55, N'552016827', 0, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F00BEE742 AS DateTime), 0, CAST(0x0000A66F00BEE742 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 56, N'562016827', 86, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00C02850 AS DateTime), 0, CAST(0x0000A66F00C02850 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 57, N'572016827', 88, 1, 0, 70, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00C0F652 AS DateTime), 0, CAST(0x0000A66F00C0F652 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 57, N'572016827', 89, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00C0F652 AS DateTime), 0, CAST(0x0000A66F00C0F652 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 58, N'582016827', 82, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00C45EC6 AS DateTime), 0, CAST(0x0000A66F00C45EC6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 58, N'582016827', 83, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00C45EC6 AS DateTime), 0, CAST(0x0000A66F00C45EC6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 58, N'582016827', 84, 3, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00C45EC6 AS DateTime), 0, CAST(0x0000A66F00C45EC6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 58, N'582016827', 85, 4, 0, 37, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A66F00C45EC6 AS DateTime), 0, CAST(0x0000A66F00C45EC6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 59, N'592016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00C55A19 AS DateTime), 0, CAST(0x0000A66F00C55A19 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 60, N'602016827', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00C8FD9B AS DateTime), 0, CAST(0x0000A66F00C8FD9B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 60, N'602016827', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00C8FD9B AS DateTime), 0, CAST(0x0000A66F00C8FD9B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 61, N'612016827', 80, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00C964B3 AS DateTime), 0, CAST(0x0000A66F00C964B3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 61, N'612016827', 81, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00C964B3 AS DateTime), 0, CAST(0x0000A66F00C964B3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 62, N'622016827', 0, 1, 0, 1, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A66F00CA4122 AS DateTime), 0, CAST(0x0000A66F00CA4123 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 62, N'622016827', 0, 2, 0, 20, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A66F00CA4123 AS DateTime), 0, CAST(0x0000A66F00CA4123 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (91, 62, N'622016827', 0, 3, 0, 20, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A66F00CA4123 AS DateTime), 0, CAST(0x0000A66F00CA4123 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (92, 63, N'632016827', 56, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00CB9174 AS DateTime), 0, CAST(0x0000A66F00CB9174 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (93, 64, N'642016827', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00CCA888 AS DateTime), 0, CAST(0x0000A66F00CCA888 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (94, 65, N'652016827', 0, 1, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00CDC026 AS DateTime), 0, CAST(0x0000A66F00CDC026 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 66, N'662016827', 67, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00CE5A52 AS DateTime), 0, CAST(0x0000A66F00CE5A52 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 67, N'672016827', 87, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00CE73C5 AS DateTime), 0, CAST(0x0000A66F00CE73C5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 68, N'682016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00D02C99 AS DateTime), 0, CAST(0x0000A66F00D02C99 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 68, N'682016827', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00D02C99 AS DateTime), 0, CAST(0x0000A66F00D02C99 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 69, N'692016827', 0, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F00D072A1 AS DateTime), 0, CAST(0x0000A66F00D072A1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 69, N'692016827', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00D072A1 AS DateTime), 0, CAST(0x0000A66F00D072A1 AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 70, N'702016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00D1ABC3 AS DateTime), 0, CAST(0x0000A66F00D1ABC3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 71, N'712016827', 92, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00D4D886 AS DateTime), 0, CAST(0x0000A66F00D4D886 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (103, 72, N'722016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00D7A85B AS DateTime), 0, CAST(0x0000A66F00D7A85B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (104, 72, N'722016827', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00D7A85B AS DateTime), 0, CAST(0x0000A66F00D7A85B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (105, 73, N'732016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00E130FE AS DateTime), 0, CAST(0x0000A66F00E130FE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (106, 74, N'742016827', 0, 1, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F00E60EDF AS DateTime), 0, CAST(0x0000A66F00E60EDF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (107, 75, N'752016827', 132, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00E98307 AS DateTime), 0, CAST(0x0000A66F00E98307 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 76, N'762016827', 133, 1, 0, 47, 5800, 1, 5800, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 76, N'762016827', 134, 2, 0, 48, 5800, 1, 5800, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 76, N'762016827', 135, 3, 0, 48, 5800, 1, 5800, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 76, N'762016827', 136, 4, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 76, N'762016827', 137, 5, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 76, N'762016827', 138, 6, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 76, N'762016827', 139, 7, 0, 136, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 76, N'762016827', 140, 8, 0, 48, 5800, 1, 5800, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 76, N'762016827', 141, 9, 0, 147, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 76, N'762016827', 142, 10, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F00EA97E1 AS DateTime), 0, CAST(0x0000A66F00EA97E1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 77, N'772016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00EF527E AS DateTime), 0, CAST(0x0000A66F00EF527E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 78, N'782016827', 145, 1, 0, 37, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A66F00EFD7E3 AS DateTime), 0, CAST(0x0000A66F00EFD7E3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 78, N'782016827', 146, 2, 0, 1, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A66F00EFD7E3 AS DateTime), 0, CAST(0x0000A66F00EFD7E3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 79, N'792016827', 144, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00F16E96 AS DateTime), 0, CAST(0x0000A66F00F16E96 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 80, N'802016827', 113, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00F19AE8 AS DateTime), 0, CAST(0x0000A66F00F19AE8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (123, 81, N'812016827', 122, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00F33897 AS DateTime), 0, CAST(0x0000A66F00F33897 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (124, 82, N'822016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00F68D52 AS DateTime), 0, CAST(0x0000A66F00F68D52 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (125, 82, N'822016827', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00F68D52 AS DateTime), 0, CAST(0x0000A66F00F68D52 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (126, 83, N'832016827', 148, 1, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00F6EED5 AS DateTime), 0, CAST(0x0000A66F00F6EED5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 83, N'832016827', 0, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F00F6EED5 AS DateTime), 0, CAST(0x0000A66F00F6EED5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (128, 84, N'842016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00F77036 AS DateTime), 0, CAST(0x0000A66F00F77036 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (129, 85, N'852016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00F86D65 AS DateTime), 0, CAST(0x0000A66F00F86D65 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (130, 86, N'862016827', 0, 1, 0, 121, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F00F88B44 AS DateTime), 0, CAST(0x0000A66F00F88B44 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (131, 87, N'872016827', 149, 1, 0, 23, 6500, 1, 6500, 0, 0, NULL, 0, CAST(0x0000A66F00F8EC68 AS DateTime), 0, CAST(0x0000A66F00F8EC68 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (132, 88, N'882016827', 106, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00FCF86E AS DateTime), 0, CAST(0x0000A66F00FCF86E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (133, 88, N'882016827', 0, 2, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F00FCF86E AS DateTime), 0, CAST(0x0000A66F00FCF86E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (134, 89, N'892016827', 105, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F00FFF57D AS DateTime), 0, CAST(0x0000A66F00FFF57D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (135, 90, N'902016827', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F01010C0F AS DateTime), 0, CAST(0x0000A66F01010C0F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (136, 91, N'912016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F01040BFC AS DateTime), 0, CAST(0x0000A66F01040BFC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (137, 92, N'922016827', 160, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F01057179 AS DateTime), 0, CAST(0x0000A66F01057179 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (138, 92, N'922016827', 161, 2, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F01057179 AS DateTime), 0, CAST(0x0000A66F01057179 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (139, 92, N'922016827', 162, 3, 0, 136, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F01057179 AS DateTime), 0, CAST(0x0000A66F01057179 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (140, 92, N'922016827', 163, 4, 0, 136, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F01057179 AS DateTime), 0, CAST(0x0000A66F01057179 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (141, 93, N'932016827', 166, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F01059C8B AS DateTime), 0, CAST(0x0000A66F01059C8B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (142, 94, N'942016827', 0, 1, 0, 136, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F010728B0 AS DateTime), 0, CAST(0x0000A66F010728B0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (143, 95, N'952016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F0107BC6B AS DateTime), 0, CAST(0x0000A66F0107BC6B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (144, 96, N'962016827', 158, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F01083C6A AS DateTime), 0, CAST(0x0000A66F01083C6A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (145, 96, N'962016827', 159, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F01083C6A AS DateTime), 0, CAST(0x0000A66F01083C6A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (146, 97, N'972016827', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F01099291 AS DateTime), 0, CAST(0x0000A66F01099291 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (147, 97, N'972016827', 0, 2, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F01099291 AS DateTime), 0, CAST(0x0000A66F01099291 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (148, 97, N'972016827', 0, 3, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A66F01099291 AS DateTime), 0, CAST(0x0000A66F01099291 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (149, 98, N'982016827', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F010C6AC1 AS DateTime), 0, CAST(0x0000A66F010C6AC1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (150, 99, N'992016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F010CF592 AS DateTime), 0, CAST(0x0000A66F010CF592 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (151, 100, N'1002016827', 167, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A66F010DE5BA AS DateTime), 0, CAST(0x0000A66F010DE5BA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (152, 101, N'1012016827', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F0117E2B1 AS DateTime), 0, CAST(0x0000A66F0117E2B1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (153, 102, N'1022016827', 176, 1, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F011870C9 AS DateTime), 0, CAST(0x0000A66F011870C9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (154, 103, N'1032016827', 177, 1, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F01188DA1 AS DateTime), 0, CAST(0x0000A66F01188DA1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (155, 103, N'1032016827', 178, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A66F01188DA1 AS DateTime), 0, CAST(0x0000A66F01188DA1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (156, 104, N'1042016827', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F011E9F3A AS DateTime), 0, CAST(0x0000A66F011E9F3A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (157, 105, N'1052016827', 175, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A66F012ED756 AS DateTime), 0, CAST(0x0000A66F012ED756 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (158, 106, N'1062016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000799E61 AS DateTime), 0, CAST(0x0000A67000799E61 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (159, 106, N'1062016828', 0, 2, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000799E61 AS DateTime), 0, CAST(0x0000A67000799E61 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (160, 107, N'1072016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670007A9773 AS DateTime), 0, CAST(0x0000A670007A9773 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (161, 107, N'1072016828', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670007A9773 AS DateTime), 0, CAST(0x0000A670007A9773 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (162, 108, N'1082016828', 181, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A670007CD3FE AS DateTime), 0, CAST(0x0000A670007CD3FE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (163, 108, N'1082016828', 0, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A670007CD3FE AS DateTime), 0, CAST(0x0000A670007CD3FE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (164, 109, N'1092016828', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700080188A AS DateTime), 0, CAST(0x0000A6700080188A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (165, 109, N'1092016828', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700080188A AS DateTime), 0, CAST(0x0000A6700080188A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (166, 110, N'1102016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000811C1A AS DateTime), 0, CAST(0x0000A67000811C1A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (167, 111, N'1112016828', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000815344 AS DateTime), 0, CAST(0x0000A67000815344 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (168, 112, N'1122016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000821F64 AS DateTime), 0, CAST(0x0000A67000821F64 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (169, 113, N'1132016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700084DD32 AS DateTime), 0, CAST(0x0000A6700084DD32 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (170, 114, N'1142016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700084EBE9 AS DateTime), 0, CAST(0x0000A6700084EBE9 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (171, 115, N'1152016828', 191, 1, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700085F98B AS DateTime), 0, CAST(0x0000A6700085F98B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (172, 116, N'1162016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700086D488 AS DateTime), 0, CAST(0x0000A6700086D488 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (173, 117, N'1172016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670008A702C AS DateTime), 0, CAST(0x0000A670008A702C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (174, 118, N'1182016828', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A670008DDE96 AS DateTime), 0, CAST(0x0000A670008DDE96 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (175, 119, N'1192016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670008F5B5C AS DateTime), 0, CAST(0x0000A670008F5B5C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (176, 119, N'1192016828', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670008F5B5C AS DateTime), 0, CAST(0x0000A670008F5B5C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (177, 120, N'1202016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000942D46 AS DateTime), 0, CAST(0x0000A67000942D46 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (178, 121, N'1212016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000943BAA AS DateTime), 0, CAST(0x0000A67000943BAA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (179, 122, N'1222016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000944BCF AS DateTime), 0, CAST(0x0000A67000944BCF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (180, 123, N'1232016828', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700094D9E3 AS DateTime), 0, CAST(0x0000A6700094D9E3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (181, 124, N'1242016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700094FAD7 AS DateTime), 0, CAST(0x0000A6700094FAD7 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (182, 125, N'1252016828', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000950D7D AS DateTime), 0, CAST(0x0000A67000950D7D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (183, 125, N'1252016828', 0, 2, 0, 37, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A67000950D7D AS DateTime), 0, CAST(0x0000A67000950D7D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (184, 126, N'1262016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700095DC8C AS DateTime), 0, CAST(0x0000A6700095DC8C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (185, 127, N'1272016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670009B9AFC AS DateTime), 0, CAST(0x0000A670009B9AFC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (186, 128, N'1282016828', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A670009DF2D8 AS DateTime), 0, CAST(0x0000A670009DF2D8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (187, 129, N'1292016828', 208, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000A17029 AS DateTime), 0, CAST(0x0000A67000A17029 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (188, 129, N'1292016828', 209, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000A17029 AS DateTime), 0, CAST(0x0000A67000A17029 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (189, 130, N'1302016828', 211, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A67000A3D6BB AS DateTime), 0, CAST(0x0000A67000A3D6BB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (190, 131, N'1312016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000AAD271 AS DateTime), 0, CAST(0x0000A67000AAD271 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (191, 131, N'1312016828', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000AAD271 AS DateTime), 0, CAST(0x0000A67000AAD271 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (192, 132, N'1322016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000AC0492 AS DateTime), 0, CAST(0x0000A67000AC0492 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (193, 132, N'1322016828', 0, 2, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000AC0492 AS DateTime), 0, CAST(0x0000A67000AC0492 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (194, 133, N'1332016828', 213, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000AC5ACC AS DateTime), 0, CAST(0x0000A67000AC5ACC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (195, 133, N'1332016828', 214, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000AC5ACC AS DateTime), 0, CAST(0x0000A67000AC5ACC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (196, 134, N'1342016828', 221, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000ADD168 AS DateTime), 0, CAST(0x0000A67000ADD168 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (197, 134, N'1342016828', 222, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000ADD168 AS DateTime), 0, CAST(0x0000A67000ADD168 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (198, 135, N'1352016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000B09452 AS DateTime), 0, CAST(0x0000A67000B09452 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (199, 136, N'1362016828', 215, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000B22B63 AS DateTime), 0, CAST(0x0000A67000B22B63 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (200, 137, N'1372016828', 0, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A67000B50781 AS DateTime), 0, CAST(0x0000A67000B50781 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (201, 138, N'1382016828', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000B68BA8 AS DateTime), 0, CAST(0x0000A67000B68BA8 AS DateTime), NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (202, 139, N'1392016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000B7BD33 AS DateTime), 0, CAST(0x0000A67000B7BD33 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (203, 140, N'1402016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000B7DFFA AS DateTime), 0, CAST(0x0000A67000B7DFFA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (204, 141, N'1412016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000B91773 AS DateTime), 0, CAST(0x0000A67000B91773 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (205, 142, N'1422016828', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000BCF906 AS DateTime), 0, CAST(0x0000A67000BCF906 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (206, 142, N'1422016828', 0, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000BCF906 AS DateTime), 0, CAST(0x0000A67000BCF906 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (207, 143, N'1432016828', 232, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A67000BD4B6C AS DateTime), 0, CAST(0x0000A67000BD4B6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (208, 143, N'1432016828', 233, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000BD4B6C AS DateTime), 0, CAST(0x0000A67000BD4B6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (209, 143, N'1432016828', 234, 3, 0, 126, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A67000BD4B6C AS DateTime), 0, CAST(0x0000A67000BD4B6C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (210, 144, N'1442016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000C0EC1A AS DateTime), 0, CAST(0x0000A67000C0EC1A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (211, 145, N'1452016828', 255, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000C3A998 AS DateTime), 0, CAST(0x0000A67000C3A998 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (212, 145, N'1452016828', 256, 2, 0, 70, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000C3A998 AS DateTime), 0, CAST(0x0000A67000C3A998 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (213, 145, N'1452016828', 257, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000C3A998 AS DateTime), 0, CAST(0x0000A67000C3A998 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (214, 145, N'1452016828', 258, 4, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000C3A998 AS DateTime), 0, CAST(0x0000A67000C3A998 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (215, 145, N'1452016828', 259, 5, 0, 94, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A67000C3A998 AS DateTime), 0, CAST(0x0000A67000C3A998 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (216, 145, N'1452016828', 260, 6, 0, 128, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A67000C3A998 AS DateTime), 0, CAST(0x0000A67000C3A998 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (217, 146, N'1462016828', 227, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000C3C10A AS DateTime), 0, CAST(0x0000A67000C3C10A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (218, 146, N'1462016828', 228, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000C3C10A AS DateTime), 0, CAST(0x0000A67000C3C10A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (219, 146, N'1462016828', 229, 3, 0, 129, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A67000C3C10A AS DateTime), 0, CAST(0x0000A67000C3C10A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (220, 146, N'1462016828', 230, 4, 0, 128, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A67000C3C10A AS DateTime), 0, CAST(0x0000A67000C3C10A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (221, 147, N'1472016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000C5A11E AS DateTime), 0, CAST(0x0000A67000C5A11E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (222, 148, N'1482016828', 262, 1, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A67000C641F3 AS DateTime), 0, CAST(0x0000A67000C641F3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (223, 148, N'1482016828', 263, 2, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A67000C641F3 AS DateTime), 0, CAST(0x0000A67000C641F3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (224, 148, N'1482016828', 264, 3, 0, 116, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A67000C641F3 AS DateTime), 0, CAST(0x0000A67000C641F3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (225, 148, N'1482016828', 265, 4, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000C641F3 AS DateTime), 0, CAST(0x0000A67000C641F3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (226, 149, N'1492016828', 243, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000C69991 AS DateTime), 0, CAST(0x0000A67000C69991 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (227, 150, N'1502016828', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000C86E2C AS DateTime), 0, CAST(0x0000A67000C86E2C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (228, 151, N'1512016828', 261, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A67000C9AC1D AS DateTime), 0, CAST(0x0000A67000C9AC1D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (229, 152, N'1522016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000CA82CD AS DateTime), 0, CAST(0x0000A67000CA82CD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (230, 153, N'1532016828', 273, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000CD65A2 AS DateTime), 0, CAST(0x0000A67000CD65A2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (231, 153, N'1532016828', 274, 2, 0, 37, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A67000CD65A2 AS DateTime), 0, CAST(0x0000A67000CD65A2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (232, 153, N'1532016828', 275, 3, 0, 126, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A67000CD65A2 AS DateTime), 0, CAST(0x0000A67000CD65A2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (233, 153, N'1532016828', 276, 4, 0, 68, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000CD65A2 AS DateTime), 0, CAST(0x0000A67000CD65A2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (234, 153, N'1532016828', 277, 5, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000CD65A2 AS DateTime), 0, CAST(0x0000A67000CD65A2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (235, 154, N'1542016828', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000D06B53 AS DateTime), 0, CAST(0x0000A67000D06B53 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (236, 155, N'1552016828', 0, 1, 0, 89, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A67000D102AE AS DateTime), 0, CAST(0x0000A67000D102AE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (237, 156, N'1562016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000D15FA3 AS DateTime), 0, CAST(0x0000A67000D15FA3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (238, 156, N'1562016828', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000D15FA3 AS DateTime), 0, CAST(0x0000A67000D15FA3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (239, 157, N'1572016828', 238, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000D826CD AS DateTime), 0, CAST(0x0000A67000D826CD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (240, 157, N'1572016828', 239, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000D826CD AS DateTime), 0, CAST(0x0000A67000D826CD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (241, 158, N'1582016828', 0, 1, 0, 1, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A67000D83B76 AS DateTime), 0, CAST(0x0000A67000D83B76 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (242, 159, N'1592016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000D97122 AS DateTime), 0, CAST(0x0000A67000D97122 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (243, 159, N'1592016828', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000D97122 AS DateTime), 0, CAST(0x0000A67000D97122 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (244, 160, N'1602016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000DCBE61 AS DateTime), 0, CAST(0x0000A67000DCBE61 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (245, 160, N'1602016828', 0, 2, 0, 1, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A67000DCBE61 AS DateTime), 0, CAST(0x0000A67000DCBE61 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (246, 161, N'1612016828', 242, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000DD4355 AS DateTime), 0, CAST(0x0000A67000DD4355 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (247, 161, N'1612016828', 0, 2, 0, 21, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A67000DD4355 AS DateTime), 0, CAST(0x0000A67000DD4355 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (248, 162, N'1622016828', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000E373E3 AS DateTime), 0, CAST(0x0000A67000E373E3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (249, 162, N'1622016828', 0, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000E373E3 AS DateTime), 0, CAST(0x0000A67000E373E3 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (250, 163, N'1632016828', 287, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A67000E404F5 AS DateTime), 0, CAST(0x0000A67000E404F5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (251, 163, N'1632016828', 0, 2, 0, 126, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A67000E404F5 AS DateTime), 0, CAST(0x0000A67000E404F5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (252, 164, N'1642016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000EBE2CF AS DateTime), 0, CAST(0x0000A67000EBE2CF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (253, 164, N'1642016828', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000EBE2CF AS DateTime), 0, CAST(0x0000A67000EBE2CF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (254, 165, N'1652016828', 290, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000ECEB0E AS DateTime), 0, CAST(0x0000A67000ECEB0E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (255, 166, N'1662016828', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67000EEB980 AS DateTime), 0, CAST(0x0000A67000EEB980 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (256, 167, N'1672016828', 291, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67000F30E75 AS DateTime), 0, CAST(0x0000A67000F30E75 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (257, 168, N'1682016828', 0, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A67000FC7E85 AS DateTime), 0, CAST(0x0000A67000FC7E85 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (258, 169, N'1692016828', 298, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67001000417 AS DateTime), 0, CAST(0x0000A67001000417 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (259, 170, N'1702016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700102AA3C AS DateTime), 0, CAST(0x0000A6700102AA3C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (260, 171, N'1712016828', 300, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6700108C45D AS DateTime), 0, CAST(0x0000A6700108C45D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (261, 171, N'1712016828', 301, 2, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6700108C45D AS DateTime), 0, CAST(0x0000A6700108C45D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (262, 171, N'1712016828', 302, 3, 0, 19, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A6700108C45D AS DateTime), 0, CAST(0x0000A6700108C45D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (263, 172, N'1722016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670010B44FE AS DateTime), 0, CAST(0x0000A670010B44FE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (264, 173, N'1732016828', 296, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670010CE571 AS DateTime), 0, CAST(0x0000A670010CE571 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (265, 173, N'1732016828', 297, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670010CE571 AS DateTime), 0, CAST(0x0000A670010CE571 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (266, 173, N'1732016828', 0, 3, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670010CE571 AS DateTime), 0, CAST(0x0000A670010CE571 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (267, 174, N'1742016828', 304, 1, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670010DAC1B AS DateTime), 0, CAST(0x0000A670010DAC1B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (268, 174, N'1742016828', 305, 2, 0, 115, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A670010DAC1B AS DateTime), 0, CAST(0x0000A670010DAC1B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (269, 175, N'1752016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670010E9DF2 AS DateTime), 0, CAST(0x0000A670010E9DF2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (270, 175, N'1752016828', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A670010E9DF2 AS DateTime), 0, CAST(0x0000A670010E9DF2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (271, 176, N'1762016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67001107608 AS DateTime), 0, CAST(0x0000A67001107608 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (272, 177, N'1772016828', 0, 1, 0, 84, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67001108EE2 AS DateTime), 0, CAST(0x0000A67001108EE2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (273, 178, N'1782016828', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700121B60F AS DateTime), 0, CAST(0x0000A6700121B60F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (274, 178, N'1782016828', 0, 2, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700121B60F AS DateTime), 0, CAST(0x0000A6700121B60F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (275, 179, N'1792016828', 314, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700123F87D AS DateTime), 0, CAST(0x0000A6700123F87D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (276, 179, N'1792016828', 315, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6700123F87D AS DateTime), 0, CAST(0x0000A6700123F87D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (277, 180, N'1802016828', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67001276D83 AS DateTime), 0, CAST(0x0000A67001276D83 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (278, 181, N'1812016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100748995 AS DateTime), 0, CAST(0x0000A67100748996 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (279, 182, N'1822016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100753158 AS DateTime), 0, CAST(0x0000A67100753158 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (280, 182, N'1822016829', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100753158 AS DateTime), 0, CAST(0x0000A67100753158 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (281, 183, N'1832016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100766A58 AS DateTime), 0, CAST(0x0000A67100766A58 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (282, 184, N'1842016829', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710077E315 AS DateTime), 0, CAST(0x0000A6710077E315 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (283, 185, N'1852016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100780F2C AS DateTime), 0, CAST(0x0000A67100780F2C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (284, 186, N'1862016829', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A671007AB663 AS DateTime), 0, CAST(0x0000A671007AB663 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (285, 187, N'1872016829', 325, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671007BD91B AS DateTime), 0, CAST(0x0000A671007BD91B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (286, 188, N'1882016829', 324, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A671007D0A45 AS DateTime), 0, CAST(0x0000A671007D0A45 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (287, 189, N'1892016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671007E73D1 AS DateTime), 0, CAST(0x0000A671007E73D1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (288, 190, N'1902016829', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710083127B AS DateTime), 0, CAST(0x0000A6710083127B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (289, 191, N'1912016829', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100853633 AS DateTime), 0, CAST(0x0000A67100853633 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (290, 192, N'1922016829', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710095A850 AS DateTime), 0, CAST(0x0000A6710095A850 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (291, 192, N'1922016829', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710095A850 AS DateTime), 0, CAST(0x0000A6710095A850 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (292, 193, N'1932016829', 330, 1, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710095AF44 AS DateTime), 0, CAST(0x0000A6710095AF44 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (293, 194, N'1942016829', 329, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710095B7CE AS DateTime), 0, CAST(0x0000A6710095B7CE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (294, 195, N'1952016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671009687F6 AS DateTime), 0, CAST(0x0000A671009687F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (295, 195, N'1952016829', 0, 2, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671009687F6 AS DateTime), 0, CAST(0x0000A671009687F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (296, 195, N'1952016829', 0, 3, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671009687F6 AS DateTime), 0, CAST(0x0000A671009687F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (297, 196, N'1962016829', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100986FED AS DateTime), 0, CAST(0x0000A67100986FED AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (298, 197, N'1972016829', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710098CB45 AS DateTime), 0, CAST(0x0000A6710098CB45 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (299, 197, N'1972016829', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A6710098CB45 AS DateTime), 0, CAST(0x0000A6710098CB45 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (300, 198, N'1982016829', 336, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6710098D6BF AS DateTime), 0, CAST(0x0000A6710098D6BF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (301, 199, N'1992016829', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A6710099E9F0 AS DateTime), 0, CAST(0x0000A6710099E9F0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (302, 200, N'2002016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671009A4907 AS DateTime), 0, CAST(0x0000A671009A4907 AS DateTime), NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (303, 201, N'2012016829', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671009A9CF8 AS DateTime), 0, CAST(0x0000A671009A9CF8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (304, 202, N'2022016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671009BEEAE AS DateTime), 0, CAST(0x0000A671009BEEAE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (305, 203, N'2032016829', 337, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A671009C52D2 AS DateTime), 0, CAST(0x0000A671009C52D2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (306, 204, N'2042016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100A368AF AS DateTime), 0, CAST(0x0000A67100A368AF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (307, 204, N'2042016829', 0, 2, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100A368AF AS DateTime), 0, CAST(0x0000A67100A368AF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (308, 204, N'2042016829', 0, 3, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100A368AF AS DateTime), 0, CAST(0x0000A67100A368AF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (309, 205, N'2052016829', 0, 1, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100A42D78 AS DateTime), 0, CAST(0x0000A67100A42D78 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (310, 206, N'2062016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100A937CF AS DateTime), 0, CAST(0x0000A67100A937CF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (311, 207, N'2072016829', 341, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100A9B9CB AS DateTime), 0, CAST(0x0000A67100A9B9CB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (312, 208, N'2082016829', 352, 1, 0, 80, 3000, 1, 3000, 0, 0, NULL, 0, CAST(0x0000A67100ACC854 AS DateTime), 0, CAST(0x0000A67100ACC854 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (313, 209, N'2092016829', 346, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100ACE9F1 AS DateTime), 0, CAST(0x0000A67100ACE9F1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (314, 210, N'2102016829', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100AD14BE AS DateTime), 0, CAST(0x0000A67100AD14BE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (315, 211, N'2112016829', 347, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100B19C2F AS DateTime), 0, CAST(0x0000A67100B19C2F AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (316, 212, N'2122016829', 354, 1, 0, 81, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A67100B401F0 AS DateTime), 0, CAST(0x0000A67100B401F0 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (317, 213, N'2132016829', 0, 1, 0, 77, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100BA63CC AS DateTime), 0, CAST(0x0000A67100BA63CC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (318, 214, N'2142016829', 0, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100BA6F87 AS DateTime), 0, CAST(0x0000A67100BA6F87 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (319, 215, N'2152016829', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100BB689E AS DateTime), 0, CAST(0x0000A67100BB689E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (320, 216, N'2162016829', 0, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100C331DE AS DateTime), 0, CAST(0x0000A67100C331DE AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (321, 217, N'2172016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100C4AF94 AS DateTime), 0, CAST(0x0000A67100C4AF94 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (322, 218, N'2182016829', 0, 1, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100C79958 AS DateTime), 0, CAST(0x0000A67100C79958 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (323, 218, N'2182016829', 0, 2, 0, 78, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100C79958 AS DateTime), 0, CAST(0x0000A67100C79958 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (324, 219, N'2192016829', 358, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100C8E4FC AS DateTime), 0, CAST(0x0000A67100C8E4FC AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (325, 220, N'2202016829', 0, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100CB0822 AS DateTime), 0, CAST(0x0000A67100CB0822 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (326, 221, N'2212016829', 364, 1, 0, 69, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100CF4720 AS DateTime), 0, CAST(0x0000A67100CF4720 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (327, 222, N'2222016829', 365, 1, 0, 76, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A67100CF9CCA AS DateTime), 0, CAST(0x0000A67100CF9CCA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (328, 223, N'2232016829', 368, 1, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100D93F07 AS DateTime), 0, CAST(0x0000A67100D93F07 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (329, 223, N'2232016829', 369, 2, 0, 67, 4500, 1, 4500, 0, 0, NULL, 0, CAST(0x0000A67100D93F07 AS DateTime), 0, CAST(0x0000A67100D93F07 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (330, 224, N'2242016829', 370, 1, 0, 23, 6500, 1, 6500, 0, 0, NULL, 0, CAST(0x0000A67100DB07F1 AS DateTime), 0, CAST(0x0000A67100DB07F1 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL] OFF
/****** Object:  Table [dbo].[INVOICE_BY_CARD]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[INVOICE]    Script Date: 08/29/2016 13:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [int] NULL,
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
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (1, N'12016827', 1, 12016827, 1, 12000, 20000, 8000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F007B07E1 AS DateTime), 8, CAST(0x0000A66F007B07E1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (2, N'22016827', 3, 32016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F007C4398 AS DateTime), 8, CAST(0x0000A66F007C4398 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (3, N'32016827', 2, 22016827, 1, 9000, 10000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F007C57DA AS DateTime), 8, CAST(0x0000A66F007C57DA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (4, N'42016827', 4, 42016827, 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F007D7715 AS DateTime), 8, CAST(0x0000A66F007D7715 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (5, N'52016827', 5, 52016827, 1, 3500, 4000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F007FFA56 AS DateTime), 8, CAST(0x0000A66F007FFA56 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (6, N'62016827', 6, 62016827, 1, 6500, 10000, 3500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0084AB3A AS DateTime), 8, CAST(0x0000A66F0084AB3A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (7, N'72016827', 7, 72016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0084C889 AS DateTime), 8, CAST(0x0000A66F0084C889 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (8, N'82016827', 8, 82016827, 1, 3000, 3000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F008579B2 AS DateTime), 8, CAST(0x0000A66F008579B2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (9, N'92016827', 9, 92016827, 1, 9000, 20000, 11000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0088E3CE AS DateTime), 8, CAST(0x0000A66F0088E3CE AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (10, N'102016827', 10, 102016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00897B15 AS DateTime), 8, CAST(0x0000A66F00897B15 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (11, N'112016827', 11, 112016827, 1, 7000, 50000, 43000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F008A4EF5 AS DateTime), 8, CAST(0x0000A66F008A4EF5 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (12, N'122016827', 12, 122016827, 1, 7000, 10000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F008C633C AS DateTime), 8, CAST(0x0000A66F008C633C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (13, N'132016827', 13, 132016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00912113 AS DateTime), 8, CAST(0x0000A66F00912113 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (14, N'142016827', 15, 152016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00923B0E AS DateTime), 8, CAST(0x0000A66F00923B0E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (15, N'152016827', 16, 162016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0092B9CC AS DateTime), 8, CAST(0x0000A66F0092B9CC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (16, N'162016827', 17, 172016827, 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00935D8B AS DateTime), 8, CAST(0x0000A66F00935D8B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (17, N'172016827', 18, 182016827, 1, 5000, 10000, 5000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00936AA0 AS DateTime), 8, CAST(0x0000A66F00936AA0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (18, N'182016827', 14, 142016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00942FB6 AS DateTime), 8, CAST(0x0000A66F00942FB6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (19, N'192016827', 20, 202016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009464B9 AS DateTime), 8, CAST(0x0000A66F009464B9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (20, N'202016827', 21, 212016827, 1, 10500, 20000, 9500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00957326 AS DateTime), 8, CAST(0x0000A66F00957326 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (21, N'212016827', 22, 222016827, 1, 7000, 7000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00959054 AS DateTime), 8, CAST(0x0000A66F00959054 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (22, N'222016827', 23, 232016827, 1, 10500, 50000, 39500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0095E821 AS DateTime), 8, CAST(0x0000A66F0095E821 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (23, N'232016827', 24, 242016827, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00972A25 AS DateTime), 8, CAST(0x0000A66F00972A25 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (24, N'242016827', 25, 252016827, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0097EA96 AS DateTime), 8, CAST(0x0000A66F0097EA96 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (25, N'252016827', 19, 192016827, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0098B8A4 AS DateTime), 8, CAST(0x0000A66F0098B8A4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (26, N'262016827', 26, 262016827, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00990940 AS DateTime), 8, CAST(0x0000A66F00990940 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (27, N'272016827', 27, 272016827, 1, 7500, 10000, 2500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009A5281 AS DateTime), 8, CAST(0x0000A66F009A5281 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (28, N'282016827', 28, 282016827, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009B6E23 AS DateTime), 8, CAST(0x0000A66F009B6E23 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (29, N'292016827', 29, 292016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009C54A0 AS DateTime), 8, CAST(0x0000A66F009C54A0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (30, N'302016827', 30, 302016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009C7A6F AS DateTime), 8, CAST(0x0000A66F009C7A6F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (31, N'312016827', 31, 312016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009E73D3 AS DateTime), 8, CAST(0x0000A66F009E73D3 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (32, N'322016827', 32, 322016827, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009F9084 AS DateTime), 8, CAST(0x0000A66F009F9084 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (33, N'332016827', 33, 332016827, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009F9F51 AS DateTime), 8, CAST(0x0000A66F009F9F51 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (34, N'342016827', 34, 342016827, 1, 9500, 50000, 40500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F009FD09B AS DateTime), 8, CAST(0x0000A66F009FD09B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (35, N'352016827', 35, 352016827, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00A22249 AS DateTime), 8, CAST(0x0000A66F00A22249 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (36, N'362016827', 38, 382016827, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00A300B6 AS DateTime), 8, CAST(0x0000A66F00A300B6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (37, N'372016827', 36, 362016827, 1, 12000, 20000, 8000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00A443C7 AS DateTime), 8, CAST(0x0000A66F00A443C7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (38, N'382016827', 39, 392016827, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00A50106 AS DateTime), 8, CAST(0x0000A66F00A50106 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (39, N'392016827', 40, 402016827, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00A5D9B8 AS DateTime), 8, CAST(0x0000A66F00A5D9B8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (40, N'402016827', 41, 412016827, 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00A9BDE4 AS DateTime), 8, CAST(0x0000A66F00A9BDE4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (41, N'412016827', 44, 442016827, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00ACEF90 AS DateTime), 8, CAST(0x0000A66F00ACEF90 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (42, N'422016827', 48, 482016827, 1, 9000, 50000, 41000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B07AAE AS DateTime), 8, CAST(0x0000A66F00B07AAE AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (43, N'432016827', 37, 372016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B0A009 AS DateTime), 8, CAST(0x0000A66F00B0A009 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (44, N'442016827', 49, 492016827, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B14002 AS DateTime), 8, CAST(0x0000A66F00B14002 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (45, N'452016827', 52, 522016827, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B2716E AS DateTime), 8, CAST(0x0000A66F00B2716E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (46, N'462016827', 42, 422016827, 1, 3000, 3000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B2F665 AS DateTime), 8, CAST(0x0000A66F00B2F665 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (47, N'472016827', 53, 532016827, 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B30C36 AS DateTime), 8, CAST(0x0000A66F00B30C36 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (48, N'482016827', 45, 452016827, 1, 14500, 100000, 85500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B394AB AS DateTime), 8, CAST(0x0000A66F00B394AB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (49, N'492016827', 50, 502016827, 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B3AF47 AS DateTime), 8, CAST(0x0000A66F00B3AF47 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (50, N'502016827', 46, 462016827, 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B3FE4C AS DateTime), 8, CAST(0x0000A66F00B3FE4C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (51, N'512016827', 55, 552016827, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00B63DBB AS DateTime), 8, CAST(0x0000A66F00B63DBB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (52, N'522016827', 54, 542016827, 1, 13000, 20000, 7000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00BC2581 AS DateTime), 8, CAST(0x0000A66F00BC2581 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (53, N'532016827', 56, 562016827, 1, 9000, 50000, 41000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00BC5A5B AS DateTime), 8, CAST(0x0000A66F00BC5A5B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (54, N'542016827', 47, 472016827, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00BEB9BF AS DateTime), 8, CAST(0x0000A66F00BEB9BF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (55, N'552016827', 62, 622016827, 1, 3000, 3000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00BEE740 AS DateTime), 8, CAST(0x0000A66F00BEE740 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (56, N'562016827', 59, 592016827, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00C0284E AS DateTime), 8, CAST(0x0000A66F00C0284E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (57, N'572016827', 61, 612016827, 1, 8000, 20000, 12000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00C0F650 AS DateTime), 8, CAST(0x0000A66F00C0F650 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (58, N'582016827', 58, 582016827, 1, 19500, 20000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00C45EC4 AS DateTime), 8, CAST(0x0000A66F00C45EC4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (59, N'592016827', 63, 632016827, 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00C55A17 AS DateTime), 8, CAST(0x0000A66F00C55A17 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (60, N'602016827', 65, 652016827, 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00C8FD9A AS DateTime), 8, CAST(0x0000A66F00C8FD9A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (61, N'612016827', 57, 572016827, 1, 8000, 50000, 42000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00C964B2 AS DateTime), 8, CAST(0x0000A66F00C964B2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (62, N'622016827', 66, 662016827, 1, 11000, 20000, 9000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00CA4120 AS DateTime), 8, CAST(0x0000A66F00CA4120 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (63, N'632016827', 43, 432016827, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00CB9173 AS DateTime), 8, CAST(0x0000A66F00CB9173 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (64, N'642016827', 67, 672016827, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00CCA886 AS DateTime), 8, CAST(0x0000A66F00CCA886 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (65, N'652016827', 68, 682016827, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00CDC020 AS DateTime), 8, CAST(0x0000A66F00CDC020 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (66, N'662016827', 51, 512016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00CE5A50 AS DateTime), 8, CAST(0x0000A66F00CE5A50 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (67, N'672016827', 60, 602016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00CE73C4 AS DateTime), 8, CAST(0x0000A66F00CE73C4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (68, N'682016827', 69, 692016827, 1, 8000, 20000, 12000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00D02C97 AS DateTime), 8, CAST(0x0000A66F00D02C97 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (69, N'692016827', 70, 702016827, 1, 8500, 20000, 11500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00D0729F AS DateTime), 8, CAST(0x0000A66F00D0729F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (70, N'702016827', 71, 712016827, 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00D1ABC1 AS DateTime), 8, CAST(0x0000A66F00D1ABC1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (71, N'712016827', 64, 642016827, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00D4D884 AS DateTime), 8, CAST(0x0000A66F00D4D884 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (72, N'722016827', 74, 742016827, 1, 8000, 8000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00D7A859 AS DateTime), 8, CAST(0x0000A66F00D7A859 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (73, N'732016827', 77, 772016827, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00E130FC AS DateTime), 8, CAST(0x0000A66F00E130FC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (74, N'742016827', 80, 802016827, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00E60EDD AS DateTime), 8, CAST(0x0000A66F00E60EDD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (75, N'752016827', 79, 792016827, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00E98304 AS DateTime), 8, CAST(0x0000A66F00E98304 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (76, N'762016827', 75, 752016827, 1, 44200, 100000, 55800, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00EA97DF AS DateTime), 8, CAST(0x0000A66F00EA97DF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (77, N'772016827', 83, 832016827, 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00EF527C AS DateTime), 8, CAST(0x0000A66F00EF527C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (78, N'782016827', 82, 822016827, 1, 13000, 20000, 7000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00EFD7E2 AS DateTime), 8, CAST(0x0000A66F00EFD7E2 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (79, N'792016827', 81, 812016827, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F16E95 AS DateTime), 8, CAST(0x0000A66F00F16E95 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (80, N'802016827', 76, 762016827, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F19AE6 AS DateTime), 8, CAST(0x0000A66F00F19AE6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (81, N'812016827', 78, 782016827, 1, 3500, 50000, 46500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F33896 AS DateTime), 8, CAST(0x0000A66F00F33896 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (82, N'822016827', 86, 862016827, 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F68D4F AS DateTime), 8, CAST(0x0000A66F00F68D4F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (83, N'832016827', 84, 842016827, 1, 9000, 50000, 41000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F6EED3 AS DateTime), 8, CAST(0x0000A66F00F6EED3 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (84, N'842016827', 87, 872016827, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F77034 AS DateTime), 8, CAST(0x0000A66F00F77034 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (85, N'852016827', 88, 882016827, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F86D63 AS DateTime), 8, CAST(0x0000A66F00F86D63 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (86, N'862016827', 89, 892016827, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F88B41 AS DateTime), 8, CAST(0x0000A66F00F88B41 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (87, N'872016827', 85, 852016827, 1, 6500, 6500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00F8EC67 AS DateTime), 8, CAST(0x0000A66F00F8EC67 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (88, N'882016827', 73, 732016827, 1, 9000, 10000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00FCF86C AS DateTime), 8, CAST(0x0000A66F00FCF86C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (89, N'892016827', 72, 722016827, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F00FFF57B AS DateTime), 8, CAST(0x0000A66F00FFF57B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (90, N'902016827', 92, 922016827, 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F01010C0D AS DateTime), 8, CAST(0x0000A66F01010C0D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (91, N'912016827', 93, 932016827, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F01040BF9 AS DateTime), 8, CAST(0x0000A66F01040BF9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (92, N'922016827', 90, 902016827, 1, 19000, 20000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F01057177 AS DateTime), 8, CAST(0x0000A66F01057177 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (93, N'932016827', 94, 942016827, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F01059C89 AS DateTime), 8, CAST(0x0000A66F01059C89 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (94, N'942016827', 96, 962016827, 1, 5000, 20000, 15000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F010728AE AS DateTime), 8, CAST(0x0000A66F010728AE AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (95, N'952016827', 97, 972016827, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0107BC69 AS DateTime), 8, CAST(0x0000A66F0107BC69 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (96, N'962016827', 91, 912016827, 1, 9000, 9000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F01083C68 AS DateTime), 8, CAST(0x0000A66F01083C68 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (97, N'972016827', 98, 982016827, 1, 14000, 20000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0109928F AS DateTime), 8, CAST(0x0000A66F0109928F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (98, N'982016827', 99, 992016827, 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F010C6ABF AS DateTime), 8, CAST(0x0000A66F010C6ABF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (99, N'992016827', 100, 1002016827, 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F010CF590 AS DateTime), 8, CAST(0x0000A66F010CF590 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (100, N'1002016827', 95, 952016827, 1, 3000, 5000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F010DE5B7 AS DateTime), 8, CAST(0x0000A66F010DE5B7 AS DateTime), N'', 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (101, N'1012016827', 104, 1042016827, 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F0117E2AF AS DateTime), 8, CAST(0x0000A66F0117E2AF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (102, N'1022016827', 102, 1022016827, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F011870C8 AS DateTime), 8, CAST(0x0000A66F011870C8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (103, N'1032016827', 103, 1032016827, 1, 8000, 20000, 12000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F01188DA0 AS DateTime), 8, CAST(0x0000A66F01188DA0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (104, N'1042016827', 105, 1052016827, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F011E9F38 AS DateTime), 8, CAST(0x0000A66F011E9F38 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (105, N'1052016827', 101, 1012016827, 1, 3500, 50000, 46500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A66F012ED74D AS DateTime), 8, CAST(0x0000A66F012ED74D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (106, N'1062016828', 2, 22016828, 1, 7000, 7000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000799E3C AS DateTime), 8, CAST(0x0000A67000799E3C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (107, N'1072016828', 3, 32016828, 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670007A9771 AS DateTime), 8, CAST(0x0000A670007A9771 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (108, N'1082016828', 1, 12016828, 1, 9000, 50000, 41000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670007CD3FD AS DateTime), 8, CAST(0x0000A670007CD3FD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (109, N'1092016828', 4, 42016828, 1, 7000, 10000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000801888 AS DateTime), 8, CAST(0x0000A67000801888 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (110, N'1102016828', 5, 52016828, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000811C18 AS DateTime), 8, CAST(0x0000A67000811C18 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (111, N'1112016828', 6, 62016828, 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000815342 AS DateTime), 8, CAST(0x0000A67000815342 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (112, N'1122016828', 7, 72016828, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000821F62 AS DateTime), 8, CAST(0x0000A67000821F62 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (113, N'1132016828', 9, 92016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700084DD2E AS DateTime), 8, CAST(0x0000A6700084DD2E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (114, N'1142016828', 10, 102016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700084EBE6 AS DateTime), 8, CAST(0x0000A6700084EBE6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (115, N'1152016828', 8, 82016828, 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700085F988 AS DateTime), 8, CAST(0x0000A6700085F988 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (116, N'1162016828', 11, 112016828, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700086D486 AS DateTime), 8, CAST(0x0000A6700086D486 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (117, N'1172016828', 12, 122016828, 1, 4000, 50000, 46000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670008A702A AS DateTime), 8, CAST(0x0000A670008A702A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (118, N'1182016828', 13, 132016828, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670008DDE94 AS DateTime), 8, CAST(0x0000A670008DDE94 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (119, N'1192016828', 14, 142016828, 1, 7000, 50000, 43000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670008F5B5A AS DateTime), 8, CAST(0x0000A670008F5B5A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (120, N'1202016828', 15, 152016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000942D41 AS DateTime), 8, CAST(0x0000A67000942D41 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (121, N'1212016828', 16, 162016828, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000943BA8 AS DateTime), 8, CAST(0x0000A67000943BA8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (122, N'1222016828', 17, 172016828, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000944BCC AS DateTime), 8, CAST(0x0000A67000944BCC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (123, N'1232016828', 18, 182016828, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700094D9E0 AS DateTime), 8, CAST(0x0000A6700094D9E0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (124, N'1242016828', 19, 192016828, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700094FAD5 AS DateTime), 8, CAST(0x0000A6700094FAD5 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (125, N'1252016828', 20, 202016828, 1, 9500, 10000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000950D7B AS DateTime), 8, CAST(0x0000A67000950D7B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (126, N'1262016828', 21, 212016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700095DC85 AS DateTime), 8, CAST(0x0000A6700095DC85 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (127, N'1272016828', 22, 222016828, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670009B9AFA AS DateTime), 8, CAST(0x0000A670009B9AFA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (128, N'1282016828', 24, 242016828, 1, 4500, 50000, 45500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670009DF2D6 AS DateTime), 8, CAST(0x0000A670009DF2D6 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (129, N'1292016828', 23, 232016828, 1, 9000, 20000, 11000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000A17028 AS DateTime), 8, CAST(0x0000A67000A17028 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (130, N'1302016828', 25, 252016828, 1, 3000, 3000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000A3D6B9 AS DateTime), 8, CAST(0x0000A67000A3D6B9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (131, N'1312016828', 29, 292016828, 1, 7000, 50000, 43000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000AAD26F AS DateTime), 8, CAST(0x0000A67000AAD26F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (132, N'1322016828', 30, 302016828, 1, 7000, 10000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000AC048D AS DateTime), 8, CAST(0x0000A67000AC048E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (133, N'1332016828', 27, 272016828, 1, 8000, 50000, 42000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000AC5AC8 AS DateTime), 8, CAST(0x0000A67000AC5AC8 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (134, N'1342016828', 31, 312016828, 1, 8000, 10000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000ADD166 AS DateTime), 8, CAST(0x0000A67000ADD167 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (135, N'1352016828', 32, 322016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000B0944F AS DateTime), 8, CAST(0x0000A67000B0944F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (136, N'1362016828', 28, 282016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000B22B61 AS DateTime), 8, CAST(0x0000A67000B22B61 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (137, N'1372016828', 34, 342016828, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000B5077F AS DateTime), 8, CAST(0x0000A67000B5077F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (138, N'1382016828', 36, 362016828, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000B68BA1 AS DateTime), 8, CAST(0x0000A67000B68BA1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (139, N'1392016828', 37, 372016828, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000B7BD31 AS DateTime), 8, CAST(0x0000A67000B7BD31 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (140, N'1402016828', 38, 382016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000B7DFF7 AS DateTime), 8, CAST(0x0000A67000B7DFF7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (141, N'1412016828', 39, 392016828, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000B91771 AS DateTime), 8, CAST(0x0000A67000B91771 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (142, N'1422016828', 41, 412016828, 1, 9000, 10000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000BCF904 AS DateTime), 8, CAST(0x0000A67000BCF904 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (143, N'1432016828', 33, 332016828, 1, 14500, 14500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000BD4B6A AS DateTime), 8, CAST(0x0000A67000BD4B6A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (144, N'1442016828', 44, 442016828, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C0EC17 AS DateTime), 8, CAST(0x0000A67000C0EC17 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (145, N'1452016828', 26, 262016828, 1, 24300, 24300, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C3A996 AS DateTime), 8, CAST(0x0000A67000C3A996 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (146, N'1462016828', 35, 352016828, 1, 20000, 50000, 30000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C3C108 AS DateTime), 8, CAST(0x0000A67000C3C108 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (147, N'1472016828', 47, 472016828, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C5A11B AS DateTime), 8, CAST(0x0000A67000C5A11B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (148, N'1482016828', 46, 462016828, 1, 19500, 50000, 30500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C641F1 AS DateTime), 8, CAST(0x0000A67000C641F1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (149, N'1492016828', 43, 432016828, 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C6998F AS DateTime), 8, CAST(0x0000A67000C6998F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (150, N'1502016828', 49, 492016828, 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C86E2B AS DateTime), 8, CAST(0x0000A67000C86E2B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (151, N'1512016828', 45, 452016828, 1, 3000, 3000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000C9AC1B AS DateTime), 8, CAST(0x0000A67000C9AC1B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (152, N'1522016828', 50, 502016828, 1, 3500, 50000, 46500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000CA82CB AS DateTime), 8, CAST(0x0000A67000CA82CB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (153, N'1532016828', 48, 482016828, 1, 24000, 50000, 26000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000CD65A0 AS DateTime), 8, CAST(0x0000A67000CD65A0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (154, N'1542016828', 51, 512016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000D06B50 AS DateTime), 8, CAST(0x0000A67000D06B50 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (155, N'1552016828', 52, 522016828, 1, 5500, 5500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000D102AB AS DateTime), 8, CAST(0x0000A67000D102AB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (156, N'1562016828', 53, 532016828, 1, 7500, 20000, 12500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000D15FA0 AS DateTime), 8, CAST(0x0000A67000D15FA0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (157, N'1572016828', 40, 402016828, 1, 9000, 9000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000D826CC AS DateTime), 8, CAST(0x0000A67000D826CC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (158, N'1582016828', 54, 542016828, 1, 7000, 20000, 13000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000D83B74 AS DateTime), 8, CAST(0x0000A67000D83B74 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (159, N'1592016828', 55, 552016828, 1, 8000, 8000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000D9711F AS DateTime), 8, CAST(0x0000A67000D9711F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (160, N'1602016828', 56, 562016828, 1, 10500, 20000, 9500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000DCBE5E AS DateTime), 8, CAST(0x0000A67000DCBE5E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (161, N'1612016828', 42, NULL, 1, 6500, 20000, 13500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000DD4351 AS DateTime), 8, CAST(0x0000A67000DD4351 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (162, N'1622016828', 58, 582016828, 1, 9000, 10000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000E373E0 AS DateTime), 8, CAST(0x0000A67000E373E0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (163, N'1632016828', 57, 572016828, 1, 8500, 10000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000E404F3 AS DateTime), 8, CAST(0x0000A67000E404F3 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (164, N'1642016828', 61, 612016828, 1, 7500, 10000, 2500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000EBE2CD AS DateTime), 8, CAST(0x0000A67000EBE2CD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (165, N'1652016828', 59, 592016828, 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000ECEB0C AS DateTime), 8, CAST(0x0000A67000ECEB0C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (166, N'1662016828', 62, 622016828, 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000EEB979 AS DateTime), 8, CAST(0x0000A67000EEB979 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (167, N'1672016828', 60, 602016828, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000F30E73 AS DateTime), 8, CAST(0x0000A67000F30E73 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (168, N'1682016828', 63, 632016828, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67000FC7E83 AS DateTime), 8, CAST(0x0000A67000FC7E83 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (169, N'1692016828', 65, 652016828, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67001000415 AS DateTime), 8, CAST(0x0000A67001000415 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (170, N'1702016828', 66, 662016828, 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700102AA36 AS DateTime), 8, CAST(0x0000A6700102AA36 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (171, N'1712016828', 67, 672016828, 1, 11000, 20000, 9000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700108C45B AS DateTime), 8, CAST(0x0000A6700108C45B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (172, N'1722016828', 69, 692016828, 1, 3500, 20000, 16500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670010B44FC AS DateTime), 8, CAST(0x0000A670010B44FC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (173, N'1732016828', 64, 642016828, 1, 10500, 10500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670010CE56F AS DateTime), 8, CAST(0x0000A670010CE56F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (174, N'1742016828', 68, 682016828, 1, 8500, 50000, 41500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670010DAC1A AS DateTime), 8, CAST(0x0000A670010DAC1A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (175, N'1752016828', 70, 702016828, 1, 8000, 8000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A670010E9DF0 AS DateTime), 8, CAST(0x0000A670010E9DF0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (176, N'1762016828', 71, 712016828, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67001107606 AS DateTime), 8, CAST(0x0000A67001107606 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (177, N'1772016828', 72, 722016828, 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67001108EDF AS DateTime), 8, CAST(0x0000A67001108EDF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (178, N'1782016828', 74, 742016828, 1, 7500, 7500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700121B60D AS DateTime), 8, CAST(0x0000A6700121B60D AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (179, N'1792016828', 73, 732016828, 1, 7000, 20000, 13000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6700123F87B AS DateTime), 8, CAST(0x0000A6700123F87B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (180, N'1802016828', 75, 752016828, 1, 3500, 4000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67001276D81 AS DateTime), 8, CAST(0x0000A67001276D81 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (181, N'1812016829', 1, 12016829, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100748973 AS DateTime), 8, CAST(0x0000A67100748973 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (182, N'1822016829', 2, 22016829, 1, 8000, 20000, 12000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100753155 AS DateTime), 8, CAST(0x0000A67100753155 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (183, N'1832016829', 3, 32016829, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100766A56 AS DateTime), 8, CAST(0x0000A67100766A56 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (184, N'1842016829', 4, 42016829, 1, 4000, 10000, 6000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6710077E313 AS DateTime), 8, CAST(0x0000A6710077E313 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (185, N'1852016829', 5, 52016829, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100780F2A AS DateTime), 8, CAST(0x0000A67100780F2A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (186, N'1862016829', 6, 62016829, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671007AB661 AS DateTime), 8, CAST(0x0000A671007AB661 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (187, N'1872016829', 8, 82016829, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671007BD91A AS DateTime), 8, CAST(0x0000A671007BD91A AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (188, N'1882016829', 7, 72016829, 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671007D0A41 AS DateTime), 8, CAST(0x0000A671007D0A41 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (189, N'1892016829', 9, 92016829, 1, 4000, 20000, 16000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671007E73CF AS DateTime), 8, CAST(0x0000A671007E73CF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (190, N'1902016829', 10, 102016829, 1, 3500, 50000, 46500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100831279 AS DateTime), 8, CAST(0x0000A67100831279 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (191, N'1912016829', 11, 112016829, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100853631 AS DateTime), 8, CAST(0x0000A67100853631 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (192, N'1922016829', 14, 142016829, 1, 7000, 10000, 3000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6710095A82C AS DateTime), 8, CAST(0x0000A6710095A82C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (193, N'1932016829', 13, 132016829, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6710095AF43 AS DateTime), 8, CAST(0x0000A6710095AF43 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (194, N'1942016829', 12, 122016829, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6710095B7CD AS DateTime), 8, CAST(0x0000A6710095B7CD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (195, N'1952016829', 15, 152016829, 1, 10500, 20000, 9500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671009687F4 AS DateTime), 8, CAST(0x0000A671009687F4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (196, N'1962016829', 18, 182016829, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100986FEB AS DateTime), 8, CAST(0x0000A67100986FEB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (197, N'1972016829', 19, 192016829, 1, 7000, 7000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6710098CB43 AS DateTime), 8, CAST(0x0000A6710098CB43 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (198, N'1982016829', 16, 162016829, 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6710098D6BD AS DateTime), 8, CAST(0x0000A6710098D6BD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (199, N'1992016829', 21, 212016829, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A6710099E9EF AS DateTime), 8, CAST(0x0000A6710099E9EF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (200, N'2002016829', 22, 222016829, 1, 3500, 10000, 6500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671009A4906 AS DateTime), 8, CAST(0x0000A671009A4906 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (201, N'2012016829', 23, 232016829, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671009A9CF7 AS DateTime), 8, CAST(0x0000A671009A9CF7 AS DateTime), N'', 2)
GO
print 'Processed 200 total records'
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (202, N'2022016829', 24, 242016829, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671009BEEAC AS DateTime), 8, CAST(0x0000A671009BEEAC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (203, N'2032016829', 17, 172016829, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A671009C52D0 AS DateTime), 8, CAST(0x0000A671009C52D0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (204, N'2042016829', 27, 272016829, 1, 11500, 20000, 8500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100A368AD AS DateTime), 8, CAST(0x0000A67100A368AD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (205, N'2052016829', 28, 282016829, 1, 4000, 50000, 46000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100A42D76 AS DateTime), 8, CAST(0x0000A67100A42D76 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (206, N'2062016829', 30, 302016829, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100A937BA AS DateTime), 8, CAST(0x0000A67100A937BA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (207, N'2072016829', 20, 202016829, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100A9B9C9 AS DateTime), 8, CAST(0x0000A67100A9B9C9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (208, N'2082016829', 29, 292016829, 1, 3000, 5000, 2000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100ACC853 AS DateTime), 8, CAST(0x0000A67100ACC853 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (209, N'2092016829', 25, 252016829, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100ACE9F0 AS DateTime), 8, CAST(0x0000A67100ACE9F0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (210, N'2102016829', 32, 322016829, 1, 4500, 50000, 45500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100AD14BB AS DateTime), 8, CAST(0x0000A67100AD14BB AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (211, N'2112016829', 26, 262016829, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100B19C2E AS DateTime), 8, CAST(0x0000A67100B19C2E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (212, N'2122016829', 31, 312016829, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100B401EC AS DateTime), 8, CAST(0x0000A67100B401EC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (213, N'2132016829', 33, 332016829, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100BA63CA AS DateTime), 8, CAST(0x0000A67100BA63CA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (214, N'2142016829', 34, 342016829, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100BA6F85 AS DateTime), 8, CAST(0x0000A67100BA6F85 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (215, N'2152016829', 36, 362016829, 1, 4500, 10000, 5500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100BB689C AS DateTime), 8, CAST(0x0000A67100BB689C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (216, N'2162016829', 37, 372016829, 1, 4500, 20000, 15500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100C331DC AS DateTime), 8, CAST(0x0000A67100C331DC AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (217, N'2172016829', 38, 382016829, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100C4AF93 AS DateTime), 8, CAST(0x0000A67100C4AF93 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (218, N'2182016829', 39, 392016829, 1, 7000, 20000, 13000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100C79956 AS DateTime), 8, CAST(0x0000A67100C79956 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (219, N'2192016829', 35, 352016829, 1, 4500, 5000, 500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100C8E4FA AS DateTime), 8, CAST(0x0000A67100C8E4FA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (220, N'2202016829', 42, 422016829, 1, 3500, 5000, 1500, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100CB0820 AS DateTime), 8, CAST(0x0000A67100CB0820 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (221, N'2212016829', 40, 402016829, 1, 4500, 4500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100CF471E AS DateTime), 8, CAST(0x0000A67100CF471E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (222, N'2222016829', 41, 412016829, 1, 3500, 3500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100CF9CC9 AS DateTime), 8, CAST(0x0000A67100CF9CC9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (223, N'2232016829', 44, 442016829, 1, 9000, 10000, 1000, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100D93F06 AS DateTime), 8, CAST(0x0000A67100D93F06 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (224, N'2242016829', 45, 452016829, 1, 6500, 6500, 0, 0, 0, 0, 0, NULL, NULL, 8, CAST(0x0000A67100DB07EF AS DateTime), 8, CAST(0x0000A67100DB07EF AS DateTime), N'', 2)
SET IDENTITY_INSERT [dbo].[INVOICE] OFF
/****** Object:  UserDefinedFunction [dbo].[GetStartDate]    Script Date: 08/29/2016 13:33:32 ******/
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
/****** Object:  Table [dbo].[PERMISSION]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[PAYMENT_TYPE]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[PAYMENT_INVOICE_HISTORY_ALL]    Script Date: 08/29/2016 13:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_INVOICE_HISTORY_ALL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentHistoryID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[PAYMENT_INVOICE_HISTORY]    Script Date: 08/29/2016 13:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_INVOICE_HISTORY](
	[PaymentHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
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
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, N'12016827', 1, 20000, 1, 0, CAST(0x0000A66F007B07FA AS DateTime), 0, CAST(0x0000A66F007B07FB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, N'22016827', 1, 20000, 1, 0, CAST(0x0000A66F007C439A AS DateTime), 0, CAST(0x0000A66F007C439A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 3, N'32016827', 1, 10000, 1, 0, CAST(0x0000A66F007C57DC AS DateTime), 0, CAST(0x0000A66F007C57DC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 4, N'42016827', 1, 10000, 1, 0, CAST(0x0000A66F007D7717 AS DateTime), 0, CAST(0x0000A66F007D7717 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 5, N'52016827', 1, 4000, 1, 0, CAST(0x0000A66F007FFA58 AS DateTime), 0, CAST(0x0000A66F007FFA58 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 6, N'62016827', 1, 10000, 1, 0, CAST(0x0000A66F0084AB3C AS DateTime), 0, CAST(0x0000A66F0084AB3C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 7, N'72016827', 1, 20000, 1, 0, CAST(0x0000A66F0084C88B AS DateTime), 0, CAST(0x0000A66F0084C88B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 8, N'82016827', 1, 3000, 1, 0, CAST(0x0000A66F008579B4 AS DateTime), 0, CAST(0x0000A66F008579B4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 9, N'92016827', 1, 20000, 1, 0, CAST(0x0000A66F0088E3D1 AS DateTime), 0, CAST(0x0000A66F0088E3D1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 10, N'102016827', 1, 3500, 1, 0, CAST(0x0000A66F00897B17 AS DateTime), 0, CAST(0x0000A66F00897B17 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 11, N'112016827', 1, 50000, 1, 0, CAST(0x0000A66F008A4EF9 AS DateTime), 0, CAST(0x0000A66F008A4EF9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 12, N'122016827', 1, 10000, 1, 0, CAST(0x0000A66F008C633E AS DateTime), 0, CAST(0x0000A66F008C633E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 13, N'132016827', 1, 20000, 1, 0, CAST(0x0000A66F00912115 AS DateTime), 0, CAST(0x0000A66F00912115 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 14, N'142016827', 1, 20000, 1, 0, CAST(0x0000A66F00923B10 AS DateTime), 0, CAST(0x0000A66F00923B10 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 15, N'152016827', 1, 20000, 1, 0, CAST(0x0000A66F0092B9CE AS DateTime), 0, CAST(0x0000A66F0092B9CE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 16, N'162016827', 1, 10000, 1, 0, CAST(0x0000A66F00935D8E AS DateTime), 0, CAST(0x0000A66F00935D8E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 17, N'172016827', 1, 10000, 1, 0, CAST(0x0000A66F00936AA2 AS DateTime), 0, CAST(0x0000A66F00936AA2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 18, N'182016827', 1, 20000, 1, 0, CAST(0x0000A66F00942FB8 AS DateTime), 0, CAST(0x0000A66F00942FB8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 19, N'192016827', 1, 3500, 1, 0, CAST(0x0000A66F009464BC AS DateTime), 0, CAST(0x0000A66F009464BC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 20, N'202016827', 1, 20000, 1, 0, CAST(0x0000A66F00957329 AS DateTime), 0, CAST(0x0000A66F00957329 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 21, N'212016827', 1, 7000, 1, 0, CAST(0x0000A66F00959056 AS DateTime), 0, CAST(0x0000A66F00959056 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 22, N'222016827', 1, 50000, 1, 0, CAST(0x0000A66F0095E823 AS DateTime), 0, CAST(0x0000A66F0095E823 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 23, N'232016827', 1, 20000, 1, 0, CAST(0x0000A66F00972A28 AS DateTime), 0, CAST(0x0000A66F00972A28 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 24, N'242016827', 1, 5000, 1, 0, CAST(0x0000A66F0097EA98 AS DateTime), 0, CAST(0x0000A66F0097EA98 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 25, N'252016827', 1, 5000, 1, 0, CAST(0x0000A66F0098B8A7 AS DateTime), 0, CAST(0x0000A66F0098B8A7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 26, N'262016827', 1, 5000, 1, 0, CAST(0x0000A66F00990943 AS DateTime), 0, CAST(0x0000A66F00990943 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 27, N'272016827', 1, 10000, 1, 0, CAST(0x0000A66F009A5283 AS DateTime), 0, CAST(0x0000A66F009A5283 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 28, N'282016827', 1, 20000, 1, 0, CAST(0x0000A66F009B6E25 AS DateTime), 0, CAST(0x0000A66F009B6E25 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 29, N'292016827', 1, 3500, 1, 0, CAST(0x0000A66F009C54A2 AS DateTime), 0, CAST(0x0000A66F009C54A2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 30, N'302016827', 1, 3500, 1, 0, CAST(0x0000A66F009C7A72 AS DateTime), 0, CAST(0x0000A66F009C7A72 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 31, N'312016827', 1, 20000, 1, 0, CAST(0x0000A66F009E73D6 AS DateTime), 0, CAST(0x0000A66F009E73D6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 32, N'322016827', 1, 5000, 1, 0, CAST(0x0000A66F009F9086 AS DateTime), 0, CAST(0x0000A66F009F9086 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 33, N'332016827', 1, 5000, 1, 0, CAST(0x0000A66F009F9F54 AS DateTime), 0, CAST(0x0000A66F009F9F54 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 34, N'342016827', 1, 50000, 1, 0, CAST(0x0000A66F009FD0A0 AS DateTime), 0, CAST(0x0000A66F009FD0A0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 35, N'352016827', 1, 4000, 1, 0, CAST(0x0000A66F00A2224A AS DateTime), 0, CAST(0x0000A66F00A2224A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 36, N'362016827', 1, 5000, 1, 0, CAST(0x0000A66F00A300B8 AS DateTime), 0, CAST(0x0000A66F00A300B8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 37, N'372016827', 1, 20000, 1, 0, CAST(0x0000A66F00A443C8 AS DateTime), 0, CAST(0x0000A66F00A443C8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 38, N'382016827', 1, 5000, 1, 0, CAST(0x0000A66F00A50108 AS DateTime), 0, CAST(0x0000A66F00A50108 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 39, N'392016827', 1, 5000, 1, 0, CAST(0x0000A66F00A5D9BB AS DateTime), 0, CAST(0x0000A66F00A5D9BB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 40, N'402016827', 1, 20000, 1, 0, CAST(0x0000A66F00A9BDE5 AS DateTime), 0, CAST(0x0000A66F00A9BDE5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 41, N'412016827', 1, 5000, 1, 0, CAST(0x0000A66F00ACEF92 AS DateTime), 0, CAST(0x0000A66F00ACEF92 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 42, N'422016827', 1, 50000, 1, 0, CAST(0x0000A66F00B07AB0 AS DateTime), 0, CAST(0x0000A66F00B07AB0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 43, N'432016827', 1, 3500, 1, 0, CAST(0x0000A66F00B0A00B AS DateTime), 0, CAST(0x0000A66F00B0A00B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 44, N'442016827', 1, 5000, 1, 0, CAST(0x0000A66F00B14005 AS DateTime), 0, CAST(0x0000A66F00B14005 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 45, N'452016827', 1, 4000, 1, 0, CAST(0x0000A66F00B27170 AS DateTime), 0, CAST(0x0000A66F00B27170 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 46, N'462016827', 1, 3000, 1, 0, CAST(0x0000A66F00B2F667 AS DateTime), 0, CAST(0x0000A66F00B2F667 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 47, N'472016827', 1, 10000, 1, 0, CAST(0x0000A66F00B30C39 AS DateTime), 0, CAST(0x0000A66F00B30C39 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 48, N'482016827', 1, 100000, 1, 0, CAST(0x0000A66F00B394AD AS DateTime), 0, CAST(0x0000A66F00B394AD AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 49, N'492016827', 1, 10000, 1, 0, CAST(0x0000A66F00B3AF49 AS DateTime), 0, CAST(0x0000A66F00B3AF49 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 50, N'502016827', 1, 4500, 1, 0, CAST(0x0000A66F00B3FE4E AS DateTime), 0, CAST(0x0000A66F00B3FE4E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 51, N'512016827', 1, 20000, 1, 0, CAST(0x0000A66F00B63DBD AS DateTime), 0, CAST(0x0000A66F00B63DBD AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 52, N'522016827', 1, 20000, 1, 0, CAST(0x0000A66F00BC2583 AS DateTime), 0, CAST(0x0000A66F00BC2583 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 53, N'532016827', 1, 50000, 1, 0, CAST(0x0000A66F00BC5A5D AS DateTime), 0, CAST(0x0000A66F00BC5A5D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 54, N'542016827', 1, 20000, 1, 0, CAST(0x0000A66F00BEB9C2 AS DateTime), 0, CAST(0x0000A66F00BEB9C2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 55, N'552016827', 1, 3000, 1, 0, CAST(0x0000A66F00BEE743 AS DateTime), 0, CAST(0x0000A66F00BEE743 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 56, N'562016827', 1, 5000, 1, 0, CAST(0x0000A66F00C02850 AS DateTime), 0, CAST(0x0000A66F00C02850 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 57, N'572016827', 1, 20000, 1, 0, CAST(0x0000A66F00C0F652 AS DateTime), 0, CAST(0x0000A66F00C0F652 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 58, N'582016827', 1, 20000, 1, 0, CAST(0x0000A66F00C45EC7 AS DateTime), 0, CAST(0x0000A66F00C45EC7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 59, N'592016827', 1, 10000, 1, 0, CAST(0x0000A66F00C55A1A AS DateTime), 0, CAST(0x0000A66F00C55A1A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 60, N'602016827', 1, 10000, 1, 0, CAST(0x0000A66F00C8FD9C AS DateTime), 0, CAST(0x0000A66F00C8FD9C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 61, N'612016827', 1, 50000, 1, 0, CAST(0x0000A66F00C964B3 AS DateTime), 0, CAST(0x0000A66F00C964B4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 62, N'622016827', 1, 20000, 1, 0, CAST(0x0000A66F00CA4123 AS DateTime), 0, CAST(0x0000A66F00CA4123 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 63, N'632016827', 1, 5000, 1, 0, CAST(0x0000A66F00CB9174 AS DateTime), 0, CAST(0x0000A66F00CB9174 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 64, N'642016827', 1, 5000, 1, 0, CAST(0x0000A66F00CCA888 AS DateTime), 0, CAST(0x0000A66F00CCA888 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 65, N'652016827', 1, 20000, 1, 0, CAST(0x0000A66F00CDC026 AS DateTime), 0, CAST(0x0000A66F00CDC026 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 66, N'662016827', 1, 3500, 1, 0, CAST(0x0000A66F00CE5A52 AS DateTime), 0, CAST(0x0000A66F00CE5A52 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 67, N'672016827', 1, 3500, 1, 0, CAST(0x0000A66F00CE73C5 AS DateTime), 0, CAST(0x0000A66F00CE73C5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 68, N'682016827', 1, 20000, 1, 0, CAST(0x0000A66F00D02C99 AS DateTime), 0, CAST(0x0000A66F00D02C99 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 69, N'692016827', 1, 20000, 1, 0, CAST(0x0000A66F00D072A1 AS DateTime), 0, CAST(0x0000A66F00D072A1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 70, N'702016827', 1, 10000, 1, 0, CAST(0x0000A66F00D1ABC4 AS DateTime), 0, CAST(0x0000A66F00D1ABC4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 71, N'712016827', 1, 4000, 1, 0, CAST(0x0000A66F00D4D886 AS DateTime), 0, CAST(0x0000A66F00D4D886 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 72, N'722016827', 1, 8000, 1, 0, CAST(0x0000A66F00D7A85C AS DateTime), 0, CAST(0x0000A66F00D7A85C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 73, N'732016827', 1, 5000, 1, 0, CAST(0x0000A66F00E130FE AS DateTime), 0, CAST(0x0000A66F00E130FE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 74, N'742016827', 1, 5000, 1, 0, CAST(0x0000A66F00E60EE0 AS DateTime), 0, CAST(0x0000A66F00E60EE0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 75, N'752016827', 1, 5000, 1, 0, CAST(0x0000A66F00E98307 AS DateTime), 0, CAST(0x0000A66F00E98307 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 76, N'762016827', 1, 100000, 1, 0, CAST(0x0000A66F00EA97E4 AS DateTime), 0, CAST(0x0000A66F00EA97E4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 77, N'772016827', 1, 4500, 1, 0, CAST(0x0000A66F00EF527F AS DateTime), 0, CAST(0x0000A66F00EF527F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 78, N'782016827', 1, 20000, 1, 0, CAST(0x0000A66F00EFD7E3 AS DateTime), 0, CAST(0x0000A66F00EFD7E3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 79, N'792016827', 1, 5000, 1, 0, CAST(0x0000A66F00F16E97 AS DateTime), 0, CAST(0x0000A66F00F16E97 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 80, N'802016827', 1, 5000, 1, 0, CAST(0x0000A66F00F19AE8 AS DateTime), 0, CAST(0x0000A66F00F19AE8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 81, N'812016827', 1, 50000, 1, 0, CAST(0x0000A66F00F33898 AS DateTime), 0, CAST(0x0000A66F00F33898 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 82, N'822016827', 1, 10000, 1, 0, CAST(0x0000A66F00F68D53 AS DateTime), 0, CAST(0x0000A66F00F68D53 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 83, N'832016827', 1, 50000, 1, 0, CAST(0x0000A66F00F6EED5 AS DateTime), 0, CAST(0x0000A66F00F6EED5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 84, N'842016827', 1, 5000, 1, 0, CAST(0x0000A66F00F77036 AS DateTime), 0, CAST(0x0000A66F00F77036 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 85, N'852016827', 1, 4000, 1, 0, CAST(0x0000A66F00F86D65 AS DateTime), 0, CAST(0x0000A66F00F86D65 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 86, N'862016827', 1, 5000, 1, 0, CAST(0x0000A66F00F88B44 AS DateTime), 0, CAST(0x0000A66F00F88B44 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 87, N'872016827', 1, 6500, 1, 0, CAST(0x0000A66F00F8EC68 AS DateTime), 0, CAST(0x0000A66F00F8EC68 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 88, N'882016827', 1, 10000, 1, 0, CAST(0x0000A66F00FCF86E AS DateTime), 0, CAST(0x0000A66F00FCF86E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 89, N'892016827', 1, 4000, 1, 0, CAST(0x0000A66F00FFF57D AS DateTime), 0, CAST(0x0000A66F00FFF57D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 90, N'902016827', 1, 20000, 1, 0, CAST(0x0000A66F01010C0F AS DateTime), 0, CAST(0x0000A66F01010C0F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (91, 91, N'912016827', 1, 5000, 1, 0, CAST(0x0000A66F01040BFC AS DateTime), 0, CAST(0x0000A66F01040BFC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (92, 92, N'922016827', 1, 20000, 1, 0, CAST(0x0000A66F0105717A AS DateTime), 0, CAST(0x0000A66F0105717A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (93, 93, N'932016827', 1, 20000, 1, 0, CAST(0x0000A66F01059C8B AS DateTime), 0, CAST(0x0000A66F01059C8B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (94, 94, N'942016827', 1, 20000, 1, 0, CAST(0x0000A66F010728B0 AS DateTime), 0, CAST(0x0000A66F010728B0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 95, N'952016827', 1, 3500, 1, 0, CAST(0x0000A66F0107BC6B AS DateTime), 0, CAST(0x0000A66F0107BC6B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 96, N'962016827', 1, 9000, 1, 0, CAST(0x0000A66F01083C6B AS DateTime), 0, CAST(0x0000A66F01083C6B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 97, N'972016827', 1, 20000, 1, 0, CAST(0x0000A66F01099291 AS DateTime), 0, CAST(0x0000A66F01099291 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 98, N'982016827', 1, 10000, 1, 0, CAST(0x0000A66F010C6AC1 AS DateTime), 0, CAST(0x0000A66F010C6AC1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 99, N'992016827', 1, 4500, 1, 0, CAST(0x0000A66F010CF593 AS DateTime), 0, CAST(0x0000A66F010CF593 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 100, N'1002016827', 1, 5000, 1, 0, CAST(0x0000A66F010DE5BA AS DateTime), 0, CAST(0x0000A66F010DE5BA AS DateTime), N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 101, N'1012016827', 1, 20000, 1, 0, CAST(0x0000A66F0117E2B1 AS DateTime), 0, CAST(0x0000A66F0117E2B1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 102, N'1022016827', 1, 20000, 1, 0, CAST(0x0000A66F011870C9 AS DateTime), 0, CAST(0x0000A66F011870C9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (103, 103, N'1032016827', 1, 20000, 1, 0, CAST(0x0000A66F01188DA2 AS DateTime), 0, CAST(0x0000A66F01188DA2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (104, 104, N'1042016827', 1, 4000, 1, 0, CAST(0x0000A66F011E9F3A AS DateTime), 0, CAST(0x0000A66F011E9F3A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (105, 105, N'1052016827', 1, 50000, 1, 0, CAST(0x0000A66F012ED756 AS DateTime), 0, CAST(0x0000A66F012ED756 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (106, 106, N'1062016828', 1, 7000, 1, 0, CAST(0x0000A67000799E65 AS DateTime), 0, CAST(0x0000A67000799E65 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (107, 107, N'1072016828', 1, 10000, 1, 0, CAST(0x0000A670007A9777 AS DateTime), 0, CAST(0x0000A670007A9777 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 108, N'1082016828', 1, 50000, 1, 0, CAST(0x0000A670007CD3FF AS DateTime), 0, CAST(0x0000A670007CD3FF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 109, N'1092016828', 1, 10000, 1, 0, CAST(0x0000A6700080188B AS DateTime), 0, CAST(0x0000A6700080188B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 110, N'1102016828', 1, 20000, 1, 0, CAST(0x0000A67000811C1B AS DateTime), 0, CAST(0x0000A67000811C1B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 111, N'1112016828', 1, 20000, 1, 0, CAST(0x0000A67000815344 AS DateTime), 0, CAST(0x0000A67000815344 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 112, N'1122016828', 1, 5000, 1, 0, CAST(0x0000A67000821F65 AS DateTime), 0, CAST(0x0000A67000821F65 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 113, N'1132016828', 1, 4000, 1, 0, CAST(0x0000A6700084DD32 AS DateTime), 0, CAST(0x0000A6700084DD32 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 114, N'1142016828', 1, 4000, 1, 0, CAST(0x0000A6700084EBEA AS DateTime), 0, CAST(0x0000A6700084EBEA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 115, N'1152016828', 1, 10000, 1, 0, CAST(0x0000A6700085F98B AS DateTime), 0, CAST(0x0000A6700085F98B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 116, N'1162016828', 1, 5000, 1, 0, CAST(0x0000A6700086D488 AS DateTime), 0, CAST(0x0000A6700086D488 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 117, N'1172016828', 1, 50000, 1, 0, CAST(0x0000A670008A702D AS DateTime), 0, CAST(0x0000A670008A702D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 118, N'1182016828', 1, 5000, 1, 0, CAST(0x0000A670008DDE96 AS DateTime), 0, CAST(0x0000A670008DDE96 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 119, N'1192016828', 1, 50000, 1, 0, CAST(0x0000A670008F5B5C AS DateTime), 0, CAST(0x0000A670008F5B5C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 120, N'1202016828', 1, 4000, 1, 0, CAST(0x0000A67000942D47 AS DateTime), 0, CAST(0x0000A67000942D47 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 121, N'1212016828', 1, 20000, 1, 0, CAST(0x0000A67000943BAA AS DateTime), 0, CAST(0x0000A67000943BAA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 122, N'1222016828', 1, 5000, 1, 0, CAST(0x0000A67000944BD0 AS DateTime), 0, CAST(0x0000A67000944BD0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (123, 123, N'1232016828', 1, 20000, 1, 0, CAST(0x0000A6700094D9E3 AS DateTime), 0, CAST(0x0000A6700094D9E3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (124, 124, N'1242016828', 1, 3500, 1, 0, CAST(0x0000A6700094FAD8 AS DateTime), 0, CAST(0x0000A6700094FAD8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (125, 125, N'1252016828', 1, 10000, 1, 0, CAST(0x0000A67000950D7E AS DateTime), 0, CAST(0x0000A67000950D7E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (126, 126, N'1262016828', 1, 4000, 1, 0, CAST(0x0000A6700095DC8D AS DateTime), 0, CAST(0x0000A6700095DC8D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 127, N'1272016828', 1, 20000, 1, 0, CAST(0x0000A670009B9AFC AS DateTime), 0, CAST(0x0000A670009B9AFC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (128, 128, N'1282016828', 1, 50000, 1, 0, CAST(0x0000A670009DF2D8 AS DateTime), 0, CAST(0x0000A670009DF2D8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (129, 129, N'1292016828', 1, 20000, 1, 0, CAST(0x0000A67000A17029 AS DateTime), 0, CAST(0x0000A67000A17029 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (130, 130, N'1302016828', 1, 3000, 1, 0, CAST(0x0000A67000A3D6BC AS DateTime), 0, CAST(0x0000A67000A3D6BC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (131, 131, N'1312016828', 1, 50000, 1, 0, CAST(0x0000A67000AAD271 AS DateTime), 0, CAST(0x0000A67000AAD271 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (132, 132, N'1322016828', 1, 10000, 1, 0, CAST(0x0000A67000AC0492 AS DateTime), 0, CAST(0x0000A67000AC0492 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (133, 133, N'1332016828', 1, 50000, 1, 0, CAST(0x0000A67000AC5ACD AS DateTime), 0, CAST(0x0000A67000AC5ACD AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (134, 134, N'1342016828', 1, 10000, 1, 0, CAST(0x0000A67000ADD169 AS DateTime), 0, CAST(0x0000A67000ADD169 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (135, 135, N'1352016828', 1, 4000, 1, 0, CAST(0x0000A67000B09453 AS DateTime), 0, CAST(0x0000A67000B09453 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (136, 136, N'1362016828', 1, 4000, 1, 0, CAST(0x0000A67000B22B63 AS DateTime), 0, CAST(0x0000A67000B22B63 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (137, 137, N'1372016828', 1, 5000, 1, 0, CAST(0x0000A67000B50781 AS DateTime), 0, CAST(0x0000A67000B50781 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (138, 138, N'1382016828', 1, 5000, 1, 0, CAST(0x0000A67000B68BA8 AS DateTime), 0, CAST(0x0000A67000B68BA8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (139, 139, N'1392016828', 1, 5000, 1, 0, CAST(0x0000A67000B7BD34 AS DateTime), 0, CAST(0x0000A67000B7BD34 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (140, 140, N'1402016828', 1, 4000, 1, 0, CAST(0x0000A67000B7DFFA AS DateTime), 0, CAST(0x0000A67000B7DFFA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (141, 141, N'1412016828', 1, 3500, 1, 0, CAST(0x0000A67000B91774 AS DateTime), 0, CAST(0x0000A67000B91774 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (142, 142, N'1422016828', 1, 10000, 1, 0, CAST(0x0000A67000BCF907 AS DateTime), 0, CAST(0x0000A67000BCF907 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (143, 143, N'1432016828', 1, 14500, 1, 0, CAST(0x0000A67000BD4B6D AS DateTime), 0, CAST(0x0000A67000BD4B6D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (144, 144, N'1442016828', 1, 5000, 1, 0, CAST(0x0000A67000C0EC1A AS DateTime), 0, CAST(0x0000A67000C0EC1A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (145, 145, N'1452016828', 1, 24300, 1, 0, CAST(0x0000A67000C3A999 AS DateTime), 0, CAST(0x0000A67000C3A999 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (146, 146, N'1462016828', 1, 50000, 1, 0, CAST(0x0000A67000C3C10A AS DateTime), 0, CAST(0x0000A67000C3C10A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (147, 147, N'1472016828', 1, 20000, 1, 0, CAST(0x0000A67000C5A11F AS DateTime), 0, CAST(0x0000A67000C5A11F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (148, 148, N'1482016828', 1, 50000, 1, 0, CAST(0x0000A67000C641F4 AS DateTime), 0, CAST(0x0000A67000C641F4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (149, 149, N'1492016828', 1, 4500, 1, 0, CAST(0x0000A67000C69991 AS DateTime), 0, CAST(0x0000A67000C69991 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (150, 150, N'1502016828', 1, 10000, 1, 0, CAST(0x0000A67000C86E2D AS DateTime), 0, CAST(0x0000A67000C86E2D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (151, 151, N'1512016828', 1, 3000, 1, 0, CAST(0x0000A67000C9AC1D AS DateTime), 0, CAST(0x0000A67000C9AC1D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (152, 152, N'1522016828', 1, 50000, 1, 0, CAST(0x0000A67000CA82CD AS DateTime), 0, CAST(0x0000A67000CA82CD AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (153, 153, N'1532016828', 1, 50000, 1, 0, CAST(0x0000A67000CD65A2 AS DateTime), 0, CAST(0x0000A67000CD65A2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (154, 154, N'1542016828', 1, 4000, 1, 0, CAST(0x0000A67000D06B53 AS DateTime), 0, CAST(0x0000A67000D06B53 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (155, 155, N'1552016828', 1, 5500, 1, 0, CAST(0x0000A67000D102AE AS DateTime), 0, CAST(0x0000A67000D102AE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (156, 156, N'1562016828', 1, 20000, 1, 0, CAST(0x0000A67000D15FA3 AS DateTime), 0, CAST(0x0000A67000D15FA3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (157, 157, N'1572016828', 1, 9000, 1, 0, CAST(0x0000A67000D826CD AS DateTime), 0, CAST(0x0000A67000D826CD AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (158, 158, N'1582016828', 1, 20000, 1, 0, CAST(0x0000A67000D83B76 AS DateTime), 0, CAST(0x0000A67000D83B76 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (159, 159, N'1592016828', 1, 8000, 1, 0, CAST(0x0000A67000D97123 AS DateTime), 0, CAST(0x0000A67000D97123 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (160, 160, N'1602016828', 1, 20000, 1, 0, CAST(0x0000A67000DCBE61 AS DateTime), 0, CAST(0x0000A67000DCBE61 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (161, 161, N'1612016828', 1, 20000, 1, 0, CAST(0x0000A67000DD4355 AS DateTime), 0, CAST(0x0000A67000DD4355 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (162, 162, N'1622016828', 1, 10000, 1, 0, CAST(0x0000A67000E373E3 AS DateTime), 0, CAST(0x0000A67000E373E3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (163, 163, N'1632016828', 1, 10000, 1, 0, CAST(0x0000A67000E404F5 AS DateTime), 0, CAST(0x0000A67000E404F5 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (164, 164, N'1642016828', 1, 10000, 1, 0, CAST(0x0000A67000EBE2CF AS DateTime), 0, CAST(0x0000A67000EBE2CF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (165, 165, N'1652016828', 1, 10000, 1, 0, CAST(0x0000A67000ECEB0E AS DateTime), 0, CAST(0x0000A67000ECEB0E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (166, 166, N'1662016828', 1, 4500, 1, 0, CAST(0x0000A67000EEB980 AS DateTime), 0, CAST(0x0000A67000EEB980 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (167, 167, N'1672016828', 1, 5000, 1, 0, CAST(0x0000A67000F30E75 AS DateTime), 0, CAST(0x0000A67000F30E75 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (168, 168, N'1682016828', 1, 5000, 1, 0, CAST(0x0000A67000FC7E85 AS DateTime), 0, CAST(0x0000A67000FC7E85 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (169, 169, N'1692016828', 1, 4000, 1, 0, CAST(0x0000A67001000417 AS DateTime), 0, CAST(0x0000A67001000417 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (170, 170, N'1702016828', 1, 10000, 1, 0, CAST(0x0000A6700102AA3D AS DateTime), 0, CAST(0x0000A6700102AA3D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (171, 171, N'1712016828', 1, 20000, 1, 0, CAST(0x0000A6700108C45D AS DateTime), 0, CAST(0x0000A6700108C45D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (172, 172, N'1722016828', 1, 20000, 1, 0, CAST(0x0000A670010B44FE AS DateTime), 0, CAST(0x0000A670010B44FE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (173, 173, N'1732016828', 1, 10500, 1, 0, CAST(0x0000A670010CE571 AS DateTime), 0, CAST(0x0000A670010CE571 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (174, 174, N'1742016828', 1, 50000, 1, 0, CAST(0x0000A670010DAC1C AS DateTime), 0, CAST(0x0000A670010DAC1C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (175, 175, N'1752016828', 1, 8000, 1, 0, CAST(0x0000A670010E9DF3 AS DateTime), 0, CAST(0x0000A670010E9DF3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (176, 176, N'1762016828', 1, 5000, 1, 0, CAST(0x0000A67001107608 AS DateTime), 0, CAST(0x0000A67001107608 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (177, 177, N'1772016828', 1, 20000, 1, 0, CAST(0x0000A67001108EE2 AS DateTime), 0, CAST(0x0000A67001108EE2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (178, 178, N'1782016828', 1, 7500, 1, 0, CAST(0x0000A6700121B610 AS DateTime), 0, CAST(0x0000A6700121B610 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (179, 179, N'1792016828', 1, 20000, 1, 0, CAST(0x0000A6700123F87E AS DateTime), 0, CAST(0x0000A6700123F87E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (180, 180, N'1802016828', 1, 4000, 1, 0, CAST(0x0000A67001276D83 AS DateTime), 0, CAST(0x0000A67001276D83 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (181, 181, N'1812016829', 1, 4000, 1, 0, CAST(0x0000A6710074899B AS DateTime), 0, CAST(0x0000A6710074899B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (182, 182, N'1822016829', 1, 20000, 1, 0, CAST(0x0000A67100753159 AS DateTime), 0, CAST(0x0000A67100753159 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (183, 183, N'1832016829', 1, 3500, 1, 0, CAST(0x0000A67100766A58 AS DateTime), 0, CAST(0x0000A67100766A58 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (184, 184, N'1842016829', 1, 10000, 1, 0, CAST(0x0000A6710077E316 AS DateTime), 0, CAST(0x0000A6710077E316 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (185, 185, N'1852016829', 1, 3500, 1, 0, CAST(0x0000A67100780F2C AS DateTime), 0, CAST(0x0000A67100780F2C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (186, 186, N'1862016829', 1, 5000, 1, 0, CAST(0x0000A671007AB663 AS DateTime), 0, CAST(0x0000A671007AB663 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (187, 187, N'1872016829', 1, 4000, 1, 0, CAST(0x0000A671007BD91C AS DateTime), 0, CAST(0x0000A671007BD91C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (188, 188, N'1882016829', 1, 20000, 1, 0, CAST(0x0000A671007D0A45 AS DateTime), 0, CAST(0x0000A671007D0A45 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (189, 189, N'1892016829', 1, 20000, 1, 0, CAST(0x0000A671007E73D1 AS DateTime), 0, CAST(0x0000A671007E73D1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (190, 190, N'1902016829', 1, 50000, 1, 0, CAST(0x0000A6710083127B AS DateTime), 0, CAST(0x0000A6710083127B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (191, 191, N'1912016829', 1, 5000, 1, 0, CAST(0x0000A67100853633 AS DateTime), 0, CAST(0x0000A67100853633 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (192, 192, N'1922016829', 1, 10000, 1, 0, CAST(0x0000A6710095A856 AS DateTime), 0, CAST(0x0000A6710095A856 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (193, 193, N'1932016829', 1, 4000, 1, 0, CAST(0x0000A6710095AF47 AS DateTime), 0, CAST(0x0000A6710095AF47 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (194, 194, N'1942016829', 1, 3500, 1, 0, CAST(0x0000A6710095B7CE AS DateTime), 0, CAST(0x0000A6710095B7CE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (195, 195, N'1952016829', 1, 20000, 1, 0, CAST(0x0000A671009687F6 AS DateTime), 0, CAST(0x0000A671009687F6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (196, 196, N'1962016829', 1, 5000, 1, 0, CAST(0x0000A67100986FED AS DateTime), 0, CAST(0x0000A67100986FED AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (197, 197, N'1972016829', 1, 7000, 1, 0, CAST(0x0000A6710098CB45 AS DateTime), 0, CAST(0x0000A6710098CB45 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (198, 198, N'1982016829', 1, 10000, 1, 0, CAST(0x0000A6710098D6BF AS DateTime), 0, CAST(0x0000A6710098D6BF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (199, 199, N'1992016829', 1, 5000, 1, 0, CAST(0x0000A6710099E9F1 AS DateTime), 0, CAST(0x0000A6710099E9F1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (200, 200, N'2002016829', 1, 10000, 1, 0, CAST(0x0000A671009A4907 AS DateTime), 0, CAST(0x0000A671009A4907 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (201, 201, N'2012016829', 1, 3500, 1, 0, CAST(0x0000A671009A9CF8 AS DateTime), 0, CAST(0x0000A671009A9CF8 AS DateTime), N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (202, 202, N'2022016829', 1, 5000, 1, 0, CAST(0x0000A671009BEEAF AS DateTime), 0, CAST(0x0000A671009BEEAF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (203, 203, N'2032016829', 1, 3500, 1, 0, CAST(0x0000A671009C52D3 AS DateTime), 0, CAST(0x0000A671009C52D3 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (204, 204, N'2042016829', 1, 20000, 1, 0, CAST(0x0000A67100A368B0 AS DateTime), 0, CAST(0x0000A67100A368B0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (205, 205, N'2052016829', 1, 50000, 1, 0, CAST(0x0000A67100A42D78 AS DateTime), 0, CAST(0x0000A67100A42D78 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (206, 206, N'2062016829', 1, 5000, 1, 0, CAST(0x0000A67100A937CF AS DateTime), 0, CAST(0x0000A67100A937CF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (207, 207, N'2072016829', 1, 5000, 1, 0, CAST(0x0000A67100A9B9CB AS DateTime), 0, CAST(0x0000A67100A9B9CB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (208, 208, N'2082016829', 1, 5000, 1, 0, CAST(0x0000A67100ACC854 AS DateTime), 0, CAST(0x0000A67100ACC854 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (209, 209, N'2092016829', 1, 3500, 1, 0, CAST(0x0000A67100ACE9F2 AS DateTime), 0, CAST(0x0000A67100ACE9F2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (210, 210, N'2102016829', 1, 50000, 1, 0, CAST(0x0000A67100AD14BE AS DateTime), 0, CAST(0x0000A67100AD14BE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (211, 211, N'2112016829', 1, 5000, 1, 0, CAST(0x0000A67100B19C30 AS DateTime), 0, CAST(0x0000A67100B19C30 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (212, 212, N'2122016829', 1, 5000, 1, 0, CAST(0x0000A67100B401F0 AS DateTime), 0, CAST(0x0000A67100B401F0 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (213, 213, N'2132016829', 1, 5000, 1, 0, CAST(0x0000A67100BA63CC AS DateTime), 0, CAST(0x0000A67100BA63CC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (214, 214, N'2142016829', 1, 5000, 1, 0, CAST(0x0000A67100BA6F87 AS DateTime), 0, CAST(0x0000A67100BA6F87 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (215, 215, N'2152016829', 1, 10000, 1, 0, CAST(0x0000A67100BB689E AS DateTime), 0, CAST(0x0000A67100BB689E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (216, 216, N'2162016829', 1, 20000, 1, 0, CAST(0x0000A67100C331DE AS DateTime), 0, CAST(0x0000A67100C331DE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (217, 217, N'2172016829', 1, 5000, 1, 0, CAST(0x0000A67100C4AF95 AS DateTime), 0, CAST(0x0000A67100C4AF95 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (218, 218, N'2182016829', 1, 20000, 1, 0, CAST(0x0000A67100C79958 AS DateTime), 0, CAST(0x0000A67100C79958 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (219, 219, N'2192016829', 1, 5000, 1, 0, CAST(0x0000A67100C8E4FC AS DateTime), 0, CAST(0x0000A67100C8E4FC AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (220, 220, N'2202016829', 1, 5000, 1, 0, CAST(0x0000A67100CB0822 AS DateTime), 0, CAST(0x0000A67100CB0822 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (221, 221, N'2212016829', 1, 4500, 1, 0, CAST(0x0000A67100CF4720 AS DateTime), 0, CAST(0x0000A67100CF4720 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (222, 222, N'2222016829', 1, 3500, 1, 0, CAST(0x0000A67100CF9CCB AS DateTime), 0, CAST(0x0000A67100CF9CCB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (223, 223, N'2232016829', 1, 10000, 1, 0, CAST(0x0000A67100D93F08 AS DateTime), 0, CAST(0x0000A67100D93F08 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (224, 224, N'2242016829', 1, 6500, 1, 0, CAST(0x0000A67100DB07F1 AS DateTime), 0, CAST(0x0000A67100DB07F1 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[PAYMENT_INVOICE_HISTORY] OFF
/****** Object:  Table [dbo].[ORDER_OPEN_ITEM_ALL]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[ORDER_OPEN_ITEM]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[ORDER_DETAIL_MODIFIRE_DATE]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 0, N'12016829', 1, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6710074880C AS DateTime), 0, CAST(0x0000A6710074880C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 0, N'22016829', 2, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100753086 AS DateTime), 0, CAST(0x0000A67100753086 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 0, N'22016829', 2, 77, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100753086 AS DateTime), 0, CAST(0x0000A67100753086 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 0, N'42016829', 4, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6710077E242 AS DateTime), 0, CAST(0x0000A6710077E242 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 0, N'82016829', 8, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A671007ADE3C AS DateTime), 0, CAST(0x0000A671007ADE3C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 0, N'92016829', 9, 76, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A671007E7306 AS DateTime), 0, CAST(0x0000A671007E7306 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 0, N'112016829', 11, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6710085355B AS DateTime), 0, CAST(0x0000A6710085355B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 0, N'132016829', 13, 79, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6710085CB35 AS DateTime), 0, CAST(0x0000A6710085CB35 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 0, N'202016829', 20, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6710099A975 AS DateTime), 0, CAST(0x0000A6710099A976 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 0, N'272016829', 27, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100A367E1 AS DateTime), 0, CAST(0x0000A67100A367E1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 0, N'272016829', 27, 77, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100A367E1 AS DateTime), 0, CAST(0x0000A67100A367E1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 0, N'282016829', 28, 79, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100A42CA7 AS DateTime), 0, CAST(0x0000A67100A42CA7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 0, N'332016829', 33, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100BA62FE AS DateTime), 0, CAST(0x0000A67100BA62FE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 0, N'382016829', 38, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100C4AEC6 AS DateTime), 0, CAST(0x0000A67100C4AEC6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 0, N'432016829', 43, 77, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67100DDF5C5 AS DateTime), 0, CAST(0x0000A67100DDF5C5 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL_MODIFIRE]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 0, N'12016827', 1, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007B06D4 AS DateTime), 0, CAST(0x0000A66F007B06D4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, 0, N'12016827', 1, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007B06D4 AS DateTime), 0, CAST(0x0000A66F007B06D4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 3, 0, N'12016827', 1, 76, 3, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007B06D4 AS DateTime), 0, CAST(0x0000A66F007B06D4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 4, 0, N'32016827', 3, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007C4295 AS DateTime), 0, CAST(0x0000A66F007C4295 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 5, 0, N'42016827', 4, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F007D764D AS DateTime), 0, CAST(0x0000A66F007D764D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 6, 0, N'72016827', 7, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F0084C7D9 AS DateTime), 0, CAST(0x0000A66F0084C7D9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 7, 0, N'132016827', 13, 77, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00912048 AS DateTime), 0, CAST(0x0000A66F00912048 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 8, 0, N'142016827', 14, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009180D8 AS DateTime), 0, CAST(0x0000A66F009180D8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 9, 0, N'152016827', 15, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00923A1F AS DateTime), 0, CAST(0x0000A66F00923A1F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 10, 0, N'162016827', 16, 78, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F0092B8EB AS DateTime), 0, CAST(0x0000A66F0092B8EB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 11, 0, N'212016827', 21, 77, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00957260 AS DateTime), 0, CAST(0x0000A66F00957260 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 12, 0, N'262016827', 26, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F0099087F AS DateTime), 0, CAST(0x0000A66F0099087F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 13, 0, N'272016827', 27, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009A51B9 AS DateTime), 0, CAST(0x0000A66F009A51B9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 14, 0, N'312016827', 31, 76, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009E72EB AS DateTime), 0, CAST(0x0000A66F009E72EB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 15, 0, N'332016827', 33, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009F9EA8 AS DateTime), 0, CAST(0x0000A66F009F9EA8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 16, 0, N'352016827', 35, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F009FE9AB AS DateTime), 0, CAST(0x0000A66F009FE9AB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 17, 0, N'442016827', 44, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00ACEEAF AS DateTime), 0, CAST(0x0000A66F00ACEEAF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 19, 0, N'472016827', 47, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00AD4259 AS DateTime), 0, CAST(0x0000A66F00AD4259 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 20, 0, N'482016827', 48, 84, 1, 7, 0, 500, 1, 4500, 0, 0, 0, CAST(0x0000A66F00B079A7 AS DateTime), 0, CAST(0x0000A66F00B079A7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 21, 0, N'482016827', 48, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B079A7 AS DateTime), 0, CAST(0x0000A66F00B079A7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 22, 0, N'492016827', 49, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B13F15 AS DateTime), 0, CAST(0x0000A66F00B13F15 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 23, 0, N'502016827', 50, 77, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B15618 AS DateTime), 0, CAST(0x0000A66F00B15618 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 24, 0, N'522016827', 52, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B270A8 AS DateTime), 0, CAST(0x0000A66F00B270A8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 25, 0, N'452016827', 45, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B37C9D AS DateTime), 0, CAST(0x0000A66F00B37C9D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 26, 0, N'572016827', 57, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B91405 AS DateTime), 0, CAST(0x0000A66F00B91405 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 27, 0, N'572016827', 57, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00B91405 AS DateTime), 0, CAST(0x0000A66F00B91405 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 28, 0, N'642016827', 64, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00C6D4EB AS DateTime), 0, CAST(0x0000A66F00C6D4EB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 29, 0, N'652016827', 65, 78, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00C8FCBB AS DateTime), 0, CAST(0x0000A66F00C8FCBB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 30, 0, N'652016827', 65, 78, 2, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00C8FCBC AS DateTime), 0, CAST(0x0000A66F00C8FCBC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 31, 0, N'692016827', 69, 77, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D02BCA AS DateTime), 0, CAST(0x0000A66F00D02BCA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 32, 0, N'692016827', 69, 77, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D02BCA AS DateTime), 0, CAST(0x0000A66F00D02BCA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 33, 0, N'712016827', 71, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D1AAF3 AS DateTime), 0, CAST(0x0000A66F00D1AAF3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 34, 0, N'732016827', 73, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00D1FAA2 AS DateTime), 0, CAST(0x0000A66F00D1FAA2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 36, 0, N'762016827', 76, 78, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00DFBF55 AS DateTime), 0, CAST(0x0000A66F00DFBF55 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 39, 0, N'752016827', 75, 78, 4, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00E599FB AS DateTime), 0, CAST(0x0000A66F00E599FB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 40, 0, N'862016827', 86, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F68C82 AS DateTime), 0, CAST(0x0000A66F00F68C82 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 41, 0, N'862016827', 86, 77, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F68C82 AS DateTime), 0, CAST(0x0000A66F00F68C82 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 42, 0, N'872016827', 87, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F76F66 AS DateTime), 0, CAST(0x0000A66F00F76F66 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 43, 0, N'882016827', 88, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F00F86C91 AS DateTime), 0, CAST(0x0000A66F00F86C91 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 44, 0, N'982016827', 98, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F010991C4 AS DateTime), 0, CAST(0x0000A66F010991C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 45, 0, N'1052016827', 105, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A66F011E9E77 AS DateTime), 0, CAST(0x0000A66F011E9E77 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 1, 0, N'32016828', 3, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670007A9637 AS DateTime), 0, CAST(0x0000A670007A9638 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 2, 0, N'32016828', 3, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670007A9638 AS DateTime), 0, CAST(0x0000A670007A9638 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 3, 0, N'52016828', 5, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000811B1B AS DateTime), 0, CAST(0x0000A67000811B1B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 4, 0, N'72016828', 7, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000821E68 AS DateTime), 0, CAST(0x0000A67000821E68 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 5, 0, N'92016828', 9, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700084DC36 AS DateTime), 0, CAST(0x0000A6700084DC36 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 6, 0, N'102016828', 10, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700084EB0A AS DateTime), 0, CAST(0x0000A6700084EB0A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 7, 0, N'112016828', 11, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700086D35E AS DateTime), 0, CAST(0x0000A6700086D35E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 8, 0, N'122016828', 12, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670008A6ED1 AS DateTime), 0, CAST(0x0000A670008A6ED1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 9, 0, N'152016828', 15, 77, 1, 7, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000942C3C AS DateTime), 0, CAST(0x0000A67000942C3C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 10, 0, N'182016828', 18, 78, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700094D8F0 AS DateTime), 0, CAST(0x0000A6700094D8F0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 11, 0, N'212016828', 21, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700095DB8C AS DateTime), 0, CAST(0x0000A6700095DB8C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 12, 0, N'222016828', 22, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670009B99FE AS DateTime), 0, CAST(0x0000A670009B99FE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 13, 0, N'272016828', 27, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000A58435 AS DateTime), 0, CAST(0x0000A67000A58435 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 14, 0, N'272016828', 27, 77, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000A58435 AS DateTime), 0, CAST(0x0000A67000A58435 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 15, 0, N'282016828', 28, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000A8D961 AS DateTime), 0, CAST(0x0000A67000A8D961 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 16, 0, N'322016828', 32, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B0935B AS DateTime), 0, CAST(0x0000A67000B0935B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 18, 0, N'362016828', 36, 78, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B68AB0 AS DateTime), 0, CAST(0x0000A67000B68AB0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 19, 0, N'332016828', 33, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B6AFE3 AS DateTime), 0, CAST(0x0000A67000B6AFE3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 20, 0, N'372016828', 37, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B7BB9F AS DateTime), 0, CAST(0x0000A67000B7BB9F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 21, 0, N'382016828', 38, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000B7DF2A AS DateTime), 0, CAST(0x0000A67000B7DF2A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 22, 0, N'442016828', 44, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000C0EB0B AS DateTime), 0, CAST(0x0000A67000C0EB0B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 23, 0, N'512016828', 51, 78, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D06A66 AS DateTime), 0, CAST(0x0000A67000D06A66 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 24, 0, N'532016828', 53, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D15EB6 AS DateTime), 0, CAST(0x0000A67000D15EB6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 25, 0, N'552016828', 55, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D97036 AS DateTime), 0, CAST(0x0000A67000D97036 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 26, 0, N'552016828', 55, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000D97036 AS DateTime), 0, CAST(0x0000A67000D97036 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 27, 0, N'612016828', 61, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000EBE1DF AS DateTime), 0, CAST(0x0000A67000EBE1DF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 28, 0, N'652016828', 65, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A67000FFB324 AS DateTime), 0, CAST(0x0000A67000FFB324 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 29, 0, N'662016828', 66, 77, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700102A923 AS DateTime), 0, CAST(0x0000A6700102A923 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 30, 0, N'702016828', 70, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670010E9D03 AS DateTime), 0, CAST(0x0000A670010E9D03 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 31, 0, N'702016828', 70, 76, 2, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670010E9D03 AS DateTime), 0, CAST(0x0000A670010E9D03 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 32, 0, N'712016828', 71, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A670011074C1 AS DateTime), 0, CAST(0x0000A670011074C1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE] ([ID], [OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 33, 0, N'742016828', 74, 76, 1, 6, 0, 500, 1, 3500, 0, 0, 0, CAST(0x0000A6700121B51E AS DateTime), 0, CAST(0x0000A6700121B51E AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_MODIFIRE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL_DATE]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (317, 1, N'12016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100748806 AS DateTime), 0, CAST(0x0000A67100748807 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (318, 2, N'22016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100753086 AS DateTime), 0, CAST(0x0000A67100753086 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (319, 2, N'22016829', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100753086 AS DateTime), 0, CAST(0x0000A67100753086 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (320, 3, N'32016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710076698D AS DateTime), 0, CAST(0x0000A6710076698D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (321, 4, N'42016829', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710077E242 AS DateTime), 0, CAST(0x0000A6710077E242 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (322, 5, N'52016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100780E7C AS DateTime), 0, CAST(0x0000A67100780E7C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (323, 6, N'62016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A671007AB595 AS DateTime), 0, CAST(0x0000A671007AB595 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (324, 7, N'72016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A671007AD1ED AS DateTime), 0, CAST(0x0000A671007AD1ED AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (325, 8, N'82016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A671007ADE3C AS DateTime), 0, CAST(0x0000A671007ADE3C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (326, 9, N'92016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A671007E7305 AS DateTime), 0, CAST(0x0000A671007E7305 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (327, 10, N'102016829', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A671008311AE AS DateTime), 0, CAST(0x0000A671008311AE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (328, 11, N'112016829', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710085355B AS DateTime), 0, CAST(0x0000A6710085355B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (329, 12, N'122016829', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710085C327 AS DateTime), 0, CAST(0x0000A6710085C327 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (330, 13, N'132016829', 79, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710085CB35 AS DateTime), 0, CAST(0x0000A6710085CB35 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (331, 14, N'142016829', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710095A6BF AS DateTime), 0, CAST(0x0000A6710095A6BF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (332, 14, N'142016829', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710095A6BF AS DateTime), 0, CAST(0x0000A6710095A6BF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (333, 15, N'152016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100968732 AS DateTime), 0, CAST(0x0000A67100968732 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (334, 15, N'152016829', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100968732 AS DateTime), 0, CAST(0x0000A67100968732 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (335, 15, N'152016829', 77, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100968732 AS DateTime), 0, CAST(0x0000A67100968732 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (336, 16, N'162016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100969A85 AS DateTime), 0, CAST(0x0000A67100969A85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (337, 17, N'172016829', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710096A0E5 AS DateTime), 0, CAST(0x0000A6710096A0E5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (338, 18, N'182016829', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100986F21 AS DateTime), 0, CAST(0x0000A67100986F21 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (339, 19, N'192016829', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710098CA7F AS DateTime), 0, CAST(0x0000A6710098CA7F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (340, 19, N'192016829', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710098CA7F AS DateTime), 0, CAST(0x0000A6710098CA7F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (341, 20, N'202016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6710099A974 AS DateTime), 0, CAST(0x0000A6710099A974 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (342, 21, N'212016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A6710099E941 AS DateTime), 0, CAST(0x0000A6710099E941 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (343, 22, N'222016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A671009A483B AS DateTime), 0, CAST(0x0000A671009A483B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (344, 23, N'232016829', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A671009A9C34 AS DateTime), 0, CAST(0x0000A671009A9C34 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (345, 24, N'242016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A671009BEDF1 AS DateTime), 0, CAST(0x0000A671009BEDF1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (346, 25, N'252016829', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100A122F4 AS DateTime), 0, CAST(0x0000A67100A122F4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (347, 26, N'262016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100A12AD5 AS DateTime), 0, CAST(0x0000A67100A12AD5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (348, 27, N'272016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100A367E1 AS DateTime), 0, CAST(0x0000A67100A367E1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (349, 27, N'272016829', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100A367E1 AS DateTime), 0, CAST(0x0000A67100A367E1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (350, 27, N'272016829', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100A367E1 AS DateTime), 0, CAST(0x0000A67100A367E1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (351, 28, N'282016829', 79, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100A42CA6 AS DateTime), 0, CAST(0x0000A67100A42CA7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (352, 29, N'292016829', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A67100A48836 AS DateTime), 0, CAST(0x0000A67100A48836 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (353, 30, N'302016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100A936F2 AS DateTime), 0, CAST(0x0000A67100A936F2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (354, 31, N'312016829', 81, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A67100ACF503 AS DateTime), 0, CAST(0x0000A67100ACF503 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (355, 32, N'322016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100AD140E AS DateTime), 0, CAST(0x0000A67100AD140E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (356, 33, N'332016829', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100BA62FE AS DateTime), 0, CAST(0x0000A67100BA62FE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (357, 34, N'342016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100BA6ED5 AS DateTime), 0, CAST(0x0000A67100BA6ED5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (358, 35, N'352016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100BAB0F9 AS DateTime), 0, CAST(0x0000A67100BAB0F9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (359, 36, N'362016829', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100BB67DB AS DateTime), 0, CAST(0x0000A67100BB67DB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (360, 37, N'372016829', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100C33115 AS DateTime), 0, CAST(0x0000A67100C33115 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (361, 38, N'382016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100C4AEC6 AS DateTime), 0, CAST(0x0000A67100C4AEC6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (362, 39, N'392016829', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100C79891 AS DateTime), 0, CAST(0x0000A67100C79891 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (363, 39, N'392016829', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100C79891 AS DateTime), 0, CAST(0x0000A67100C79891 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (364, 40, N'402016829', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100C86E35 AS DateTime), 0, CAST(0x0000A67100C86E35 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (365, 41, N'412016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100CB0104 AS DateTime), 0, CAST(0x0000A67100CB0104 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (366, 42, N'422016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100CB0773 AS DateTime), 0, CAST(0x0000A67100CB0773 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (368, 44, N'442016829', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100CFC382 AS DateTime), 0, CAST(0x0000A67100CFC382 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (369, 44, N'442016829', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100CFC382 AS DateTime), 0, CAST(0x0000A67100CFC382 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (370, 45, N'452016829', 23, 1, 0, 6500, 1, 6500, 0, 0, 0, 0, CAST(0x0000A67100D03943 AS DateTime), 0, CAST(0x0000A67100D03943 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (371, 46, N'462016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100D2E470 AS DateTime), 0, CAST(0x0000A67100D2E470 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (372, 46, N'462016829', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100D2E470 AS DateTime), 0, CAST(0x0000A67100D2E470 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (373, 47, N'472016829', 1, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A67100D637B4 AS DateTime), 0, CAST(0x0000A67100D637B4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (377, 43, N'432016829', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100DDF5C5 AS DateTime), 0, CAST(0x0000A67100DDF5C5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (378, 43, N'432016829', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67100DDF5C5 AS DateTime), 0, CAST(0x0000A67100DDF5C5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (379, 43, N'432016829', 67, 3, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100DDF5C5 AS DateTime), 0, CAST(0x0000A67100DDF5C5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (380, 43, N'432016829', 128, 4, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A67100DDF5C5 AS DateTime), 0, CAST(0x0000A67100DDF5C5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (381, 48, N'482016829', 84, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67100DE7B26 AS DateTime), 0, CAST(0x0000A67100DE7B26 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_DATE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 1, N'12016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F007B06CE AS DateTime), 0, CAST(0x0000A66F007B06CE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, 1, N'12016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F007B06CE AS DateTime), 0, CAST(0x0000A66F007B06CE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 3, 1, N'12016827', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F007B06CE AS DateTime), 0, CAST(0x0000A66F007B06CE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 4, 2, N'22016827', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F007B1722 AS DateTime), 0, CAST(0x0000A66F007B1722 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 5, 3, N'32016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F007C4294 AS DateTime), 0, CAST(0x0000A66F007C4294 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 6, 4, N'42016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F007D764D AS DateTime), 0, CAST(0x0000A66F007D764D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 7, 5, N'52016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F007FF98E AS DateTime), 0, CAST(0x0000A66F007FF98E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 8, 6, N'62016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0084AA6C AS DateTime), 0, CAST(0x0000A66F0084AA6C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 9, 6, N'62016827', 147, 2, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F0084AA6C AS DateTime), 0, CAST(0x0000A66F0084AA6C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 10, 7, N'72016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0084C7D8 AS DateTime), 0, CAST(0x0000A66F0084C7D8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 11, 8, N'82016827', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F008578EB AS DateTime), 0, CAST(0x0000A66F008578EB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 12, 9, N'92016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F0088E307 AS DateTime), 0, CAST(0x0000A66F0088E307 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 13, 9, N'92016827', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F0088E307 AS DateTime), 0, CAST(0x0000A66F0088E307 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 14, 10, N'102016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00897A4D AS DateTime), 0, CAST(0x0000A66F00897A4D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 15, 11, N'112016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F008A4E2C AS DateTime), 0, CAST(0x0000A66F008A4E2C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 16, 11, N'112016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F008A4E2C AS DateTime), 0, CAST(0x0000A66F008A4E2C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 17, 12, N'122016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F008C6262 AS DateTime), 0, CAST(0x0000A66F008C6262 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 18, 12, N'122016827', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F008C6262 AS DateTime), 0, CAST(0x0000A66F008C6262 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 19, 13, N'132016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00912047 AS DateTime), 0, CAST(0x0000A66F00912048 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 20, 14, N'142016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009180D8 AS DateTime), 0, CAST(0x0000A66F009180D8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 21, 15, N'152016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00923A1F AS DateTime), 0, CAST(0x0000A66F00923A1F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 22, 16, N'162016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0092B8EB AS DateTime), 0, CAST(0x0000A66F0092B8EB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 23, 17, N'172016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00935CBF AS DateTime), 0, CAST(0x0000A66F00935CBF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 24, 18, N'182016827', 115, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F009369FC AS DateTime), 0, CAST(0x0000A66F009369FC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 25, 19, N'192016827', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F0093792B AS DateTime), 0, CAST(0x0000A66F0093792B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 26, 20, N'202016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0094640E AS DateTime), 0, CAST(0x0000A66F0094640E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 27, 21, N'212016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00957260 AS DateTime), 0, CAST(0x0000A66F00957260 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 28, 21, N'212016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00957260 AS DateTime), 0, CAST(0x0000A66F00957260 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 29, 21, N'212016827', 147, 3, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F00957260 AS DateTime), 0, CAST(0x0000A66F00957260 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 30, 22, N'222016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00958FAC AS DateTime), 0, CAST(0x0000A66F00958FAC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 31, 22, N'222016827', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00958FAC AS DateTime), 0, CAST(0x0000A66F00958FAC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 32, 23, N'232016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0095E742 AS DateTime), 0, CAST(0x0000A66F0095E742 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 33, 23, N'232016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0095E742 AS DateTime), 0, CAST(0x0000A66F0095E742 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 34, 23, N'232016827', 79, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0095E742 AS DateTime), 0, CAST(0x0000A66F0095E742 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 35, 24, N'242016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00972950 AS DateTime), 0, CAST(0x0000A66F00972950 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 36, 25, N'252016827', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F0097A2CC AS DateTime), 0, CAST(0x0000A66F0097A2CC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 37, 26, N'262016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0099087F AS DateTime), 0, CAST(0x0000A66F0099087F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 38, 27, N'272016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009A51B9 AS DateTime), 0, CAST(0x0000A66F009A51B9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 39, 27, N'272016827', 79, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009A51B9 AS DateTime), 0, CAST(0x0000A66F009A51B9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 40, 28, N'282016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009B6D2E AS DateTime), 0, CAST(0x0000A66F009B6D2E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 41, 29, N'292016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009C53D8 AS DateTime), 0, CAST(0x0000A66F009C53D8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 42, 30, N'302016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009C799C AS DateTime), 0, CAST(0x0000A66F009C799C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 43, 31, N'312016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009E72EA AS DateTime), 0, CAST(0x0000A66F009E72EA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 44, 32, N'322016827', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F009F8F88 AS DateTime), 0, CAST(0x0000A66F009F8F88 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 45, 33, N'332016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009F9EA8 AS DateTime), 0, CAST(0x0000A66F009F9EA8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 46, 34, N'342016827', 115, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F009FCFE2 AS DateTime), 0, CAST(0x0000A66F009FCFE2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 47, 34, N'342016827', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F009FCFE2 AS DateTime), 0, CAST(0x0000A66F009FCFE2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 48, 35, N'352016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F009FE9AB AS DateTime), 0, CAST(0x0000A66F009FE9AB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 49, 36, N'362016827', 17, 1, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A66F009FF486 AS DateTime), 0, CAST(0x0000A66F009FF486 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 50, 37, N'372016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00A023D7 AS DateTime), 0, CAST(0x0000A66F00A023D7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 51, 38, N'382016827', 136, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F00A2FFE8 AS DateTime), 0, CAST(0x0000A66F00A2FFE8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 52, 39, N'392016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00A50033 AS DateTime), 0, CAST(0x0000A66F00A50033 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 53, 40, N'402016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00A5D8E8 AS DateTime), 0, CAST(0x0000A66F00A5D8E8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 54, 41, N'412016827', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00A9BD19 AS DateTime), 0, CAST(0x0000A66F00A9BD19 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 55, 42, N'422016827', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F00A9D3AA AS DateTime), 0, CAST(0x0000A66F00A9D3AA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 56, 43, N'432016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00A9DA14 AS DateTime), 0, CAST(0x0000A66F00A9DA14 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 57, 44, N'442016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00ACEEAF AS DateTime), 0, CAST(0x0000A66F00ACEEAF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 61, 46, N'462016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00AD09CD AS DateTime), 0, CAST(0x0000A66F00AD09CD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 62, 47, N'472016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00AD4259 AS DateTime), 0, CAST(0x0000A66F00AD4259 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 63, 48, N'482016827', 84, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00B079A7 AS DateTime), 0, CAST(0x0000A66F00B079A7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 64, 48, N'482016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B079A7 AS DateTime), 0, CAST(0x0000A66F00B079A7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 65, 49, N'492016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B13F15 AS DateTime), 0, CAST(0x0000A66F00B13F15 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 66, 50, N'502016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B15618 AS DateTime), 0, CAST(0x0000A66F00B15618 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 67, 51, N'512016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B15BEF AS DateTime), 0, CAST(0x0000A66F00B15BEF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 68, 52, N'522016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B270A8 AS DateTime), 0, CAST(0x0000A66F00B270A8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 69, 53, N'532016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B30B54 AS DateTime), 0, CAST(0x0000A66F00B30B54 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 70, 45, N'452016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B37C9D AS DateTime), 0, CAST(0x0000A66F00B37C9D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 71, 45, N'452016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B37C9D AS DateTime), 0, CAST(0x0000A66F00B37C9D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 72, 45, N'452016827', 78, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B37C9D AS DateTime), 0, CAST(0x0000A66F00B37C9D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 73, 45, N'452016827', 76, 4, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B37C9D AS DateTime), 0, CAST(0x0000A66F00B37C9D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 75, 54, N'542016827', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00B45704 AS DateTime), 0, CAST(0x0000A66F00B45704 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 76, 54, N'542016827', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00B45704 AS DateTime), 0, CAST(0x0000A66F00B45704 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 77, 55, N'552016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B63CF9 AS DateTime), 0, CAST(0x0000A66F00B63CF9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 78, 56, N'562016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00B7ACBF AS DateTime), 0, CAST(0x0000A66F00B7ACBF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 79, 56, N'562016827', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00B7ACBF AS DateTime), 0, CAST(0x0000A66F00B7ACBF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 80, 57, N'572016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B91404 AS DateTime), 0, CAST(0x0000A66F00B91404 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 81, 57, N'572016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00B91404 AS DateTime), 0, CAST(0x0000A66F00B91404 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 82, 58, N'582016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00BC4C85 AS DateTime), 0, CAST(0x0000A66F00BC4C85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 83, 58, N'582016827', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00BC4C85 AS DateTime), 0, CAST(0x0000A66F00BC4C85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 84, 58, N'582016827', 67, 3, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00BC4C85 AS DateTime), 0, CAST(0x0000A66F00BC4C85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 85, 58, N'582016827', 37, 4, 0, 6000, 1, 6000, 0, 0, 0, 0, CAST(0x0000A66F00BC4C85 AS DateTime), 0, CAST(0x0000A66F00BC4C85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 86, 59, N'592016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00BCB2F2 AS DateTime), 0, CAST(0x0000A66F00BCB2F2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 87, 60, N'602016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00BD4899 AS DateTime), 0, CAST(0x0000A66F00BD4899 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 88, 61, N'612016827', 70, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00BD58B9 AS DateTime), 0, CAST(0x0000A66F00BD58B9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 89, 61, N'612016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00BD58B9 AS DateTime), 0, CAST(0x0000A66F00BD58B9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 90, 62, N'622016827', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F00BEE690 AS DateTime), 0, CAST(0x0000A66F00BEE690 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 91, 63, N'632016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00C5594F AS DateTime), 0, CAST(0x0000A66F00C5594F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 92, 64, N'642016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00C6D4EB AS DateTime), 0, CAST(0x0000A66F00C6D4EB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 93, 65, N'652016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00C8FCBB AS DateTime), 0, CAST(0x0000A66F00C8FCBB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 94, 65, N'652016827', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00C8FCBB AS DateTime), 0, CAST(0x0000A66F00C8FCBB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (91, 95, 66, N'662016827', 1, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A66F00CA4057 AS DateTime), 0, CAST(0x0000A66F00CA4057 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (92, 96, 66, N'662016827', 20, 2, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A66F00CA4057 AS DateTime), 0, CAST(0x0000A66F00CA4057 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (93, 97, 66, N'662016827', 20, 3, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A66F00CA4057 AS DateTime), 0, CAST(0x0000A66F00CA4057 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (94, 98, 67, N'672016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00CCA7C0 AS DateTime), 0, CAST(0x0000A66F00CCA7C0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 99, 68, N'682016827', 79, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00CDBF22 AS DateTime), 0, CAST(0x0000A66F00CDBF22 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 100, 69, N'692016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00D02BCA AS DateTime), 0, CAST(0x0000A66F00D02BCA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 101, 69, N'692016827', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00D02BCA AS DateTime), 0, CAST(0x0000A66F00D02BCA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 102, 70, N'702016827', 81, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F00D071EC AS DateTime), 0, CAST(0x0000A66F00D071EC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 103, 70, N'702016827', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00D071EC AS DateTime), 0, CAST(0x0000A66F00D071EC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 104, 71, N'712016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00D1AAF3 AS DateTime), 0, CAST(0x0000A66F00D1AAF3 AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 105, 72, N'722016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00D1F284 AS DateTime), 0, CAST(0x0000A66F00D1F284 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 106, 73, N'732016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00D1FAA2 AS DateTime), 0, CAST(0x0000A66F00D1FAA2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (103, 107, 74, N'742016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00D7A787 AS DateTime), 0, CAST(0x0000A66F00D7A787 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (104, 108, 74, N'742016827', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00D7A787 AS DateTime), 0, CAST(0x0000A66F00D7A787 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (105, 113, 76, N'762016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00DFBF55 AS DateTime), 0, CAST(0x0000A66F00DFBF55 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (106, 121, 77, N'772016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00E1303B AS DateTime), 0, CAST(0x0000A66F00E1303B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (107, 122, 78, N'782016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00E1AA8F AS DateTime), 0, CAST(0x0000A66F00E1AA8F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 132, 79, N'792016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00E3F867 AS DateTime), 0, CAST(0x0000A66F00E3F867 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 133, 75, N'752016827', 47, 1, 0, 5800, 1, 5800, 0, 0, 0, 0, CAST(0x0000A66F00E599F6 AS DateTime), 0, CAST(0x0000A66F00E599F6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 134, 75, N'752016827', 48, 2, 0, 5800, 1, 5800, 0, 0, 0, 0, CAST(0x0000A66F00E599F6 AS DateTime), 0, CAST(0x0000A66F00E599F6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 135, 75, N'752016827', 48, 3, 0, 5800, 1, 5800, 0, 0, 0, 0, CAST(0x0000A66F00E599F6 AS DateTime), 0, CAST(0x0000A66F00E599F6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 136, 75, N'752016827', 78, 4, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00E599F6 AS DateTime), 0, CAST(0x0000A66F00E599F6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 137, 75, N'752016827', 147, 5, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F00E599F6 AS DateTime), 0, CAST(0x0000A66F00E599F6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 138, 75, N'752016827', 147, 6, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F00E599F6 AS DateTime), 0, CAST(0x0000A66F00E599F6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 139, 75, N'752016827', 136, 7, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F00E599FB AS DateTime), 0, CAST(0x0000A66F00E599FB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 140, 75, N'752016827', 48, 8, 0, 5800, 1, 5800, 0, 0, 0, 0, CAST(0x0000A66F00E599FB AS DateTime), 0, CAST(0x0000A66F00E599FB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 141, 75, N'752016827', 147, 9, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F00E599FB AS DateTime), 0, CAST(0x0000A66F00E599FB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 142, 75, N'752016827', 80, 10, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F00E599FB AS DateTime), 0, CAST(0x0000A66F00E599FB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 143, 80, N'802016827', 115, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F00E60E05 AS DateTime), 0, CAST(0x0000A66F00E60E05 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 144, 81, N'812016827', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00E6EC5E AS DateTime), 0, CAST(0x0000A66F00E6EC5E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 145, 82, N'822016827', 37, 1, 0, 6000, 1, 6000, 0, 0, 0, 0, CAST(0x0000A66F00EF4009 AS DateTime), 0, CAST(0x0000A66F00EF4009 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 146, 82, N'822016827', 1, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A66F00EF4009 AS DateTime), 0, CAST(0x0000A66F00EF4009 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (123, 147, 83, N'832016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00EF51D0 AS DateTime), 0, CAST(0x0000A66F00EF51D0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (124, 148, 84, N'842016827', 68, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00F11E1C AS DateTime), 0, CAST(0x0000A66F00F11E1C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (125, 149, 85, N'852016827', 23, 1, 0, 6500, 1, 6500, 0, 0, 0, 0, CAST(0x0000A66F00F12E6E AS DateTime), 0, CAST(0x0000A66F00F12E6E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (126, 150, 86, N'862016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00F68C82 AS DateTime), 0, CAST(0x0000A66F00F68C82 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 151, 86, N'862016827', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00F68C82 AS DateTime), 0, CAST(0x0000A66F00F68C82 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (128, 152, 87, N'872016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00F76F66 AS DateTime), 0, CAST(0x0000A66F00F76F66 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (129, 153, 88, N'882016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F00F86C91 AS DateTime), 0, CAST(0x0000A66F00F86C91 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (130, 154, 89, N'892016827', 121, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F00F88A6A AS DateTime), 0, CAST(0x0000A66F00F88A6A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (131, 158, 91, N'912016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00FCECA9 AS DateTime), 0, CAST(0x0000A66F00FCECA9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (132, 159, 91, N'912016827', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00FCECA9 AS DateTime), 0, CAST(0x0000A66F00FCECA9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (133, 160, 90, N'902016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00FEF68D AS DateTime), 0, CAST(0x0000A66F00FEF68D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (134, 161, 90, N'902016827', 84, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F00FEF68D AS DateTime), 0, CAST(0x0000A66F00FEF68D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (135, 162, 90, N'902016827', 136, 3, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F00FEF68D AS DateTime), 0, CAST(0x0000A66F00FEF68D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (136, 163, 90, N'902016827', 136, 4, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F00FEF68D AS DateTime), 0, CAST(0x0000A66F00FEF68D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (137, 164, 92, N'922016827', 84, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F01010AD0 AS DateTime), 0, CAST(0x0000A66F01010AD0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (138, 165, 93, N'932016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F01040B2F AS DateTime), 0, CAST(0x0000A66F01040B2F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (139, 166, 94, N'942016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F01052420 AS DateTime), 0, CAST(0x0000A66F01052420 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (140, 167, 95, N'952016827', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A66F0105DC30 AS DateTime), 0, CAST(0x0000A66F0105DC30 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (141, 168, 96, N'962016827', 136, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F010727E3 AS DateTime), 0, CAST(0x0000A66F010727E3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (142, 169, 97, N'972016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F0107BBA5 AS DateTime), 0, CAST(0x0000A66F0107BBA5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (143, 170, 98, N'982016827', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F010991C4 AS DateTime), 0, CAST(0x0000A66F010991C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (144, 171, 98, N'982016827', 115, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F010991C4 AS DateTime), 0, CAST(0x0000A66F010991C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (145, 172, 98, N'982016827', 115, 3, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A66F010991C4 AS DateTime), 0, CAST(0x0000A66F010991C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (146, 173, 99, N'992016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F010C69F4 AS DateTime), 0, CAST(0x0000A66F010C69F4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (147, 174, 100, N'1002016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F010CF4AD AS DateTime), 0, CAST(0x0000A66F010CF4AD AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (148, 175, 101, N'1012016827', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F01126100 AS DateTime), 0, CAST(0x0000A66F01126100 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (149, 176, 102, N'1022016827', 79, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F01156DB4 AS DateTime), 0, CAST(0x0000A66F01156DB4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (150, 177, 103, N'1032016827', 79, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F011577E5 AS DateTime), 0, CAST(0x0000A66F011577E5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (151, 178, 103, N'1032016827', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F011577E5 AS DateTime), 0, CAST(0x0000A66F011577E5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (152, 179, 104, N'1042016827', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A66F0117E1B3 AS DateTime), 0, CAST(0x0000A66F0117E1B3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (153, 180, 105, N'1052016827', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A66F011E9E77 AS DateTime), 0, CAST(0x0000A66F011E9E77 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (154, 181, 1, N'12016828', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A6700077A2B2 AS DateTime), 0, CAST(0x0000A6700077A2B2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (155, 182, 2, N'22016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000799CD6 AS DateTime), 0, CAST(0x0000A67000799CD6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (156, 183, 2, N'22016828', 79, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000799CD6 AS DateTime), 0, CAST(0x0000A67000799CD6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (157, 184, 3, N'32016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670007A9636 AS DateTime), 0, CAST(0x0000A670007A9636 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (158, 185, 3, N'32016828', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670007A9636 AS DateTime), 0, CAST(0x0000A670007A9636 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (159, 186, 4, N'42016828', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000801785 AS DateTime), 0, CAST(0x0000A67000801785 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (160, 187, 4, N'42016828', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000801785 AS DateTime), 0, CAST(0x0000A67000801785 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (161, 188, 5, N'52016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000811B1B AS DateTime), 0, CAST(0x0000A67000811B1B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (162, 189, 6, N'62016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A6700081520C AS DateTime), 0, CAST(0x0000A6700081520C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (163, 190, 7, N'72016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000821E68 AS DateTime), 0, CAST(0x0000A67000821E68 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (164, 191, 8, N'82016828', 79, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670008244AE AS DateTime), 0, CAST(0x0000A670008244AE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (165, 192, 9, N'92016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700084DC36 AS DateTime), 0, CAST(0x0000A6700084DC36 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (166, 193, 10, N'102016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700084EB0A AS DateTime), 0, CAST(0x0000A6700084EB0A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (167, 194, 11, N'112016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700086D35D AS DateTime), 0, CAST(0x0000A6700086D35D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (168, 195, 12, N'122016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670008A6ED1 AS DateTime), 0, CAST(0x0000A670008A6ED1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (169, 196, 13, N'132016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A670008DDDA9 AS DateTime), 0, CAST(0x0000A670008DDDA9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (170, 197, 14, N'142016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670008F5A54 AS DateTime), 0, CAST(0x0000A670008F5A54 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (171, 198, 14, N'142016828', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670008F5A54 AS DateTime), 0, CAST(0x0000A670008F5A54 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (172, 199, 15, N'152016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000942C3C AS DateTime), 0, CAST(0x0000A67000942C3C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (173, 200, 16, N'162016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000943ACF AS DateTime), 0, CAST(0x0000A67000943ACF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (174, 201, 17, N'172016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000944AFC AS DateTime), 0, CAST(0x0000A67000944AFC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (175, 202, 18, N'182016828', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700094D8F0 AS DateTime), 0, CAST(0x0000A6700094D8F0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (176, 203, 19, N'192016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700094F9F9 AS DateTime), 0, CAST(0x0000A6700094F9F9 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (177, 204, 20, N'202016828', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000950CAF AS DateTime), 0, CAST(0x0000A67000950CAF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (178, 205, 20, N'202016828', 37, 2, 0, 6000, 1, 6000, 0, 0, 0, 0, CAST(0x0000A67000950CAF AS DateTime), 0, CAST(0x0000A67000950CAF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (179, 206, 21, N'212016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700095DB8C AS DateTime), 0, CAST(0x0000A6700095DB8C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (180, 207, 22, N'222016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670009B99FE AS DateTime), 0, CAST(0x0000A670009B99FE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (181, 208, 23, N'232016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A670009C16E7 AS DateTime), 0, CAST(0x0000A670009C16E7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (182, 209, 23, N'232016828', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A670009C16E7 AS DateTime), 0, CAST(0x0000A670009C16E7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (183, 210, 24, N'242016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A670009DF17F AS DateTime), 0, CAST(0x0000A670009DF17F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (184, 211, 25, N'252016828', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A670009EA6A5 AS DateTime), 0, CAST(0x0000A670009EA6A5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (185, 213, 27, N'272016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000A58435 AS DateTime), 0, CAST(0x0000A67000A58435 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (186, 214, 27, N'272016828', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000A58435 AS DateTime), 0, CAST(0x0000A67000A58435 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (187, 215, 28, N'282016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000A8D961 AS DateTime), 0, CAST(0x0000A67000A8D961 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (188, 216, 29, N'292016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000AAD170 AS DateTime), 0, CAST(0x0000A67000AAD170 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (189, 217, 29, N'292016828', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000AAD170 AS DateTime), 0, CAST(0x0000A67000AAD170 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (190, 218, 30, N'302016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000AC03A1 AS DateTime), 0, CAST(0x0000A67000AC03A1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (191, 219, 30, N'302016828', 79, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000AC03A1 AS DateTime), 0, CAST(0x0000A67000AC03A1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (192, 221, 31, N'312016828', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000ADA160 AS DateTime), 0, CAST(0x0000A67000ADA160 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (193, 222, 31, N'312016828', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000ADA160 AS DateTime), 0, CAST(0x0000A67000ADA160 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (194, 223, 32, N'322016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000B0935B AS DateTime), 0, CAST(0x0000A67000B0935B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (195, 226, 34, N'342016828', 81, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A67000B50697 AS DateTime), 0, CAST(0x0000A67000B50697 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (196, 227, 35, N'352016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000B5B3EF AS DateTime), 0, CAST(0x0000A67000B5B3EF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (197, 228, 35, N'352016828', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000B5B3EF AS DateTime), 0, CAST(0x0000A67000B5B3EF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (198, 229, 35, N'352016828', 129, 3, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A67000B5B3EF AS DateTime), 0, CAST(0x0000A67000B5B3EF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (199, 230, 35, N'352016828', 128, 4, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A67000B5B3EF AS DateTime), 0, CAST(0x0000A67000B5B3EF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (200, 231, 36, N'362016828', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000B68AB0 AS DateTime), 0, CAST(0x0000A67000B68AB0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (201, 232, 33, N'332016828', 81, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A67000B6AFDE AS DateTime), 0, CAST(0x0000A67000B6AFDE AS DateTime), NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (202, 233, 33, N'332016828', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000B6AFE3 AS DateTime), 0, CAST(0x0000A67000B6AFE3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (203, 234, 33, N'332016828', 126, 3, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A67000B6AFE3 AS DateTime), 0, CAST(0x0000A67000B6AFE3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (204, 235, 37, N'372016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000B7BB9F AS DateTime), 0, CAST(0x0000A67000B7BB9F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (205, 236, 38, N'382016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000B7DF2A AS DateTime), 0, CAST(0x0000A67000B7DF2A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (206, 237, 39, N'392016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000B9167A AS DateTime), 0, CAST(0x0000A67000B9167A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (207, 238, 40, N'402016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000B92DD7 AS DateTime), 0, CAST(0x0000A67000B92DD7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (208, 239, 40, N'402016828', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000B92DD7 AS DateTime), 0, CAST(0x0000A67000B92DD7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (209, 240, 41, N'412016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000BCF815 AS DateTime), 0, CAST(0x0000A67000BCF815 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (210, 241, 41, N'412016828', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000BCF815 AS DateTime), 0, CAST(0x0000A67000BCF815 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (211, 242, 42, N'422016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000BD056B AS DateTime), 0, CAST(0x0000A67000BD056B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (212, 243, 43, N'432016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000BD31C5 AS DateTime), 0, CAST(0x0000A67000BD31C5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (213, 254, 44, N'442016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000C0EB0B AS DateTime), 0, CAST(0x0000A67000C0EB0B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (214, 255, 26, N'262016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000C2BDEA AS DateTime), 0, CAST(0x0000A67000C2BDEA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (215, 256, 26, N'262016828', 70, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000C2BDEA AS DateTime), 0, CAST(0x0000A67000C2BDEA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (216, 257, 26, N'262016828', 76, 3, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000C2BDEA AS DateTime), 0, CAST(0x0000A67000C2BDEA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (217, 258, 26, N'262016828', 76, 4, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000C2BDEA AS DateTime), 0, CAST(0x0000A67000C2BDEA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (218, 259, 26, N'262016828', 94, 5, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A67000C2BDEF AS DateTime), 0, CAST(0x0000A67000C2BDEF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (219, 260, 26, N'262016828', 128, 6, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A67000C2BDEF AS DateTime), 0, CAST(0x0000A67000C2BDEF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (220, 261, 45, N'452016828', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A67000C404A5 AS DateTime), 0, CAST(0x0000A67000C404A5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (221, 262, 46, N'462016828', 115, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A67000C4656D AS DateTime), 0, CAST(0x0000A67000C4656D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (222, 263, 46, N'462016828', 115, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A67000C4656D AS DateTime), 0, CAST(0x0000A67000C4656D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (223, 264, 46, N'462016828', 116, 3, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A67000C4656D AS DateTime), 0, CAST(0x0000A67000C4656D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (224, 265, 46, N'462016828', 67, 4, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000C4656D AS DateTime), 0, CAST(0x0000A67000C4656D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (225, 266, 47, N'472016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000C5A01A AS DateTime), 0, CAST(0x0000A67000C5A01A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (226, 268, 49, N'492016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000C86CD1 AS DateTime), 0, CAST(0x0000A67000C86CD1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (227, 272, 50, N'502016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000CA81E6 AS DateTime), 0, CAST(0x0000A67000CA81E6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (228, 273, 48, N'482016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000CBBFC3 AS DateTime), 0, CAST(0x0000A67000CBBFC3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (229, 274, 48, N'482016828', 37, 2, 0, 6000, 1, 6000, 0, 0, 0, 0, CAST(0x0000A67000CBBFC3 AS DateTime), 0, CAST(0x0000A67000CBBFC3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (230, 275, 48, N'482016828', 126, 3, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A67000CBBFC3 AS DateTime), 0, CAST(0x0000A67000CBBFC3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (231, 276, 48, N'482016828', 68, 4, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000CBBFC3 AS DateTime), 0, CAST(0x0000A67000CBBFC3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (232, 277, 48, N'482016828', 69, 5, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000CBBFC3 AS DateTime), 0, CAST(0x0000A67000CBBFC3 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (233, 278, 51, N'512016828', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000D06A66 AS DateTime), 0, CAST(0x0000A67000D06A66 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (234, 279, 52, N'522016828', 89, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A67000D101A8 AS DateTime), 0, CAST(0x0000A67000D101A8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (235, 280, 53, N'532016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000D15EB6 AS DateTime), 0, CAST(0x0000A67000D15EB6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (236, 281, 53, N'532016828', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000D15EB6 AS DateTime), 0, CAST(0x0000A67000D15EB6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (237, 282, 54, N'542016828', 1, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A67000D83A33 AS DateTime), 0, CAST(0x0000A67000D83A33 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (238, 283, 55, N'552016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000D97036 AS DateTime), 0, CAST(0x0000A67000D97036 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (239, 284, 55, N'552016828', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000D97036 AS DateTime), 0, CAST(0x0000A67000D97036 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (240, 285, 56, N'562016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000DCBD3D AS DateTime), 0, CAST(0x0000A67000DCBD3D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (241, 286, 56, N'562016828', 1, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A67000DCBD3D AS DateTime), 0, CAST(0x0000A67000DCBD3D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (242, 287, 57, N'572016828', 80, 1, 0, 3000, 1, 3000, 0, 0, 0, 0, CAST(0x0000A67000E315C7 AS DateTime), 0, CAST(0x0000A67000E315C7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (243, 288, 58, N'582016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000E37275 AS DateTime), 0, CAST(0x0000A67000E37275 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (244, 289, 58, N'582016828', 67, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000E37275 AS DateTime), 0, CAST(0x0000A67000E37275 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (245, 290, 59, N'592016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000E793DA AS DateTime), 0, CAST(0x0000A67000E793DA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (246, 291, 60, N'602016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000E88C55 AS DateTime), 0, CAST(0x0000A67000E88C55 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (247, 292, 61, N'612016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000EBE1DE AS DateTime), 0, CAST(0x0000A67000EBE1DE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (248, 293, 61, N'612016828', 77, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000EBE1DE AS DateTime), 0, CAST(0x0000A67000EBE1DE AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (249, 294, 62, N'622016828', 69, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67000EEB800 AS DateTime), 0, CAST(0x0000A67000EEB800 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (250, 295, 63, N'632016828', 81, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A67000FC7D95 AS DateTime), 0, CAST(0x0000A67000FC7D95 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (251, 296, 64, N'642016828', 78, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000FEC69B AS DateTime), 0, CAST(0x0000A67000FEC69B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (252, 297, 64, N'642016828', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000FEC69B AS DateTime), 0, CAST(0x0000A67000FEC69B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (253, 298, 65, N'652016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67000FFB324 AS DateTime), 0, CAST(0x0000A67000FFB324 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (254, 299, 66, N'662016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700102A923 AS DateTime), 0, CAST(0x0000A6700102A923 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (255, 300, 67, N'672016828', 67, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67001056823 AS DateTime), 0, CAST(0x0000A67001056823 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (256, 301, 67, N'672016828', 69, 2, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67001056823 AS DateTime), 0, CAST(0x0000A67001056823 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (257, 302, 67, N'672016828', 19, 3, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A67001056823 AS DateTime), 0, CAST(0x0000A67001056823 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (258, 304, 68, N'682016828', 79, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700107B2F2 AS DateTime), 0, CAST(0x0000A6700107B2F2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (259, 305, 68, N'682016828', 115, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A6700107B2F2 AS DateTime), 0, CAST(0x0000A6700107B2F2 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (260, 306, 69, N'692016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670010B43FA AS DateTime), 0, CAST(0x0000A670010B43FA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (261, 307, 70, N'702016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670010E9D02 AS DateTime), 0, CAST(0x0000A670010E9D02 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (262, 308, 70, N'702016828', 76, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670010E9D02 AS DateTime), 0, CAST(0x0000A670010E9D02 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (263, 309, 71, N'712016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A670011074C1 AS DateTime), 0, CAST(0x0000A670011074C1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (264, 310, 72, N'722016828', 84, 1, 0, 4500, 1, 4500, 0, 0, 0, 0, CAST(0x0000A67001108E0C AS DateTime), 0, CAST(0x0000A67001108E0C AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (265, 312, 74, N'742016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700121B51E AS DateTime), 0, CAST(0x0000A6700121B51E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (266, 313, 74, N'742016828', 79, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700121B51E AS DateTime), 0, CAST(0x0000A6700121B51E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (267, 314, 73, N'732016828', 76, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700121E297 AS DateTime), 0, CAST(0x0000A6700121E297 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (268, 315, 73, N'732016828', 78, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A6700121E297 AS DateTime), 0, CAST(0x0000A6700121E297 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (269, 316, 75, N'752016828', 77, 1, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A67001276C2D AS DateTime), 0, CAST(0x0000A67001276C2D AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL] OFF
/****** Object:  Table [dbo].[ORDER_DATE]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (1, N'12016829', 0, N'TKA-2', 1, 4000, 0, 8, CAST(0x0000A67100748726 AS DateTime), 8, CAST(0x0000A67100748727 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (2, N'22016829', 0, N'TKA-3', 1, 8000, 0, 8, CAST(0x0000A67100753084 AS DateTime), 8, CAST(0x0000A67100753084 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (3, N'32016829', 0, N'TKA-4', 1, 3500, 0, 8, CAST(0x0000A6710076698B AS DateTime), 8, CAST(0x0000A6710076698B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (4, N'42016829', 0, N'TKA-5', 1, 4000, 0, 8, CAST(0x0000A6710077E23E AS DateTime), 8, CAST(0x0000A6710077E23E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (5, N'52016829', 0, N'TKA-6', 1, 3500, 0, 8, CAST(0x0000A67100780E7B AS DateTime), 8, CAST(0x0000A67100780E7B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (6, N'62016829', 0, N'TKA-7', 1, 4500, 0, 8, CAST(0x0000A671007AB594 AS DateTime), 8, CAST(0x0000A671007AB594 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (7, N'72016829', 0, N'37', 1, 4500, 0, 8, CAST(0x0000A671007AD1EC AS DateTime), 8, CAST(0x0000A671007AD1EC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (8, N'82016829', 0, N'1', 1, 4000, 0, 8, CAST(0x0000A671007ADE3B AS DateTime), 8, CAST(0x0000A671007ADE3B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (9, N'92016829', 0, N'TKA-10', 1, 4000, 0, 8, CAST(0x0000A671007E7304 AS DateTime), 8, CAST(0x0000A671007E7304 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (10, N'102016829', 0, N'TKA-11', 1, 3500, 0, 8, CAST(0x0000A671008311AC AS DateTime), 8, CAST(0x0000A671008311AC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (11, N'112016829', 0, N'TKA-12', 1, 4000, 0, 8, CAST(0x0000A67100853559 AS DateTime), 8, CAST(0x0000A67100853559 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (12, N'122016829', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A6710085C326 AS DateTime), 8, CAST(0x0000A6710085C326 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (13, N'132016829', 0, N'10', 1, 4000, 0, 8, CAST(0x0000A6710085CB34 AS DateTime), 8, CAST(0x0000A6710085CB34 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (14, N'142016829', 0, N'19', 1, 7000, 0, 8, CAST(0x0000A6710095A5D8 AS DateTime), 8, CAST(0x0000A6710095A5D8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (15, N'152016829', 0, N'10', 1, 10500, 0, 8, CAST(0x0000A67100968730 AS DateTime), 8, CAST(0x0000A67100968730 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (16, N'162016829', 0, N'28', 1, 4500, 0, 8, CAST(0x0000A67100969A83 AS DateTime), 8, CAST(0x0000A67100969A83 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (17, N'172016829', 0, N'37', 1, 3500, 0, 8, CAST(0x0000A6710096A0E2 AS DateTime), 8, CAST(0x0000A6710096A0E2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (18, N'182016829', 0, N'21', 1, 3500, 0, 8, CAST(0x0000A67100986F20 AS DateTime), 8, CAST(0x0000A67100986F20 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (19, N'192016829', 0, N'30', 1, 7000, 0, 8, CAST(0x0000A6710098CA7E AS DateTime), 8, CAST(0x0000A6710098CA7E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (20, N'202016829', 0, N'1', 1, 4000, 0, 8, CAST(0x0000A6710099A973 AS DateTime), 8, CAST(0x0000A6710099A973 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (21, N'212016829', 0, N'20', 1, 4500, 0, 8, CAST(0x0000A6710099E940 AS DateTime), 8, CAST(0x0000A6710099E940 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (22, N'222016829', 0, N'20', 1, 3500, 0, 8, CAST(0x0000A671009A4839 AS DateTime), 8, CAST(0x0000A671009A4839 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (23, N'232016829', 0, N'21', 1, 3500, 0, 8, CAST(0x0000A671009A9C33 AS DateTime), 8, CAST(0x0000A671009A9C33 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (24, N'242016829', 0, N'19', 1, 3500, 0, 8, CAST(0x0000A671009BEDF0 AS DateTime), 8, CAST(0x0000A671009BEDF0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (25, N'252016829', 0, N'19', 1, 3500, 0, 8, CAST(0x0000A67100A122F2 AS DateTime), 8, CAST(0x0000A67100A122F2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (26, N'262016829', 0, N'10', 1, 3500, 0, 8, CAST(0x0000A67100A12AD4 AS DateTime), 8, CAST(0x0000A67100A12AD4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (27, N'272016829', 0, N'20', 1, 11500, 0, 8, CAST(0x0000A67100A367DE AS DateTime), 8, CAST(0x0000A67100A367DE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (28, N'282016829', 0, N'28', 1, 4000, 0, 8, CAST(0x0000A67100A42CA3 AS DateTime), 8, CAST(0x0000A67100A42CA3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (29, N'292016829', 0, N'38', 1, 3000, 0, 8, CAST(0x0000A67100A48835 AS DateTime), 8, CAST(0x0000A67100A48835 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (30, N'302016829', 0, N'30', 1, 3500, 0, 8, CAST(0x0000A67100A936F1 AS DateTime), 8, CAST(0x0000A67100A936F1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (31, N'312016829', 0, N'3', 1, 5000, 0, 8, CAST(0x0000A67100ACF502 AS DateTime), 8, CAST(0x0000A67100ACF502 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (32, N'322016829', 0, N'TKA-33', 1, 4500, 0, 8, CAST(0x0000A67100AD140D AS DateTime), 8, CAST(0x0000A67100AD140D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (33, N'332016829', 0, N'30', 1, 4000, 0, 8, CAST(0x0000A67100BA62FC AS DateTime), 8, CAST(0x0000A67100BA62FC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (34, N'342016829', 0, N'12', 1, 4500, 0, 8, CAST(0x0000A67100BA6ED4 AS DateTime), 8, CAST(0x0000A67100BA6ED4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (35, N'352016829', 0, N'1', 1, 4500, 0, 8, CAST(0x0000A67100BAB0F8 AS DateTime), 8, CAST(0x0000A67100BAB0F8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (36, N'362016829', 0, N'11', 1, 4500, 0, 8, CAST(0x0000A67100BB67DA AS DateTime), 8, CAST(0x0000A67100BB67DA AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (37, N'372016829', 0, N'29', 1, 4500, 0, 8, CAST(0x0000A67100C33112 AS DateTime), 8, CAST(0x0000A67100C33112 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (38, N'382016829', 0, N'TKA-39', 1, 4000, 0, 8, CAST(0x0000A67100C4AEC4 AS DateTime), 8, CAST(0x0000A67100C4AEC4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (39, N'392016829', 0, N'TKA-40', 1, 7000, 0, 8, CAST(0x0000A67100C79890 AS DateTime), 8, CAST(0x0000A67100C79890 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (40, N'402016829', 0, N'19', 1, 4500, 0, 8, CAST(0x0000A67100C86E34 AS DateTime), 8, CAST(0x0000A67100C86E34 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (41, N'412016829', 0, N'28', 1, 3500, 0, 8, CAST(0x0000A67100CB0103 AS DateTime), 8, CAST(0x0000A67100CB0103 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (42, N'422016829', 0, N'11', 1, 3500, 0, 8, CAST(0x0000A67100CB0771 AS DateTime), 8, CAST(0x0000A67100CB0771 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (43, N'432016829', 0, N'1', 0, 17500, 0, 8, CAST(0x0000A67100CD58C8 AS DateTime), 8, CAST(0x0000A67100CD58C8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (44, N'442016829', 0, N'25', 1, 9000, 0, 8, CAST(0x0000A67100CFC381 AS DateTime), 8, CAST(0x0000A67100CFC381 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (45, N'452016829', 0, N'19', 1, 6500, 0, 8, CAST(0x0000A67100D03942 AS DateTime), 8, CAST(0x0000A67100D03942 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (46, N'462016829', 0, N'10', 0, 8000, 0, 8, CAST(0x0000A67100D2E46E AS DateTime), 8, CAST(0x0000A67100D2E46E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (47, N'472016829', 0, N'3', 0, 7000, 0, 8, CAST(0x0000A67100D637B3 AS DateTime), 8, CAST(0x0000A67100D637B3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (48, N'482016829', 0, N'19', 0, 4500, 0, 8, CAST(0x0000A67100DE7B25 AS DateTime), 8, CAST(0x0000A67100DE7B25 AS DateTime), NULL, 2, 0)
SET IDENTITY_INSERT [dbo].[ORDER_DATE] OFF
/****** Object:  Table [dbo].[ORDER]    Script Date: 08/29/2016 13:33:26 ******/
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
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (1, 1, N'12016827', 0, N'TKA-2', 1, 12000, 0, 8, CAST(0x0000A66F007B05DC AS DateTime), 8, CAST(0x0000A66F007B05DC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (2, 2, N'22016827', 0, N'1', 1, 4500, 0, 8, CAST(0x0000A66F007B1721 AS DateTime), 8, CAST(0x0000A66F007B1721 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (3, 3, N'32016827', 0, N'TKA-4', 1, 4000, 0, 8, CAST(0x0000A66F007C4293 AS DateTime), 8, CAST(0x0000A66F007C4293 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (4, 4, N'42016827', 0, N'1', 1, 4000, 0, 8, CAST(0x0000A66F007D764B AS DateTime), 8, CAST(0x0000A66F007D764B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (5, 5, N'52016827', 0, N'TKA-6', 1, 3500, 0, 8, CAST(0x0000A66F007FF98C AS DateTime), 8, CAST(0x0000A66F007FF98C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (6, 6, N'62016827', 0, N'TKA-7', 1, 6500, 0, 8, CAST(0x0000A66F0084AA6A AS DateTime), 8, CAST(0x0000A66F0084AA6A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (7, 7, N'72016827', 0, N'TKA-8', 1, 4000, 0, 8, CAST(0x0000A66F0084C7D7 AS DateTime), 8, CAST(0x0000A66F0084C7D7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (8, 8, N'82016827', 0, N'TKA-9', 1, 3000, 0, 8, CAST(0x0000A66F008578E9 AS DateTime), 8, CAST(0x0000A66F008578E9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (9, 9, N'92016827', 0, N'TKA-10', 1, 9000, 0, 8, CAST(0x0000A66F0088E305 AS DateTime), 8, CAST(0x0000A66F0088E305 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (10, 10, N'102016827', 0, N'TKA-11', 1, 3500, 0, 8, CAST(0x0000A66F00897A4C AS DateTime), 8, CAST(0x0000A66F00897A4C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (11, 11, N'112016827', 0, N'TKA-12', 1, 7000, 0, 8, CAST(0x0000A66F008A4E2B AS DateTime), 8, CAST(0x0000A66F008A4E2B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (12, 12, N'122016827', 0, N'TKA-13', 1, 7000, 0, 8, CAST(0x0000A66F008C6261 AS DateTime), 8, CAST(0x0000A66F008C6261 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (13, 13, N'132016827', 0, N'TKA-14', 1, 4000, 0, 8, CAST(0x0000A66F00912045 AS DateTime), 8, CAST(0x0000A66F00912045 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (14, 14, N'142016827', 0, N'1', 1, 4000, 0, 8, CAST(0x0000A66F009180D7 AS DateTime), 8, CAST(0x0000A66F009180D7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (15, 15, N'152016827', 0, N'TKA-16', 1, 4000, 0, 8, CAST(0x0000A66F00923A1D AS DateTime), 8, CAST(0x0000A66F00923A1D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (16, 16, N'162016827', 0, N'TKA-17', 1, 4000, 0, 8, CAST(0x0000A66F0092B8E9 AS DateTime), 8, CAST(0x0000A66F0092B8E9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (17, 17, N'172016827', 0, N'TKA-18', 1, 3500, 0, 8, CAST(0x0000A66F00935CBE AS DateTime), 8, CAST(0x0000A66F00935CBE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (18, 18, N'182016827', 0, N'TKA-19', 1, 5000, 0, 8, CAST(0x0000A66F009369FB AS DateTime), 8, CAST(0x0000A66F009369FB AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (19, 19, N'192016827', 0, N'2', 1, 4500, 0, 8, CAST(0x0000A66F0093792A AS DateTime), 8, CAST(0x0000A66F0093792A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (20, 20, N'202016827', 0, N'10', 1, 3500, 0, 8, CAST(0x0000A66F0094640C AS DateTime), 8, CAST(0x0000A66F0094640C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (21, 21, N'212016827', 0, N'TKA-22', 1, 10500, 0, 8, CAST(0x0000A66F0095725E AS DateTime), 8, CAST(0x0000A66F0095725E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (22, 22, N'222016827', 0, N'TKA-23', 1, 7000, 0, 8, CAST(0x0000A66F00958FAA AS DateTime), 8, CAST(0x0000A66F00958FAA AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (23, 23, N'232016827', 0, N'TKA-24', 1, 10500, 0, 8, CAST(0x0000A66F0095E741 AS DateTime), 8, CAST(0x0000A66F0095E741 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (24, 24, N'242016827', 0, N'TKA-25', 1, 3500, 0, 8, CAST(0x0000A66F0097294F AS DateTime), 8, CAST(0x0000A66F0097294F AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (25, 25, N'252016827', 0, N'10', 1, 4500, 0, 8, CAST(0x0000A66F0097A2CB AS DateTime), 8, CAST(0x0000A66F0097A2CB AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (26, 26, N'262016827', 0, N'TKA-27', 1, 4000, 0, 8, CAST(0x0000A66F0099087E AS DateTime), 8, CAST(0x0000A66F0099087E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (27, 27, N'272016827', 0, N'TKA-28', 1, 7500, 0, 8, CAST(0x0000A66F009A51B7 AS DateTime), 8, CAST(0x0000A66F009A51B7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (28, 28, N'282016827', 0, N'TKA-29', 1, 3500, 0, 8, CAST(0x0000A66F009B6D2C AS DateTime), 8, CAST(0x0000A66F009B6D2C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (29, 29, N'292016827', 0, N'TKA-30', 1, 3500, 0, 8, CAST(0x0000A66F009C53D7 AS DateTime), 8, CAST(0x0000A66F009C53D7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (30, 30, N'302016827', 0, N'TKA-31', 1, 3500, 0, 8, CAST(0x0000A66F009C799A AS DateTime), 8, CAST(0x0000A66F009C799A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (31, 31, N'312016827', 0, N'TKA-32', 1, 4000, 0, 8, CAST(0x0000A66F009E72E9 AS DateTime), 8, CAST(0x0000A66F009E72E9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (32, 32, N'322016827', 0, N'TKA-33', 1, 4500, 0, 8, CAST(0x0000A66F009F8F87 AS DateTime), 8, CAST(0x0000A66F009F8F87 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (33, 33, N'332016827', 0, N'TKA-34', 1, 4000, 0, 8, CAST(0x0000A66F009F9EA7 AS DateTime), 8, CAST(0x0000A66F009F9EA7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (34, 34, N'342016827', 0, N'TKA-35', 1, 9500, 0, 8, CAST(0x0000A66F009FCFDF AS DateTime), 8, CAST(0x0000A66F009FCFDF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (35, 35, N'352016827', 0, N'1', 1, 4000, 0, 8, CAST(0x0000A66F009FE9A6 AS DateTime), 8, CAST(0x0000A66F009FE9A6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (36, 36, N'362016827', 0, N'10', 1, 12000, 0, 8, CAST(0x0000A66F009FF485 AS DateTime), 8, CAST(0x0000A66F009FF485 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (37, 37, N'372016827', 0, N'2', 1, 3500, 0, 8, CAST(0x0000A66F00A023D5 AS DateTime), 8, CAST(0x0000A66F00A023D5 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (38, 38, N'382016827', 0, N'TKA-39', 1, 5000, 0, 8, CAST(0x0000A66F00A2FFE6 AS DateTime), 8, CAST(0x0000A66F00A2FFE6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (39, 39, N'392016827', 0, N'13', 1, 3500, 0, 8, CAST(0x0000A66F00A50032 AS DateTime), 8, CAST(0x0000A66F00A50032 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (40, 40, N'402016827', 0, N'TKA-41', 1, 4500, 0, 8, CAST(0x0000A66F00A5D8E6 AS DateTime), 8, CAST(0x0000A66F00A5D8E6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (41, 41, N'412016827', 0, N'20', 1, 4500, 0, 8, CAST(0x0000A66F00A9BD18 AS DateTime), 8, CAST(0x0000A66F00A9BD18 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (42, 42, N'422016827', 0, N'1', 1, 3000, 0, 8, CAST(0x0000A66F00A9D3A9 AS DateTime), 8, CAST(0x0000A66F00A9D3A9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (43, 43, N'432016827', 0, N'10', 1, 3500, 0, 8, CAST(0x0000A66F00A9DA12 AS DateTime), 8, CAST(0x0000A66F00A9DA12 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (44, 44, N'442016827', 0, N'21', 1, 4000, 0, 8, CAST(0x0000A66F00ACEEAE AS DateTime), 8, CAST(0x0000A66F00ACEEAE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (45, 45, N'452016827', 0, N'3', 1, 14500, 0, 8, CAST(0x0000A66F00AD0027 AS DateTime), 8, CAST(0x0000A66F00AD0027 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (46, 46, N'462016827', 0, N'11', 1, 4500, 0, 8, CAST(0x0000A66F00AD09CC AS DateTime), 8, CAST(0x0000A66F00AD09CC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (47, 47, N'472016827', 0, N'12', 1, 4000, 0, 8, CAST(0x0000A66F00AD4258 AS DateTime), 8, CAST(0x0000A66F00AD4258 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (48, 48, N'482016827', 0, N'TKA-49', 1, 9000, 0, 8, CAST(0x0000A66F00B079A6 AS DateTime), 8, CAST(0x0000A66F00B079A6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (49, 49, N'492016827', 0, N'TKA-50', 1, 4000, 0, 8, CAST(0x0000A66F00B13F13 AS DateTime), 8, CAST(0x0000A66F00B13F13 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (50, 50, N'502016827', 0, N'4', 1, 4000, 0, 8, CAST(0x0000A66F00B15617 AS DateTime), 8, CAST(0x0000A66F00B15617 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (51, 51, N'512016827', 0, N'37', 1, 3500, 0, 8, CAST(0x0000A66F00B15BEE AS DateTime), 8, CAST(0x0000A66F00B15BEE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (52, 52, N'522016827', 0, N'TKA-53', 1, 4000, 0, 8, CAST(0x0000A66F00B270A7 AS DateTime), 8, CAST(0x0000A66F00B270A7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (53, 53, N'532016827', 0, N'TKA-54', 1, 3500, 0, 8, CAST(0x0000A66F00B30B53 AS DateTime), 8, CAST(0x0000A66F00B30B53 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (54, 54, N'542016827', 0, N'1', 1, 9000, 0, 8, CAST(0x0000A66F00B3F689 AS DateTime), 8, CAST(0x0000A66F00B3F689 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (55, 55, N'552016827', 0, N'TKA-56', 1, 3500, 0, 8, CAST(0x0000A66F00B63CF8 AS DateTime), 8, CAST(0x0000A66F00B63CF8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (56, 56, N'562016827', 0, N'19', 1, 9000, 0, 8, CAST(0x0000A66F00B7ACBE AS DateTime), 8, CAST(0x0000A66F00B7ACBE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (57, 57, N'572016827', 0, N'5', 1, 8000, 0, 8, CAST(0x0000A66F00B91403 AS DateTime), 8, CAST(0x0000A66F00B91403 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (58, 58, N'582016827', 0, N'1', 1, 19500, 0, 8, CAST(0x0000A66F00BC4C83 AS DateTime), 8, CAST(0x0000A66F00BC4C83 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (59, 59, N'592016827', 0, N'6', 1, 3500, 0, 8, CAST(0x0000A66F00BCB2F1 AS DateTime), 8, CAST(0x0000A66F00BCB2F1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (60, 60, N'602016827', 0, N'19', 1, 3500, 0, 8, CAST(0x0000A66F00BD4898 AS DateTime), 8, CAST(0x0000A66F00BD4898 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (61, 61, N'612016827', 0, N'20', 1, 8000, 0, 8, CAST(0x0000A66F00BD58B8 AS DateTime), 8, CAST(0x0000A66F00BD58B8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (62, 62, N'622016827', 0, N'2', 1, 3000, 0, 8, CAST(0x0000A66F00BEE68F AS DateTime), 8, CAST(0x0000A66F00BEE68F AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (63, 63, N'632016827', 0, N'TKA-64', 1, 4500, 0, 8, CAST(0x0000A66F00C5594E AS DateTime), 8, CAST(0x0000A66F00C5594E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (64, 64, N'642016827', 0, N'21', 1, 4000, 0, 8, CAST(0x0000A66F00C6D4EA AS DateTime), 8, CAST(0x0000A66F00C6D4EA AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (65, 65, N'652016827', 0, N'TKA-66', 1, 8000, 0, 8, CAST(0x0000A66F00C8FCB8 AS DateTime), 8, CAST(0x0000A66F00C8FCB8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (66, 66, N'662016827', 0, N'1', 1, 11000, 0, 8, CAST(0x0000A66F00CA4056 AS DateTime), 8, CAST(0x0000A66F00CA4056 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (67, 67, N'672016827', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A66F00CCA7BB AS DateTime), 8, CAST(0x0000A66F00CCA7BB AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (68, 68, N'682016827', 0, N'TKA-69', 1, 3500, 0, 8, CAST(0x0000A66F00CDBF21 AS DateTime), 8, CAST(0x0000A66F00CDBF21 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (69, 69, N'692016827', 0, N'TKA-70', 1, 8000, 0, 8, CAST(0x0000A66F00D02BC9 AS DateTime), 8, CAST(0x0000A66F00D02BC9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (70, 70, N'702016827', 0, N'11', 1, 8500, 0, 8, CAST(0x0000A66F00D071EB AS DateTime), 8, CAST(0x0000A66F00D071EB AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (71, 71, N'712016827', 0, N'TKA-72', 1, 4000, 0, 8, CAST(0x0000A66F00D1AAF2 AS DateTime), 8, CAST(0x0000A66F00D1AAF2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (72, 72, N'722016827', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A66F00D1F282 AS DateTime), 8, CAST(0x0000A66F00D1F282 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (73, 73, N'732016827', 0, N'28', 1, 4000, 0, 8, CAST(0x0000A66F00D1FAA0 AS DateTime), 8, CAST(0x0000A66F00D1FAA0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (74, 74, N'742016827', 0, N'29', 1, 8000, 0, 8, CAST(0x0000A66F00D7A784 AS DateTime), 8, CAST(0x0000A66F00D7A784 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (75, 75, N'752016827', 0, N'2', 1, 44200, 0, 8, CAST(0x0000A66F00DEE45B AS DateTime), 8, CAST(0x0000A66F00DEE45B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (76, 76, N'762016827', 0, N'10', 1, 4000, 0, 8, CAST(0x0000A66F00DFBF53 AS DateTime), 8, CAST(0x0000A66F00DFBF53 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (77, 77, N'772016827', 0, N'TKA-78', 1, 4500, 0, 8, CAST(0x0000A66F00E1303A AS DateTime), 8, CAST(0x0000A66F00E1303A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (78, 78, N'782016827', 0, N'38', 1, 3500, 0, 8, CAST(0x0000A66F00E1AA8E AS DateTime), 8, CAST(0x0000A66F00E1AA8E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (79, 79, N'792016827', 0, N'40', 1, 3500, 0, 8, CAST(0x0000A66F00E3F865 AS DateTime), 8, CAST(0x0000A66F00E3F865 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (80, 80, N'802016827', 0, N'TKA-81', 1, 5000, 0, 8, CAST(0x0000A66F00E60E04 AS DateTime), 8, CAST(0x0000A66F00E60E04 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (81, 81, N'812016827', 0, N'20', 1, 4500, 0, 8, CAST(0x0000A66F00E6EC5C AS DateTime), 8, CAST(0x0000A66F00E6EC5C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (82, 82, N'822016827', 0, N'3', 1, 13000, 0, 8, CAST(0x0000A66F00EF4008 AS DateTime), 8, CAST(0x0000A66F00EF4008 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (83, 83, N'832016827', 0, N'TKA-84', 1, 4500, 0, 8, CAST(0x0000A66F00EF51CF AS DateTime), 8, CAST(0x0000A66F00EF51CF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (84, 84, N'842016827', 0, N'2', 1, 4500, 0, 8, CAST(0x0000A66F00F11E1B AS DateTime), 8, CAST(0x0000A66F00F11E1B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (85, 85, N'852016827', 0, N'3', 1, 6500, 0, 8, CAST(0x0000A66F00F12E6B AS DateTime), 8, CAST(0x0000A66F00F12E6B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (86, 86, N'862016827', 0, N'TKA-87', 1, 8000, 0, 8, CAST(0x0000A66F00F68C81 AS DateTime), 8, CAST(0x0000A66F00F68C81 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (87, 87, N'872016827', 0, N'20', 1, 4000, 0, 8, CAST(0x0000A66F00F76F64 AS DateTime), 8, CAST(0x0000A66F00F76F64 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (88, 88, N'882016827', 0, N'29', 1, 4000, 0, 8, CAST(0x0000A66F00F86C8F AS DateTime), 8, CAST(0x0000A66F00F86C8F AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (89, 89, N'892016827', 0, N'38', 1, 5000, 0, 8, CAST(0x0000A66F00F88A69 AS DateTime), 8, CAST(0x0000A66F00F88A69 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (90, 90, N'902016827', 0, N'19', 1, 19000, 0, 8, CAST(0x0000A66F00F8E048 AS DateTime), 8, CAST(0x0000A66F00F8E048 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (91, 91, N'912016827', 0, N'10', 1, 9000, 0, 8, CAST(0x0000A66F00FCECA8 AS DateTime), 8, CAST(0x0000A66F00FCECA8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (92, 92, N'922016827', 0, N'11', 1, 4500, 0, 8, CAST(0x0000A66F01010ACF AS DateTime), 8, CAST(0x0000A66F01010ACF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (93, 93, N'932016827', 0, N'TKA-94', 1, 4500, 0, 8, CAST(0x0000A66F01040B2E AS DateTime), 8, CAST(0x0000A66F01040B2E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (94, 94, N'942016827', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A66F0105241E AS DateTime), 8, CAST(0x0000A66F0105241E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (95, 95, N'952016827', 0, N'1', 1, 3000, 0, 8, CAST(0x0000A66F0105DC2E AS DateTime), 8, CAST(0x0000A66F0105DC2E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (96, 96, N'962016827', 0, N'TKA-97', 1, 5000, 0, 8, CAST(0x0000A66F010727E2 AS DateTime), 8, CAST(0x0000A66F010727E2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (97, 97, N'972016827', 0, N'TKA-98', 1, 3500, 0, 8, CAST(0x0000A66F0107BBA3 AS DateTime), 8, CAST(0x0000A66F0107BBA3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (98, 98, N'982016827', 0, N'TKA-99', 1, 14000, 0, 8, CAST(0x0000A66F010991C3 AS DateTime), 8, CAST(0x0000A66F010991C3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (99, 99, N'992016827', 0, N'TKA-100', 1, 3500, 0, 8, CAST(0x0000A66F010C69F2 AS DateTime), 8, CAST(0x0000A66F010C69F2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (100, 100, N'1002016827', 0, N'TKA-101', 1, 4500, 0, 8, CAST(0x0000A66F010CF4AB AS DateTime), 8, CAST(0x0000A66F010CF4AB AS DateTime), NULL, 2, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (101, 101, N'1012016827', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A66F011260FF AS DateTime), 8, CAST(0x0000A66F011260FF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (102, 102, N'1022016827', 0, N'2', 1, 3500, 0, 8, CAST(0x0000A66F01156DB2 AS DateTime), 8, CAST(0x0000A66F01156DB2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (103, 103, N'1032016827', 0, N'3', 1, 8000, 0, 8, CAST(0x0000A66F011577E3 AS DateTime), 8, CAST(0x0000A66F011577E3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (104, 104, N'1042016827', 0, N'19', 1, 4500, 0, 8, CAST(0x0000A66F0117E1B1 AS DateTime), 8, CAST(0x0000A66F0117E1B1 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (105, 105, N'1052016827', 0, N'20', 1, 4000, 0, 8, CAST(0x0000A66F011E9E75 AS DateTime), 8, CAST(0x0000A66F011E9E75 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (106, 1, N'12016828', 0, N'37', 1, 4500, 0, 8, CAST(0x0000A6700077A176 AS DateTime), 8, CAST(0x0000A6700077A176 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (107, 2, N'22016828', 0, N'TKA-3', 1, 7000, 0, 8, CAST(0x0000A67000799CD4 AS DateTime), 8, CAST(0x0000A67000799CD4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (108, 3, N'32016828', 0, N'TKA-4', 1, 8000, 0, 8, CAST(0x0000A670007A9634 AS DateTime), 8, CAST(0x0000A670007A9634 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (109, 4, N'42016828', 0, N'TKA-5', 1, 7000, 0, 8, CAST(0x0000A67000801784 AS DateTime), 8, CAST(0x0000A67000801784 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (110, 5, N'52016828', 0, N'TKA-6', 1, 4000, 0, 8, CAST(0x0000A67000811B1A AS DateTime), 8, CAST(0x0000A67000811B1A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (111, 6, N'62016828', 0, N'TKA-7', 1, 4500, 0, 8, CAST(0x0000A6700081520A AS DateTime), 8, CAST(0x0000A6700081520A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (112, 7, N'72016828', 0, N'TKA-8', 1, 4000, 0, 8, CAST(0x0000A67000821E66 AS DateTime), 8, CAST(0x0000A67000821E66 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (113, 8, N'82016828', 0, N'1', 1, 3500, 0, 8, CAST(0x0000A670008244AD AS DateTime), 8, CAST(0x0000A670008244AD AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (114, 9, N'92016828', 0, N'TKA-10', 1, 4000, 0, 8, CAST(0x0000A6700084DC34 AS DateTime), 8, CAST(0x0000A6700084DC34 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (115, 10, N'102016828', 0, N'TKA-11', 1, 4000, 0, 8, CAST(0x0000A6700084EB09 AS DateTime), 8, CAST(0x0000A6700084EB09 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (116, 11, N'112016828', 0, N'TKA-12', 1, 4000, 0, 8, CAST(0x0000A6700086D35C AS DateTime), 8, CAST(0x0000A6700086D35C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (117, 12, N'122016828', 0, N'TKA-13', 1, 4000, 0, 8, CAST(0x0000A670008A6ECF AS DateTime), 8, CAST(0x0000A670008A6ECF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (118, 13, N'132016828', 0, N'TKA-14', 1, 4500, 0, 8, CAST(0x0000A670008DDDA7 AS DateTime), 8, CAST(0x0000A670008DDDA7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (119, 14, N'142016828', 0, N'TKA-15', 1, 7000, 0, 8, CAST(0x0000A670008F5A52 AS DateTime), 8, CAST(0x0000A670008F5A52 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (120, 15, N'152016828', 0, N'TKA-16', 1, 4000, 0, 8, CAST(0x0000A67000942C3A AS DateTime), 8, CAST(0x0000A67000942C3A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (121, 16, N'162016828', 0, N'TKA-17', 1, 3500, 0, 8, CAST(0x0000A67000943ACE AS DateTime), 8, CAST(0x0000A67000943ACE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (122, 17, N'172016828', 0, N'TKA-18', 1, 3500, 0, 8, CAST(0x0000A67000944AFA AS DateTime), 8, CAST(0x0000A67000944AFA AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (123, 18, N'182016828', 0, N'TKA-19', 1, 4000, 0, 8, CAST(0x0000A6700094D8EE AS DateTime), 8, CAST(0x0000A6700094D8EE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (124, 19, N'192016828', 0, N'TKA-20', 1, 3500, 0, 8, CAST(0x0000A6700094F9F8 AS DateTime), 8, CAST(0x0000A6700094F9F8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (125, 20, N'202016828', 0, N'TKA-21', 1, 9500, 0, 8, CAST(0x0000A67000950CAE AS DateTime), 8, CAST(0x0000A67000950CAE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (126, 21, N'212016828', 0, N'TKA-22', 1, 4000, 0, 8, CAST(0x0000A6700095DB8A AS DateTime), 8, CAST(0x0000A6700095DB8A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (127, 22, N'222016828', 0, N'TKA-23', 1, 4000, 0, 8, CAST(0x0000A670009B99FC AS DateTime), 8, CAST(0x0000A670009B99FC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (128, 23, N'232016828', 0, N'4', 1, 9000, 0, 8, CAST(0x0000A670009C16E5 AS DateTime), 8, CAST(0x0000A670009C16E5 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (129, 24, N'242016828', 0, N'TKA-25', 1, 4500, 0, 8, CAST(0x0000A670009DF17E AS DateTime), 8, CAST(0x0000A670009DF17E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (130, 25, N'252016828', 0, N'1', 1, 3000, 0, 8, CAST(0x0000A670009EA6A3 AS DateTime), 8, CAST(0x0000A670009EA6A3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (131, 26, N'262016828', 0, N'10', 1, 24300, 0, 8, CAST(0x0000A67000A3E681 AS DateTime), 8, CAST(0x0000A67000A3E681 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (132, 27, N'272016828', 0, N'1', 1, 8000, 0, 8, CAST(0x0000A67000A58432 AS DateTime), 8, CAST(0x0000A67000A58432 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (133, 28, N'282016828', 0, N'19', 1, 4000, 0, 8, CAST(0x0000A67000A8D960 AS DateTime), 8, CAST(0x0000A67000A8D960 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (134, 29, N'292016828', 0, N'11', 1, 7000, 0, 8, CAST(0x0000A67000AAD16E AS DateTime), 8, CAST(0x0000A67000AAD16E AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (135, 30, N'302016828', 0, N'TKA-31', 1, 7000, 0, 8, CAST(0x0000A67000AC039F AS DateTime), 8, CAST(0x0000A67000AC039F AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (136, 31, N'312016828', 0, N'2', 1, 8000, 0, 8, CAST(0x0000A67000AC3EEF AS DateTime), 8, CAST(0x0000A67000AC3EEF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (137, 32, N'322016828', 0, N'TKA-33', 1, 4000, 0, 8, CAST(0x0000A67000B0935A AS DateTime), 8, CAST(0x0000A67000B0935A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (138, 33, N'332016828', 0, N'19', 1, 14500, 0, 8, CAST(0x0000A67000B3C5D6 AS DateTime), 8, CAST(0x0000A67000B3C5D6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (139, 34, N'342016828', 0, N'TKA-35', 1, 5000, 0, 8, CAST(0x0000A67000B50695 AS DateTime), 8, CAST(0x0000A67000B50695 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (140, 35, N'352016828', 0, N'2', 1, 20000, 0, 8, CAST(0x0000A67000B5B3ED AS DateTime), 8, CAST(0x0000A67000B5B3ED AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (141, 36, N'362016828', 0, N'TKA-37', 1, 4000, 0, 8, CAST(0x0000A67000B68AAE AS DateTime), 8, CAST(0x0000A67000B68AAE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (142, 37, N'372016828', 0, N'TKA-38', 1, 4000, 0, 8, CAST(0x0000A67000B7BB9D AS DateTime), 8, CAST(0x0000A67000B7BB9D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (143, 38, N'382016828', 0, N'TKA-39', 1, 4000, 0, 8, CAST(0x0000A67000B7DF28 AS DateTime), 8, CAST(0x0000A67000B7DF28 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (144, 39, N'392016828', 0, N'TKA-40', 1, 3500, 0, 8, CAST(0x0000A67000B91677 AS DateTime), 8, CAST(0x0000A67000B91677 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (145, 40, N'402016828', 0, N'37', 1, 9000, 0, 8, CAST(0x0000A67000B92DD5 AS DateTime), 8, CAST(0x0000A67000B92DD5 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (146, 41, N'412016828', 0, N'TKA-42', 1, 9000, 0, 8, CAST(0x0000A67000BCF813 AS DateTime), 8, CAST(0x0000A67000BCF813 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (147, 42, N'422016828', 0, N'TKA-43', 1, 4500, 0, 8, CAST(0x0000A67000BD0569 AS DateTime), 8, CAST(0x0000A67000BD0569 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (148, 43, N'432016828', 0, N'38', 1, 4500, 0, 8, CAST(0x0000A67000BD31C4 AS DateTime), 8, CAST(0x0000A67000BD31C4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (149, 44, N'442016828', 0, N'TKA-45', 1, 4000, 0, 8, CAST(0x0000A67000C0EB0A AS DateTime), 8, CAST(0x0000A67000C0EB0A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (150, 45, N'452016828', 0, N'19', 1, 3000, 0, 8, CAST(0x0000A67000C404A4 AS DateTime), 8, CAST(0x0000A67000C404A4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (151, 46, N'462016828', 0, N'1', 1, 19500, 0, 8, CAST(0x0000A67000C4656B AS DateTime), 8, CAST(0x0000A67000C4656B AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (152, 47, N'472016828', 0, N'20', 1, 3500, 0, 8, CAST(0x0000A67000C5A017 AS DateTime), 8, CAST(0x0000A67000C5A017 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (153, 48, N'482016828', 0, N'29', 1, 24000, 0, 8, CAST(0x0000A67000C680A2 AS DateTime), 8, CAST(0x0000A67000C680A2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (154, 49, N'492016828', 0, N'TKA-50', 1, 4500, 0, 8, CAST(0x0000A67000C86CCE AS DateTime), 8, CAST(0x0000A67000C86CCE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (155, 50, N'502016828', 0, N'TKA-51', 1, 3500, 0, 8, CAST(0x0000A67000CA81E5 AS DateTime), 8, CAST(0x0000A67000CA81E5 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (156, 51, N'512016828', 0, N'TKA-52', 1, 4000, 0, 8, CAST(0x0000A67000D06A64 AS DateTime), 8, CAST(0x0000A67000D06A64 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (157, 52, N'522016828', 0, N'TKA-53', 1, 5500, 0, 8, CAST(0x0000A67000D101A7 AS DateTime), 8, CAST(0x0000A67000D101A7 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (158, 53, N'532016828', 0, N'TKA-54', 1, 7500, 0, 8, CAST(0x0000A67000D15EB4 AS DateTime), 8, CAST(0x0000A67000D15EB4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (159, 54, N'542016828', 0, N'11', 1, 7000, 0, 8, CAST(0x0000A67000D83A31 AS DateTime), 8, CAST(0x0000A67000D83A31 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (160, 55, N'552016828', 0, N'TKA-56', 1, 8000, 0, 8, CAST(0x0000A67000D97034 AS DateTime), 8, CAST(0x0000A67000D97034 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (161, 56, N'562016828', 0, N'11', 1, 10500, 0, 8, CAST(0x0000A67000DCBD3A AS DateTime), 8, CAST(0x0000A67000DCBD3A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (162, 57, N'572016828', 0, N'1', 1, 3000, 0, 8, CAST(0x0000A67000E315C6 AS DateTime), 8, CAST(0x0000A67000E315C6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (163, 58, N'582016828', 0, N'TKA-59', 1, 9000, 0, 8, CAST(0x0000A67000E37273 AS DateTime), 8, CAST(0x0000A67000E37273 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (164, 59, N'592016828', 0, N'37', 1, 4500, 0, 8, CAST(0x0000A67000E793D9 AS DateTime), 8, CAST(0x0000A67000E793D9 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (165, 60, N'602016828', 0, N'38', 1, 3500, 0, 8, CAST(0x0000A67000E88C53 AS DateTime), 8, CAST(0x0000A67000E88C53 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (166, 61, N'612016828', 0, N'TKA-62', 1, 7500, 0, 8, CAST(0x0000A67000EBE1DD AS DateTime), 8, CAST(0x0000A67000EBE1DD AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (167, 62, N'622016828', 0, N'TKA-63', 1, 4500, 0, 8, CAST(0x0000A67000EEB7FF AS DateTime), 8, CAST(0x0000A67000EEB7FF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (168, 63, N'632016828', 0, N'TKA-64', 1, 5000, 0, 8, CAST(0x0000A67000FC7D93 AS DateTime), 8, CAST(0x0000A67000FC7D93 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (169, 64, N'642016828', 0, N'38', 1, 7000, 0, 8, CAST(0x0000A67000FEC699 AS DateTime), 8, CAST(0x0000A67000FEC699 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (170, 65, N'652016828', 0, N'40', 1, 4000, 0, 8, CAST(0x0000A67000FFB323 AS DateTime), 8, CAST(0x0000A67000FFB323 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (171, 66, N'662016828', 0, N'29', 1, 4000, 0, 8, CAST(0x0000A6700102A921 AS DateTime), 8, CAST(0x0000A6700102A921 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (172, 67, N'672016828', 0, N'1', 1, 11000, 0, 8, CAST(0x0000A67001056821 AS DateTime), 8, CAST(0x0000A67001056821 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (173, 68, N'682016828', 0, N'39', 1, 8500, 0, 8, CAST(0x0000A6700105D2A4 AS DateTime), 8, CAST(0x0000A6700105D2A4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (174, 69, N'692016828', 0, N'TKA-70', 1, 3500, 0, 8, CAST(0x0000A670010B43F8 AS DateTime), 8, CAST(0x0000A670010B43F8 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (175, 70, N'702016828', 0, N'13', 1, 8000, 0, 8, CAST(0x0000A670010E9D01 AS DateTime), 8, CAST(0x0000A670010E9D01 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (176, 71, N'712016828', 0, N'TKA-72', 1, 4000, 0, 8, CAST(0x0000A670011074BF AS DateTime), 8, CAST(0x0000A670011074BF AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (177, 72, N'722016828', 0, N'TKA-73', 1, 4500, 0, 8, CAST(0x0000A67001108E0A AS DateTime), 8, CAST(0x0000A67001108E0A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (178, 73, N'732016828', 0, N'29', 1, 7000, 0, 8, CAST(0x0000A67001198C6D AS DateTime), 8, CAST(0x0000A67001198C6D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (179, 74, N'742016828', 0, N'37', 1, 7500, 0, 8, CAST(0x0000A6700121B51A AS DateTime), 8, CAST(0x0000A6700121B51A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER] ([ID], [OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (180, 75, N'752016828', 0, N'TKA-76', 1, 3500, 0, 8, CAST(0x0000A67001276C2B AS DateTime), 8, CAST(0x0000A67001276C2B AS DateTime), NULL, 2, 0)
SET IDENTITY_INSERT [dbo].[ORDER] OFF
/****** Object:  Table [dbo].[MODIFIRE_PRICE]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[MODIFIRE]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[MENU]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[MAP_PRODUCT_TO_CATEGORY]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[MAP_MODIFIRE_TO_PRODUCT]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  Table [dbo].[MAP_CATEGORY_TO_CATALOGUE]    Script Date: 08/29/2016 13:33:26 ******/
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
/****** Object:  StoredProcedure [dbo].[LISTTKA]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[getProductByCategory]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[getModifireByProduct]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SearchProduct]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataPermissionByDepartmet]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapProductToCategory]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapModifireToProduct]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapCategoryToCatalogue]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetShiftReport]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  View [dbo].[view_report_invoice]    Script Date: 08/29/2016 13:33:36 ******/
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
/****** Object:  View [dbo].[VIEW_PAYMENT_INVOICE_HISTORY_ALL]    Script Date: 08/29/2016 13:33:36 ******/
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
  FROM [dbo].[PAYMENT_INVOICE_HISTORY_ALL]
  
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
  FROM [dbo].[PAYMENT_INVOICE_HISTORY]
GO
/****** Object:  View [dbo].[VIEW_ORDER_DETAIL_MODIFIRE_ALL]    Script Date: 08/29/2016 13:33:36 ******/
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
/****** Object:  View [dbo].[VIEW_ORDER_DETAIL_ALL]    Script Date: 08/29/2016 13:33:36 ******/
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
/****** Object:  View [dbo].[VIEW_ORDER_ALL]    Script Date: 08/29/2016 13:33:36 ******/
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
/****** Object:  View [dbo].[VIEW_INVOICE_DETAIL_MODIFIRE_ALL]    Script Date: 08/29/2016 13:33:36 ******/
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
/****** Object:  View [dbo].[VIEW_INVOICE_DETAIL_ALL]    Script Date: 08/29/2016 13:33:36 ******/
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
/****** Object:  View [dbo].[VIEW_INVOICE_ALL]    Script Date: 08/29/2016 13:33:36 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateToServer]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByCard]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByAccount]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataProductAndModifire]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataListShiftHistoryByUserID]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataBackupDatabase]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListProductByCategory]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListPermissionByDepartmentID]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListCategoryByCatalogue]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetListProductPrice]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetListModifireToProduct]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetListModifire]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDetailProductPrice]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSummaryReportNew]    Script Date: 08/29/2016 13:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pos_th_GetDataSummaryReportNew]
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
                b.GrifCardTotal,
                C.TotalEATIN,
                C.TotalTKA
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
                ) AS B,
                ( SELECT    ISNULL(MAX(temp.TotalEATIN), 0) AS TotalEATIN ,
                            ISNULL(MAX(temp.TotalTKA), 0) AS TotalTKA 
                            
                  FROM      ( SELECT    CASE WHEN FloorID not like'%TKA%'
                                             THEN SUM(TotalAmount)
                                             ELSE 0
                                        END AS TotalEATIN ,
                                        CASE WHEN FloorID  like'%TKA%'
                                             THEN SUM(TotalAmount)
                                             ELSE 0
                                        END AS TotalTKA
                                        
                              FROM      VIEW_ORDER_ALL
                              WHERE     Status = 1
                                        AND CreateDate BETWEEN @startdate AND @enddate
                              GROUP BY  FloorID
                            ) AS temp
                ) AS C
	
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSummaryReport]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetReportSaleByStaff]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetQTYItemSaleReport]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetQTYGroupSaleReport]    Script Date: 08/29/2016 13:33:19 ******/
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
/****** Object:  Default [DF_CATALOGUE_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CATALOGUE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CATALOGUE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CATALOGUE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CATALOGUE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CATEGORY_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CATEGORY_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CATEGORY_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CATEGORY_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CATEGORY_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CLIENT_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CLIENT_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CLIENT_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CLIENT_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CLIENT_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_Type]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_DATABASE_BACKUP_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_DATABASE_BACKUP_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_DEPARMENT_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_DEPARMENT_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_DEPARMENT_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_DEPARMENT_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_DEPARMENT_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_FLOOR_Priority]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_FLOOR_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_FLOOR_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_FLOOR_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_FLOOR_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_FLOOR_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_Satust]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_OrderDetailID]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_OrderDetailID]  DEFAULT ((0)) FOR [OrderDetailID]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_Satust]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MENU_Priority]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_MENU_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MENU_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MENU_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MENU_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MENU_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MODIFIRE_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MODIFIRE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MODIFIRE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MODIFIRE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MODIFIRE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDERDATE_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDERDATE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDERDATE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDERDATE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDERDATE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_Satust]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_Satust_1]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_Satust_1]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_CreateBy_1]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_CreateBy_1]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_CreateDate_1]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_UpdateBy_1]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_UpdateBy_1]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_UpdateDate_1]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_UpdateDate_1]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_Satust]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_Satust]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PERMISSION_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PERMISSION_DeparmentID]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_DeparmentID]  DEFAULT ((0)) FOR [DepartmentID]
GO
/****** Object:  Default [DF_PERMISSION_SubMenuID]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_SubMenuID]  DEFAULT ((0)) FOR [SubMenuID]
GO
/****** Object:  Default [DF_PERMISSION_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PERMISSION_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PERMISSION_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PERMISSION_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CategoryID]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CategoryID]  DEFAULT ((0)) FOR [CategoryID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_ProductID]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_ProductID]  DEFAULT ((0)) FOR [ProductID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_PrinterID]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_PrinterID]  DEFAULT ((0)) FOR [PrinterID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_TemplatesID]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_TemplatesID]  DEFAULT ((0)) FOR [TemplatesID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRINTER_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRINTER_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRINTER_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRINTER_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRODUCT_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PRODUCT_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRODUCT_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRODUCT_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRODUCT_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_CreateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_CreateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_UpdateBy]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_UpdateDate]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_StartShift]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_StartShift]  DEFAULT (getdate()) FOR [StartShift]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_Status]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CashStart]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CashStart]  DEFAULT ((0)) FOR [CashStart]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CashEnd]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CashEnd]  DEFAULT ((0)) FOR [CashEnd]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_SafeDrop]    Script Date: 08/29/2016 13:33:26 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_SafeDrop]  DEFAULT ((0)) FOR [SafeDrop]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CreateBy]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CreateDate]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_UpdateBy]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_UpdateDate]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_STAFF_Status]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_STAFF_CreateBy]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_STAFF_CreateDate]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_STAFF_UpdateBy]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_STAFF_UpdateDate]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_SUB_MENU_Priority]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_SUB_MENU_Status]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_SUB_MENU_CreateBy]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_SUB_MENU_CreateDate]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_SUB_MENU_UpdateBy]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_SUB_MENU_UpdateDate]    Script Date: 08/29/2016 13:33:27 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
