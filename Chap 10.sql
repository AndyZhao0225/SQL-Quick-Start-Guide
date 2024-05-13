/*
INSERT INTO
artists (Name)
VALUES ('Bob Marley');
*/


/*
SELECT
  Name
FROM
  artists
WHERE   
  Name = 'Bob Marley';
*/


/*
INSERT INTO
  artists (Name)
VALUES 
  ('Peter Tosh');
*/


/*
INSERT INTO
  employees
VALUES 
  ('9', 'Martin', 'Ricky', 'Sales Support Agent',
   '2', '1975-02-07', '2018-01-05', 
   '123 Houston St', 'New York', 'NY', 
   'United States', '11201', 
   '(347) 525-8588', '', 'rmartin@gmail.com');
*/		
		

/*		
INSERT INTO
  employees
VALUES
  ('10', 'Junan', 'Zhao', 'Software Engineer',
   '6', '1992-05-30', '2020-04-13', 
   '511 Carneige', 'Milpitas', 'CA', 
   'United States', '95035', 
   '(585) 360-8827', '', 'jzhao2723@gmail.com'); 
*/
   

/*
UPDATE 
  employees
SET
 PostalCode = '11202'
WHERE 
  EmployeeId = 9;
*/


/*
UPDATE
  employees
SET
  Phone = '(123) 456-7890'
WHERE 
  FirstName = 'Ricky' 
  AND 
  LastName = 'Martin';
*/
  

/*  
UPDATE
  employees
SET
  FirstName = 'Junan'
WHERE 
  EmployeeId = 10;
*/
  

/*
UPDATE
  employees
SET
  LastName = 'Zhao'
WHERE 
  EmployeeId = 10; 
*/


/*
SELECT
  *
FROM
  employees 
WHERE
  Employeeid = 9; 
*/
  

/*  
DELETE 
FROM
  employees
WHERE 
  EmployeeId = 9;
*/


/*
DELETE
FROM
  employees
WHERE
  Title = 'Sales Support Agent';
*/


/*
INSERT INTO
  customers
VALUES 
  ('60', 'Junan', 'Zhao', 'Guardian Analytics Inc.', 
   '511 Carneige Dr', 'Milpitas', 'CA', 'USA', '95035',
   '+1 (585) 360-8827', ' ', 'jzhao2723@gmail.com', '2');
*/


/*
INSERT INTO
  invoices
VALUES 
  ('413', '60', '2020-04-13 00:00:00', 
   '511 Carneige Dr', 'Milpitas', 'CA', 'USA', '95035',
   '0.99');
*/
   
   
/*
DELETE
FROM
  invoices
WHERE
  InvoiceId = 413;   
*/   
  
  
DELETE
FROM
  customers
WHERE
  FirstName = 'Junan';






   

  
  
