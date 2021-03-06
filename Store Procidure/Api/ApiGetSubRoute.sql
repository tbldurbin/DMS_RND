USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[ApiGetSubRoute]    Script Date: 31-Jul-2018 2:24:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ApiGetSubRoute]
@psrid int,
@CurrentDate Datetime

AS
BEGIN
	SELECT DISTINCT  A.db_id,A.db_emp_id,A.route_id,C.RouteName,D.planned_visit_date
FROM ODMS.dbo.tbld_Route_Plan_Mapping  As A
Inner join tbld_distributor_Route As C On A.route_id=C.RouteID
LEFT JOIN (SELECT route_id
      ,dbid
      ,db_emp_id
      ,planned_visit_date
     
  FROM ODMS.dbo.tbld_Route_Plan_Detail As B
  where planned_visit_date=@CurrentDate AND B.db_emp_id=@psrid)AS D On A.db_emp_id=D.db_emp_id AND D.route_id=A.route_id
where A.db_emp_id=@psrid
END
