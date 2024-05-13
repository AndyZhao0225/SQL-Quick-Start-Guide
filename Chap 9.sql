/*
SELECT 
  ROUND(AVG(Total),2) AS [Average Total]
FROM
  invoices;
*/


/*
CREATE VIEW V_AvgTotal AS
SELECT
  ROUND(AVG(Total),2) AS [Average Total]
FROM  
  invoices;
*/
  
  
/*
CREATE VIEW V_SpecInvoiceDate AS 
SELECT
  InvoiceDate
FROM
  invoices
WHERE
  InvoiceId IN (251,252,255);
*/


/*
CREATE VIEW V_Tracks_InvoiceItems AS
SELECT
  ii.InvoiceId,
  ii.UnitPrice,
  ii.Quantity,
  t.Name,
  t.Composer,
  t.Milliseconds
FROM 
  invoice_items ii
INNER JOIN
  tracks t
ON
  ii.TrackId = t.TrackId;
*/


/*
CREATE VIEW V_inv_cus_emp AS  
SELECT
  i.InvoiceDate,
  i.InvoiceId,
  i.total,
  i.CustomerId,
  c.FirstName,
  c.LastName,
  c.SupportRepId,
  e.EmployeeId,
  e.LastName,
  e.FirstName,
  e.Title
FROM
  invoices AS i
INNER JOIN
  customers AS c
ON
  i.CustomerId = c.CustomerId 
INNER JOIN
  employees AS e
ON
  c.SupportRepId = e.EmployeeId
ORDER BY
  i.InvoiceDate
*/


/*
SELECT
  *
FROM
  V_Tracks_InvoiceItems ii 
INNER JOIN 
  V_inv_cus_emp ice
ON
  ii.InvoiceId = ice.InvoiceId;
*/


/*
DROP VIEW
  V_AvgTotal;
*/


/*
SELECT
  BillingCity,
  AVG(Total) AS [City Average],
  (SELECT
     AVG(Total)
   FROM 
     invoices) AS [Global Average]
FROM
  invoices
GROUP BY
  BillingCity
ORDER BY
  BillingCity;
 */
  

/*
CREATE VIEW V_GlobalAverage AS 
SELECT
  AVG(Total)
FROM 
  invoices;
*/


/*
SELECT
  BillingCity,
  AVG(Total) AS [City Average],
  (SELECT
     *
   FROM 
     V_GlobalAverage) AS [Global Average]
FROM
  invoices
GROUP BY
  BillingCity
ORDER BY
  BillingCity;
*/
  
/*
CREATE VIEW V_CityAvgVsGlobalAvg AS
SELECT
  BillingCity,
  AVG(Total) AS [City Average],
  (SELECT
     *
   FROM 
     V_GlobalAverage) AS [Global Average]
FROM
  invoices
GROUP BY
  BillingCity
ORDER BY
  BillingCity;
*/
  
  
/*
DROP VIEW
  V_GlobalAverage;
*/


SELECT
  * 
FROM
  V_CityAvgVsGlobalAvg;
  
 
  

  