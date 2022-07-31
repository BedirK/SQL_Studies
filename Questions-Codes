/* Q1 Using a subquery, find the names of all the tracks for the album "Californication"*/

SELECT TrackId, AlbumId, Name 

FROM Tracks WHERE AlbumId

IN (Select AlbumId 

FROM Albums

WHERE Title= 'Californication');


Output 1 --------------------------
+---------+---------+-------------------+
| TrackId | AlbumId | Name              |
+---------+---------+-------------------+
|    2391 |     195 | Around The World  |
|    2392 |     195 | Parallel Universe |
|    2393 |     195 | Scar Tissue       |
|    2394 |     195 | Otherside         |
|    2395 |     195 | Get On Top        |
|    2396 |     195 | Californication   |
|    2397 |     195 | Easily            |
|    2398 |     195 | Porcelain         |
|    2399 |     195 | Emit Remmus       |
|    2400 |     195 | I Like Dirt       |
+---------+---------+-------------------+
(Output limit exceeded, 10 of 15 total rows shown)



/* Q2 Find the total number of invoices for each customer along with the customer's full name, city and email.
   After running the query described above, what is the email address of the 5th person, František Wichterlová? */


SELECT Inv.CustomerId,

Cus.FirstName,

Cus.LastName,

Cus.City,

Cus.Email

FROM Customers AS Cus INNER JOIN Invoices AS Inv

ON Inv.CustomerId = Cus.CustomerId

WHERE FirstName = 'František';


Output 2 --------------------------
+------------+-----------+-------------+--------+--------------------------+
| CustomerId | FirstName | LastName    | City   | Email                    |
+------------+-----------+-------------+--------+--------------------------+
|          5 | František | Wichterlová | Prague | frantisekw@jetbrains.com |
|          5 | František | Wichterlová | Prague | frantisekw@jetbrains.com |
|          5 | František | Wichterlová | Prague | frantisekw@jetbrains.com |
|          5 | František | Wichterlová | Prague | frantisekw@jetbrains.com |
|          5 | František | Wichterlová | Prague | frantisekw@jetbrains.com |
|          5 | František | Wichterlová | Prague | frantisekw@jetbrains.com |
|          5 | František | Wichterlová | Prague | frantisekw@jetbrains.com |
+------------+-----------+-------------+--------+--------------------------+



/* Q3 Retrieve the track name, album, artistID, and trackID for all the albums. 
What is the song title of trackID 12 from the "For Those About to Rock We Salute You" album? */

SELECT Tra.Name,

Alb.Title, 

Alb.ArtistId, 

Tra.TrackId 

FROM Albums AS Alb

INNER JOIN Tracks AS Tra ON Tra.AlbumId = Alb.AlbumId 

WHERE TrackId = 12;



Output 3 --------------------------

+--------------------+---------------------------------------+----------+---------+
| Name               | Title                                 | ArtistId | TrackId |
+--------------------+---------------------------------------+----------+---------+
| Breaking The Rules | For Those About To Rock We Salute You |        1 |      12 |
+--------------------+---------------------------------------+----------+---------+




/* Q4 Retrieve a list with the managers last name, and the last name of the employees who report to him or her. */

SELECT M.lastname AS MAN,

E.lastname AS EMP,

FROM Employees M 

INNER JOIN Employees E 

ON M.EmployeeId = E.ReportsTo;



Output 4 --------------------------

+----------+----------+
| MAN      | EMP      |
+----------+----------+
| Adams    | Edwards  |
| Adams    | Mitchell |
| Edwards  | Peacock  |
| Edwards  | Park     |
| Edwards  | Johnson  |
| Mitchell | King     |
| Mitchell | Callahan |
+----------+----------+



/* Q5 Find the name and ID of the artists who do not have albums. */

SELECT Art.ArtistId,

Art.Name,

Alb.Title

FROM Artists AS Art LEFT JOIN Albums AS Alb

ON Art.ArtistId = Alb.ArtistId

WHERE Alb.Title IS NULL



Output 5 --------------------------

+----------+----------------------------+-------+
| ArtistId | Name                       | Title |
+----------+----------------------------+-------+
|       25 | Milton Nascimento & Bebeto |  None |
|       26 | Azymuth                    |  None |
|       28 | João Gilberto              |  None |
|       29 | Bebel Gilberto             |  None |
|       30 | Jorge Vercilo              |  None |
|       31 | Baby Consuelo              |  None |
|       32 | Ney Matogrosso             |  None |
|       33 | Luiz Melodia               |  None |
|       34 | Nando Reis                 |  None |
|       35 | Pedro Luís & A Parede      |  None |
+----------+----------------------------+-------+
(Output limit exceeded, 10 of 71 total rows shown)



/* Q6 Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order. */

SELECT LastName, FirstName

FROM Employees

UNION

SELECT LastName, FirstName

FROM Customers

ORDER BY LastName DESC;



Output 6 --------------------------

+--------------+-----------+
| LastName     | FirstName |
+--------------+-----------+
| Zimmermann   | Fynn      |
| Wójcik       | Stanisław |
| Wichterlová  | František |
| Van der Berg | Johannes  |
| Tremblay     | François  |
| Taylor       | Mark      |
| Sullivan     | Ellie     |
| Stevens      | Victor    |
| Srivastava   | Puja      |
| Smith        | Jack      |
+--------------+-----------+
(Output limit exceeded, 10 of 67 total rows shown)



/* Q7 See if there are any customers who have a different city listed in their billing city versus their customer city. */

Select C.FirstName,

C.LastName, 

C.City AS Customer_City,

I.BillingCity AS Billing_City  

From Customers AS c 

Inner Join Invoices AS I

ON C.CustomerId=I.CustomerId

Group By C.CustomerId

Having C.City<>I.BillingCity



Output 7 --------------------------

+-----------+----------+---------------+--------------+
| FirstName | LastName | Customer_City | Billing_City |
+-----------+----------+---------------+--------------+
+-----------+----------+---------------+--------------+
(Zero rows)
