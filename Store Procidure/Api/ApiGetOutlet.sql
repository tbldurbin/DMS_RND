USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[ApiGetOutlet]    Script Date: 31-Jul-2018 2:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ApiGetOutlet] 
	@Psrid int
AS
BEGIN

SELECT PSR_id      
      ,RouteName
      ,RouteID
      ,OutletId
      ,OutletCode
      ,OutletName      
       ,Address
      ,GpsLocation
      ,OwnerName
      ,ContactNo
      ,Distributorid
      ,HaveVisicooler
      ,parentid     
      ,Latitude
      ,Longitude     
      ,IsActive
      ,channel_name
      ,outlet_category_name
      ,Outlet_grade
  FROM ODMS.dbo.tbld_db_psr_outlet_zone_view 
  where PSR_id=@Psrid and IsActive=1
END
