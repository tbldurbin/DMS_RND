USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[DailySchedule_tbld_sku_list]    Script Date: 15-Aug-2018 9:52:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[DailySchedule_tbld_Route_Plan_Mapping]

AS
BEGIN

TRUNCATE TABLE [ODMSBI].[dbo].[tbld_Route_Plan_Mapping];

INSERT INTO [ODMSBI].[dbo].[tbld_Route_Plan_Mapping]
           ([db_id]
           ,[db_emp_id]
           ,[route_plan_id]
           ,[route_id]
           ,[day])
SELECT [db_id]
      ,[db_emp_id]
      ,[route_plan_id]
      ,[route_id]
      ,[day]
  FROM [ODMS].[dbo].[tbld_Route_Plan_Mapping]
END
