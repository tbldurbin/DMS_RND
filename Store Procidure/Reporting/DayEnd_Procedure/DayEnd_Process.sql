USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[DayEnd_Process]    Script Date: 09-Aug-2018 1:28:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[DayEnd_Process] 
	@Dbid int,
	@BatchDate Datetime
	
AS
BEGIN
declare @KPIorderdate as datetime = dateadd(day,-1, @BatchDate)

INSERT INTO [dbo].[tbll_procedure_log]([dbid],[procedure_name],[start_time],[end_time]) VALUES(@Dbid,'DayEnd_Process',GETDATE(),NULL)

/*Outlet StockMovement*/
EXEC [DayEnd_StockMovement] @Db_id = @Dbid, @BatchDate = @BatchDate;

/*Outlet Order&Sales*/
EXEC [DayEnd_OutletWiseSKUWiseOrder] @Db_id = @Dbid, @BatchDate = @BatchDate;
EXEC [DayEnd_OutletWiseSKUWiseDelivery] @Db_id = @Dbid, @BatchDate = @BatchDate;

/*PSR Order&Sales*/
EXEC [DayEnd_PSRWiseSKUWiseOrder] @Db_id = @Dbid, @BatchDate = @BatchDate;
EXEC [DayEnd_PSRWiseSKUWiseDelivery] @Db_id = @Dbid, @BatchDate = @BatchDate;

/*Buyer*/
EXEC [DayEnd_OutletWiseBuyer] @Db_id = @Dbid, @BatchDeliveryDate = @BatchDate;

/*KPI*/
EXEC [DayEnd_PerformanceKPI] @Db_id = @Dbid,@BatchDate =@BatchDate;
EXEC [DayEnd_PerformanceKPI] @Db_id = @Dbid,@BatchDate =@KPIorderdate;


/*PSRWiseMonthTGT*/
EXEC [DayEnd_PSRWiseMonthTGT]	@Db_id = @Dbid,@target_id = 3,@BatchDate=@KPIorderdate
	
INSERT INTO [dbo].[tblr_Disributor_Day_End]([Dbid],[BatchDate],[ProcessDate])  VALUES (@Dbid,@BatchDate,GETDATE());

INSERT INTO [dbo].[tbll_procedure_log]([dbid],[procedure_name],[start_time],[end_time]) VALUES(@Dbid,'DayEnd_Process',NULL,GETDATE())

End
