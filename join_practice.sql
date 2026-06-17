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





Some databases (notably MySQL) historically did not support FULL JOIN directly.
In those cases, people simulate it with:

LEFT JOIN
UNION
RIGHT JOIN




/*
Tables:

Employees
EmployeeID	EmployeeName	ManagerID
1	Alice	NULL
2	Bob	1
3	Charlie	1
4	David	2

Write a query to display:

EmployeeName	ManagerName
Alice	NULL
Bob	Alice
Charlie	Alice
David	Bob

Hint: The manager is stored in the same table.

Write the SQL query.
*/

SELECT E.EmployeeName,
       M.EmployeeName AS ManagerName
FROM Employees E
LEFT JOIN Employees M
ON E.ManagerID = M.EmployeeID;

/*
Employees
EmployeeID	EmployeeName	ManagerID
1	Alice	NULL
2	Bob	1
3	Charlie	1
4	David	2

Write a query to display only employees who have a manager.

Expected output:

EmployeeName	ManagerName
Bob	Alice
Charlie	Alice
David	Bob

Write the SQL query.
*/

SELECT E.EmployeeName,
       M.EmployeeName AS ManagerName
FROM Employees E
INNER JOIN Employees M
ON E.ManagerID = M.EmployeeID;

/*
Tables:

Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
Orders
OrderID	CustomerID	Amount
101	1	500
102	1	300
103	2	700

Write a query to display:

CustomerName	TotalAmount
Alice	800
Bob	700

Customers with no orders should not appear.

Write the SQL query.
*/

SELECT C.CustomerName,
       SUM(O.Amount) AS TotalAmount
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.CustomerName;

/*
Tables:

Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
4	David
Orders
OrderID	CustomerID	Amount
101	1	500
102	1	300
103	2	700

Write a query to display customers who have never placed an order.

Expected output:

CustomerName
Charlie
David
*/

SELECT C.CustomerName
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL;

/*
Tables:

Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
Orders
OrderID	CustomerID	Amount
101	1	500
102	1	300
103	2	700

Write a query to display:

CustomerName	NumberOfOrders
Alice	2
Bob	1
Charlie	0

Notice that customers with no orders should still appear.

Write the SQL query.
*/

SELECT C.CustomerName,
       COUNT(O.OrderID) AS NumberOfOrders
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.CustomerName;

/*
Tables:

Customers
CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie
Orders
OrderID	CustomerID	Amount
101	1	500
102	1	300
103	2	700

Write a query to display the customer who has spent the most money.

Expected output:

CustomerName	TotalSpent
Alice	800
*/
