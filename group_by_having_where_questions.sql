/*
Table: Customers

CustomerID	CustomerName	Age	City
1	Alice	18	London
2	Bob	25	Paris
3	Charlie	35	London
4	David	16	Berlin

Write a query to display the names of customers whose age is greater than 18.

Write the SQL query.
*/

SELECT CustomerName
FROM Customers
WHERE Age > 18;

/*
Question 2

Table: Customers

CustomerID	CustomerName	City
1	Alice	London
2	Bob	Paris
3	Charlie	London
4	David	Berlin
5	Emma	Paris

Write a query that returns:

City	NumberOfCustomers
London	2
Paris	2
Berlin	1

Write the SQL query.
*/

SELECT City, COUNT(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY City;

/*
Using the same table:

CustomerID	CustomerName	City
1	Alice	London
2	Bob	Paris
3	Charlie	London
4	David	Berlin
5	Emma	Paris

Return only the cities that have more than 1 customer, along with the customer count.
Write the SQL query.
*/

SELECT City, COUNT(CustomerID) AS [Customer Count]
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 1;

/* 
Table: Employees

EmployeeID	EmployeeName	Department	Salary
1	Alice	HR	50000
2	Bob	IT	70000
3	Charlie	IT	80000
4	David	HR	60000
5	Emma	Sales	45000

Write a query to display the number of employees in each department whose salary is greater than 50,000.

Write the SQL query. (Choose the clauses you think are appropriate.)
*/

SELECT Department, COUNT(EmployeeID) AS [Number of Employees]
FROM Employees
WHERE Salary > 50000
GROUP BY Department;