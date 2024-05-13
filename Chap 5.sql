/*
SELECT 
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total,
  CASE
    WHEN Total < 2.00 THEN 'Baseline Purchase'
    WHEN Total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
    WHEN Total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
    ELSE 'Top Performers'
    END AS  PurchaseType	
FROM
  invoices
WHERE
  PurchaseType='Top Performers'
ORDER BY
  BillingCity;
*/
  

/*
SELECT 
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total,
  CASE
    WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
    ELSE 'Foreign Sales'
    END AS SalesType
FROM
  invoices
ORDER BY
  SalesType;
*/  


SELECT 
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total,
  CASE
    WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
    ELSE 'Foreign Sales'
    END AS SalesType
FROM
  invoices
WHERE
  SalesType = 'Domestic Sales' AND Total > 15.00;