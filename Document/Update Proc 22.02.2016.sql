USE [POSEZ2U]
GO
/****** Object:  StoredProcedure [dbo].[pos_th_GetDataSaleByAccount]    Script Date: 2/22/2016 7:05:16 PM ******/
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
