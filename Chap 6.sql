/*
SELECT 
  *
FROM
  invoices 
INNER JOIN 
  customers
ON
  invoices.CustomerId = customers.CustomerId;
*/  


/*
SELECT 
  *
FROM
  invoices AS i
INNER JOIN 
  customers AS c
ON
  i.CustomerId = c.CustomerId;  
*/


/*  
SELECT 
  c.LastName,
  c.FirstName,
  i.InvoiceId,
  i.CustomerId,
  i.InvoiceDate,
  i.Total
FROM
  invoices AS i
INNER JOIN 
  customers AS c
ON
  i.CustomerId = c.CustomerId
ORDER BY
  c.lastName;
*/


/*
SELECT
  *
FROM
  invoices AS i
LEFT OUTER JOIN 
  customers AS c
ON 
  i.CustomerId = c.CustomerId; 
*/


/*
SELECT 
  *
FROM 
  invoices AS i
RIGHT OUTER JOIN
  customers AS C 
ON
  i.CustomerId = c.CustomerId;
*/


/*
SELECT
  e.LastName,
  e.FirstName,
  e.EmployeeId,
  c.FirstName,
  c.LastName,
  c.SupportRepId,
  i.CustomerId,
  i.Total 
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
  i.Total DESC
LIMIT 10;
*/


/*
SELECT
  e.LastName,
  e.FirstName,
  e.EmployeeId,
  c.FirstName,
  c.LastName,
  c.SupportRepId,
  i.CustomerId,
  ii.InvoiceLineId,
  i.Total 
FROM 
  invoice_items AS ii
INNER JOIN
  invoices AS i
ON
  ii.InvoiceId = i.InvoiceId
INNER JOIN
  customers AS c 
ON
  i.CustomerId = c.CustomerId
INNER JOIN
  employees AS e
ON
  c.SupportRepId = e.EmployeeId
ORDER BY
  i.Total DESC;
*/


/*
SELECT
  ar.ArtistId AS [ArtistId From Artists Table],
  al.ArtistId AS [ArtistId From Albums Table],
  ar.Name AS [Artist Name],
  al.Title AS [Album Title]
FROM
  artists AS AR
LEFT OUTER JOIN
  albums AS al
ON
  ar.ArtistId = al.ArtistId;
*/
  

/*  
SELECT
  ar.ArtistId AS [ArtistId From Artists Table],
  al.ArtistId AS [ArtistId From Albums Table],
  ar.Name AS [Artist Name],
  al.Title AS [Album Title]
FROM
  artists AS AR
LEFT OUTER JOIN
  albums AS al
ON
  ar.ArtistId = al.ArtistId
WHERE  
  al.ArtistId IS NULL;
*/
  

/*  
SELECT 
  *
FROM
  albums AS al 
RIGHT OUTER JOIN
  tracks AS t
ON
  t.AlbumId = al.AlbumId;
*/
  

/*
SELECT 
  *
FROM
  tracks AS t 
LEFT OUTER JOIN
  albums AS al
ON
  t.AlbumId = al.AlbumId;
*/
  

/*
SELECT 
  t.TrackId,
  t.Composer,
  t.Name,
  al.AlbumId,
  al.Title
FROM
  albums AS al 
RIGHT OUTER JOIN
  tracks AS t
ON
  t.AlbumId = al.AlbumId;
*/
  

/*  
SELECT 
  t.TrackId,
  t.Composer,
  t.Name,
  al.AlbumId,
  al.Title
FROM
  tracks AS t
LEFT OUTER JOIN
  albums AS al 
ON
  t.AlbumId = al.AlbumId;
*/
  

/*
SELECT 
  t.TrackId,
  t.Composer,
  t.Name,
  al.AlbumId,
  al.Title
FROM
  tracks AS t
LEFT OUTER JOIN
  albums AS al 
ON
  t.AlbumId = al.AlbumId
WHERE t.Composer IS NULL;  
*/


/*
SELECT 
  al.Title,
  t.Name
FROM
  albums AS al
INNER JOIN
  tracks AS t
ON
  t.AlbumId = al.AlbumId; 
*/  
 

SELECT 
  al.Title,
  t.Name,
  g.Name
FROM
  albums AS al
INNER JOIN
  tracks AS t
ON
  t.AlbumId = al.AlbumId
INNER JOIN
  genres AS g
ON
  t.GenreId = g.GenreId; 
  

 


