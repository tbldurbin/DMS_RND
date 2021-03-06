USE [ODMSBI]
GO
/****** Object:  Table [dbo].[tblr_Disributor_Day_End]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblr_Disributor_Day_End](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Dbid] [int] NOT NULL,
	[BatchDate] [datetime] NOT NULL,
	[ProcessDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblr_OrderDetails]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblr_OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[db_id] [int] NULL,
	[psr_id] [int] NULL,
	[planned_order_date] [datetime2](7) NULL,
	[delivery_date] [datetime2](7) NULL,
	[delivery_Process_Date] [datetime2](7) NULL,
	[Orderid] [int] NULL,
	[outlet_id] [int] NULL,
	[Challan_no] [int] NULL,
	[sku_id] [int] NULL,
	[Betch_id] [int] NULL,
	[Pack_size] [int] NULL,
	[unit_sale_price] [money] NULL,
	[sku_order_type_id] [int] NULL,
	[promotion_id] [int] NULL,
	[quantity_ordered] [int] NULL,
	[quantity_confirmed] [int] NULL,
	[quantity_delivered] [int] NULL,
	[total_sale_price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblr_OutletWiseBuyer]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblr_OutletWiseBuyer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchDate] [date] NULL,
	[BatchDeliveryDate] [date] NULL,
	[DB_id] [int] NULL,
	[Orderid] [int] NULL,
	[outlet_id] [int] NULL,
	[sku_id] [int] NULL,
 CONSTRAINT [PK_tblr_OutletWiseBuyer] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblr_OutletWiseSKUWiseDelivery]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_OutletWiseSKUWiseDelivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchDate] [date] NULL,
	[OutletId] [int] NULL,
	[OutletCode] [int] NULL,
	[OutletName] [varchar](50) NULL,
	[Distributorid] [int] NULL,
	[HaveVisicooler] [int] NULL,
	[SKUId] [int] NULL,
	[SKUName] [varchar](50) NULL,
	[PackSize] [int] NULL,
	[UnitPrice] [float] NULL,
	[SKUVolume8oz] [money] NULL,
	[Delivered_Quentity] [money] NULL,
	[FreeDelivered_Quentity] [money] NULL,
 CONSTRAINT [PK_tblr_OutletWiseSKUWiseDelivery] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblr_OutletWiseSKUWiseOrder]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_OutletWiseSKUWiseOrder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchDate] [date] NULL,
	[OutletId] [int] NULL,
	[OutletCode] [int] NULL,
	[OutletName] [varchar](50) NULL,
	[Distributorid] [int] NULL,
	[HaveVisicooler] [int] NULL,
	[SKUId] [int] NULL,
	[SKUName] [varchar](50) NULL,
	[PackSize] [int] NULL,
	[UnitPrice] [float] NULL,
	[SKUVolume8oz] [money] NULL,
	[Order_Quentity] [money] NULL,
	[Confirmed_Quantity] [money] NULL,
	[FreeOrder_Quentity] [money] NULL,
	[FreeConfirmed_Quantity] [money] NULL,
 CONSTRAINT [PK_tblr_OutletWiseSKUWiseOrder] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblr_PerformanceKPI]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_PerformanceKPI](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DB_id] [varchar](100) NOT NULL,
	[BatchDate] [datetime] NOT NULL,
	[PerformerId] [varchar](100) NOT NULL,
	[PerformerName] [varchar](200) NOT NULL,
	[PerformerType] [int] NOT NULL,
	[SalesScheduleCall] [money] NOT NULL,
	[SalesMemo] [money] NOT NULL,
	[TotalLineSold] [money] NOT NULL,
	[TotalSoldInVolume] [money] NULL,
	[TotalSoldInCase] [money] NULL,
	[TotalSoldInValue] [money] NOT NULL,
	[TotalOrderedInVolume] [money] NULL,
	[TotalOrderedInCase] [money] NOT NULL,
	[TotalOrderedInValue] [money] NOT NULL,
 CONSTRAINT [PK_tblr_PerformanceKPI] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblr_PSRWiseMonthTGT]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblr_PSRWiseMonthTGT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[target_id] [int] NULL,
	[db_id] [int] NULL,
	[psr_id] [int] NULL,
	[TotalTGTCS] [money] NULL,
	[TotalTGTVolume8oz] [money] NULL,
	[TGTOrder] [money] NULL,
	[TGTConfirmed] [money] NULL,
	[TGTDelivered] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblr_PSRWiseSKUWiseDelivery]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_PSRWiseSKUWiseDelivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DB_id] [int] NULL,
	[BatchDate] [date] NULL,
	[PSRId] [int] NULL,
	[PSRName] [varchar](50) NULL,
	[SKUId] [int] NULL,
	[SKUName] [varchar](50) NULL,
	[PackSize] [int] NULL,
	[SKUVolume8oz] [money] NULL,
	[UnitPrice] [money] NULL,
	[Delivered_Quentity] [money] NULL,
	[FreeDelivered_Quentity] [money] NULL,
 CONSTRAINT [PK_tblr_PSRWiseSKUWiseDelivery] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblr_PSRWiseSKUWiseOrder]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_PSRWiseSKUWiseOrder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DB_id] [int] NULL,
	[BatchDate] [date] NULL,
	[PSRId] [int] NULL,
	[PSRName] [varchar](50) NULL,
	[SKUId] [int] NULL,
	[SKUName] [varchar](50) NULL,
	[PackSize] [int] NULL,
	[SKUVolume8oz] [money] NULL,
	[UnitPrice] [money] NULL,
	[Order_Quentity] [money] NULL,
	[Confirmed_Quantity] [money] NULL,
	[FreeOrder_Quentity] [money] NULL,
	[FreeConfirmed_Quantity] [money] NULL,
 CONSTRAINT [PK_tblr_PSRWiseSKUWiseOrder] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblr_StockMovement]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblr_StockMovement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchDate] [date] NULL,
	[dbId] [int] NULL,
	[SKUid] [int] NULL,
	[BatchNo] [int] NULL,
	[PackSize] [int] NULL,
	[db_lifting_price] [money] NULL,
	[outlet_lifting_price] [money] NULL,
	[mrp] [money] NULL,
	[ClosingSoundStockQty] [int] NULL,
	[ClosingBookedStockQty] [int] NULL,
	[PrimaryChallanQty] [int] NULL,
	[PrimaryQty] [int] NULL,
	[SalesQty] [int] NULL,
	[FreeSalesQty] [int] NULL,
 CONSTRAINT [PK_tblr_StockMovement] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByDBDetails]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_BuyerByDBDetails]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN


SELECT A.DB_Id, A.DB_Name, A.CEAREA_Name, A.AREA_Name, A.REGION_Name, A.Status, A.Cluster, A.DBCode, A.OfficeAddress, C.SKU_id, C.SKUName, ISNULL(D.TotalOutlet, 0) AS TotalOutlet, ISNULL(E.BuyerOutlet, 0) AS BuyerOutlet, 
                  ISNULL(D.TotalOutlet, 0) - ISNULL(E.BuyerOutlet, 0) AS NonBuyer
FROM     tbld_db_zone_view AS A INNER JOIN
                      (SELECT DISTINCT sku_id AS skuid, bundle_price_id
                       FROM      tbld_bundle_price_details AS t1) AS B ON A.PriceBuandle_id = B.bundle_price_id INNER JOIN
                  tbld_SKU AS C ON B.skuid = C.SKU_id LEFT OUTER JOIN
                      (SELECT Distributorid, COUNT(DISTINCT OutletId) AS TotalOutlet
                       FROM      tbld_Outlet AS a1
                       WHERE   (IsActive = 1)
                       GROUP BY Distributorid) AS D ON A.DB_Id = D.Distributorid LEFT OUTER JOIN
                      (SELECT t2.DB_id, t2.sku_id, COUNT(DISTINCT t1.OutletId) AS BuyerOutlet
                       FROM      tbld_Outlet AS t1 INNER JOIN
                                         tblr_OutletWiseBuyer AS t2 ON t1.OutletId = t2.outlet_id INNER JOIN
                                         tbld_Route_Plan_Mapping AS t3 ON t1.parentid = t3.route_id
                       WHERE   (t2.BatchDate BETWEEN @Start_Date AND @End_Date)
                       GROUP BY t2.DB_id, t2.sku_id) AS E ON A.DB_Id = E.DB_id AND B.skuid = E.sku_id
WHERE  (A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,','))) AND (B.skuid IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,',')))
ORDER BY A.REGION_id, A.AREA_id, A.CEAREA_id, A.DB_Id, B.skuid

	

END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByDBsOutletList]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_BuyerByDBsOutletList]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT  A.REGION_Name, A.AREA_Name,A.CEAREA_Name, A.DB_Name,  A.DBCode,A.cluster,  A.Name As PSR_Name, A.PSR_Code,
                  A.RouteName,A.OutletCode, A.OutletName, A.Address,A.OwnerName, A.ContactNo, IIF(A.HaveVisicooler = 1,'Yes','No') AS HaveVisicooler, ISNULL(A.channel_name,'') As Channel, ISNULL(A.outlet_category_name,'') As Category, ISNULL(A.Outlet_grade,'') As Grade
FROM     tbld_db_psr_outlet_zone_view AS A 
where A.OutletId in (SELECT DISTINCT outlet_id AS OutletId
                       FROM      tblr_OutletWiseBuyer AS t2
                       WHERE   (BatchDate BETWEEN @Start_Date AND @End_Date) AND (sku_id IN
                                             (SELECT Value
                                              FROM      dbo.FunctionStringtoIntlist(@skuids, ','))))  AND  (A.DB_Id IN(SELECT Value FROM      dbo.FunctionStringtoIntlist(@dbids, ','))) AND (A.IsActive = 1)
ORDER BY A.REGION_id, A.AREA_id, A.CEAREA_id, A.DB_Id,A.PSR_id,A.RouteID
END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByDBSummary]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_BuyerByDBSummary]
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

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByPSRDetails]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_BuyerByPSRDetails]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN


SELECT A.DB_Name, A.CEAREA_Name, A.AREA_Name,A.REGION_Name,A.PSR_id, A.PSR_Code, A.name As PSR_Name,A.cluster, A.DBCode, A.OfficeAddress, C.SKU_id, C.SKUName, ISNULL(D.TotalOutlet, 0) AS TotalOutlet, ISNULL(E.BuyerOutlet, 0) AS BuyerOutlet, 
                  ISNULL(D.TotalOutlet, 0) - ISNULL(E.BuyerOutlet, 0) AS NonBuyer
FROM     tbld_db_psr_zone_view AS A INNER JOIN
                      (SELECT DISTINCT sku_id AS skuid, bundle_price_id
                       FROM      tbld_bundle_price_details AS t1) AS B ON A.PriceBuandle_id = B.bundle_price_id INNER JOIN
                  tbld_SKU AS C ON B.skuid = C.SKU_id  Left Join ( 
				  select a1.Distributorid,a2.db_emp_id As psr_id, COUNT(DISTINCT a1.OutletId) AS TotalOutlet from tbld_Outlet As a1
				  Inner join tbld_Route_Plan_Mapping As a2 on a1.parentid=a2.route_id				   
				  where a1.IsActive=1
				  Group by  a1.Distributorid,a2.db_emp_id
				  ) As D On A.DB_Id=D.Distributorid AND A.PSR_id=D.psr_id Left Join ( 
				  select  t2.DB_id,t3.db_emp_id As psr_id,t2.sku_id,COUNT(DISTINCT t1.OutletId) AS BuyerOutlet from tbld_Outlet As t1
				  Inner join tblr_OutletWiseBuyer As t2 on t1.OutletId =t2.outlet_id
				  Inner join tbld_Route_Plan_Mapping As t3 on t1.parentid=t3.route_id
				  Where t2.BatchDate between @Start_Date and @End_Date And t2.sku_id In (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  Group by  t2.DB_id,t3.db_emp_id,t2.sku_id
				  ) As E On A.DB_Id=E.DB_id And A.PSR_id=E.psr_id AND B.skuid = E.sku_id
WHERE  (A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,','))) AND (B.skuid IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,',')))
ORDER BY A.REGION_id, A.AREA_id, A.CEAREA_id, A.DB_Id,A.PSR_id, B.skuid

	

END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByPSRsOutletList]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[RPT_Delivery_BuyerByPSRsOutletList]
	@Start_Date Datetime,
	@End_Date Datetime,
	@Psrids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT  A.REGION_Name, A.AREA_Name,A.CEAREA_Name, A.DB_Name,  A.DBCode,A.cluster,  A.Name As PSR_Name, A.PSR_Code,
                  A.RouteName,A.OutletCode, A.OutletName, A.Address,A.OwnerName, A.ContactNo, IIF(A.HaveVisicooler = 1,'Yes','No') AS HaveVisicooler, ISNULL(A.channel_name,'') As Channel, ISNULL(A.outlet_category_name,'') As Category, ISNULL(A.Outlet_grade,'') As Grade
FROM     tbld_db_psr_outlet_zone_view AS A 
where A.OutletId in (SELECT DISTINCT outlet_id AS OutletId
                       FROM      tblr_OutletWiseBuyer AS t2
                       WHERE   (BatchDate BETWEEN @Start_Date AND @End_Date) AND (sku_id IN
                                             (SELECT Value
                                              FROM      dbo.FunctionStringtoIntlist(@skuids, ','))))  AND  (A.PSR_id IN(SELECT Value FROM      dbo.FunctionStringtoIntlist(@Psrids, ','))) AND (A.IsActive = 1)
ORDER BY A.REGION_id, A.AREA_id, A.CEAREA_id, A.DB_Id,A.PSR_id,A.RouteID
END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByPSRSummary]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_BuyerByPSRSummary]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT A.DB_Name, A.CEAREA_Name, A.AREA_Name,A.REGION_Name,A.PSR_id, A.PSR_Code, A.name As PSR_Name,A.cluster, A.DBCode, A.OfficeAddress, ISNULL(D.TotalOutlet,0) As TotalOutlet ,ISNULL(E.BuyerOutlet,0) As BuyerOutlet,(ISNULL(D.TotalOutlet,0)-ISNULL(E.BuyerOutlet,0)) AS NonBuyer
FROM     tbld_db_psr_zone_view AS A
				  Left Join ( 
				  select a1.Distributorid,a2.db_emp_id As psr_id, COUNT(DISTINCT a1.OutletId) AS TotalOutlet from tbld_Outlet As a1
				  Inner join tbld_Route_Plan_Mapping As a2 on a1.parentid=a2.route_id				   
				  where a1.IsActive=1
				  Group by  a1.Distributorid,a2.db_emp_id
				  ) As D On A.DB_Id=D.Distributorid AND A.PSR_id=D.psr_id
				  Left Join ( 
				  select  t2.DB_id,t3.db_emp_id As psr_id,COUNT(DISTINCT t1.OutletId) AS BuyerOutlet from tbld_Outlet As t1
				  Inner join tblr_OutletWiseBuyer As t2 on t1.OutletId =t2.outlet_id
				  Inner join tbld_Route_Plan_Mapping As t3 on t1.parentid=t3.route_id
				  Where t2.BatchDate between @Start_Date and @End_Date And t2.sku_id In (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  Group by  t2.DB_id,t3.db_emp_id
				  ) As E On A.DB_Id=E.DB_id And A.PSR_id=E.psr_id
				  where A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,','))
				  Order by A.REGION_id,A.AREA_id,A.CEAREA_id,A.DB_Id,A.PSR_id

END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_DBPerformanceKPISummary]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE  [dbo].[RPT_Delivery_DBPerformanceKPISummary]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX)
AS
BEGIN
	SELECT A.DB_Id, A.DB_Name, A.CEAREA_Name, A.AREA_Name, A.REGION_Name, A.DBCode, A.OfficeAddress, B.PerformerId,A.DB_Name AS PerformerName, 
                  C.TotalTGTCS, C.TotalTGTVolume8oz, SUM(B.SalesScheduleCall) AS SalesScheduleCall, SUM(B.SalesMemo) AS SalesMemo, SUM(B.TotalLineSold) AS TotalLineSold, SUM(B.TotalSoldInVolume) AS TotalSoldInVolume8oZ, 
                  SUM(B.TotalSoldInCase) AS TotalSoldInCase, SUM(B.TotalSoldInValue) AS TotalSoldInValue, SUM(B.TotalOrderedInVolume) AS TotalOrderedInVolume8oZ, SUM(B.TotalOrderedInCase) AS TotalOrderedInCase, 
                  SUM(B.TotalOrderedInValue) AS TotalOrderedInValue
FROM     tbld_db_zone_view AS A INNER JOIN tblr_PerformanceKPI AS B ON A.DB_Id = B.DB_id
LEFT JOIN (SELECT db_id,sum(TotalTGTCS) AS TotalTGTCS,Sum(TotalTGTVolume8oz) AS TotalTGTVolume8oz
FROM     tblr_PSRWiseMonthTGT
WHERE  target_id IN (SELECT DISTINCT t1.id FROM      tbld_Target AS t1 INNER JOIN
                                         tbl_calendar AS t2 ON t1.MonthNo = t2.MonthNo AND t1.Year=t2.Year
										 Where t2.Date between @Start_Date AND @End_Date)
GROUP BY db_id)AS C on C.db_id=A.DB_Id
Where B.BatchDate between @Start_Date AND @End_Date AND B.PerformerType=1 AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,','))
GROUP BY A.REGION_Name, A.AREA_Name, A.CEAREA_Name, A.DB_Id, A.DB_Name, A.DBCode,A.OfficeAddress, B.PerformerId, B.PerformerName, C.TotalTGTCS, C.TotalTGTVolume8oz

END


GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_NonBuyerByDBsOutletList]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_NonBuyerByDBsOutletList]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT  A.REGION_Name, A.AREA_Name,A.CEAREA_Name, A.DB_Name,  A.DBCode,A.cluster,  A.Name As PSR_Name, A.PSR_Code,
                  A.RouteName,A.OutletCode, A.OutletName, A.Address,A.OwnerName, A.ContactNo, IIF(A.HaveVisicooler = 1,'Yes','No') AS HaveVisicooler, ISNULL(A.channel_name,'') As Channel, ISNULL(A.outlet_category_name,'') As Category, ISNULL(A.Outlet_grade,'') As Grade
FROM     tbld_db_psr_outlet_zone_view AS A 
where A.OutletId Not in (SELECT DISTINCT outlet_id AS OutletId
                       FROM      tblr_OutletWiseBuyer AS t2
                       WHERE   (BatchDate BETWEEN @Start_Date AND @End_Date) AND (sku_id IN
                                             (SELECT Value
                                              FROM      dbo.FunctionStringtoIntlist(@skuids, ','))))  AND  (A.DB_Id IN(SELECT Value FROM      dbo.FunctionStringtoIntlist(@dbids, ','))) AND (A.IsActive = 1)
ORDER BY A.REGION_id, A.AREA_id, A.CEAREA_id, A.DB_Id,A.PSR_id,A.RouteID
END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_NonBuyerByPSRsOutletList]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[RPT_Delivery_NonBuyerByPSRsOutletList]
	@Start_Date Datetime,
	@End_Date Datetime,
	@Psrids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT  A.REGION_Name, A.AREA_Name,A.CEAREA_Name, A.DB_Name,  A.DBCode,A.cluster,  A.Name As PSR_Name, A.PSR_Code,
                  A.RouteName,A.OutletCode, A.OutletName, A.Address,A.OwnerName, A.ContactNo, IIF(A.HaveVisicooler = 1,'Yes','No') AS HaveVisicooler, ISNULL(A.channel_name,'') As Channel, ISNULL(A.outlet_category_name,'') As Category, ISNULL(A.Outlet_grade,'') As Grade
FROM     tbld_db_psr_outlet_zone_view AS A 
where A.OutletId Not in (SELECT DISTINCT outlet_id AS OutletId
                       FROM      tblr_OutletWiseBuyer AS t2
                       WHERE   (BatchDate BETWEEN @Start_Date AND @End_Date) AND (sku_id IN
                                             (SELECT Value
                                              FROM      dbo.FunctionStringtoIntlist(@skuids, ','))))  AND  (A.PSR_id IN(SELECT Value FROM      dbo.FunctionStringtoIntlist(@Psrids, ','))) AND (A.IsActive = 1)
ORDER BY A.REGION_id, A.AREA_id, A.CEAREA_id, A.DB_Id,A.PSR_id,A.RouteID
END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_OutletWiseSKUWiseDelivery]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_OutletWiseSKUWiseDelivery]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.National_id, A.[National], A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress, A.cluster, 
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade, B.Distributorid,B.SKUId,B.SKUName,B.PackSize,SUM(B.Delivered_Quentity) AS Delivered_Quentity,SUM(B.Delivered_Quentity* B.UnitPrice) AS Value,
                   SUM(B.FreeDelivered_Quentity) AS FreeDelivered_Quentity
FROM     tbld_db_psr_outlet_zone_view AS A INNER JOIN
                  tblr_OutletWiseSKUWiseDelivery AS B ON A.OutletId = B.OutletId
				    where   B.BatchDate between @Start_Date AND @End_Date AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,',')) AND B.SKUId IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  Group by A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.National_id, A.[National], A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress, A.cluster, 
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade, B.Distributorid,B.SKUId,B.SKUName,B.PackSize

				
END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_OutletWiseSummary]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[RPT_Delivery_OutletWiseSummary]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress,
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade, SUM(B.Delivered_Quentity/B.PackSize) AS Delivered_Quentity,SUM(B.Delivered_Quentity* B.UnitPrice) AS Value,
                   SUM(B.FreeDelivered_Quentity/B.PackSize) AS FreeDelivered_Quentity
FROM     ODMS.dbo.tbld_db_psr_outlet_zone_view AS A INNER JOIN
                  tblr_OutletWiseSKUWiseDelivery AS B ON A.OutletId = B.OutletId
				   where   B.BatchDate between @Start_Date AND @End_Date AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,',')) AND B.SKUId IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  Group by A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress,
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade



				
END
GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_PSRPerformanceKPISummary]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[RPT_Delivery_PSRPerformanceKPISummary]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX)
AS
BEGIN
	SELECT A.DB_Id, A.DB_Name, A.CEAREA_Name, A.AREA_Name, A.REGION_Name, A.DBCode, A.OfficeAddress,A.cluster,A.PSR_Code, B.PerformerId, A.Name As PerformerName, 
                  C.TotalTGTCS, C.TotalTGTVolume8oz, SUM(B.SalesScheduleCall) AS SalesScheduleCall, SUM(B.SalesMemo) AS SalesMemo, SUM(B.TotalLineSold) AS TotalLineSold, SUM(B.TotalSoldInVolume) AS TotalSoldInVolume8oZ, 
                  SUM(B.TotalSoldInCase) AS TotalSoldInCase, SUM(B.TotalSoldInValue) AS TotalSoldInValue, SUM(B.TotalOrderedInVolume) AS TotalOrderedInVolume8oZ, SUM(B.TotalOrderedInCase) AS TotalOrderedInCase, 
                  SUM(B.TotalOrderedInValue) AS TotalOrderedInValue
FROM     tbld_db_psr_zone_view AS A INNER JOIN tblr_PerformanceKPI AS B ON A.DB_Id = B.DB_id AND A.PSR_id=B.PerformerId
LEFT JOIN (SELECT db_id, psr_id, sum(TotalTGTCS) AS TotalTGTCS,Sum(TotalTGTVolume8oz) AS TotalTGTVolume8oz
FROM     tblr_PSRWiseMonthTGT
WHERE  target_id IN (SELECT DISTINCT t1.id FROM      tbld_Target AS t1 INNER JOIN
                                         tbl_calendar AS t2 ON t1.MonthNo = t2.MonthNo AND t1.Year=t2.Year
										 Where t2.Date between @Start_Date AND @End_Date)
GROUP BY db_id, psr_id)AS C on C.db_id=A.DB_Id AND C.psr_id=B.PerformerId 
Where B.BatchDate between @Start_Date AND @End_Date AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,','))
GROUP BY A.REGION_Name, A.AREA_Name, A.CEAREA_Name, A.DB_Id, A.DB_Name, A.DBCode,A.OfficeAddress,A.cluster,A.PSR_Code, B.PerformerId, A.Name, C.TotalTGTCS, C.TotalTGTVolume8oz

END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_PSRWiseSKUWiseDelivery]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_PSRWiseSKUWiseDelivery]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
	SELECT A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, B.PSRId, B.PSRName, B.SKUId, B.SKUName, B.PackSize, 
                  B.SKUVolume8oz, B.UnitPrice, SUM(B.Delivered_Quentity)AS Delivered_Quentity, SUM(B.FreeDelivered_Quentity)AS FreeDelivered_Quentity
FROM     tbld_db_zone_view AS A INNER JOIN
                  tblr_PSRWiseSKUWiseDelivery AS B ON A.DB_Id = B.DB_id
				  where A.Status=1 and  (B.BatchDate between @Start_Date AND @End_Date) AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,',')) AND B.SKUId IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  GROUP BY A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name,B.PSRId, B.PSRName, B.SKUId, B.SKUName, B.PackSize, 
                  B.SKUVolume8oz, B.UnitPrice

END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Order_OutletWiseSKUWiseOrder]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Order_OutletWiseSKUWiseOrder]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids varchar(100),
	@skuids varchar(100)
AS
BEGIN
	SELECT A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.National_id, A.[National], A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress, A.cluster, 
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade, B.Distributorid,B.SKUId,B.SKUName,B.PackSize,SUM(B.Order_Quentity) AS Order_Quentity,SUM(B.Order_Quentity* B.UnitPrice) AS Value,
                   SUM(B.FreeOrder_Quentity) AS FreeOrder_Quentity
FROM     tbld_db_psr_outlet_zone_view AS A INNER JOIN
                  tblr_OutletWiseSKUWiseOrder AS B  ON A.OutletId = B.OutletId
WHERE  (B.BatchDate BETWEEN @Start_Date AND @End_Date)  AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,',')) AND B.SKUId IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
Group by A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.National_id, A.[National], A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress, A.cluster, 
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade, B.Distributorid,B.SKUId,B.SKUName,B.PackSize				

				
END

GO
/****** Object:  StoredProcedure [dbo].[RPT_Order_PSRWiseSKUWiseOrder]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Order_PSRWiseSKUWiseOrder]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
	SELECT A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, B.PSRId, B.PSRName, B.SKUId, B.SKUName, B.PackSize, 
                  B.SKUVolume8oz, B.UnitPrice,SUM( B.Order_Quentity) AS Order_Quentity, SUM(B.Confirmed_Quantity)AS Confirmed_Quantity, SUM(B.FreeOrder_Quentity)AS FreeOrder_Quentity, SUM(B.FreeConfirmed_Quantity) AS FreeConfirmed_Quantity
FROM     tbld_db_zone_view AS A INNER JOIN
                  tblr_PSRWiseSKUWiseOrder AS B ON A.DB_Id = B.DB_id
				  where A.Status=1 and  (B.BatchDate between @Start_Date AND @End_Date) AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,',')) AND B.SKUId IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  GROUP BY A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name,B.PSRId, B.PSRName, B.SKUId, B.SKUName, B.PackSize, 
                  B.SKUVolume8oz, B.UnitPrice
END

GO
/****** Object:  StoredProcedure [dbo].[RPT_StockMovement]    Script Date: 15-Aug-2018 1:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_StockMovement] 	
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbid int
AS
BEGIN
	SELECT B.db_id, 
       A.sku_id, 
       E.skuname, 
       F.qty 
       AS PackSize, 
       A.batch_id, 
       A.db_lifting_price, 
       A.outlet_lifting_price, 
       A.mrp, 
       Isnull(C.openingsoundstockqty, 0) 
       AS OpeningSoundStockQty, 
       Isnull(C.openingbookedstockqty, 0) 
       AS OpeningBookedStockQty, 
       Isnull(D.primarychallanqty, 0) 
       AS PrimaryChallanQty, 
       Isnull(D.primaryqty, 0) 
       AS PrimaryQty, 
       Isnull(D.salesqty, 0) 
       AS SalesQty, 
       Isnull(D.freesalesqty, 0) 
       AS FreeSalesQty,
	   Isnull(( (Isnull(openingsoundstockqty,0) + Isnull(openingbookedstockqty,0) + Isnull(primaryqty,0)) - (Isnull(salesqty,0) + Isnull(freesalesqty,0)) ) 
       , 0)AS 
       ClosingStockQty
FROM   tbld_bundle_price_details AS A 
       INNER JOIN tbld_distribution_house AS B 
               ON A.bundle_price_id = B.pricebuandle_id 
       LEFT OUTER JOIN (SELECT dbid, 
                               skuid, 
                               batchno, 
                               closingsoundstockqty  AS OpeningSoundStockQty, 
                               closingbookedstockqty AS OpeningBookedStockQty 
                        FROM   tblr_stockmovement 
                        WHERE  ( batchdate = dateadd(day,-1, @Start_Date) )) AS C 
                    ON C.dbid = B.db_id 
                       AND C.skuid = A.sku_id 
                       AND C.batchno = A.batch_id 
       LEFT OUTER JOIN (SELECT dbid, 
                               skuid, 
                               batchno, 
                               Sum(primarychallanqty) AS PrimaryChallanQty, 
                               Sum(primaryqty)        AS PrimaryQty, 
                               Sum(salesqty)          AS SalesQty, 
                               Sum(freesalesqty)      AS FreeSalesQty 
                        FROM   tblr_stockmovement 
                        WHERE  ( batchdate BETWEEN @Start_Date AND @End_Date
                               ) 
                        GROUP  BY dbid, 
                                  skuid, 
                                  batchno) AS D 
                    ON D.dbid = B.db_id 
                       AND D.skuid = A.sku_id 
                       AND D.batchno = A.batch_id 
       INNER JOIN tbld_sku AS E 
               ON A.sku_id = E.sku_id 
       LEFT JOIN tbld_sku_unit AS F 
              ON E.skuunit = F.id 
			  Where B.DB_Id =@dbid
END

GO
