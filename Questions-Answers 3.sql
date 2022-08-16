/* Q1 Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. 
      Make the new field lower case and pull each individual step to show your work.*/

SELECT LOWER (FirstName),

LOWER (LastName), 

LOWER (SUBSTR(FirstName,1,4)), 

LOWER (SUBSTR(LastName,1,2)), 

LOWER (SUBSTR(FirstName,1,4) || SUBSTR(LastName,1,2)) AS A 

FROM Employees;



Output 1 --------------------------

+-------------------+------------------+-------------------------------+------------------------------+--------+
| LOWER (FirstName) | LOWER (LastName) | LOWER (SUBSTR(FirstName,1,4)) | LOWER (SUBSTR(LastName,1,2)) | A      |
+-------------------+------------------+-------------------------------+------------------------------+--------+
| andrew            | adams            | andr                          | ad                           | andrad |
| nancy             | edwards          | nanc                          | ed                           | nanced |
| jane              | peacock          | jane                          | pe                           | janepe |
| margaret          | park             | marg                          | pa                           | margpa |
| steve             | johnson          | stev                          | jo                           | stevjo |
| michael           | mitchell         | mich                          | mi                           | michmi |
| robert            | king             | robe                          | ki                           | robeki |
| laura             | callahan         | laur                          | ca                           | laurca |
+-------------------+------------------+-------------------------------+------------------------------+--------+



/* Q2 Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending. */

SELECT LastName,

DATE ('NOW') - HireDate AS YearsofWork

FROM Employees

ORDER BY LastName ASC



Output 2 --------------------------

+----------+-------------+
| LastName | YearsofWork |
+----------+-------------+
| Adams    |          20 |
| Callahan |          18 |
| Edwards  |          20 |
| Johnson  |          19 |
| King     |          18 |
| Mitchell |          19 |
| Park     |          19 |
| Peacock  |          20 |
+----------+-------------+



/* Q3 Profiling the Customers table, answer the following question.
      Are there any columns with null values? Indicate any below.*/


SELECT CASE

    WHEN FirstName IS NULL THEN 'FirstName'
    WHEN Fax IS NULL THEN 'Fax'
    WHEN Address IS NULL THEN 'Address'
    WHEN Company IS NULL THEN 'Company'
    WHEN Phone IS NULL THEN 'Phone'
    WHEN PostalCode IS NULL THEN 'PostalCode'
    
END AS Null_Val 

FROM Customers

WHERE Null_Val <> 'None'

Group By Null_Val;



Output 3 --------------------------

+----------+
| Null_Val |
+----------+
| Company  |
| Fax      |
+----------+




/* Q4 Find the cities with the most customers and rank in descending order. */

SELECT C.City, COUNT(C.CustomerId)

FROM Customers C

GROUP BY C.City

ORDER BY COUNT(C.CustomerId) DESC




Output 4 --------------------------

+---------------+---------------------+
| City          | COUNT(C.CustomerId) |
+---------------+---------------------+
| Berlin        |                   2 |
| London        |                   2 |
| Mountain View |                   2 |
| Paris         |                   2 |
| Prague        |                   2 |
| São Paulo     |                   2 |
| Amsterdam     |                   1 |
| Bangalore     |                   1 |
| Bordeaux      |                   1 |
| Boston        |                   1 |
| Brasília      |                   1 |
| Brussels      |                   1 |
| Budapest      |                   1 |
| Buenos Aires  |                   1 |
| Chicago       |                   1 |
| Copenhagen    |                   1 |
| Cupertino     |                   1 |
| Delhi         |                   1 |
| Dijon         |                   1 |
| Dublin        |                   1 |
| Edinburgh     |                   1 |
| Edmonton      |                   1 |
| Fort Worth    |                   1 |
| Frankfurt     |                   1 |
| Halifax       |                   1 |
+---------------+---------------------+
(Output limit exceeded, 25 of 53 total rows shown)





/* Q5 Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: 
      firstname, lastname, and invoiceID.
      Select all of the correct "AstridGruber" entries that are returned in your results below. Select all that apply.*/
      
SELECT

c.FirstName,

c.LastName,

i.invoiceID,

c.FirstName || c.LastName || i.invoiceID AS ID

FROM (Customers c INNER JOIN Invoices i ON c.customerid=i.customerid)

WHERE FirstName = 'Astrid'




Output 5 --------------------------

+-----------+----------+-----------+-----------------+
| FirstName | LastName | InvoiceId | ID              |
+-----------+----------+-----------+-----------------+
| Astrid    | Gruber   |        78 | AstridGruber78  |
| Astrid    | Gruber   |        89 | AstridGruber89  |
| Astrid    | Gruber   |       144 | AstridGruber144 |
| Astrid    | Gruber   |       273 | AstridGruber273 |
| Astrid    | Gruber   |       296 | AstridGruber296 |
| Astrid    | Gruber   |       318 | AstridGruber318 |
| Astrid    | Gruber   |       370 | AstridGruber370 |
+-----------+----------+-----------+-----------------+
      
      
            
