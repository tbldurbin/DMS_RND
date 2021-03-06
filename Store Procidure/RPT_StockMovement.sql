USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[RPT_StockMovement]    Script Date: 11-Aug-2018 3:58:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[RPT_StockMovement] 	
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
