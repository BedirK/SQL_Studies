/* Q1 Find all the tracks that have a length of 5,000,000 milliseconds or more. */

SELECT COUNT(Milliseconds)

FROM Tracks

WHERE Milliseconds >= "5000000";



Output 1 --------------------------

+---------------------+
| COUNT(Milliseconds) |
+---------------------+
|                   2 |
+---------------------+




/* Q2 Find all the invoices whose total is between $5 and $15 dollars. */

SELECT Total

FROM Invoices

WHERE Total BETWEEN "5" AND "15";



Output 2 --------------------------

+-------+
| Total |
+-------+
|  5.94 |
|  8.91 |
| 13.86 |
|  5.94 |
|  8.91 |
| 13.86 |
|  5.94 |
|  8.91 |
| 13.86 |
|  5.94 |
+-------+
(Output limit exceeded, 10 of 168 total rows shown)



/* Q3 Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY. */

SELECT * FROM Customers

WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY' ) ;


Output 3 --------------------------


+------------+-----------+----------+-----------------------+---------------------------+----------------+-------+---------+------------+--------------------+--------------------+-------------------------------+--------------+
| CustomerId | FirstName | LastName | Company               | Address                   | City           | State | Country | PostalCode | Phone              | Fax                | Email                         | SupportRepId |
+------------+-----------+----------+-----------------------+---------------------------+----------------+-------+---------+------------+--------------------+--------------------+-------------------------------+--------------+
|         12 | Roberto   | Almeida  | Riotur                | Praça Pio X, 119          | Rio de Janeiro | RJ    | Brazil  | 20040-020  | +55 (21) 2271-7000 | +55 (21) 2271-7070 | roberto.almeida@riotur.gov.br |            3 |
|         13 | Fernanda  | Ramos    | None                  | Qe 7 Bloco G              | Brasília       | DF    | Brazil  | 71020-677  | +55 (61) 3363-5547 | +55 (61) 3363-7855 | fernadaramos4@uol.com.br      |            4 |
|         14 | Mark      | Philips  | Telus                 | 8210 111 ST NW            | Edmonton       | AB    | Canada  | T6G 2C7    | +1 (780) 434-4554  | +1 (780) 434-5565  | mphilips12@shaw.ca            |            5 |
|         15 | Jennifer  | Peterson | Rogers Canada         | 700 W Pender Street       | Vancouver      | BC    | Canada  | V6C 1G8    | +1 (604) 688-2255  | +1 (604) 688-8756  | jenniferp@rogers.ca           |            3 |
|         16 | Frank     | Harris   | Google Inc.           | 1600 Amphitheatre Parkway | Mountain View  | CA    | USA     | 94043-1351 | +1 (650) 253-0000  | +1 (650) 253-0000  | fharris@google.com            |            4 |
|         17 | Jack      | Smith    | Microsoft Corporation | 1 Microsoft Way           | Redmond        | WA    | USA     | 98052-8300 | +1 (425) 882-8080  | +1 (425) 882-8081  | jacksmith@microsoft.com       |            5 |
|         18 | Michelle  | Brooks   | None                  | 627 Broadway              | New York       | NY    | USA     | 10012-2612 | +1 (212) 221-3546  | +1 (212) 221-4679  | michelleb@aol.com             |            3 |
|         19 | Tim       | Goyer    | Apple Inc.            | 1 Infinite Loop           | Cupertino      | CA    | USA     | 95014      | +1 (408) 996-1010  | +1 (408) 996-1011  | tgoyer@apple.com              |            3 |
|         20 | Dan       | Miller   | None                  | 541 Del Medio Avenue      | Mountain View  | CA    | USA     | 94040-111  | +1 (650) 644-3358  | None               | dmiller@comcast.com           |            4 |
+------------+-----------+----------+-----------------------+---------------------------+----------------+-------+---------+------------+--------------------+--------------------+-------------------------------+--------------+



/* Q4 Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00. */

SELECT * FROM invoices

WHERE (CustomerId IN ('56','58')) 

AND (Total BETWEEN "1" AND "5") ;



Output 4 --------------------------

+-----------+------------+---------------------+---------------------+--------------+--------------+----------------+-------------------+-------+
| InvoiceId | CustomerId | InvoiceDate         | BillingAddress      | BillingCity  | BillingState | BillingCountry | BillingPostalCode | Total |
+-----------+------------+---------------------+---------------------+--------------+--------------+----------------+-------------------+-------+
|       119 |         56 | 2010-06-12 00:00:00 | 307 Macacha Güemes  | Buenos Aires |         None | Argentina      | 1106              |  1.98 |
|       142 |         56 | 2010-09-14 00:00:00 | 307 Macacha Güemes  | Buenos Aires |         None | Argentina      | 1106              |  3.96 |
|       337 |         56 | 2013-01-28 00:00:00 | 307 Macacha Güemes  | Buenos Aires |         None | Argentina      | 1106              |  1.98 |
|       120 |         58 | 2010-06-12 00:00:00 | 12,Community Centre | Delhi        |         None | India          | 110017            |  1.98 |
|       315 |         58 | 2012-10-27 00:00:00 | 12,Community Centre | Delhi        |         None | India          | 110017            |  1.98 |
|       338 |         58 | 2013-01-29 00:00:00 | 12,Community Centre | Delhi        |         None | India          | 110017            |  3.96 |
|       412 |         58 | 2013-12-22 00:00:00 | 12,Community Centre | Delhi        |         None | India          | 110017            |  1.99 |
+-----------+------------+---------------------+---------------------+--------------+--------------+----------------+-------------------+-------+



/* Q5 Find all the tracks whose name starts with 'All'. */

SELECT Name

FROM Tracks

WHERE Name LIKE 'All%';


Output 5 --------------------------

+----------------------------------------+
| Name                                   |
+----------------------------------------+
| All I Really Want                      |
| All For You                            |
| All Star                               |
| All My Life                            |
| All My Love                            |
| All Within My Hands                    |
| All or None                            |
| All Dead, All Dead                     |
| All the Best Cowboys Have Daddy Issues |
| All Because Of You                     |
+----------------------------------------+
(Output limit exceeded, 10 of 15 total rows shown)



/* Q6 Find all the customer emails that start with "J" and are from gmail.com. */

SELECT  Email

FROM Customers

WHERE Email LIKE 'J%gmail.com';


Output 6 --------------------------

+---------------------+
| Email               |
+---------------------+
| jubarnett@gmail.com |
+---------------------+




/* Q7 Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.*/

SELECT * FROM Invoices

WHERE BillingCity IN ('Brasília', 'Edmonton', 'Vancouver')

ORDER BY InvoiceId DESC;



Output 7 --------------------------


+-----------+------------+---------------------+---------------------+-------------+--------------+----------------+-------------------+-------+
| InvoiceId | CustomerId | InvoiceDate         | BillingAddress      | BillingCity | BillingState | BillingCountry | BillingPostalCode | Total |
+-----------+------------+---------------------+---------------------+-------------+--------------+----------------+-------------------+-------+
|       362 |         14 | 2013-05-11 00:00:00 | 8210 111 ST NW      | Edmonton    | AB           | Canada         | T6G 2C7           | 13.86 |
|       351 |         14 | 2013-03-31 00:00:00 | 8210 111 ST NW      | Edmonton    | AB           | Canada         | T6G 2C7           |  1.98 |
|       328 |         15 | 2012-12-15 00:00:00 | 700 W Pender Street | Vancouver   | BC           | Canada         | V6C 1G8           |  0.99 |
|       319 |         13 | 2012-11-01 00:00:00 | Qe 7 Bloco G        | Brasília    | DF           | Brazil         | 71020-677         |  8.91 |
|       276 |         15 | 2012-04-26 00:00:00 | 700 W Pender Street | Vancouver   | BC           | Canada         | V6C 1G8           |  5.94 |
|       264 |         13 | 2012-03-03 00:00:00 | Qe 7 Bloco G        | Brasília    | DF           | Brazil         | 71020-677         | 13.86 |
|       254 |         15 | 2012-01-23 00:00:00 | 700 W Pender Street | Vancouver   | BC           | Canada         | V6C 1G8           |  3.96 |
|       253 |         13 | 2012-01-22 00:00:00 | Qe 7 Bloco G        | Brasília    | DF           | Brazil         | 71020-677         |  1.98 |
|       231 |         15 | 2011-10-21 00:00:00 | 700 W Pender Street | Vancouver   | BC           | Canada         | V6C 1G8           |  1.98 |
|       230 |         14 | 2011-10-08 00:00:00 | 8210 111 ST NW      | Edmonton    | AB           | Canada         | T6G 2C7           |  0.99 |
+-----------+------------+---------------------+---------------------+-------------+--------------+----------------+-------------------+-------+
(Output limit exceeded, 10 of 21 total rows shown)




/* Q8 Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.*/

SELECT CustomerId, 

count(*) FROM Invoices 

GROUP BY CustomerId ;



Output 8 --------------------------

+------------+----------+
| CustomerId | count(*) |
+------------+----------+
|          1 |        7 |
|          2 |        7 |
|          3 |        7 |
|          4 |        7 |
|          5 |        7 |
|          6 |        7 |
|          7 |        7 |
|          8 |        7 |
|          9 |        7 |
|         10 |        7 |
+------------+----------+
(Output limit exceeded, 10 of 59 total rows shown)




/* Q9 Find the albums with 12 or more tracks.*/

SELECT AlbumId , COUNT(*) 

FROM Tracks 

GROUP BY  AlbumId 

HAVING COUNT(*)>=12;



Output 9 --------------------------

+---------+----------+
| AlbumId | count(*) |
+---------+----------+
|       5 |       15 |
|       6 |       13 |
|       7 |       12 |
|       8 |       14 |
|      10 |       14 |
|      11 |       12 |
|      12 |       12 |
|      14 |       13 |
|      18 |       17 |
|      21 |       18 |
+---------+----------+
(Output limit exceeded, 10 of 158 total rows shown)
