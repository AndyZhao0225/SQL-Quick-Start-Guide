/*
SELECT
  ROUND(AVG(Total),2) AS [Average Total]
FROM
  invoices;
*/  


/*
SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM
  invoices
WHERE
  Total < (SELECT 
	         AVG(Total)
	       FROM 
	         invoices)
ORDER BY
   Total DESC;
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
SELECT
  BillingCity,
  ROUND(AVG(Total),2) AS [City Average],
 (SELECT
    ROUND(AVG(Total),2)  
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
SELECT
  MAX(Total)
FROM
  invoices
WHERE
  InvoiceDate < '2013-01-01';
*/

 
/* 
SELECT
  InvoiceDate,
  BillingCity,
  Total
FROM
  invoices
WHERE
  InvoiceDate >= '2013-01-01'
  AND
  Total > (SELECT
             MAX(Total)
           FROM 
		     invoices
		   WHERE
		     InvoiceDate < '2013-01-01');
*/
			 

/*			 
SELECT
  InvoiceDate,
  Total
FROM
  invoices
WHERE 
  InvoiceDate <= '2010-01-01'	
  AND
  Total > (SELECT
             AVG(Total) 
           FROM
             invoices);
*/
			 

/*			 
SELECT 
  InvoiceDate
FROM
  invoices
WHERE
  invoiceId = 251;
*/


/*
SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity
FROM
  invoices
WHERE
  InvoiceDate > (SELECT
                   InvoiceDate
                 FROM
				   invoices
				 WHERE 
				   InvoiceId = 251);
*/


/*				   
SELECT
  InvoiceDate
FROM
  invoices
WHERE
  InvoiceId IN (251,252,255);
*/
  

/*
SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity
FROM
  invoices
WHERE  
  InvoiceDate IN (SELECT
                    InvoiceDate
                  FROM
				    invoices
				  WHERE
				    InvoiceId IN (251,252,255));
*/


/*
SELECT
  InvoiceId,
  TrackId
FROM
  invoice_items
ORDER BY
  TrackId;
*/


/*  
SELECT
  DISTINCT TrackId
FROM
  invoice_items
ORDER BY
  TrackId;
*/
  

/*  
SELECT
  TrackId,
  Composer,
  Name
FROM
  tracks
WHERE
  TrackId NOT IN (SELECT
                    DISTINCT TrackId
                  FROM
				    invoice_items);
*/


/*
SELECT
  InvoiceId,
  InvoiceDate,
  Total
FROM
  invoices
WHERE
  Total > (SELECT
             AVG(Total)  
           FROM
             invoices
		   WHERE    
		     InvoiceDate BETWEEN '2009-12-31' AND '2011-01-01');
*/


/*			 
SELECT
  i.InvoiceId,
  i.InvoiceDate,
  i.CustomerId,
  c.FirstName,
  c.LastName,
  i.Total
FROM
  invoices AS i
INNER JOIN
  customers AS c
ON
  i.CustomerId = c.CustomerId
WHERE
  Total > (SELECT
             AVG(Total)  
           FROM
             invoices
		   WHERE    
		     InvoiceDate BETWEEN '2009-12-31' AND '2011-01-01');	
*/


SELECT
  --i.InvoiceId,
  --i.InvoiceDate,
  --i.CustomerId,
  --c.FirstName,
  --c.LastName,
  --i.Total
  COUNT(*)
FROM
  invoices AS i
INNER JOIN
  customers AS c
ON
  i.CustomerId = c.CustomerId
WHERE
  c.Country = 'USA'
  AND
  Total > (SELECT
             AVG(Total)  
           FROM
             invoices
		   WHERE    
		     InvoiceDate BETWEEN '2009-12-31' AND '2011-01-01');

			
		
			
	


  
  
  
  