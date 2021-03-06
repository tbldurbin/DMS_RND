USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByDBSummary]    Script Date: 13-Aug-2018 11:01:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[RPT_Delivery_BuyerByDBSummary]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
Select A.DB_Id, A.DB_Name, A.CEAREA_Name, A.AREA_Name,A.REGION_Name,A.Status, A.cluster, A.DBCode, A.OfficeAddress, ISNULL(D.TotalOutlet,0) As TotalOutlet ,ISNULL(E.BuyerOutlet,0) As BuyerOutlet,(ISNULL(D.TotalOutlet,0)-ISNULL(E.BuyerOutlet,0)) AS NonBuyer
FROM     tbld_db_zone_view AS A
				  Left Join ( 
				  select a1.Distributorid, COUNT(DISTINCT a1.OutletId) AS TotalOutlet from tbld_Outlet As a1				 
				  where a1.IsActive=1
				  Group by  a1.Distributorid
				  ) As D On A.DB_Id=D.Distributorid 
				  Left Join ( 
				  select  t2.DB_id,COUNT(DISTINCT t1.OutletId) AS BuyerOutlet from tbld_Outlet As t1
				  Inner join tblr_OutletWiseBuyer As t2 on t1.OutletId =t2.outlet_id
				  Inner join tbld_Route_Plan_Mapping As t3 on t1.parentid=t3.route_id
				  Where t2.BatchDate between @Start_Date AND @End_Date And t2.sku_id In (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  Group by  t2.DB_id
				  ) As E On A.DB_Id=E.DB_id
				  where A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,',')) 
				  order by A.REGION_id,A.AREA_id,A.CEAREA_id, A.DB_Id

END
