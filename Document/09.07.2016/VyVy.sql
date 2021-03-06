USE [POSEZ2U]
GO
/****** Object:  Table [dbo].[VOID_ITEM_HISTORY]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  UserDefinedTableType [dbo].[TableTemp]    Script Date: 07/09/2016 15:15:53 ******/
CREATE TYPE [dbo].[TableTemp] AS TABLE(
	[Value] [int] NULL
)
GO
/****** Object:  Table [dbo].[TableTemp]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[TableTemp] ([ShiftHistoryID], [StaffID], [ShiftName], [StartShift], [EndShift], [Status], [CashStart], [CashEnd], [SafeDrop], [UserName]) VALUES (2, 5, N'Y', CAST(0x0000A63E007C9F72 AS DateTime), NULL, 1, 100000, 0, 0, N'Thanh')
/****** Object:  Table [dbo].[SUB_MENU]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[STAFF]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'Thien', N'c/sqqDQV2+7k55SNqqtpjQ==', 1, 1, N'Thien', N'Huynh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A56D0126DAE6 AS DateTime), 0, CAST(0x0000A56D0126DAE6 AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'Thanh', N'c/sqqDQV2+7k55SNqqtpjQ==', 1, 1, N'Thanh', N'Phan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A56D0127127B AS DateTime), 0, CAST(0x0000A56D0127127B AS DateTime))
INSERT [dbo].[STAFF] ([StaffID], [UserName], [Password], [Status], [DepartmentID], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (6, N'Vu', N'gMo3uRgQdKaHeFC7n2KDbA==', 1, 3, N'Vu', N'Pham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A56D0127A89E AS DateTime), 0, CAST(0x0000A56D0127A89E AS DateTime))
SET IDENTITY_INSERT [dbo].[STAFF] OFF
/****** Object:  Table [dbo].[SHIFT_HISTORY]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[SHIFT_HISTORY] ([ShiftHistoryID], [StaffID], [ShiftName], [StartShift], [EndShift], [Status], [CashStart], [CashEnd], [SafeDrop], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 5, N'#1', CAST(0x0000A5C60114814A AS DateTime), CAST(0x0000A63E007C8318 AS DateTime), 2, 100000, 200000, 200000, NULL, 5, CAST(0x0000A5C60114814A AS DateTime), 5, CAST(0x0000A63E007C8318 AS DateTime))
INSERT [dbo].[SHIFT_HISTORY] ([ShiftHistoryID], [StaffID], [ShiftName], [StartShift], [EndShift], [Status], [CashStart], [CashEnd], [SafeDrop], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 5, N'Y', CAST(0x0000A63E007C9F72 AS DateTime), NULL, 1, 100000, NULL, NULL, NULL, 5, CAST(0x0000A63E007C9F73 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[SHIFT_HISTORY] OFF
/****** Object:  Table [dbo].[SEAT]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[PRODUCT_PRICE]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (23, 23, 1, 6000, 0, NULL, 0, CAST(0x0000A63D01621561 AS DateTime), 0, CAST(0x0000A63D01621561 AS DateTime), N'Regular')
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
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (35, 35, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (36, 36, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (37, 37, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (38, 38, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (39, 39, 1, 5500, 0, NULL, 0, CAST(0x0000A63D01621566 AS DateTime), 0, CAST(0x0000A63D01621566 AS DateTime), N'Regular')
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
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (76, 76, 1, 3500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
INSERT [dbo].[PRODUCT_PRICE] ([ProductPriceID], [ProductID], [Status], [CurrentPrice], [WasPrice], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Portions]) VALUES (77, 77, 1, 3500, 0, NULL, 0, CAST(0x0000A63D01621574 AS DateTime), 0, CAST(0x0000A63D01621574 AS DateTime), N'Regular')
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
SET IDENTITY_INSERT [dbo].[PRODUCT_PRICE] OFF
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (23, N'Sto. Avocado & Durian', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC334 AS DateTime), 0, CAST(0x0000A63D015AC334 AS DateTime), N'Sto. Avocado & Durian', NULL)
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
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (35, N'Sto. Durian', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Durian', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (36, N'Sto. 3Melon', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. 3Melon', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (37, N'Sto. Avocado', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Avocado', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (38, N'Sto. Strawberry', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Strawberry', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (39, N'Sto. Jackfruit', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC338 AS DateTime), 0, CAST(0x0000A63D015AC338 AS DateTime), N'Sto. Jackfruit', NULL)
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
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (76, N'Cappuccino', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'Cappuccino', NULL)
INSERT [dbo].[PRODUCT] ([ProductID], [ProductNameDesc], [Status], [Color], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [ProductNameSort], [Portions]) VALUES (77, N'FlatWhite', 1, N'Blue', NULL, 0, CAST(0x0000A63D015AC342 AS DateTime), 0, CAST(0x0000A63D015AC342 AS DateTime), N'FlatWhite', NULL)
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
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
/****** Object:  Table [dbo].[PRINTER]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'80 Printer', N'Bar', N'Quay Nuoc', 1, 1, 1, 0, CAST(0x0000A5990169EFCF AS DateTime), 0, CAST(0x0000A63E009BD806 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'80 Printer', N'Kitchen', N'Nha bep', 1, 2, 1, 0, CAST(0x0000A599016A04B8 AS DateTime), 0, CAST(0x0000A63E009BDD7A AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'80 Printer', N'All', N'ALL', 0, 3, 1, 0, CAST(0x0000A599016F8194 AS DateTime), 0, CAST(0x0000A63E009BFBEB AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'80 Printer', N'JoinTable', N'JoinTable', 2, 1, 1, 0, CAST(0x0000A59A0172019E AS DateTime), 0, CAST(0x0000A63E009BE934 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'80 Printer', N'BILL', N'BIll', 4, 1, 1, 0, CAST(0x0000A59A0181A0C6 AS DateTime), 0, CAST(0x0000A63E009BE4E4 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (7, N'80 Printer', N'Transfer Table', N'TRANFER TABLE', 3, 1, 1, 0, CAST(0x0000A5B60161753C AS DateTime), 0, CAST(0x0000A63E009BEE77 AS DateTime))
INSERT [dbo].[PRINTER] ([ID], [PrinterName], [PrintName], [Header], [PrinterType], [NumberOfTicket], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (8, N'80 Printer', N'REPORT', N'REPORT', 5, 1, 1, 0, CAST(0x0000A5C4015C5EA3 AS DateTime), 0, CAST(0x0000A63E009BF2FE AS DateTime))
SET IDENTITY_INSERT [dbo].[PRINTER] OFF
/****** Object:  Table [dbo].[PRINTE_JOB_DETAIL]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (81, 9, 22, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (82, 5, 20, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (83, 1, 23, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (84, 1, 24, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (85, 1, 25, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (86, 1, 26, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (87, 1, 27, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (88, 1, 28, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (89, 1, 29, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (90, 1, 30, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (91, 1, 31, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (92, 1, 32, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (93, 1, 33, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (94, 1, 34, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (95, 1, 35, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (96, 1, 36, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (97, 1, 37, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (98, 1, 38, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (99, 1, 39, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (100, 1, 40, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (101, 1, 41, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (102, 1, 42, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (103, 1, 43, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (104, 1, 44, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (105, 1, 45, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (106, 1, 46, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (107, 4, 18, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (108, 4, 19, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (109, 4, 20, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (110, 4, 21, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (111, 4, 22, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (112, 5, 23, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (113, 5, 24, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (114, 5, 25, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (115, 5, 26, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (116, 5, 27, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (117, 5, 28, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (118, 5, 29, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (119, 5, 30, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (120, 5, 31, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (121, 5, 32, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (122, 5, 33, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (123, 5, 34, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (124, 5, 35, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (125, 5, 36, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (126, 5, 37, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (127, 5, 38, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (128, 5, 39, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (129, 5, 40, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (130, 5, 41, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (131, 5, 42, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (132, 5, 43, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (133, 5, 44, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (134, 5, 45, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (135, 5, 46, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (136, 7, 57, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (137, 7, 58, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (138, 7, 59, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (139, 7, 60, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (140, 7, 61, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (141, 7, 62, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (142, 7, 63, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (143, 7, 64, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (144, 7, 65, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (145, 7, 66, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (146, 8, 67, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (147, 8, 68, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (148, 8, 69, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (149, 8, 70, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (150, 8, 71, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (151, 8, 72, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (152, 8, 73, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (153, 8, 74, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (154, 8, 75, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (155, 9, 76, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (156, 9, 77, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (157, 9, 78, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (158, 9, 79, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (159, 9, 80, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (160, 9, 81, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (161, 9, 82, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (162, 9, 83, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (163, 9, 84, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (164, 9, 85, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (165, 9, 86, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (166, 9, 87, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (167, 9, 88, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (168, 9, 89, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (169, 9, 90, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (170, 10, 91, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (171, 10, 92, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (172, 10, 93, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (173, 10, 94, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (174, 10, 95, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (175, 10, 96, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (176, 11, 97, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (177, 11, 98, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (178, 11, 99, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (179, 11, 100, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (180, 11, 101, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (181, 11, 102, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (182, 11, 103, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (183, 11, 104, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (184, 11, 105, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (185, 11, 106, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (186, 11, 107, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (187, 11, 108, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (188, 11, 109, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (189, 11, 110, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (190, 11, 111, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (191, 11, 112, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (192, 11, 113, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (193, 11, 114, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (194, 11, 138, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (195, 11, 139, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (196, 11, 140, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (197, 11, 141, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (198, 11, 142, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (199, 11, 143, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (200, 12, 115, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (201, 12, 116, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (202, 12, 117, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (203, 12, 118, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (204, 12, 119, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (205, 12, 120, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (206, 12, 121, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (207, 12, 122, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (208, 12, 123, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (209, 12, 124, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (210, 12, 125, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (211, 13, 126, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (212, 13, 127, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (213, 13, 128, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (214, 13, 129, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (215, 13, 130, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (216, 13, 131, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (217, 13, 132, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (218, 13, 133, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (219, 13, 134, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (220, 13, 135, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (221, 14, 136, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (222, 14, 137, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (233, 2, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (234, 2, 2, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (235, 2, 3, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (236, 2, 4, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (237, 2, 5, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (238, 2, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (239, 2, 7, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (240, 2, 8, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (241, 2, 9, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (242, 2, 10, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (243, 2, 11, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (244, 2, 12, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (245, 3, 13, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (246, 3, 14, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (247, 3, 15, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (248, 3, 16, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (249, 3, 17, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (250, 6, 47, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (251, 6, 48, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (252, 6, 49, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (253, 6, 50, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (254, 6, 51, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (255, 6, 52, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (256, 6, 53, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (257, 6, 54, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (258, 6, 55, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PRINTE_JOB_DETAIL] ([ID], [CategoryID], [ProductID], [PrinterID], [TemplatesID], [Status], [Notes], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (259, 6, 56, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PRINTE_JOB_DETAIL] OFF
/****** Object:  Table [dbo].[PRINT_JOB]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  UserDefinedFunction [dbo].[GetEndDate]    Script Date: 07/09/2016 15:15:54 ******/
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
/****** Object:  Table [dbo].[FLOOR]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[DATABASE_BACKUP]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[CONFIG_SAVE_DATA]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[CONFIG]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[CONFIG] ([ID], [Name], [ABN], [Address], [Tel], [Web], [Logan], [Note]) VALUES (1, N'BI RESTAURANT', N'NULABN:45 134918497', N'233A Canley Vale Rd Canley Heights NSW 2166', N'Tel: 9727 7585', N'www.bires.com.au', N'Eat.Drink.Laugh-A touch of Laos', N'Thank you,see you soon')
SET IDENTITY_INSERT [dbo].[CONFIG] OFF
/****** Object:  Table [dbo].[CLIENT]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[CLIENT] ([ClientID], [Status], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [Balance], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, 1, N'Thanh', N'Phan', N'Pcthanh@Gmail.com', N'0972641947', NULL, NULL, NULL, NULL, N'', -137000, 0, CAST(0x0000A5A600763DE3 AS DateTime), 0, CAST(0x0000A5A600763DE3 AS DateTime))
INSERT [dbo].[CLIENT] ([ClientID], [Status], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [Balance], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, 1, N'AAA', N'AAA', N'PCTHANH2408@GMAIL.COM', N'123456', NULL, NULL, NULL, NULL, N'XXXXXXXX', -90020, 0, CAST(0x0000A5B500E6AEB4 AS DateTime), 0, CAST(0x0000A5B500E6AEB4 AS DateTime))
INSERT [dbo].[CLIENT] ([ClientID], [Status], [Fname], [Lname], [Email], [Phone], [Adress1], [Adress2], [Adress3], [Country], [Note], [Balance], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, 1, N'Phan Chi Thanh', NULL, N'Yyy', N'555', NULL, NULL, NULL, NULL, N'Hhh', -314020, 0, CAST(0x0000A5B501692CF6 AS DateTime), 0, CAST(0x0000A5B501692CF6 AS DateTime))
SET IDENTITY_INSERT [dbo].[CLIENT] OFF
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[CATEGORY] ([CategoryID], [CategoryName], [CategoryNameSort], [Status], [Color], [ProductColor], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (14, N'Che Sweet', N'Che Sweet', 1, N'', N'', N'', 1, CAST(0x0000A63E008711E7 AS DateTime), 1, CAST(0x0000A63E00872A3A AS DateTime))
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
/****** Object:  Table [dbo].[CATALOGUE]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[Card]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  UserDefinedFunction [dbo].[Auto_Create_Code]    Script Date: 07/09/2016 15:15:54 ******/
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
/****** Object:  Table [dbo].[ACC_PAYMENT]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACC_PAYMENT](
	[PayMentID] [int] IDENTITY(1,1) NOT NULL,
	[CusNo] [int] NULL,
	[SubTotal] [int] NULL,
	[InvoiceID] [int] NULL,
	[InvoiceNumber] [int] NULL,
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
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (1, 0, 11000, 1, 1201678, 0, 0, 1, 0, CAST(0x0000A63D01655B98 AS DateTime), 1, CAST(0x0000A63D01655B98 AS DateTime), 1)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (2, 0, 11000, 2, 2201679, 0, 0, 1, 0, CAST(0x0000A63E00769314 AS DateTime), 1, CAST(0x0000A63E00769314 AS DateTime), 1)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (3, 0, 22000, 3, 3201679, 0, 0, 1, 0, CAST(0x0000A63E0076D388 AS DateTime), 1, CAST(0x0000A63E0076D388 AS DateTime), 1)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (4, 0, 16500, 4, 4201679, 0, 0, 1, 0, CAST(0x0000A63E00770010 AS DateTime), 1, CAST(0x0000A63E00770010 AS DateTime), 1)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (5, 0, 22000, 5, 5201679, 0, 0, 1, 0, CAST(0x0000A63E0078A014 AS DateTime), 1, CAST(0x0000A63E0078A014 AS DateTime), 1)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (6, 0, 61500, 6, 6201679, 0, 0, 1, 0, CAST(0x0000A63E007CBA14 AS DateTime), 1, CAST(0x0000A63E007CBA14 AS DateTime), 1)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (7, 0, 7000, 7, 7201679, 0, 0, 1, 0, CAST(0x0000A63E00A032F0 AS DateTime), 2, CAST(0x0000A63E00A032F0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (8, 0, 11000, 8, 8201679, 0, 0, 1, 0, CAST(0x0000A63E00A05618 AS DateTime), 2, CAST(0x0000A63E00A05618 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (9, 0, 37000, 9, 9201679, 0, 0, 1, 0, CAST(0x0000A63E00A30AAC AS DateTime), 2, CAST(0x0000A63E00A30AAC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (10, 0, 16000, 10, 10201679, 0, 0, 1, 0, CAST(0x0000A63E00A31664 AS DateTime), 2, CAST(0x0000A63E00A31664 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (11, 0, 14500, 11, 11201679, 0, 0, 1, 0, CAST(0x0000A63E00A4F6DC AS DateTime), 2, CAST(0x0000A63E00A4F6DC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (12, 0, 11400, 12, 12201679, 0, 0, 1, 0, CAST(0x0000A63E00A99674 AS DateTime), 2, CAST(0x0000A63E00A99674 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (13, 0, 11000, 13, 13201679, 0, 0, 1, 0, CAST(0x0000A63E00A99FD4 AS DateTime), 2, CAST(0x0000A63E00A99FD4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (14, 0, 27500, 14, 14201679, 0, 0, 1, 0, CAST(0x0000A63E00A9AA60 AS DateTime), 0, CAST(0x0000A63E00A9AA60 AS DateTime), 0)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (15, 0, 21000, 15, 15201679, 0, 0, 1, 0, CAST(0x0000A63E00A9B294 AS DateTime), 2, CAST(0x0000A63E00A9B294 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (16, 0, 0, 16, 16201679, 0, 0, 1, 0, CAST(0x0000A63E00A9CFE0 AS DateTime), 2, CAST(0x0000A63E00A9CFE0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (17, 0, 21000, 17, 17201679, 0, 0, 1, 0, CAST(0x0000A63E00A9F560 AS DateTime), 2, CAST(0x0000A63E00A9F560 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (18, 0, 11000, 18, 18201679, 0, 0, 1, 0, CAST(0x0000A63E00A9FC68 AS DateTime), 2, CAST(0x0000A63E00A9FC68 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (19, 0, 12500, 19, 19201679, 0, 0, 1, 0, CAST(0x0000A63E00CEACFC AS DateTime), 2, CAST(0x0000A63E00CEACFC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (20, 0, 4000, 20, 20201679, 0, 0, 1, 0, CAST(0x0000A63E00CEBFBC AS DateTime), 2, CAST(0x0000A63E00CEBFBC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (21, 0, 5500, 21, 21201679, 0, 0, 1, 0, CAST(0x0000A63E00CECB74 AS DateTime), 2, CAST(0x0000A63E00CECB74 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (22, 0, 21000, 22, 22201679, 0, 0, 1, 0, CAST(0x0000A63E00CEDAB0 AS DateTime), 2, CAST(0x0000A63E00CEDAB0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (23, 0, 5500, 23, 23201679, 0, 0, 1, 0, CAST(0x0000A63E00CEE2E4 AS DateTime), 2, CAST(0x0000A63E00CEE2E4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (24, 0, 5500, 24, 24201679, 0, 0, 1, 0, CAST(0x0000A63E00CEEB18 AS DateTime), 2, CAST(0x0000A63E00CEEB18 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (25, 0, 4000, 25, 25201679, 0, 0, 1, 0, CAST(0x0000A63E00CEF0F4 AS DateTime), 2, CAST(0x0000A63E00CEF0F4 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (26, 0, 2000, 26, 26201679, 0, 0, 1, 0, CAST(0x0000A63E00CEF7FC AS DateTime), 2, CAST(0x0000A63E00CEF7FC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (27, 0, 11000, 27, 27201679, 0, 0, 1, 0, CAST(0x0000A63E00CEFF04 AS DateTime), 2, CAST(0x0000A63E00CEFF04 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (28, 0, 5000, 28, 28201679, 0, 0, 1, 0, CAST(0x0000A63E00CF0E40 AS DateTime), 2, CAST(0x0000A63E00CF0E40 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (29, 0, 100000, 29, 29201679, 0, 0, 1, 0, CAST(0x0000A63E00CF17A0 AS DateTime), 2, CAST(0x0000A63E00CF17A0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (30, 0, 5500, 30, 30201679, 0, 0, 1, 0, CAST(0x0000A63E00CF3D20 AS DateTime), 2, CAST(0x0000A63E00CF3D20 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (31, 0, 35000, 31, 31201679, 0, 0, 1, 0, CAST(0x0000A63E00CF4B30 AS DateTime), 2, CAST(0x0000A63E00CF4B30 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (32, 0, 15000, 32, 32201679, 0, 0, 1, 0, CAST(0x0000A63E00CF56E8 AS DateTime), 2, CAST(0x0000A63E00CF56E8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (33, 0, 10000, 33, 33201679, 0, 0, 1, 0, CAST(0x0000A63E00CF6048 AS DateTime), 2, CAST(0x0000A63E00CF6048 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (34, 0, 14000, 34, 34201679, 0, 0, 1, 0, CAST(0x0000A63E00CF64F8 AS DateTime), 2, CAST(0x0000A63E00CF64F8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (35, 0, 5500, 35, 35201679, 0, 0, 1, 0, CAST(0x0000A63E00CF6D2C AS DateTime), 2, CAST(0x0000A63E00CF6D2C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (36, 0, 10500, 36, 36201679, 0, 0, 1, 0, CAST(0x0000A63E00CF7C68 AS DateTime), 2, CAST(0x0000A63E00CF7C68 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (37, 0, 17500, 37, 37201679, 0, 0, 1, 0, CAST(0x0000A63E00CF8370 AS DateTime), 2, CAST(0x0000A63E00CF8370 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (38, 0, 16000, 38, 38201679, 0, 0, 1, 0, CAST(0x0000A63E00CF8A78 AS DateTime), 2, CAST(0x0000A63E00CF8A78 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (39, 0, 24500, 39, 39201679, 0, 0, 1, 0, CAST(0x0000A63E00CF9180 AS DateTime), 2, CAST(0x0000A63E00CF9180 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (40, 0, 5500, 40, 40201679, 0, 0, 1, 0, CAST(0x0000A63E00CF9888 AS DateTime), 2, CAST(0x0000A63E00CF9888 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (41, 0, 5500, 41, 41201679, 0, 0, 1, 0, CAST(0x0000A63E00CF9D38 AS DateTime), 2, CAST(0x0000A63E00CF9D38 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (42, 0, 21000, 42, 42201679, 0, 0, 1, 0, CAST(0x0000A63E00CFA440 AS DateTime), 2, CAST(0x0000A63E00CFA440 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (43, 0, 11000, 43, 43201679, 0, 0, 1, 0, CAST(0x0000A63E00CFAB48 AS DateTime), 2, CAST(0x0000A63E00CFAB48 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (44, 0, 10500, 44, 44201679, 0, 0, 1, 0, CAST(0x0000A63E00CFB250 AS DateTime), 2, CAST(0x0000A63E00CFB250 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (45, 0, 24500, 45, 45201679, 0, 0, 1, 0, CAST(0x0000A63E00CFBCDC AS DateTime), 2, CAST(0x0000A63E00CFBCDC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (46, 0, 12000, 46, 46201679, 0, 0, 1, 0, CAST(0x0000A63E00CFC2B8 AS DateTime), 2, CAST(0x0000A63E00CFC2B8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (47, 0, 34500, 47, 47201679, 0, 0, 1, 0, CAST(0x0000A63E00CFC768 AS DateTime), 2, CAST(0x0000A63E00CFC768 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (48, 0, 17500, 48, 48201679, 0, 0, 1, 0, CAST(0x0000A63E00CFCD44 AS DateTime), 2, CAST(0x0000A63E00CFCD44 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (49, 0, 20000, 49, 49201679, 0, 0, 1, 0, CAST(0x0000A63E00CFDA28 AS DateTime), 2, CAST(0x0000A63E00CFDA28 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (50, 0, 50000, 50, 50201679, 0, 0, 1, 0, CAST(0x0000A63E00CFE5E0 AS DateTime), 2, CAST(0x0000A63E00CFE5E0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (51, 0, 5500, 51, 51201679, 0, 0, 1, 0, CAST(0x0000A63E00CFF06C AS DateTime), 2, CAST(0x0000A63E00CFF06C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (52, 0, 5000, 52, 52201679, 0, 0, 1, 0, CAST(0x0000A63E00D3D100 AS DateTime), 2, CAST(0x0000A63E00D3D100 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (53, 0, 17500, 53, 53201679, 0, 0, 1, 0, CAST(0x0000A63E00D4C010 AS DateTime), 2, CAST(0x0000A63E00D4C010 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (54, 0, 5500, 54, 54201679, 0, 0, 1, 0, CAST(0x0000A63E00D4D2D0 AS DateTime), 2, CAST(0x0000A63E00D4D2D0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (55, 0, 5500, 55, 55201679, 0, 0, 1, 0, CAST(0x0000A63E00D5159C AS DateTime), 2, CAST(0x0000A63E00D5159C AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (56, 0, 17500, 56, 56201679, 0, 0, 1, 0, CAST(0x0000A63E00D524D8 AS DateTime), 2, CAST(0x0000A63E00D524D8 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (57, 0, 12500, 57, 57201679, 0, 0, 1, 0, CAST(0x0000A63E00D52BE0 AS DateTime), 2, CAST(0x0000A63E00D52BE0 AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (58, 0, 5000, 58, 58201679, 0, 0, 1, 0, CAST(0x0000A63E00D5D5CC AS DateTime), 2, CAST(0x0000A63E00D5D5CC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (59, 0, 3800, 59, 59201679, 0, 0, 1, 0, CAST(0x0000A63E00D604AC AS DateTime), 2, CAST(0x0000A63E00D604AC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (60, 0, 5000, 60, 60201679, 0, 0, 1, 0, CAST(0x0000A63E00D6B6CC AS DateTime), 2, CAST(0x0000A63E00D6B6CC AS DateTime), 2)
INSERT [dbo].[ACC_PAYMENT] ([PayMentID], [CusNo], [SubTotal], [InvoiceID], [InvoiceNumber], [Cash], [Card], [IsCredit], [IsDebit], [CreateDate], [CreateBy], [UpdateDate], [UpdateBy]) VALUES (61, 0, 14000, 61, 61201679, 0, 0, 1, 0, CAST(0x0000A63E00D6C734 AS DateTime), 2, CAST(0x0000A63E00D6C734 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[ACC_PAYMENT] OFF
/****** Object:  Table [dbo].[INVOICE_HISTORY]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [int] NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [int] NULL,
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
/****** Object:  Table [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceModifireID] [int] NOT NULL,
	[InvoiceID] [int] NULL,
	[InvoiceNumber] [int] NULL,
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
/****** Object:  Table [dbo].[INVOICE_DETAIL_MODIFIRE]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL_MODIFIRE](
	[InvoiceModifireID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NULL,
	[InvoiceNumber] [int] NULL,
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
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 13, 13201679, 1, 0, 138, 1, 1, 0, 1, 4000, 0, 0, 0, CAST(0x0000A63E00A9A015 AS DateTime), 0, CAST(0x0000A63E00A9A016 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 13, 13201679, 2, 0, 139, 2, 2, 0, 1, 7000, 0, 0, 0, CAST(0x0000A63E00A9A016 AS DateTime), 0, CAST(0x0000A63E00A9A016 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] ([InvoiceModifireID], [InvoiceID], [InvoiceNumber], [OrderModifireID], [Status], [ProductID], [KeyModi], [ModifireID], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 13, 13201679, 3, 0, 139, 2, 3, 0, 1, 7000, 0, 0, 0, CAST(0x0000A63E00A9A016 AS DateTime), 0, CAST(0x0000A63E00A9A016 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL_MODIFIRE] OFF
/****** Object:  Table [dbo].[INVOICE_DETAIL_HISTORY]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL_HISTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDetailID] [int] NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [int] NULL,
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
/****** Object:  Table [dbo].[INVOICE_DETAIL]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_DETAIL](
	[InvoiceDetailID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[InvoiceNumber] [int] NULL,
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
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 1201678, 1, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63D01655C25 AS DateTime), 0, CAST(0x0000A63D01655C25 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 1, 1201678, 2, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63D01655C25 AS DateTime), 0, CAST(0x0000A63D01655C25 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 2, 2201679, 3, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0076940B AS DateTime), 0, CAST(0x0000A63E0076940B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 2, 2201679, 4, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0076940B AS DateTime), 0, CAST(0x0000A63E0076940B AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 3, 3201679, 5, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0076D489 AS DateTime), 0, CAST(0x0000A63E0076D489 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 3, 3201679, 6, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0076D489 AS DateTime), 0, CAST(0x0000A63E0076D489 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 3, 3201679, 7, 3, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0076D489 AS DateTime), 0, CAST(0x0000A63E0076D489 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 3, 3201679, 8, 4, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0076D489 AS DateTime), 0, CAST(0x0000A63E0076D489 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 4, 4201679, 9, 1, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00770039 AS DateTime), 0, CAST(0x0000A63E00770039 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 4, 4201679, 10, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00770039 AS DateTime), 0, CAST(0x0000A63E00770039 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 4, 4201679, 11, 3, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00770039 AS DateTime), 0, CAST(0x0000A63E00770039 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 5, 5201679, 16, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0078A13C AS DateTime), 0, CAST(0x0000A63E0078A13C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 5, 5201679, 17, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0078A13C AS DateTime), 0, CAST(0x0000A63E0078A13C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 5, 5201679, 0, 3, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0078A13C AS DateTime), 0, CAST(0x0000A63E0078A13C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 5, 5201679, 0, 4, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E0078A13C AS DateTime), 0, CAST(0x0000A63E0078A13C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 6, 6201679, 14, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E007CBA17 AS DateTime), 0, CAST(0x0000A63E007CBA17 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 6, 6201679, 15, 2, 0, 35, 56000, 1, 56000, 0, 0, NULL, 0, CAST(0x0000A63E007CBA17 AS DateTime), 0, CAST(0x0000A63E007CBA17 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 7, 7201679, 52, 1, 0, 139, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A03359 AS DateTime), 0, CAST(0x0000A63E00A03359 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 7, 7201679, 53, 2, 0, 113, 0, 1, 0, 0, 0, NULL, 0, CAST(0x0000A63E00A0335A AS DateTime), 0, CAST(0x0000A63E00A0335A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 7, 7201679, 54, 3, 0, 100, 0, 1, 0, 0, 0, NULL, 0, CAST(0x0000A63E00A0335A AS DateTime), 0, CAST(0x0000A63E00A0335A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 8, 8201679, 20, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A05627 AS DateTime), 0, CAST(0x0000A63E00A05627 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 8, 8201679, 21, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A05627 AS DateTime), 0, CAST(0x0000A63E00A05627 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 9, 9201679, 33, 1, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A30B22 AS DateTime), 0, CAST(0x0000A63E00A30B22 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 9, 9201679, 34, 2, 0, 6, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A30B22 AS DateTime), 0, CAST(0x0000A63E00A30B22 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 9, 9201679, 35, 3, 0, 12, 8000, 1, 8000, 0, 0, NULL, 0, CAST(0x0000A63E00A30B22 AS DateTime), 0, CAST(0x0000A63E00A30B22 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 9, 9201679, 36, 4, 0, 7, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A30B22 AS DateTime), 0, CAST(0x0000A63E00A30B22 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 9, 9201679, 37, 5, 0, 10, 8000, 1, 8000, 0, 0, NULL, 0, CAST(0x0000A63E00A30B22 AS DateTime), 0, CAST(0x0000A63E00A30B22 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 10, 10201679, 55, 1, 0, 20, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00A31675 AS DateTime), 0, CAST(0x0000A63E00A31675 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 10, 10201679, 56, 2, 0, 21, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00A31675 AS DateTime), 0, CAST(0x0000A63E00A31675 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 10, 10201679, 57, 3, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00A31675 AS DateTime), 0, CAST(0x0000A63E00A31675 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 11, 11201679, 30, 1, 0, 86, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A4F7C5 AS DateTime), 0, CAST(0x0000A63E00A4F7C5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 11, 11201679, 31, 2, 0, 79, 3500, 1, 3500, 0, 0, NULL, 0, CAST(0x0000A63E00A4F7C5 AS DateTime), 0, CAST(0x0000A63E00A4F7C5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 11, 11201679, 32, 3, 0, 88, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A4F7C5 AS DateTime), 0, CAST(0x0000A63E00A4F7C5 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 12, 12201679, 49, 1, 0, 93, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A63E00A996F6 AS DateTime), 0, CAST(0x0000A63E00A996F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 12, 12201679, 50, 2, 0, 92, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A63E00A996F6 AS DateTime), 0, CAST(0x0000A63E00A996F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 12, 12201679, 51, 3, 0, 91, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A63E00A996F6 AS DateTime), 0, CAST(0x0000A63E00A996F6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 13, 13201679, 38, 1, 0, 138, 4000, 1, 4000, 0, 0, NULL, 0, CAST(0x0000A63E00A9A015 AS DateTime), 0, CAST(0x0000A63E00A9A015 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 13, 13201679, 39, 2, 0, 139, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A9A015 AS DateTime), 0, CAST(0x0000A63E00A9A015 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 14, 14201679, 22, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A9AAA8 AS DateTime), 0, CAST(0x0000A63E00A9AAA8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 14, 14201679, 23, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A9AAA8 AS DateTime), 0, CAST(0x0000A63E00A9AAA8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 14, 14201679, 24, 3, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A9AAA8 AS DateTime), 0, CAST(0x0000A63E00A9AAA8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 14, 14201679, 25, 4, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A9AAA8 AS DateTime), 0, CAST(0x0000A63E00A9AAA8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 14, 14201679, 26, 5, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A9AAA8 AS DateTime), 0, CAST(0x0000A63E00A9AAA8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 15, 15201679, 46, 1, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A9B2D2 AS DateTime), 0, CAST(0x0000A63E00A9B2D2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 15, 15201679, 47, 2, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A9B2D2 AS DateTime), 0, CAST(0x0000A63E00A9B2D2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 15, 15201679, 48, 3, 0, 7, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A9B2D2 AS DateTime), 0, CAST(0x0000A63E00A9B2D2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 16, 16201679, 29, 1, 0, 97, 0, 1, 0, 0, 0, NULL, 0, CAST(0x0000A63E00A9D00C AS DateTime), 0, CAST(0x0000A63E00A9D00C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 17, 17201679, 58, 1, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A9F636 AS DateTime), 0, CAST(0x0000A63E00A9F636 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 17, 17201679, 59, 2, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A9F636 AS DateTime), 0, CAST(0x0000A63E00A9F636 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 17, 17201679, 60, 3, 0, 3, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00A9F636 AS DateTime), 0, CAST(0x0000A63E00A9F636 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 18, 18201679, 27, 1, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A9FCDB AS DateTime), 0, CAST(0x0000A63E00A9FCDB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 18, 18201679, 28, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00A9FCDB AS DateTime), 0, CAST(0x0000A63E00A9FCDB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 19, 19201679, 168, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CEAE19 AS DateTime), 0, CAST(0x0000A63E00CEAE19 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 19, 19201679, 169, 2, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CEAE19 AS DateTime), 0, CAST(0x0000A63E00CEAE19 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 20, 20201679, 68, 1, 0, 20, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00CEC065 AS DateTime), 0, CAST(0x0000A63E00CEC065 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 20, 20201679, 69, 2, 0, 21, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00CEC065 AS DateTime), 0, CAST(0x0000A63E00CEC065 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 21, 21201679, 177, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CECBCA AS DateTime), 0, CAST(0x0000A63E00CECBCA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 22, 22201679, 138, 1, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CEDB2C AS DateTime), 0, CAST(0x0000A63E00CEDB2C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 22, 22201679, 139, 2, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CEDB2C AS DateTime), 0, CAST(0x0000A63E00CEDB2C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 22, 22201679, 140, 3, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CEDB2C AS DateTime), 0, CAST(0x0000A63E00CEDB2C AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 23, 23201679, 178, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CEE3CA AS DateTime), 0, CAST(0x0000A63E00CEE3CA AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (62, 24, 24201679, 134, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CEEB6A AS DateTime), 0, CAST(0x0000A63E00CEEB6A AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (63, 25, 25201679, 135, 1, 0, 20, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00CEF1D6 AS DateTime), 0, CAST(0x0000A63E00CEF1D6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (64, 25, 25201679, 136, 2, 0, 21, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00CEF1D6 AS DateTime), 0, CAST(0x0000A63E00CEF1D6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (65, 26, 26201679, 67, 1, 0, 20, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00CEF829 AS DateTime), 0, CAST(0x0000A63E00CEF829 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (66, 27, 27201679, 108, 1, 0, 37, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CEFFCD AS DateTime), 0, CAST(0x0000A63E00CEFFCD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 27, 27201679, 109, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CEFFCD AS DateTime), 0, CAST(0x0000A63E00CEFFCD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 28, 28201679, 180, 1, 0, 138, 4000, 1, 4000, 0, 0, NULL, 0, CAST(0x0000A63E00CF0F3E AS DateTime), 0, CAST(0x0000A63E00CF0F3E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 29, 29201679, 122, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF1842 AS DateTime), 0, CAST(0x0000A63E00CF1842 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (70, 30, 30201679, 176, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF3E49 AS DateTime), 0, CAST(0x0000A63E00CF3E49 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (71, 31, 31201679, 110, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF4BCB AS DateTime), 0, CAST(0x0000A63E00CF4BCB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (72, 31, 31201679, 111, 2, 0, 37, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF4BCB AS DateTime), 0, CAST(0x0000A63E00CF4BCB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (73, 31, 31201679, 112, 3, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00CF4BCB AS DateTime), 0, CAST(0x0000A63E00CF4BCB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (74, 31, 31201679, 113, 4, 0, 14, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00CF4BCB AS DateTime), 0, CAST(0x0000A63E00CF4BCB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (75, 32, 32201679, 117, 1, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CF56F4 AS DateTime), 0, CAST(0x0000A63E00CF56F4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (76, 32, 32201679, 118, 2, 0, 10, 8000, 1, 8000, 0, 0, NULL, 0, CAST(0x0000A63E00CF56F4 AS DateTime), 0, CAST(0x0000A63E00CF56F4 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (77, 33, 33201679, 156, 1, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CF6064 AS DateTime), 0, CAST(0x0000A63E00CF6064 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (78, 33, 33201679, 157, 2, 0, 136, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CF6064 AS DateTime), 0, CAST(0x0000A63E00CF6064 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (79, 34, 34201679, 101, 1, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CF660E AS DateTime), 0, CAST(0x0000A63E00CF660E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (80, 34, 34201679, 102, 2, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CF660E AS DateTime), 0, CAST(0x0000A63E00CF660E AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (81, 35, 35201679, 127, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF6D79 AS DateTime), 0, CAST(0x0000A63E00CF6D79 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (82, 36, 36201679, 151, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF7D8D AS DateTime), 0, CAST(0x0000A63E00CF7D8D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (83, 36, 36201679, 152, 2, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CF7D8D AS DateTime), 0, CAST(0x0000A63E00CF7D8D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (84, 37, 37201679, 173, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF8492 AS DateTime), 0, CAST(0x0000A63E00CF8492 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (85, 37, 37201679, 174, 2, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CF8492 AS DateTime), 0, CAST(0x0000A63E00CF8492 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (86, 37, 37201679, 175, 3, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CF8492 AS DateTime), 0, CAST(0x0000A63E00CF8492 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (87, 38, 38201679, 119, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF8AED AS DateTime), 0, CAST(0x0000A63E00CF8AED AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (88, 38, 38201679, 120, 2, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF8AED AS DateTime), 0, CAST(0x0000A63E00CF8AED AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (89, 38, 38201679, 121, 3, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CF8AED AS DateTime), 0, CAST(0x0000A63E00CF8AED AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (90, 39, 39201679, 95, 1, 0, 37, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF9287 AS DateTime), 0, CAST(0x0000A63E00CF9287 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (91, 39, 39201679, 96, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF9287 AS DateTime), 0, CAST(0x0000A63E00CF9287 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (92, 39, 39201679, 97, 3, 0, 28, 6000, 1, 6000, 0, 0, NULL, 0, CAST(0x0000A63E00CF9287 AS DateTime), 0, CAST(0x0000A63E00CF9287 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (93, 39, 39201679, 98, 4, 0, 20, 2000, 1, 2000, 0, 0, NULL, 0, CAST(0x0000A63E00CF9287 AS DateTime), 0, CAST(0x0000A63E00CF9287 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (94, 39, 39201679, 99, 5, 0, 101, 0, 1, 0, 0, 0, NULL, 0, CAST(0x0000A63E00CF9287 AS DateTime), 0, CAST(0x0000A63E00CF9287 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 39, 39201679, 100, 6, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF9287 AS DateTime), 0, CAST(0x0000A63E00CF9287 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 40, 40201679, 179, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF98A2 AS DateTime), 0, CAST(0x0000A63E00CF98A2 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 41, 41201679, 153, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CF9E2D AS DateTime), 0, CAST(0x0000A63E00CF9E2D AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 42, 42201679, 114, 1, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CFA454 AS DateTime), 0, CAST(0x0000A63E00CFA454 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 42, 42201679, 115, 2, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CFA454 AS DateTime), 0, CAST(0x0000A63E00CFA454 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 42, 42201679, 116, 3, 0, 3, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CFA454 AS DateTime), 0, CAST(0x0000A63E00CFA454 AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 43, 43201679, 181, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFABC1 AS DateTime), 0, CAST(0x0000A63E00CFABC1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 43, 43201679, 182, 2, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFABC1 AS DateTime), 0, CAST(0x0000A63E00CFABC1 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (103, 44, 44201679, 183, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFB331 AS DateTime), 0, CAST(0x0000A63E00CFB331 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (104, 44, 44201679, 184, 2, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CFB331 AS DateTime), 0, CAST(0x0000A63E00CFB331 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (105, 45, 45201679, 158, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFBDDB AS DateTime), 0, CAST(0x0000A63E00CFBDDB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (106, 45, 45201679, 159, 2, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CFBDDB AS DateTime), 0, CAST(0x0000A63E00CFBDDB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (107, 45, 45201679, 160, 3, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CFBDDB AS DateTime), 0, CAST(0x0000A63E00CFBDDB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 45, 45201679, 161, 4, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CFBDDB AS DateTime), 0, CAST(0x0000A63E00CFBDDB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 46, 46201679, 166, 1, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CFC3BF AS DateTime), 0, CAST(0x0000A63E00CFC3BF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 46, 46201679, 167, 2, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00CFC3BF AS DateTime), 0, CAST(0x0000A63E00CFC3BF AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 47, 47201679, 147, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFC893 AS DateTime), 0, CAST(0x0000A63E00CFC893 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 47, 47201679, 148, 2, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00CFC893 AS DateTime), 0, CAST(0x0000A63E00CFC893 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 47, 47201679, 149, 3, 0, 14, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00CFC893 AS DateTime), 0, CAST(0x0000A63E00CFC893 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 47, 47201679, 150, 4, 0, 17, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00CFC893 AS DateTime), 0, CAST(0x0000A63E00CFC893 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 48, 48201679, 154, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFCDA6 AS DateTime), 0, CAST(0x0000A63E00CFCDA6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 48, 48201679, 155, 2, 0, 14, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00CFCDA6 AS DateTime), 0, CAST(0x0000A63E00CFCDA6 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 49, 49201679, 186, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFDAFB AS DateTime), 0, CAST(0x0000A63E00CFDAFB AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 50, 50201679, 187, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFE6E8 AS DateTime), 0, CAST(0x0000A63E00CFE6E8 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 51, 51201679, 185, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00CFF112 AS DateTime), 0, CAST(0x0000A63E00CFF112 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 52, 52201679, 195, 1, 0, 45, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00D3D197 AS DateTime), 0, CAST(0x0000A63E00D3D197 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 53, 53201679, 200, 1, 0, 35, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00D4C092 AS DateTime), 0, CAST(0x0000A63E00D4C092 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 53, 53201679, 201, 2, 0, 14, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00D4C092 AS DateTime), 0, CAST(0x0000A63E00D4C092 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (123, 54, 54201679, 206, 1, 0, 36, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00D4D327 AS DateTime), 0, CAST(0x0000A63E00D4D327 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (124, 55, 55201679, 207, 1, 0, 37, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00D516AD AS DateTime), 0, CAST(0x0000A63E00D516AD AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (125, 56, 56201679, 204, 1, 0, 90, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00D52547 AS DateTime), 0, CAST(0x0000A63E00D52547 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (126, 56, 56201679, 205, 2, 0, 14, 12000, 1, 12000, 0, 0, NULL, 0, CAST(0x0000A63E00D52547 AS DateTime), 0, CAST(0x0000A63E00D52547 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 57, 57201679, 202, 1, 0, 90, 5500, 1, 5500, 0, 0, NULL, 0, CAST(0x0000A63E00D52C56 AS DateTime), 0, CAST(0x0000A63E00D52C56 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (128, 57, 57201679, 203, 2, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00D52C56 AS DateTime), 0, CAST(0x0000A63E00D52C56 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (129, 58, 58201679, 208, 1, 0, 46, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00D5D601 AS DateTime), 0, CAST(0x0000A63E00D5D601 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (130, 59, 59201679, 210, 1, 0, 93, 3800, 1, 3800, 0, 0, NULL, 0, CAST(0x0000A63E00D60533 AS DateTime), 0, CAST(0x0000A63E00D60533 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (131, 60, 60201679, 209, 1, 0, 40, 5000, 1, 5000, 0, 0, NULL, 0, CAST(0x0000A63E00D6B706 AS DateTime), 0, CAST(0x0000A63E00D6B706 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (132, 61, 61201679, 211, 1, 0, 2, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00D6C778 AS DateTime), 0, CAST(0x0000A63E00D6C778 AS DateTime), NULL)
INSERT [dbo].[INVOICE_DETAIL] ([InvoiceDetailID], [InvoiceID], [InvoiceNumber], [OrderDetailID], [KeyItem], [Status], [ProductID], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (133, 61, 61201679, 212, 2, 0, 8, 7000, 1, 7000, 0, 0, NULL, 0, CAST(0x0000A63E00D6C778 AS DateTime), 0, CAST(0x0000A63E00D6C778 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[INVOICE_DETAIL] OFF
/****** Object:  Table [dbo].[INVOICE_BY_CARD]    Script Date: 07/09/2016 15:15:53 ******/
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
SET IDENTITY_INSERT [dbo].[INVOICE_BY_CARD] ON
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 20167951, 5, 1, 22000, 0, CAST(0x0000A63E0078A13E AS DateTime), 0, CAST(0x0000A63E0078A13F AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 20167981, 8, 2, 11000, 0, CAST(0x0000A63E00A05629 AS DateTime), 0, CAST(0x0000A63E00A05629 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 20167991, 9, 1, 37000, 0, CAST(0x0000A63E00A30B24 AS DateTime), 0, CAST(0x0000A63E00A30B24 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 201679111, 11, 1, 14500, 0, CAST(0x0000A63E00A4F7C7 AS DateTime), 0, CAST(0x0000A63E00A4F7C7 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 201679131, 13, 1, 11000, 0, CAST(0x0000A63E00A9A016 AS DateTime), 0, CAST(0x0000A63E00A9A016 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 201679181, 18, 2, 11000, 0, CAST(0x0000A63E00A9FCDB AS DateTime), 0, CAST(0x0000A63E00A9FCDB AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 201679191, 19, 3, 12500, 0, CAST(0x0000A63E00CEAE1B AS DateTime), 0, CAST(0x0000A63E00CEAE1B AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 201679201, 20, 2, 3000, 0, CAST(0x0000A63E00CEC065 AS DateTime), 0, CAST(0x0000A63E00CEC065 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 201679211, 21, 4, 5500, 0, CAST(0x0000A63E00CECBCB AS DateTime), 0, CAST(0x0000A63E00CECBCB AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 201679231, 23, 2, 5500, 0, CAST(0x0000A63E00CEE3CB AS DateTime), 0, CAST(0x0000A63E00CEE3CB AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 201679261, 26, 2, 2000, 0, CAST(0x0000A63E00CEF82A AS DateTime), 0, CAST(0x0000A63E00CEF82A AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 201679321, 32, 1, 15000, 0, CAST(0x0000A63E00CF56F4 AS DateTime), 0, CAST(0x0000A63E00CF56F4 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 201679351, 35, 1, 5500, 0, CAST(0x0000A63E00CF6D79 AS DateTime), 0, CAST(0x0000A63E00CF6D79 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 201679361, 36, 3, 10500, 0, CAST(0x0000A63E00CF7D8E AS DateTime), 0, CAST(0x0000A63E00CF7D8E AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 201679371, 37, 3, 17500, 0, CAST(0x0000A63E00CF8492 AS DateTime), 0, CAST(0x0000A63E00CF8492 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 201679381, 38, 1, 16000, 0, CAST(0x0000A63E00CF8AF0 AS DateTime), 0, CAST(0x0000A63E00CF8AF0 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 201679401, 40, 4, 5500, 0, CAST(0x0000A63E00CF98A3 AS DateTime), 0, CAST(0x0000A63E00CF98A3 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 201679431, 43, 2, 11000, 0, CAST(0x0000A63E00CFABC2 AS DateTime), 0, CAST(0x0000A63E00CFABC2 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 201679451, 45, 2, 14500, 0, CAST(0x0000A63E00CFBDDB AS DateTime), 0, CAST(0x0000A63E00CFBDDB AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 201679461, 46, 1, 12000, 0, CAST(0x0000A63E00CFC3BF AS DateTime), 0, CAST(0x0000A63E00CFC3BF AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 201679481, 48, 1, 17500, 0, CAST(0x0000A63E00CFCDA6 AS DateTime), 0, CAST(0x0000A63E00CFCDA6 AS DateTime), N'')
INSERT [dbo].[INVOICE_BY_CARD] ([ID], [InvoiceByCardID], [InvoiceID], [CardID], [Total], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 201679511, 51, 4, 5500, 0, CAST(0x0000A63E00CFF113 AS DateTime), 0, CAST(0x0000A63E00CFF113 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[INVOICE_BY_CARD] OFF
/****** Object:  Table [dbo].[INVOICE]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [int] NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Status] [int] NULL,
	[Total] [int] NULL,
	[Payment] [int] NULL,
	[Change] [int] NULL,
	[Discount] [int] NULL,
	[DiscountType] [int] NULL,
	[InvoiceByCardID] [int] NULL,
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
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (1, 1201678, 1, 1201678, 1, 11000, 11000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63D01655BF9 AS DateTime), 5, CAST(0x0000A63D01655BFA AS DateTime), N'', 1)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (2, 2201679, 2, 2201679, 1, 11000, 11000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E007693F8 AS DateTime), 5, CAST(0x0000A63E007693F8 AS DateTime), N'', 1)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (3, 3201679, 3, 3201679, 1, 22000, 22000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E0076D487 AS DateTime), 5, CAST(0x0000A63E0076D487 AS DateTime), N'', 1)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (4, 4201679, 4, 4201679, 1, 16500, 16500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00770037 AS DateTime), 5, CAST(0x0000A63E00770037 AS DateTime), N'', 1)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (5, 5201679, 6, 0, 1, 22000, 22000, 0, 0, 0, 20167941, 0, NULL, NULL, 5, CAST(0x0000A63E0078A13A AS DateTime), 5, CAST(0x0000A63E0078A13A AS DateTime), N'', 1)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (6, 6201679, 5, 5201679, 1, 61500, 61500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E007CBA15 AS DateTime), 5, CAST(0x0000A63E007CBA15 AS DateTime), N'', 1)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (7, 7201679, 22, 22201679, 1, 7000, 7000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00A0333B AS DateTime), 5, CAST(0x0000A63E00A0333B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (8, 8201679, 8, 8201679, 1, 11000, 11000, 0, 0, 0, 20167971, 0, NULL, NULL, 5, CAST(0x0000A63E00A05621 AS DateTime), 5, CAST(0x0000A63E00A05621 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (9, 9201679, 15, 15201679, 1, 37000, 37000, 0, 0, 0, 20167981, 0, NULL, NULL, 5, CAST(0x0000A63E00A30B1C AS DateTime), 5, CAST(0x0000A63E00A30B1C AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (10, 10201679, 23, 23201679, 1, 16000, 16000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00A31674 AS DateTime), 5, CAST(0x0000A63E00A31674 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (11, 11201679, 14, 14201679, 1, 14500, 14500, 0, 0, 0, 201679101, 0, NULL, NULL, 5, CAST(0x0000A63E00A4F7BF AS DateTime), 5, CAST(0x0000A63E00A4F7BF AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (12, 12201679, 21, 21201679, 1, 11400, 11400, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00A996F0 AS DateTime), 5, CAST(0x0000A63E00A996F0 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (13, 13201679, 16, 16201679, 1, 11000, 11000, 0, 0, 0, 201679121, 0, NULL, NULL, 5, CAST(0x0000A63E00A9A015 AS DateTime), 5, CAST(0x0000A63E00A9A015 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (14, 14201679, 11, 0, 1, 27500, 27500, 0, 0, 0, 0, 0, NULL, NULL, 0, CAST(0x0000A63E00A9AAA7 AS DateTime), 0, CAST(0x0000A63E00A9AAA7 AS DateTime), N'', 0)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (15, 15201679, 20, 20201679, 1, 21000, 21000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00A9B2D1 AS DateTime), 5, CAST(0x0000A63E00A9B2D1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (16, 16201679, 13, 13201679, 1, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00A9D00B AS DateTime), 5, CAST(0x0000A63E00A9D00B AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (17, 17201679, 24, 24201679, 1, 21000, 21000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00A9F635 AS DateTime), 5, CAST(0x0000A63E00A9F635 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (18, 18201679, 12, 12201679, 1, 11000, 11000, 0, 0, 0, 201679171, 0, NULL, NULL, 5, CAST(0x0000A63E00A9FCDA AS DateTime), 5, CAST(0x0000A63E00A9FCDA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (19, 19201679, 49, 49201679, 1, 12500, 12500, 0, 0, 0, 201679181, 0, NULL, NULL, 5, CAST(0x0000A63E00CEAE15 AS DateTime), 5, CAST(0x0000A63E00CEAE15 AS DateTime), N'Nnn', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (20, 20201679, 26, 26201679, 1, 4000, 4000, 0, 1000, 3, 201679191, 0, NULL, NULL, 5, CAST(0x0000A63E00CEC064 AS DateTime), 5, CAST(0x0000A63E00CEC064 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (21, 21201679, 50, 50201679, 1, 5500, 5500, 0, 0, 0, 201679201, 0, NULL, NULL, 5, CAST(0x0000A63E00CECBC9 AS DateTime), 5, CAST(0x0000A63E00CECBC9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (22, 22201679, 29, 29201679, 1, 21000, 21000, 0, 1050, 1, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CEDB2B AS DateTime), 5, CAST(0x0000A63E00CEDB2B AS DateTime), N'PHAN CHI THANH', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (23, 23201679, 51, 51201679, 1, 5500, 5500, 0, 0, 0, 201679221, 0, NULL, NULL, 5, CAST(0x0000A63E00CEE3C9 AS DateTime), 5, CAST(0x0000A63E00CEE3C9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (24, 24201679, 38, 38201679, 1, 5500, 5500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CEEB69 AS DateTime), 5, CAST(0x0000A63E00CEEB69 AS DateTime), N'iI', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (25, 25201679, 30, 30201679, 1, 4000, 4000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CEF1D4 AS DateTime), 5, CAST(0x0000A63E00CEF1D4 AS DateTime), N'hHH:', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (26, 26201679, 27, 27201679, 1, 2000, 2000, 0, 0, 0, 201679251, 0, NULL, NULL, 0, CAST(0x0000A63E00CEF828 AS DateTime), 0, CAST(0x0000A63E00CEF828 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (27, 27201679, 31, 31201679, 1, 11000, 11000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CEFFCC AS DateTime), 5, CAST(0x0000A63E00CEFFCC AS DateTime), N'HHH', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (28, 28201679, 52, 52201679, 1, 4000, 5000, 1000, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CF0F3C AS DateTime), 5, CAST(0x0000A63E00CF0F3C AS DateTime), N'Kkk', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (29, 29201679, 36, 36201679, 1, 5500, 100000, 94500, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CF1841 AS DateTime), 5, CAST(0x0000A63E00CF1841 AS DateTime), N'uUU', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (30, 30201679, 37, 37201679, 1, 5500, 5500, 0, 0, 0, 0, 100000, NULL, NULL, 5, CAST(0x0000A63E00CF3E48 AS DateTime), 5, CAST(0x0000A63E00CF3E48 AS DateTime), N'uUUUU', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (31, 31201679, 32, 32201679, 1, 35000, 35000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CF4BC8 AS DateTime), 5, CAST(0x0000A63E00CF4BC8 AS DateTime), N'GG', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (32, 32201679, 34, 34201679, 1, 15000, 15000, 0, 0, 0, 201679311, 100000, NULL, NULL, 5, CAST(0x0000A63E00CF56F3 AS DateTime), 5, CAST(0x0000A63E00CF56F3 AS DateTime), N'kKK', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (33, 33201679, 45, 45201679, 1, 10000, 10000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CF6063 AS DateTime), 5, CAST(0x0000A63E00CF6063 AS DateTime), N'Yyy', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (34, 34201679, 28, 28201679, 1, 14000, 14000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CF660D AS DateTime), 5, CAST(0x0000A63E00CF660D AS DateTime), N'THANH', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (35, 35201679, 41, 41201679, 1, 5500, 5500, 0, 0, 0, 201679341, 0, NULL, NULL, 5, CAST(0x0000A63E00CF6D79 AS DateTime), 5, CAST(0x0000A63E00CF6D79 AS DateTime), N'Lll', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (36, 36201679, 43, 43201679, 1, 10500, 10500, 0, 0, 0, 201679351, 0, NULL, NULL, 5, CAST(0x0000A63E00CF7D8D AS DateTime), 5, CAST(0x0000A63E00CF7D8D AS DateTime), N'Uuuu', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (37, 37201679, 47, 47201679, 1, 17500, 17500, 0, 0, 0, 201679361, 0, NULL, NULL, 5, CAST(0x0000A63E00CF8491 AS DateTime), 5, CAST(0x0000A63E00CF8491 AS DateTime), N'ddd', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (38, 38201679, 35, 35201679, 1, 16000, 16000, 0, 0, 0, 201679371, 0, NULL, NULL, 5, CAST(0x0000A63E00CF8AED AS DateTime), 5, CAST(0x0000A63E00CF8AED AS DateTime), N'HHH', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (39, 39201679, 25, 25201679, 1, 24500, 24500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CF9286 AS DateTime), 5, CAST(0x0000A63E00CF9286 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (40, 40201679, 39, 39201679, 1, 5500, 5500, 0, 0, 0, 201679391, 0, NULL, NULL, 5, CAST(0x0000A63E00CF98A2 AS DateTime), 5, CAST(0x0000A63E00CF98A2 AS DateTime), N'hhh', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (41, 41201679, 40, 40201679, 1, 5500, 5500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CF9E2C AS DateTime), 5, CAST(0x0000A63E00CF9E2C AS DateTime), N'Iii', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (42, 42201679, 33, 33201679, 1, 21000, 21000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CFA453 AS DateTime), 5, CAST(0x0000A63E00CFA453 AS DateTime), N'iII', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (43, 43201679, 53, 53201679, 1, 11000, 11000, 0, 0, 0, 201679421, 0, NULL, NULL, 5, CAST(0x0000A63E00CFABC1 AS DateTime), 5, CAST(0x0000A63E00CFABC1 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (44, 44201679, 54, 54201679, 1, 10500, 10500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CFB32E AS DateTime), 5, CAST(0x0000A63E00CFB32E AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (45, 45201679, 46, 46201679, 1, 24500, 24500, 0, 0, 0, 201679441, 0, NULL, NULL, 5, CAST(0x0000A63E00CFBDDA AS DateTime), 5, CAST(0x0000A63E00CFBDDA AS DateTime), N'Iii', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (46, 46201679, 48, 48201679, 1, 12000, 12000, 0, 0, 0, 201679451, 0, NULL, NULL, 5, CAST(0x0000A63E00CFC3BD AS DateTime), 5, CAST(0x0000A63E00CFC3BD AS DateTime), N'Jjj', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (47, 47201679, 42, 42201679, 1, 34500, 34500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CFC892 AS DateTime), 5, CAST(0x0000A63E00CFC892 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (48, 48201679, 44, 44201679, 1, 17500, 17500, 0, 0, 0, 201679471, 0, NULL, NULL, 5, CAST(0x0000A63E00CFCDA5 AS DateTime), 5, CAST(0x0000A63E00CFCDA5 AS DateTime), N'ggg', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (49, 49201679, 56, 56201679, 1, 5500, 20000, 14500, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CFDAFA AS DateTime), 5, CAST(0x0000A63E00CFDAFA AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (50, 50201679, 57, 57201679, 1, 5500, 50000, 44500, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00CFE6E4 AS DateTime), 5, CAST(0x0000A63E00CFE6E4 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (51, 51201679, 55, 55201679, 1, 5500, 5500, 0, 0, 0, 201679501, 0, NULL, NULL, 5, CAST(0x0000A63E00CFF111 AS DateTime), 5, CAST(0x0000A63E00CFF111 AS DateTime), N'Kk', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (52, 52201679, 58, 58201679, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D3D18F AS DateTime), 5, CAST(0x0000A63E00D3D18F AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (53, 53201679, 59, 59201679, 1, 17500, 17500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D4C08C AS DateTime), 5, CAST(0x0000A63E00D4C08C AS DateTime), N'Hhh', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (54, 54201679, 62, 62201679, 1, 5500, 5500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D4D326 AS DateTime), 5, CAST(0x0000A63E00D4D326 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (55, 55201679, 63, 63201679, 1, 5500, 5500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D516A7 AS DateTime), 5, CAST(0x0000A63E00D516A7 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (56, 56201679, 61, 61201679, 1, 17500, 17500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D52546 AS DateTime), 5, CAST(0x0000A63E00D52546 AS DateTime), N'Mmm', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (57, 57201679, 60, 60201679, 1, 12500, 12500, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D52C55 AS DateTime), 5, CAST(0x0000A63E00D52C55 AS DateTime), N'Hhhh', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (58, 58201679, 64, 64201679, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D5D5F9 AS DateTime), 5, CAST(0x0000A63E00D5D5F9 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (59, 59201679, 66, 66201679, 1, 3800, 3800, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D60532 AS DateTime), 5, CAST(0x0000A63E00D60532 AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (60, 60201679, 65, 65201679, 1, 5000, 5000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D6B6FD AS DateTime), 5, CAST(0x0000A63E00D6B6FD AS DateTime), N'', 2)
INSERT [dbo].[INVOICE] ([InvoiceID], [InvoiceNumber], [OrderID], [OrderNumber], [Status], [Total], [Payment], [Change], [Discount], [DiscountType], [InvoiceByCardID], [CashOut], [Seat], [Account], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID]) VALUES (61, 61201679, 67, 67201679, 1, 14000, 14000, 0, 0, 0, 0, 0, NULL, NULL, 5, CAST(0x0000A63E00D6C778 AS DateTime), 5, CAST(0x0000A63E00D6C778 AS DateTime), N'', 2)
SET IDENTITY_INSERT [dbo].[INVOICE] OFF
/****** Object:  UserDefinedFunction [dbo].[GetStartDate]    Script Date: 07/09/2016 15:15:54 ******/
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
/****** Object:  Table [dbo].[PERMISSION]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[PAYMENT_TYPE]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (1, N'CASH', 0, NULL, 0, CAST(0x0000A56F00E3F0EE AS DateTime), 0, CAST(0x0000A56F00E3F0EE AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (2, N'CARD', 0, NULL, 0, CAST(0x0000A56F00E42BAA AS DateTime), 0, CAST(0x0000A56F00E42BAA AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (3, N'CHEQUE', 1, NULL, 0, CAST(0x0000A56F00E43832 AS DateTime), 0, CAST(0x0000A56F00E43832 AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (4, N'ACCOUNT', 1, NULL, 0, CAST(0x0000A56F00E43FFC AS DateTime), 0, CAST(0x0000A56F00E43FFC AS DateTime))
INSERT [dbo].[PAYMENT_TYPE] ([PaymentTypeID], [PaymentTypeName], [Status], [Note], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate]) VALUES (5, N'GIFT CARD', 1, NULL, 0, CAST(0x0000A56F00E4469B AS DateTime), 0, CAST(0x0000A56F00E4469B AS DateTime))
SET IDENTITY_INSERT [dbo].[PAYMENT_TYPE] OFF
/****** Object:  Table [dbo].[PAYMENT_INVOICE_HISTORY_ALL]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[PAYMENT_INVOICE_HISTORY]    Script Date: 07/09/2016 15:15:53 ******/
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
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 1201678, 1, 11000, 1, 0, CAST(0x0000A63D01655C2A AS DateTime), 0, CAST(0x0000A63D01655C2B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, 2201679, 1, 11000, 1, 0, CAST(0x0000A63E0076940F AS DateTime), 0, CAST(0x0000A63E0076940F AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 3, 3201679, 1, 22000, 1, 0, CAST(0x0000A63E0076D489 AS DateTime), 0, CAST(0x0000A63E0076D489 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 4, 4201679, 1, 16500, 1, 0, CAST(0x0000A63E0077003A AS DateTime), 0, CAST(0x0000A63E0077003A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 5, 5201679, 2, 22000, 1, 0, CAST(0x0000A63E0078A13D AS DateTime), 0, CAST(0x0000A63E0078A13D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 6, 6201679, 1, 61500, 1, 0, CAST(0x0000A63E007CBA17 AS DateTime), 0, CAST(0x0000A63E007CBA17 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 7, 7201679, 1, 7000, 1, 0, CAST(0x0000A63E00A0335C AS DateTime), 0, CAST(0x0000A63E00A0335C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 8, 8201679, 2, 11000, 1, 0, CAST(0x0000A63E00A05628 AS DateTime), 0, CAST(0x0000A63E00A05628 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 9, 9201679, 2, 37000, 1, 0, CAST(0x0000A63E00A30B23 AS DateTime), 0, CAST(0x0000A63E00A30B23 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 10, 10201679, 1, 16000, 1, 0, CAST(0x0000A63E00A31675 AS DateTime), 0, CAST(0x0000A63E00A31675 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 11, 11201679, 2, 14500, 1, 0, CAST(0x0000A63E00A4F7C6 AS DateTime), 0, CAST(0x0000A63E00A4F7C6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (12, 12, 12201679, 1, 11400, 1, 0, CAST(0x0000A63E00A996F7 AS DateTime), 0, CAST(0x0000A63E00A996F7 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (13, 13, 13201679, 2, 11000, 1, 0, CAST(0x0000A63E00A9A016 AS DateTime), 0, CAST(0x0000A63E00A9A016 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 14, 14201679, 1, 27500, 1, 0, CAST(0x0000A63E00A9AAA9 AS DateTime), 0, CAST(0x0000A63E00A9AAA9 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 15, 15201679, 1, 21000, 1, 0, CAST(0x0000A63E00A9B2D2 AS DateTime), 0, CAST(0x0000A63E00A9B2D2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 17, 17201679, 1, 21000, 1, 0, CAST(0x0000A63E00A9F636 AS DateTime), 0, CAST(0x0000A63E00A9F636 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 18, 18201679, 2, 11000, 1, 0, CAST(0x0000A63E00A9FCDB AS DateTime), 0, CAST(0x0000A63E00A9FCDB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 19, 19201679, 2, 12500, 1, 0, CAST(0x0000A63E00CEAE1A AS DateTime), 0, CAST(0x0000A63E00CEAE1B AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 20, 20201679, 2, 3000, 1, 0, CAST(0x0000A63E00CEC065 AS DateTime), 0, CAST(0x0000A63E00CEC065 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 21, 21201679, 2, 5500, 1, 0, CAST(0x0000A63E00CECBCA AS DateTime), 0, CAST(0x0000A63E00CECBCA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 22, 22201679, 1, 19950, 1, 0, CAST(0x0000A63E00CEDB2C AS DateTime), 0, CAST(0x0000A63E00CEDB2C AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 23, 23201679, 2, 5500, 1, 0, CAST(0x0000A63E00CEE3CA AS DateTime), 0, CAST(0x0000A63E00CEE3CA AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 24, 24201679, 1, 5500, 1, 0, CAST(0x0000A63E00CEEB6A AS DateTime), 0, CAST(0x0000A63E00CEEB6A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 25, 25201679, 1, 4000, 1, 0, CAST(0x0000A63E00CEF1D6 AS DateTime), 0, CAST(0x0000A63E00CEF1D6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 26, 26201679, 2, 2000, 1, 0, CAST(0x0000A63E00CEF82A AS DateTime), 0, CAST(0x0000A63E00CEF82A AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 27, 27201679, 1, 11000, 1, 0, CAST(0x0000A63E00CEFFCD AS DateTime), 0, CAST(0x0000A63E00CEFFCD AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 28, 28201679, 1, 5000, 1, 0, CAST(0x0000A63E00CF0F3E AS DateTime), 0, CAST(0x0000A63E00CF0F3E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 29, 29201679, 1, 100000, 1, 0, CAST(0x0000A63E00CF1842 AS DateTime), 0, CAST(0x0000A63E00CF1842 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 30, 30201679, 1, 5500, 1, 0, CAST(0x0000A63E00CF3E49 AS DateTime), 0, CAST(0x0000A63E00CF3E49 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 31, 31201679, 1, 35000, 1, 0, CAST(0x0000A63E00CF4BCB AS DateTime), 0, CAST(0x0000A63E00CF4BCB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 32, 32201679, 2, 15000, 1, 0, CAST(0x0000A63E00CF56F4 AS DateTime), 0, CAST(0x0000A63E00CF56F4 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 33, 33201679, 1, 10000, 1, 0, CAST(0x0000A63E00CF6064 AS DateTime), 0, CAST(0x0000A63E00CF6064 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 34, 34201679, 1, 14000, 1, 0, CAST(0x0000A63E00CF660E AS DateTime), 0, CAST(0x0000A63E00CF660E AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 35, 35201679, 2, 5500, 1, 0, CAST(0x0000A63E00CF6D79 AS DateTime), 0, CAST(0x0000A63E00CF6D79 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 36, 36201679, 2, 10500, 1, 0, CAST(0x0000A63E00CF7D8D AS DateTime), 0, CAST(0x0000A63E00CF7D8D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 37, 37201679, 2, 17500, 1, 0, CAST(0x0000A63E00CF8492 AS DateTime), 0, CAST(0x0000A63E00CF8492 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 38, 38201679, 2, 16000, 1, 0, CAST(0x0000A63E00CF8AEF AS DateTime), 0, CAST(0x0000A63E00CF8AEF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 39, 39201679, 1, 24500, 1, 0, CAST(0x0000A63E00CF9287 AS DateTime), 0, CAST(0x0000A63E00CF9287 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 40, 40201679, 2, 5500, 1, 0, CAST(0x0000A63E00CF98A2 AS DateTime), 0, CAST(0x0000A63E00CF98A2 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 41, 41201679, 1, 5500, 1, 0, CAST(0x0000A63E00CF9E2D AS DateTime), 0, CAST(0x0000A63E00CF9E2D AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 42, 42201679, 1, 21000, 1, 0, CAST(0x0000A63E00CFA454 AS DateTime), 0, CAST(0x0000A63E00CFA454 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 43, 43201679, 2, 11000, 1, 0, CAST(0x0000A63E00CFABC1 AS DateTime), 0, CAST(0x0000A63E00CFABC1 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 44, 44201679, 1, 10500, 1, 0, CAST(0x0000A63E00CFB331 AS DateTime), 0, CAST(0x0000A63E00CFB331 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 45, 45201679, 1, 10000, 1, 0, CAST(0x0000A63E00CFBDDB AS DateTime), 0, CAST(0x0000A63E00CFBDDB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 45, 45201679, 2, 14500, 1, 0, CAST(0x0000A63E00CFBDDB AS DateTime), 0, CAST(0x0000A63E00CFBDDB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 46, 46201679, 2, 12000, 1, 0, CAST(0x0000A63E00CFC3BF AS DateTime), 0, CAST(0x0000A63E00CFC3BF AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 47, 47201679, 1, 34500, 1, 0, CAST(0x0000A63E00CFC894 AS DateTime), 0, CAST(0x0000A63E00CFC894 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 48, 48201679, 2, 17500, 1, 0, CAST(0x0000A63E00CFCDA6 AS DateTime), 0, CAST(0x0000A63E00CFCDA6 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 49, 49201679, 1, 20000, 1, 0, CAST(0x0000A63E00CFDAFB AS DateTime), 0, CAST(0x0000A63E00CFDAFB AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 50, 50201679, 1, 50000, 1, 0, CAST(0x0000A63E00CFE6E8 AS DateTime), 0, CAST(0x0000A63E00CFE6E8 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 51, 51201679, 2, 5500, 1, 0, CAST(0x0000A63E00CFF113 AS DateTime), 0, CAST(0x0000A63E00CFF113 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 52, 52201679, 1, 5000, 1, 0, CAST(0x0000A63E00D3D198 AS DateTime), 0, CAST(0x0000A63E00D3D198 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 53, 53201679, 1, 17500, 1, 0, CAST(0x0000A63E00D4C093 AS DateTime), 0, CAST(0x0000A63E00D4C093 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 54, 54201679, 1, 5500, 1, 0, CAST(0x0000A63E00D4D329 AS DateTime), 0, CAST(0x0000A63E00D4D329 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 55, 55201679, 1, 5500, 1, 0, CAST(0x0000A63E00D516AE AS DateTime), 0, CAST(0x0000A63E00D516AE AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 56, 56201679, 1, 17500, 1, 0, CAST(0x0000A63E00D52547 AS DateTime), 0, CAST(0x0000A63E00D52547 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 57, 57201679, 1, 12500, 1, 0, CAST(0x0000A63E00D52C56 AS DateTime), 0, CAST(0x0000A63E00D52C56 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 58, 58201679, 1, 5000, 1, 0, CAST(0x0000A63E00D5D602 AS DateTime), 0, CAST(0x0000A63E00D5D602 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 59, 59201679, 1, 3800, 1, 0, CAST(0x0000A63E00D60533 AS DateTime), 0, CAST(0x0000A63E00D60533 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 60, 60201679, 1, 5000, 1, 0, CAST(0x0000A63E00D6B707 AS DateTime), 0, CAST(0x0000A63E00D6B707 AS DateTime), N'')
INSERT [dbo].[PAYMENT_INVOICE_HISTORY] ([PaymentHistoryID], [InvoiceID], [InvoiceNumber], [PaymentTypeID], [Total], [Status], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (61, 61, 61201679, 1, 14000, 1, 0, CAST(0x0000A63E00D6C778 AS DateTime), 0, CAST(0x0000A63E00D6C778 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[PAYMENT_INVOICE_HISTORY] OFF
/****** Object:  Table [dbo].[ORDER1]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [int] NULL,
	[ClientID] [int] NULL,
	[FloorID] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[TotalAmount] [float] NULL,
	[Seat] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[ShiftID] [int] NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_OPEN_ITEM_ALL]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[ORDER_OPEN_ITEM]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[ORDER_DETAIL_MODIFIRE_DATE]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE](
	[OrderModifireID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailID] [int] NOT NULL,
	[OrderNumber] [int] NULL,
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
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 0, 16201679, 16, 138, 1, 1, 0, 0, 1, 4000, 0, 0, 0, CAST(0x0000A63E00A2B450 AS DateTime), 0, CAST(0x0000A63E00A2B450 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 0, 16201679, 16, 139, 2, 2, 0, 0, 1, 7000, 0, 0, 0, CAST(0x0000A63E00A2B450 AS DateTime), 0, CAST(0x0000A63E00A2B450 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ([OrderModifireID], [OrderDetailID], [OrderNumber], [OrderID], [ProductID], [KeyModi], [ModifireID], [Status], [Price], [Qty], [Total], [Seat], [DynId], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 0, 16201679, 16, 139, 2, 3, 0, 0, 1, 7000, 0, 0, 0, CAST(0x0000A63E00A2B450 AS DateTime), 0, CAST(0x0000A63E00A2B450 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_MODIFIRE_DATE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL_MODIFIRE]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL_MODIFIRE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderModifireID] [int] NOT NULL,
	[OrderDetailID] [int] NOT NULL,
	[OrderNumber] [int] NULL,
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
/****** Object:  Table [dbo].[ORDER_DETAIL_DATE]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL_DATE](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderNumber] [int] NULL,
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
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (3, 2, 2201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E007681B4 AS DateTime), 0, CAST(0x0000A63E007681B4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (4, 2, 2201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E007681B4 AS DateTime), 0, CAST(0x0000A63E007681B4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (5, 3, 3201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0076BC28 AS DateTime), 0, CAST(0x0000A63E0076BC28 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (6, 3, 3201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0076BC28 AS DateTime), 0, CAST(0x0000A63E0076BC28 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (7, 3, 3201679, 35, 3, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0076BC28 AS DateTime), 0, CAST(0x0000A63E0076BC28 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (8, 3, 3201679, 35, 4, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0076BC28 AS DateTime), 0, CAST(0x0000A63E0076BC28 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (9, 4, 4201679, 35, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0076F108 AS DateTime), 0, CAST(0x0000A63E0076F108 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (10, 4, 4201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0076F108 AS DateTime), 0, CAST(0x0000A63E0076F108 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (11, 4, 4201679, 35, 3, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0076F108 AS DateTime), 0, CAST(0x0000A63E0076F108 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (14, 5, 5201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0077E2D1 AS DateTime), 0, CAST(0x0000A63E0077E2D1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (15, 5, 5201679, 35, 2, 0, 56000, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0077E2D1 AS DateTime), 0, CAST(0x0000A63E0077E2D1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (16, 6, 6201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0078710D AS DateTime), 0, CAST(0x0000A63E0078710D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (17, 6, 6201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E0078710D AS DateTime), 0, CAST(0x0000A63E0078710D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (18, 7, 7201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E007DC948 AS DateTime), 0, CAST(0x0000A63E007DC948 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (19, 7, 7201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E007DC948 AS DateTime), 0, CAST(0x0000A63E007DC948 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (20, 8, 8201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E007FD748 AS DateTime), 0, CAST(0x0000A63E007FD748 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (21, 8, 8201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E007FD748 AS DateTime), 0, CAST(0x0000A63E007FD748 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (22, 11, 9201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00802D20 AS DateTime), 0, CAST(0x0000A63E00802D20 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (23, 11, 9201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00802D20 AS DateTime), 0, CAST(0x0000A63E00802D20 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (24, 11, 10201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00805423 AS DateTime), 0, CAST(0x0000A63E00805423 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (25, 11, 10201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00805423 AS DateTime), 0, CAST(0x0000A63E00805423 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (26, 11, 10201679, 35, 3, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00805423 AS DateTime), 0, CAST(0x0000A63E00805423 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (27, 12, 12201679, 35, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00807C48 AS DateTime), 0, CAST(0x0000A63E00807C48 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (28, 12, 12201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00807C48 AS DateTime), 0, CAST(0x0000A63E00807C48 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (29, 13, 13201679, 97, 1, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A63E0087E899 AS DateTime), 0, CAST(0x0000A63E0087E899 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (30, 14, 14201679, 86, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00881CB1 AS DateTime), 0, CAST(0x0000A63E00881CB1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (31, 14, 14201679, 79, 2, 0, 3500, 1, 3500, 0, 0, 0, 0, CAST(0x0000A63E00881CB1 AS DateTime), 0, CAST(0x0000A63E00881CB1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (32, 14, 14201679, 88, 3, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00881CB1 AS DateTime), 0, CAST(0x0000A63E00881CB1 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (33, 15, 15201679, 8, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E009B9885 AS DateTime), 0, CAST(0x0000A63E009B9885 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (34, 15, 15201679, 6, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E009B9885 AS DateTime), 0, CAST(0x0000A63E009B9885 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (35, 15, 15201679, 12, 3, 0, 8000, 1, 8000, 0, 0, 0, 0, CAST(0x0000A63E009B9885 AS DateTime), 0, CAST(0x0000A63E009B9885 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (36, 15, 15201679, 7, 4, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E009B9885 AS DateTime), 0, CAST(0x0000A63E009B9885 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (37, 15, 15201679, 10, 5, 0, 8000, 1, 8000, 0, 0, 0, 0, CAST(0x0000A63E009B9885 AS DateTime), 0, CAST(0x0000A63E009B9885 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (38, 16, 16201679, 138, 1, 0, 4000, 1, 4000, 0, 0, 0, 0, CAST(0x0000A63E00A2B44E AS DateTime), 0, CAST(0x0000A63E00A2B44E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (39, 16, 16201679, 139, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00A2B44E AS DateTime), 0, CAST(0x0000A63E00A2B44E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (40, 17, 17201679, 19, 1, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00CB1068 AS DateTime), 0, CAST(0x0000A63E00CB1068 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (41, 17, 17201679, 20, 2, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00CB1068 AS DateTime), 0, CAST(0x0000A63E00CB1068 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (42, 18, 18201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00CB402B AS DateTime), 0, CAST(0x0000A63E00CB402B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (43, 18, 18201679, 12, 2, 0, 8000, 1, 8000, 0, 0, 0, 0, CAST(0x0000A63E00CB402B AS DateTime), 0, CAST(0x0000A63E00CB402B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (44, 19, 19201679, 50, 1, 0, 5800, 1, 5800, 0, 0, 0, 0, CAST(0x0000A63E009C087A AS DateTime), 0, CAST(0x0000A63E009C087A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (45, 19, 19201679, 56, 2, 0, 5800, 1, 5800, 0, 0, 0, 0, CAST(0x0000A63E009C087A AS DateTime), 0, CAST(0x0000A63E009C087A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (46, 20, 20201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E009C1F72 AS DateTime), 0, CAST(0x0000A63E009C1F72 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (47, 20, 20201679, 8, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E009C1F72 AS DateTime), 0, CAST(0x0000A63E009C1F72 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (48, 20, 20201679, 7, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E009C1F72 AS DateTime), 0, CAST(0x0000A63E009C1F72 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (49, 21, 21201679, 93, 1, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E009C7CDB AS DateTime), 0, CAST(0x0000A63E009C7CDB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (50, 21, 21201679, 92, 2, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E009C7CDB AS DateTime), 0, CAST(0x0000A63E009C7CDB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (51, 21, 21201679, 91, 3, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E009C7CDB AS DateTime), 0, CAST(0x0000A63E009C7CDB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (52, 22, 22201679, 139, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E009C9862 AS DateTime), 0, CAST(0x0000A63E009C9862 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (53, 22, 22201679, 113, 2, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A63E009C9862 AS DateTime), 0, CAST(0x0000A63E009C9862 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (54, 22, 22201679, 100, 3, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A63E009C9862 AS DateTime), 0, CAST(0x0000A63E009C9862 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (55, 23, 23201679, 20, 1, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E009D2044 AS DateTime), 0, CAST(0x0000A63E009D2044 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (56, 23, 23201679, 21, 2, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E009D2044 AS DateTime), 0, CAST(0x0000A63E009D2044 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (57, 23, 23201679, 17, 3, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E009D2044 AS DateTime), 0, CAST(0x0000A63E009D2044 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (58, 24, 24201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00A31ED6 AS DateTime), 0, CAST(0x0000A63E00A31ED6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (59, 24, 24201679, 8, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00A31ED6 AS DateTime), 0, CAST(0x0000A63E00A31ED6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (60, 24, 24201679, 3, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00A31ED6 AS DateTime), 0, CAST(0x0000A63E00A31ED6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (67, 27, 27201679, 20, 1, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00ADB3DB AS DateTime), 0, CAST(0x0000A63E00ADB3DB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (68, 26, 26201679, 20, 1, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00ADB3E6 AS DateTime), 0, CAST(0x0000A63E00ADB3E6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (69, 26, 26201679, 21, 3, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00ADB3E6 AS DateTime), 0, CAST(0x0000A63E00ADB3E6 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (95, 25, 25201679, 37, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B26A52 AS DateTime), 0, CAST(0x0000A63E00B26A52 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (96, 25, 25201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B26A52 AS DateTime), 0, CAST(0x0000A63E00B26A52 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (97, 25, 25201679, 28, 3, 0, 6000, 1, 6000, 0, 0, 0, 0, CAST(0x0000A63E00B26A52 AS DateTime), 0, CAST(0x0000A63E00B26A52 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (98, 25, 25201679, 20, 4, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00B26A52 AS DateTime), 0, CAST(0x0000A63E00B26A52 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (99, 25, 25201679, 101, 5, 0, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A63E00B26A52 AS DateTime), 0, CAST(0x0000A63E00B26A52 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (100, 25, 25201679, 36, 6, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B26A52 AS DateTime), 0, CAST(0x0000A63E00B26A52 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (101, 28, 28201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00B35851 AS DateTime), 0, CAST(0x0000A63E00B35852 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (102, 28, 28201679, 8, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00B35852 AS DateTime), 0, CAST(0x0000A63E00B35852 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (108, 31, 31201679, 37, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B4D57A AS DateTime), 0, CAST(0x0000A63E00B4D57A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (109, 31, 31201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B4D57A AS DateTime), 0, CAST(0x0000A63E00B4D57A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (110, 32, 32201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B51E85 AS DateTime), 0, CAST(0x0000A63E00B51E85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (111, 32, 32201679, 37, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B51E85 AS DateTime), 0, CAST(0x0000A63E00B51E85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (112, 32, 32201679, 17, 3, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E00B51E85 AS DateTime), 0, CAST(0x0000A63E00B51E85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (113, 32, 32201679, 14, 4, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E00B51E85 AS DateTime), 0, CAST(0x0000A63E00B51E85 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (114, 33, 33201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00B5423B AS DateTime), 0, CAST(0x0000A63E00B5423B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (115, 33, 33201679, 8, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00B5423B AS DateTime), 0, CAST(0x0000A63E00B5423B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (116, 33, 33201679, 3, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00B5423B AS DateTime), 0, CAST(0x0000A63E00B5423B AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (117, 34, 34201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00B5E043 AS DateTime), 0, CAST(0x0000A63E00B5E043 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (118, 34, 34201679, 10, 2, 0, 8000, 1, 8000, 0, 0, 0, 0, CAST(0x0000A63E00B5E043 AS DateTime), 0, CAST(0x0000A63E00B5E043 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (119, 35, 35201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B6DD6E AS DateTime), 0, CAST(0x0000A63E00B6DD6E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (120, 35, 35201679, 36, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B6DD6E AS DateTime), 0, CAST(0x0000A63E00B6DD6E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (121, 35, 35201679, 45, 3, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00B6DD6E AS DateTime), 0, CAST(0x0000A63E00B6DD6E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (122, 36, 36201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00B810C4 AS DateTime), 0, CAST(0x0000A63E00B810C4 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (127, 41, 41201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00BA3723 AS DateTime), 0, CAST(0x0000A63E00BA3723 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (134, 38, 38201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00BF5D9A AS DateTime), 0, CAST(0x0000A63E00BF5D9A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (135, 30, 30201679, 20, 1, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00BFA007 AS DateTime), 0, CAST(0x0000A63E00BFA007 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (136, 30, 30201679, 21, 2, 0, 2000, 1, 2000, 0, 0, 0, 0, CAST(0x0000A63E00BFA007 AS DateTime), 0, CAST(0x0000A63E00BFA007 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (138, 29, 29201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C07382 AS DateTime), 0, CAST(0x0000A63E00C07382 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (139, 29, 29201679, 8, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C07382 AS DateTime), 0, CAST(0x0000A63E00C07382 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (140, 29, 29201679, 8, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C07382 AS DateTime), 0, CAST(0x0000A63E00C07382 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (147, 42, 42201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00C1BA06 AS DateTime), 0, CAST(0x0000A63E00C1BA06 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (148, 42, 42201679, 45, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00C1BA06 AS DateTime), 0, CAST(0x0000A63E00C1BA06 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (149, 42, 42201679, 14, 3, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E00C1BA06 AS DateTime), 0, CAST(0x0000A63E00C1BA06 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (150, 42, 42201679, 17, 4, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E00C1BA06 AS DateTime), 0, CAST(0x0000A63E00C1BA06 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (151, 43, 43201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00C1DC82 AS DateTime), 0, CAST(0x0000A63E00C1DC82 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (152, 43, 43201679, 45, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00C1DC82 AS DateTime), 0, CAST(0x0000A63E00C1DC82 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (153, 40, 40201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00C2A823 AS DateTime), 0, CAST(0x0000A63E00C2A823 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (154, 44, 44201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00C2BF87 AS DateTime), 0, CAST(0x0000A63E00C2BF87 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (155, 44, 44201679, 14, 2, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E00C2BF87 AS DateTime), 0, CAST(0x0000A63E00C2BF87 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (156, 45, 45201679, 45, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00C303FA AS DateTime), 0, CAST(0x0000A63E00C303FA AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (157, 45, 45201679, 136, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00C303FA AS DateTime), 0, CAST(0x0000A63E00C303FA AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (158, 46, 46201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00C31B4D AS DateTime), 0, CAST(0x0000A63E00C31B4D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (159, 46, 46201679, 45, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00C31B4D AS DateTime), 0, CAST(0x0000A63E00C31B4D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (160, 46, 46201679, 2, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C31B4D AS DateTime), 0, CAST(0x0000A63E00C31B4D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (161, 46, 46201679, 8, 4, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C31B4D AS DateTime), 0, CAST(0x0000A63E00C31B4D AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (166, 48, 48201679, 45, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00C96D19 AS DateTime), 0, CAST(0x0000A63E00C96D19 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (167, 48, 48201679, 2, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C96D19 AS DateTime), 0, CAST(0x0000A63E00C96D19 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (168, 49, 49201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00C9A249 AS DateTime), 0, CAST(0x0000A63E00C9A249 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (169, 49, 49201679, 2, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C9A249 AS DateTime), 0, CAST(0x0000A63E00C9A249 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (173, 47, 47201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00C9BDE0 AS DateTime), 0, CAST(0x0000A63E00C9BDE0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (174, 47, 47201679, 45, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00C9BDE0 AS DateTime), 0, CAST(0x0000A63E00C9BDE0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (175, 47, 47201679, 2, 3, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00C9BDE0 AS DateTime), 0, CAST(0x0000A63E00C9BDE0 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (176, 37, 37201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CA0683 AS DateTime), 0, CAST(0x0000A63E00CA0683 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (177, 50, 50201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CA640E AS DateTime), 0, CAST(0x0000A63E00CA640E AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (178, 51, 51201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CC90F7 AS DateTime), 0, CAST(0x0000A63E00CC90F7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (179, 39, 39201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CCE6E8 AS DateTime), 0, CAST(0x0000A63E00CCE6E8 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (180, 52, 52201679, 138, 1, 0, 4000, 1, 4000, 0, 0, 0, 0, CAST(0x0000A63E00CD1316 AS DateTime), 0, CAST(0x0000A63E00CD1316 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (181, 53, 53201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CDC7DB AS DateTime), 0, CAST(0x0000A63E00CDC7DB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (182, 53, 53201679, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CDC7DB AS DateTime), 0, CAST(0x0000A63E00CDC7DB AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (183, 54, 54201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CDEEF5 AS DateTime), 0, CAST(0x0000A63E00CDEEF5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (184, 54, 54201679, 45, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00CDEEF5 AS DateTime), 0, CAST(0x0000A63E00CDEEF5 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (185, 55, 55201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CE7E5F AS DateTime), 0, CAST(0x0000A63E00CE7E5F AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (186, 56, 56201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CE8D26 AS DateTime), 0, CAST(0x0000A63E00CE8D26 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (187, 57, 57201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00CE9635 AS DateTime), 0, CAST(0x0000A63E00CE9635 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (195, 58, 58201679, 45, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00D0F751 AS DateTime), 0, CAST(0x0000A63E00D0F751 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (200, 59, 59201679, 35, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00D13DCC AS DateTime), 0, CAST(0x0000A63E00D13DCC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (201, 59, 59201679, 14, 2, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E00D13DCC AS DateTime), 0, CAST(0x0000A63E00D13DCC AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (202, 60, 60201679, 90, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00D15282 AS DateTime), 0, CAST(0x0000A63E00D15282 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (203, 60, 60201679, 2, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00D15282 AS DateTime), 0, CAST(0x0000A63E00D15282 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (204, 61, 61201679, 90, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00D16E06 AS DateTime), 0, CAST(0x0000A63E00D16E06 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (205, 61, 61201679, 14, 2, 0, 12000, 1, 12000, 0, 0, 0, 0, CAST(0x0000A63E00D16E06 AS DateTime), 0, CAST(0x0000A63E00D16E06 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (206, 62, 62201679, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00D4CA86 AS DateTime), 0, CAST(0x0000A63E00D4CA86 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (207, 63, 63201679, 37, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63E00D50E68 AS DateTime), 0, CAST(0x0000A63E00D50E68 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (208, 64, 64201679, 46, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00D5CD10 AS DateTime), 0, CAST(0x0000A63E00D5CD11 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (209, 65, 65201679, 40, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00D5E4B7 AS DateTime), 0, CAST(0x0000A63E00D5E4B7 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (210, 66, 66201679, 93, 1, 0, 3800, 1, 3800, 0, 0, 0, 0, CAST(0x0000A63E00D5F2AF AS DateTime), 0, CAST(0x0000A63E00D5F2AF AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (211, 67, 67201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00D6C091 AS DateTime), 0, CAST(0x0000A63E00D6C091 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (212, 67, 67201679, 8, 2, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00D6C091 AS DateTime), 0, CAST(0x0000A63E00D6C091 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (213, 68, 68201679, 46, 1, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00D78A78 AS DateTime), 0, CAST(0x0000A63E00D78A79 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (214, 68, 68201679, 40, 2, 0, 5000, 1, 5000, 0, 0, 0, 0, CAST(0x0000A63E00D78A79 AS DateTime), 0, CAST(0x0000A63E00D78A79 AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL_DATE] ([OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (216, 69, 69201679, 2, 1, 0, 7000, 1, 7000, 0, 0, 0, 0, CAST(0x0000A63E00DBB570 AS DateTime), 0, CAST(0x0000A63E00DBB570 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL_DATE] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[OrderNumber] [int] NULL,
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
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (1, 1, 1, 1201678, 36, 1, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63D01654209 AS DateTime), 0, CAST(0x0000A63D0165420A AS DateTime), NULL)
INSERT [dbo].[ORDER_DETAIL] ([ID], [OrderDetailID], [OrderID], [OrderNumber], [ProductID], [KeyItem], [Status], [Price], [Qty], [Total], [Seat], [DynId], [PrintType], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note]) VALUES (2, 2, 1, 1201678, 35, 2, 0, 5500, 1, 5500, 0, 0, 0, 0, CAST(0x0000A63D0165420A AS DateTime), 0, CAST(0x0000A63D0165420A AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL] OFF
/****** Object:  Table [dbo].[ORDER_DATE]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DATE](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [int] NULL,
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
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (2, 2201679, 0, N'3', 1, 11000, 0, 5, CAST(0x0000A63E007680BC AS DateTime), 5, CAST(0x0000A63E007680BC AS DateTime), NULL, 1, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (3, 3201679, 0, N'2', 1, 22000, 0, 5, CAST(0x0000A63E0076BC26 AS DateTime), 5, CAST(0x0000A63E0076BC26 AS DateTime), NULL, 1, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (4, 4201679, 0, N'6', 1, 16500, 0, 5, CAST(0x0000A63E0076F106 AS DateTime), 5, CAST(0x0000A63E0076F106 AS DateTime), NULL, 1, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (5, 5201679, 0, N'5', 1, 61500, 0, 5, CAST(0x0000A63E0077342E AS DateTime), 5, CAST(0x0000A63E0077342E AS DateTime), NULL, 1, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (6, 6201679, 0, N'TKA-7', 1, 11000, 0, 5, CAST(0x0000A63E0078710C AS DateTime), 5, CAST(0x0000A63E0078710C AS DateTime), NULL, 1, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (7, 7201679, 0, N'TKA-8', 0, 11000, 0, 5, CAST(0x0000A63E007DC947 AS DateTime), 5, CAST(0x0000A63E007DC947 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (8, 8201679, 0, N'4', 1, 11000, 0, 5, CAST(0x0000A63E007FD746 AS DateTime), 5, CAST(0x0000A63E007FD746 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (11, NULL, 0, N'5', 1, 27500, 0, 0, CAST(0x0000A63E00806A76 AS DateTime), 0, CAST(0x0000A63E00806A76 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (12, 12201679, 0, N'23', 1, 11000, 0, 5, CAST(0x0000A63E00807C47 AS DateTime), 5, CAST(0x0000A63E00807C47 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (13, 13201679, 0, N'2', 1, 0, 0, 5, CAST(0x0000A63E0087E889 AS DateTime), 5, CAST(0x0000A63E0087E889 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (14, 14201679, 0, N'17', 1, 14500, 0, 5, CAST(0x0000A63E00881CB0 AS DateTime), 5, CAST(0x0000A63E00881CB0 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (15, 15201679, 0, N'25', 1, 37000, 0, 5, CAST(0x0000A63E009B9883 AS DateTime), 5, CAST(0x0000A63E009B9883 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (16, 16201679, 0, N'6', 1, 11000, 0, 5, CAST(0x0000A63E00A2B44C AS DateTime), 5, CAST(0x0000A63E00A2B44C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (17, 17201679, 1, N'TKA-16', 0, 4000, 0, 5, CAST(0x0000A63E00CB0F5F AS DateTime), 5, CAST(0x0000A63E00CB0F5F AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (18, 18201679, 0, N'TKA-17', 0, 15000, 0, 5, CAST(0x0000A63E00CB4029 AS DateTime), 5, CAST(0x0000A63E00CB4029 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (19, 19201679, 0, N'TKA-18', 0, 11600, 0, 5, CAST(0x0000A63E009C0875 AS DateTime), 5, CAST(0x0000A63E009C0875 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (20, 20201679, 0, N'15', 1, 21000, 0, 5, CAST(0x0000A63E009C1F71 AS DateTime), 5, CAST(0x0000A63E009C1F71 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (21, 21201679, 0, N'19', 1, 11400, 0, 5, CAST(0x0000A63E009C7CD3 AS DateTime), 5, CAST(0x0000A63E009C7CD3 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (22, 22201679, 0, N'20', 1, 7000, 0, 5, CAST(0x0000A63E009C9861 AS DateTime), 5, CAST(0x0000A63E009C9861 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (23, 23201679, 0, N'7', 1, 16000, 0, 5, CAST(0x0000A63E009D2043 AS DateTime), 5, CAST(0x0000A63E009D2043 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (24, 24201679, 0, N'13', 1, 21000, 0, 5, CAST(0x0000A63E00A31ED2 AS DateTime), 5, CAST(0x0000A63E00A31ED2 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (25, 25201679, 0, N'27', 1, 24500, 0, 5, CAST(0x0000A63E00A32834 AS DateTime), 5, CAST(0x0000A63E00A32834 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (26, 26201679, 0, N'2', 1, 4000, 0, 5, CAST(0x0000A63E00AA3CFE AS DateTime), 5, CAST(0x0000A63E00AA3CFE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (27, 27201679, 0, N'5', 1, 2000, 0, 0, CAST(0x0000A63E00ADB3D6 AS DateTime), 0, CAST(0x0000A63E00ADB3D6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (28, 28201679, 0, N'14', 1, 14000, 0, 5, CAST(0x0000A63E00B35848 AS DateTime), 5, CAST(0x0000A63E00B35849 AS DateTime), N'THANH', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (29, 29201679, 0, N'16', 1, 21000, 0, 5, CAST(0x0000A63E00B3AB70 AS DateTime), 5, CAST(0x0000A63E00B3AB71 AS DateTime), N'PHAN CHI THANH', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (30, 30201679, 0, N'17', 1, 4000, 0, 5, CAST(0x0000A63E00B496E2 AS DateTime), 5, CAST(0x0000A63E00B496E2 AS DateTime), N'hHH:', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (31, 31201679, 0, N'18', 1, 11000, 0, 5, CAST(0x0000A63E00B4D570 AS DateTime), 5, CAST(0x0000A63E00B4D570 AS DateTime), N'HHH', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (32, 32201679, 0, N'19', 1, 35000, 0, 5, CAST(0x0000A63E00B51E82 AS DateTime), 5, CAST(0x0000A63E00B51E82 AS DateTime), N'GG', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (33, 33201679, 0, N'20', 1, 21000, 0, 5, CAST(0x0000A63E00B5423A AS DateTime), 5, CAST(0x0000A63E00B5423A AS DateTime), N'iII', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (34, 34201679, 0, N'7', 1, 15000, 0, 5, CAST(0x0000A63E00B5E03B AS DateTime), 5, CAST(0x0000A63E00B5E03B AS DateTime), N'kKK', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (35, 35201679, 0, N'26', 1, 16000, 0, 5, CAST(0x0000A63E00B6DD65 AS DateTime), 5, CAST(0x0000A63E00B6DD65 AS DateTime), N'HHH', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (36, 36201679, 0, N'30', 1, 5500, 0, 5, CAST(0x0000A63E00B810BB AS DateTime), 5, CAST(0x0000A63E00B810BB AS DateTime), N'uUU', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (37, 37201679, 0, N'31', 1, 5500, 0, 5, CAST(0x0000A63E00B83BFC AS DateTime), 5, CAST(0x0000A63E00B83BFC AS DateTime), N'uUUUU', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (38, 38201679, 0, N'15', 1, 5500, 0, 5, CAST(0x0000A63E00B88918 AS DateTime), 5, CAST(0x0000A63E00B88918 AS DateTime), N'iI', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (39, 39201679, 0, N'28', 1, 5500, 0, 5, CAST(0x0000A63E00B9B66D AS DateTime), 5, CAST(0x0000A63E00B9B66D AS DateTime), N'hhh', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (40, 40201679, 0, N'29', 1, 5500, 0, 5, CAST(0x0000A63E00B9D425 AS DateTime), 5, CAST(0x0000A63E00B9D425 AS DateTime), N'Iii', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (41, 41201679, 0, N'8', 1, 5500, 0, 5, CAST(0x0000A63E00BA371B AS DateTime), 5, CAST(0x0000A63E00BA371B AS DateTime), N'Lll', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (42, 42201679, 0, N'32', 1, 34500, 0, 5, CAST(0x0000A63E00C1A5AE AS DateTime), 5, CAST(0x0000A63E00C1A5AE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (43, 43201679, 0, N'21', 1, 10500, 0, 5, CAST(0x0000A63E00C1DC81 AS DateTime), 5, CAST(0x0000A63E00C1DC81 AS DateTime), N'Uuuu', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (44, 44201679, 0, N'33', 1, 17500, 0, 5, CAST(0x0000A63E00C2BF7D AS DateTime), 5, CAST(0x0000A63E00C2BF7D AS DateTime), N'ggg', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (45, 45201679, 0, N'13', 1, 10000, 0, 5, CAST(0x0000A63E00C303F9 AS DateTime), 5, CAST(0x0000A63E00C303F9 AS DateTime), N'Yyy', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (46, 46201679, 0, N'34', 1, 24500, 0, 5, CAST(0x0000A63E00C31B4D AS DateTime), 5, CAST(0x0000A63E00C31B4D AS DateTime), N'Iii', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (47, 47201679, 0, N'25', 1, 17500, 0, 5, CAST(0x0000A63E00C92D9B AS DateTime), 5, CAST(0x0000A63E00C92D9B AS DateTime), N'ddd', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (48, 48201679, 0, N'22', 1, 12000, 0, 5, CAST(0x0000A63E00C96D19 AS DateTime), 5, CAST(0x0000A63E00C96D19 AS DateTime), N'Jjj', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (49, 49201679, 0, N'1', 1, 12500, 0, 5, CAST(0x0000A63E00C9A240 AS DateTime), 5, CAST(0x0000A63E00C9A240 AS DateTime), N'Nnn', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (50, 50201679, 0, N'3', 1, 5500, 0, 5, CAST(0x0000A63E00CA640D AS DateTime), 5, CAST(0x0000A63E00CA640D AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (51, 51201679, 0, N'4', 1, 5500, 0, 5, CAST(0x0000A63E00CC90EC AS DateTime), 5, CAST(0x0000A63E00CC90EC AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (52, 52201679, 0, N'6', 1, 4000, 0, 5, CAST(0x0000A63E00CD1315 AS DateTime), 5, CAST(0x0000A63E00CD1315 AS DateTime), N'Kkk', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (53, 53201679, 0, N'9', 1, 11000, 0, 5, CAST(0x0000A63E00CDC7D6 AS DateTime), 5, CAST(0x0000A63E00CDC7D6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (54, 54201679, 0, N'10', 1, 10500, 0, 5, CAST(0x0000A63E00CDEEF4 AS DateTime), 5, CAST(0x0000A63E00CDEEF4 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (55, 55201679, 0, N'38', 1, 5500, 0, 5, CAST(0x0000A63E00CE7E57 AS DateTime), 5, CAST(0x0000A63E00CE7E57 AS DateTime), N'Kk', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (56, 56201679, 0, N'37', 1, 5500, 0, 5, CAST(0x0000A63E00CE8D25 AS DateTime), 5, CAST(0x0000A63E00CE8D25 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (57, 57201679, 0, N'39', 1, 5500, 0, 5, CAST(0x0000A63E00CE9634 AS DateTime), 5, CAST(0x0000A63E00CE9634 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (58, 58201679, 0, N'13', 1, 5000, 0, 5, CAST(0x0000A63E00D00BE6 AS DateTime), 5, CAST(0x0000A63E00D00BE6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (59, 59201679, 0, N'2', 1, 17500, 0, 5, CAST(0x0000A63E00D1226E AS DateTime), 5, CAST(0x0000A63E00D1226E AS DateTime), N'Hhh', 2, 1)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (60, 60201679, 0, N'4', 1, 12500, 0, 5, CAST(0x0000A63E00D15281 AS DateTime), 5, CAST(0x0000A63E00D15281 AS DateTime), N'Hhhh', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (61, 61201679, 0, N'17', 1, 17500, 0, 5, CAST(0x0000A63E00D16E05 AS DateTime), 5, CAST(0x0000A63E00D16E05 AS DateTime), N'Mmm', 2, 2)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (62, 62201679, 0, N'13', 1, 5500, 0, 5, CAST(0x0000A63E00D4CA80 AS DateTime), 5, CAST(0x0000A63E00D4CA80 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (63, 63201679, 0, N'1', 1, 5500, 0, 5, CAST(0x0000A63E00D50E60 AS DateTime), 5, CAST(0x0000A63E00D50E60 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (64, 64201679, 0, N'14', 1, 5000, 0, 5, CAST(0x0000A63E00D5CD0A AS DateTime), 5, CAST(0x0000A63E00D5CD0A AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (65, 65201679, 0, N'1', 1, 5000, 0, 5, CAST(0x0000A63E00D5E4B6 AS DateTime), 5, CAST(0x0000A63E00D5E4B6 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (66, 66201679, 0, N'14', 1, 3800, 0, 5, CAST(0x0000A63E00D5F2AE AS DateTime), 5, CAST(0x0000A63E00D5F2AE AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (67, 67201679, 0, N'16', 1, 14000, 0, 5, CAST(0x0000A63E00D6C08C AS DateTime), 5, CAST(0x0000A63E00D6C08C AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (68, 68201679, 0, N'15', 0, 10000, 0, 5, CAST(0x0000A63E00D78A71 AS DateTime), 5, CAST(0x0000A63E00D78A71 AS DateTime), NULL, 2, 0)
INSERT [dbo].[ORDER_DATE] ([OrderID], [OrderNumber], [ClientID], [FloorID], [Status], [TotalAmount], [Seat], [CreateBy], [CreateDate], [UpdateBy], [UpdateDate], [Note], [ShiftID], [PrinterNote]) VALUES (69, 69201679, 0, N'17', 0, 7000, 0, 5, CAST(0x0000A63E00D790B1 AS DateTime), 5, CAST(0x0000A63E00D790B1 AS DateTime), NULL, 2, 0)
SET IDENTITY_INSERT [dbo].[ORDER_DATE] OFF
/****** Object:  Table [dbo].[ORDER]    Script Date: 07/09/2016 15:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[OrderNumber] [int] NULL,
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
 CONSTRAINT [PK_ORDER_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODIFIRE_PRICE]    Script Date: 07/09/2016 15:15:53 ******/
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
SET IDENTITY_INSERT [dbo].[MODIFIRE_PRICE] OFF
/****** Object:  Table [dbo].[MODIFIRE]    Script Date: 07/09/2016 15:15:53 ******/
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
SET IDENTITY_INSERT [dbo].[MODIFIRE] OFF
/****** Object:  Table [dbo].[MENU]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[MAP_PRODUCT_TO_CATEGORY]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[MAP_MODIFIRE_TO_PRODUCT]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  Table [dbo].[MAP_CATEGORY_TO_CATALOGUE]    Script Date: 07/09/2016 15:15:53 ******/
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
/****** Object:  StoredProcedure [dbo].[LISTTKA]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[getProductByCategory]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[getModifireByProduct]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SearchProduct]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataPermissionByDepartmet]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapProductToCategory]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapModifireToProduct]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_SaveDataMapCategoryToCatalogue]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetShiftReport]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  View [dbo].[VIEW_ORDER_DETAIL_MODIFIRE_ALL]    Script Date: 07/09/2016 15:15:55 ******/
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
/****** Object:  View [dbo].[VIEW_ORDER_DETAIL_ALL]    Script Date: 07/09/2016 15:15:55 ******/
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
/****** Object:  View [dbo].[VIEW_ORDER_ALL]    Script Date: 07/09/2016 15:15:55 ******/
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
/****** Object:  View [dbo].[VIEW_INVOICE_DETAIL_MODIFIRE_ALL]    Script Date: 07/09/2016 15:15:55 ******/
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
/****** Object:  View [dbo].[VIEW_INVOICE_DETAIL_ALL]    Script Date: 07/09/2016 15:15:55 ******/
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
/****** Object:  View [dbo].[VIEW_INVOICE_ALL]    Script Date: 07/09/2016 15:15:55 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateToServer]    Script Date: 07/09/2016 15:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByCard]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByAccount]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataProductAndModifire]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataListShiftHistoryByUserID]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataBackupDatabase]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListProductByCategory]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListPermissionByDepartmentID]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetAllListCategoryByCatalogue]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  View [dbo].[view_report_invoice]    Script Date: 07/09/2016 15:15:55 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetListProductPrice]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetListModifireToProduct]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetListModifire]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDetailProductPrice]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSummaryReport]    Script Date: 07/09/2016 15:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Thien Huynh>
-- Create date: <16/1/2016>
-- Description:	<get Data summary report>
-- =============================================


-- EXEC pos_th_GetDataSummaryReport @dateselect='2016-1-25',@type=1



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
/****** Object:  StoredProcedure [dbo].[pos_th_GetReportSaleByStaff]    Script Date: 07/09/2016 15:15:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Thien Huynh>
-- Create date: <25/1/2016>
-- Description:	<Get Report Sale By Staff>
-- =============================================

--  EXEC pos_th_GetReportSaleByStaff @dateselect='2016-1-25',@type=1

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
				LEFT JOIN dbo.STAFF s ON s.StaffID=inv.CreateBy
        WHERE   inv.CreateDate BETWEEN @startdate AND @enddate AND inv.Status=1
		GROUP BY s.StaffID,s.UserName
   
    END
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetQTYItemSaleReport]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetQTYGroupSaleReport]    Script Date: 07/09/2016 15:15:51 ******/
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
/****** Object:  Default [DF_CATALOGUE_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CATALOGUE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CATALOGUE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CATALOGUE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CATALOGUE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATALOGUE] ADD  CONSTRAINT [DF_CATALOGUE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CATEGORY_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CATEGORY_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CATEGORY_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CATEGORY_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CATEGORY_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF_CATEGORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CLIENT_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_CLIENT_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CLIENT_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CLIENT_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CLIENT_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CLIENT] ADD  CONSTRAINT [DF_CLIENT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_CONFIG_SAVE_DATA_Type]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[CONFIG_SAVE_DATA] ADD  CONSTRAINT [DF_CONFIG_SAVE_DATA_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_DATABASE_BACKUP_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_DATABASE_BACKUP_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_DEPARMENT_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_DEPARMENT_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_DEPARMENT_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_DEPARMENT_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_DEPARMENT_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF_DEPARMENT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_FLOOR_Priority]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_FLOOR_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_FLOOR_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_FLOOR_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_FLOOR_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_FLOOR_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[FLOOR] ADD  CONSTRAINT [DF_FLOOR_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_Satust]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE] ADD  CONSTRAINT [DF_INVOICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_BY_CARD_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_BY_CARD] ADD  CONSTRAINT [DF_INVOICE_BY_CARD_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_OrderDetailID]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_OrderDetailID]  DEFAULT ((0)) FOR [OrderDetailID]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL] ADD  CONSTRAINT [DF_INVOICE_DETAIL_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_Satust]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[INVOICE_DETAIL_MODIFIRE_HISTORY] ADD  CONSTRAINT [DF_INVOICE_DETAIL_MODIFIRE_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_CATEGORY_TO_CATALOGUE] ADD  CONSTRAINT [DF_MAP_CATEGORY_TO_CATALOGUE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_MODIFIRE_TO_PRODUCT] ADD  CONSTRAINT [DF_MAP_MODIFIRE_TO_PRODUCT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MAP_PRODUCT_TO_CATEGORY_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MAP_PRODUCT_TO_CATEGORY] ADD  CONSTRAINT [DF_MAP_PRODUCT_TO_CATEGORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MENU_Priority]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_MENU_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MENU_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MENU_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MENU_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MENU_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MENU] ADD  CONSTRAINT [DF_MENU_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MODIFIRE_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MODIFIRE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MODIFIRE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MODIFIRE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MODIFIRE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE] ADD  CONSTRAINT [DF_MODIFIRE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_MODIFIRE_PRICE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[MODIFIRE_PRICE] ADD  CONSTRAINT [DF_MODIFIRE_PRICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDERDATE_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDERDATE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDERDATE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDERDATE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDERDATE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DATE] ADD  CONSTRAINT [DF_ORDERDATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_Satust]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_DATE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_DATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_Satust]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER_DETAIL_MODIFIRE_DATE] ADD  CONSTRAINT [DF_ORDER_DETAIL_MODIFIRE_DATE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_ORDER_Status_1]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER1] ADD  CONSTRAINT [DF_ORDER_Status_1]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ORDER_CreateBy_1]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER1] ADD  CONSTRAINT [DF_ORDER_CreateBy_1]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_ORDER_CreateDate_1]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER1] ADD  CONSTRAINT [DF_ORDER_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ORDER_UpdateBy_1]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER1] ADD  CONSTRAINT [DF_ORDER_UpdateBy_1]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_ORDER_UpdateDate_1]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[ORDER1] ADD  CONSTRAINT [DF_ORDER_UpdateDate_1]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_Satust]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_Satust]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PAYMENT_INVOICE_HISTORY_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_INVOICE_HISTORY] ADD  CONSTRAINT [DF_PAYMENT_INVOICE_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PAYMENT_TYPE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PAYMENT_TYPE] ADD  CONSTRAINT [DF_PAYMENT_TYPE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PERMISSION_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PERMISSION_DeparmentID]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_DeparmentID]  DEFAULT ((0)) FOR [DepartmentID]
GO
/****** Object:  Default [DF_PERMISSION_SubMenuID]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_SubMenuID]  DEFAULT ((0)) FOR [SubMenuID]
GO
/****** Object:  Default [DF_PERMISSION_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PERMISSION_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PERMISSION_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PERMISSION_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PERMISSION] ADD  CONSTRAINT [DF_PERMISSION_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CategoryID]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CategoryID]  DEFAULT ((0)) FOR [CategoryID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_ProductID]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_ProductID]  DEFAULT ((0)) FOR [ProductID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_PrinterID]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_PrinterID]  DEFAULT ((0)) FOR [PrinterID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_TemplatesID]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_TemplatesID]  DEFAULT ((0)) FOR [TemplatesID]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRINTE_JOB_DETAIL_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTE_JOB_DETAIL] ADD  CONSTRAINT [DF_PRINTE_JOB_DETAIL_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRINTER_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRINTER_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRINTER_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRINTER_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRINTER] ADD  CONSTRAINT [DF_PRINTER_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRODUCT_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PRODUCT_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRODUCT_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRODUCT_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRODUCT_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_PRODUCT_PRICE_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[PRODUCT_PRICE] ADD  CONSTRAINT [DF_PRODUCT_PRICE_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_StartShift]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_StartShift]  DEFAULT (getdate()) FOR [StartShift]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CashStart]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CashStart]  DEFAULT ((0)) FOR [CashStart]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CashEnd]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CashEnd]  DEFAULT ((0)) FOR [CashEnd]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_SafeDrop]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_SafeDrop]  DEFAULT ((0)) FOR [SafeDrop]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_SHIFT_HISTORY_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SHIFT_HISTORY] ADD  CONSTRAINT [DF_SHIFT_HISTORY_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_STAFF_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_STAFF_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_STAFF_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_STAFF_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_STAFF_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[STAFF] ADD  CONSTRAINT [DF_STAFF_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_SUB_MENU_Priority]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  Default [DF_SUB_MENU_Status]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_SUB_MENU_CreateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_CreateBy]  DEFAULT ((0)) FOR [CreateBy]
GO
/****** Object:  Default [DF_SUB_MENU_CreateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_SUB_MENU_UpdateBy]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_UpdateBy]  DEFAULT ((0)) FOR [UpdateBy]
GO
/****** Object:  Default [DF_SUB_MENU_UpdateDate]    Script Date: 07/09/2016 15:15:53 ******/
ALTER TABLE [dbo].[SUB_MENU] ADD  CONSTRAINT [DF_SUB_MENU_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
