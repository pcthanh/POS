USE [POSEZ2U]
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataBackupDatabase]    Script Date: 2/24/2016 10:51:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByAccount]    Script Date: 2/24/2016 10:51:46 PM ******/
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

ALTER PROCEDURE [dbo].[pos_th_GetDataSaleByAccount]
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
/****** Object:  Table [dbo].[DATABASE_BACKUP]    Script Date: 2/24/2016 10:51:46 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[DATABASE_BACKUP] ADD  CONSTRAINT [DF_DATABASE_BACKUP_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
