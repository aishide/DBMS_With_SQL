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

/*
Question 5

Table: Orders

OrderID	CustomerID	Amount
1	101	500
2	101	700
3	102	300
4	103	1000
5	103	200

Write a query to display only those customers whose total order amount is greater than 1000, along with their total order amount.

Write the SQL query.
*/

SELECT CustomerID, SUM(Amount) AS [Total Order Amount]
FROM Orders
GROUP BY CustomerID
HAVING SUM(Amount) > 1000;

/*
Question 6 (Very Tricky)

Table: Employees

EmployeeID	Department	Salary
1	HR	40000
2	HR	60000
3	IT	70000
4	IT	80000
5	Sales	30000

Write a query to display the average salary of each department, but only for departments where every employee considered has a salary greater than 50,000.
*/

SELECT Department, AVG(Salary)
FROM Employees
GROUP BY Department
HAVING MIN(Salary) > 50000;

/*
Question 7.

Table: Sales
Salesperson	Region	Amount
A	East	500
B	East	700
C	West	300
D	West	900
E	North	200

Write a query to display regions where the total sales exceed 1000, but only count sales records where the amount is greater than 400.

Take your time and write the SQL query. This one tests whether you know when to use WHERE and when to use HAVING.
*/

SELECT Region, SUM(Amount) AS [Total Sales]
FROM Sales
WHERE Amount > 400
GROUP BY Region
HAVING SUM(Amount) > 1000;

/*
Question 8

Table: Orders

OrderID	CustomerID	Status	Amount
1	101	Completed	500
2	101	Pending	700
3	102	Completed	300
4	103	Completed	800
5	103	Completed	400
6	104	Pending	900

Write a query to display customers whose total amount from completed orders is greater than 1000.

Your output should contain:

CustomerID	TotalAmount
*/

SELECT CustomerID, SUM(Amount) AS TotalAmount
FROM Orders
WHERE Status = 'Completed'
GROUP BY CustomerID
HAVING SUM(Amount) > 1000;

/*
Table: Employees

EmployeeID	Department	Salary
1	HR	40000
2	HR	60000
3	IT	70000
4	IT	80000
5	Sales	30000
6	Sales	90000

Write a query to display departments where the average salary is greater than 50,000, but only consider employees whose salary is at least 40,000.

Return:

| Department | AverageSalary |

Write the SQL query.
*/

SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
WHERE Salary >= 40000
GROUP BY Department
HAVING AVG(Salary) > 50000;

/*
🔥 Question 10 (Interview-level)

Table: Orders

OrderID	CustomerID	Amount
1	101	100
2	101	200
3	101	300
4	102	600
5	102	700
6	103	50
7	103	1000

Write a query to display customers who have at least 2 orders and whose total order amount exceeds 1000.

Return:

| CustomerID | TotalAmount | NumberOfOrders |
*/

SELECT CustomerID,
       SUM(Amount) AS TotalAmount,
       COUNT(CustomerID) AS NumberOfOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(CustomerID) >= 2
   AND SUM(Amount) > 1000;

/* 
Table: Employees

EmployeeID	Department	Salary
1	HR	40000
2	HR	70000
3	HR	80000
4	IT	90000
5	IT	30000
6	Sales	60000
7	Sales	70000

Write a query to display departments where there are at least 2 employees earning more than 50,000.

Return:

| Department | EmployeesAbove50K |
*/

SELECT Department, COUNT(Salary) AS EmployeesAbove50K
FROM Employees
WHERE Salary > 50000
GROUP BY Department
HAVING COUNT(Salary) >= 2;