/*
SELECT
  COUNT(LastName) AS [NameCount]
FROM
  customers
WHERE
  LastName LIKE 'B%';
*/
  

/*  
SELECT 
  FirstName,
  LastName,
  Address
FROM
  customers
WHERE
  Country = 'USA';
*/


/*
SELECT
  FirstName || LastName
FROM
  customers
WHERE
  CustomerId = 1;
*/
  

/*  
SELECT
  FirstName,
  LastName,
  FirstName || ' ' || LastName 
FROM
  customers
WHERE
  Country = 'USA';
*/
  

/*  
SELECT
  FirstName,
  LastName,
  FirstName || ' ' || LastName AS [Full Name]
FROM
  customers
WHERE
  Country = 'USA';  
*/
  

/*  
SELECT
  FirstName || ' ' || LastName || ' ' ||
  Address || ', ' || City || ', ' || State || ' ' ||
  PostalCode AS [Mailling Address]
FROM
  customers
WHERE
  Country = 'USA';
*/
  

/*  
SELECT
  PostalCode,
  LENGTH(PostalCode) AS [Postal Code Length]
FROM
  customers
WHERE
  Country = 'USA';
*/
  


/*  
SELECT
  PostalCode,
  SUBSTR(PostalCode,1,5) AS [Five Digit Postal Code]
FROM
  customers
WHERE
  Country = 'USA';
*/
  

/*  
SELECT
  PostalCode,
  SUBSTR(PostalCode,1,5) AS [Five Digit Postal Code],
  SUBSTR(PostalCode,7) AS [ZIP+4 Code]
FROM
  customers
WHERE
  Country = 'USA';
*/


/*
SELECT
  FirstName AS [First Name Unmodified],
  UPPER(FirstName) AS [First Name in UPPERCASE],
  LOWER(FirstName) AS [First Name in lowercase],
  UPPER(FirstName) || ' ' || UPPER(LastName) AS [Full Name in UPPERCASE]
FROM
  customers;
*/


/*
SELECT
  LastName,
  FirstName,
  STRFTIME('%Y-%m-%d',BirthDate) AS [BirthDate No Timecode],
  STRFTIME('%Y-%m-%d','now') - STRFTIME('%Y-%m-%d',BirthDate) AS [Age]
FROM
  employees
ORDER BY 
  Age;
*/
  

/*
SELECT
  FirstName || ' ' || LastName AS [Full Name],
  BirthDate,
  STRFTIME('%m-%d',BirthDate,'start of month')  AS [Celebration Day]
FROM
  employees
ORDER BY 
  [Celebration Day];  
*/


/*  
SELECT
  LastName,
  FirstName,
  STRFTIME('%Y-%m-%d','now') - STRFTIME('%Y-%m-%d',HireDate) AS [Years with the company]
FROM
  employees
ORDER BY
  [Years with the company] DESC;
*/


/*
SELECT
  SUM(Total) AS [Total Sales]
FROM
  invoices;
*/
  

/*  
SELECT 
  SUM(Total) AS TotalSale,
  AVG(Total) AS AverageSales,
  MAX(Total) AS MaximunSale,
  MIN(Total) AS MinimumSale,
  COUNT(*) AS SalesCount
FROM
  invoices;
*/
  

/*  
SELECT
  AVG(Total) AS [Average Sales],
  ROUND(AVG(Total),2) AS [Rounded Average Sales]
FROM
  invoices;
*/
  

/*
--This shows an incorrect way to use aggregate functions
SELECT
  BillingCity,
  AVG(Total)
FROM
  invoices
ORDER BY
  BillingCity;  
*/


/*
SELECT
  BillingCity,
  ROUND(AVG(Total),2) AS [Average Sales]
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
  AVG(Total)
FROM 
  invoices
WHERE
  BillingCity LIKE 'L%'
GROUP BY
  BillingCity
ORDER BY
  BillingCity;
*/

/*
--This shows an error of using 'where' in a aggregated field
SELECT
  BillingCity,
  AVG(Total)
FROM
  invoices
WHERE
  AVG(Total) > 5
GROUP BY
  BillingCity
ORDER BY
  BillingCity;
*/


/*
SELECT
  BillingCity,
  AVG(Total)
FROM
  invoices
GROUP BY
  BillingCity
HAVING
  AVG(Total) > 5
ORDER BY
  BillingCity;
*/


/*
SELECT
  BillingCity,
  AVG(Total)
FROM
  invoices
WHERE
  BillingCity LIKE 'B%'
GROUP BY
  BillingCity
HAVING
  AVG(Total) > 5
ORDER BY
  BillingCity;
*/


/*
SELECT
  BillingCountry,
  BillingCity,
  AVG(Total)
FROM
  invoices
GROUP BY
  BillingCountry, BillingCity
ORDER BY
  BillingCountry;  
*/


/*
SELECT
  UPPER(FirstName) || ' ' || UPPER(LastName) || ' ' ||
  Address || ', ' || City || ', ' || State || ' ' || ' ' ||
  SUBSTR(PostalCode,1,5) AS [Mailing Address]
FROM
  customers
WHERE
  Country = 'USA';
*/
  

/*  
SELECT
  BillingCountry,
  SUM(Total) / (STRFTIME('%Y',MAX(InvoiceDate)) - STRFTIME("%Y",MIN(InvoiceDate)) + 1) AS [Annual Sales]
FROM
  invoices
GROUP BY
  BillingCountry
HAVING
  BillingCountry = 'USA';
*/
 

/*  
SELECT
  SUM(Total)
FROM
  invoices; 
*/ 


SELECT
  c.CustomerId,
  c.LastName,
  c.FirstName,
  SUM(i.Total) AS [Total Sales]
FROM
  customers AS c
INNER JOIN 
  invoices AS i
ON
  c.CustomerId = i.CustomerId
GROUP BY 
  c.CustomerId
ORDER BY
  [Total Sales] DESC
LIMIT 10;

  