//AISHI DE

/*
You have two tables:

Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
Orders
OrderID	CustomerID	Amount
101	1	500
102	2	300
103	1	700

Write a query to display:

CustomerName	Amount
Alice	500
Bob	300
Alice	700

You need to combine data from both tables.
*/

SELECT C.CustomerName, O.Amount
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID;

/*
Now consider:

Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
4	David
Orders
OrderID	CustomerID	Amount
101	1	500
102	2	300
103	1	700

Write a query to display all customers, including those who have never placed an order.

Expected output:

CustomerName	Amount
Alice	500
Alice	700
Bob	300
Charlie	NULL
David	NULL
*/

SELECT C.CustomerName, O.Amount
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID;

/*
Using the same tables:

Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
4	David
Orders
OrderID	CustomerID	Amount
101	1	500
102	2	300
103	1	700
104	5	900

Notice that CustomerID = 5 exists in Orders but not in Customers.

Write a query to display all orders, including orders whose customer does not exist in the Customers table.

Return:

CustomerName	Amount
Alice	500
Bob	300
Alice	700
NULL	900
*/

SELECT C.CustomerName, O.Amount
FROM Customers C
RIGHT JOIN Orders O
ON C.CustomerID = O.CustomerID;

/*
Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
4	David
Orders
OrderID	CustomerID	Amount
101	1	500
102	2	300
103	1	700
104	5	900

Write a query that shows:

All customers
All orders
Matching rows where possible
Unmatched rows from either table should still appear

Expected output includes:

CustomerName	Amount
Alice	500
Alice	700
Bob	300
Charlie	NULL
David	NULL
NULL	900
*/

SELECT C.CustomerName, O.Amount
FROM Customers C
FULL JOIN Orders O
ON C.CustomerID = O.CustomerID;
