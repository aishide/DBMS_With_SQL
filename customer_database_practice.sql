CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(100),
    City VARCHAR(70)
);

INSERT INTO Customers (CustomerID, CustomerName, City) 
VALUES (1, 'John Doe', 'New York'), 
(2, 'Jane Smith', 'Los Angeles') , 
(3, 'Emily Davis', 'Chicago'),
(4, 'Michael Brown', 'Houston') , 
(5, 'Sarah Wilson', 'Phoenix') , 
(6, 'David Lee', 'Philadelphia') , 
(7, 'Laura Taylor', 'San Antonio') , 
(8, 'James Anderson', 'San Diego') , 
(9, 'Linda Martinez', 'Dallas') , 
(10, 'Robert Garcia', 'San Jose');

-- Write a query to display all customers from London. 
SELECT CustomerName FROM Customers WHERE City = 'London';

-- Write a query to display customer names in alphabetical order. 
SELECT CustomerName FROM Customers ORDER BY CustomerName;

-- Write a query to display unique cities only. 
SELECT DISTINCT City FROM Customers ;

-- Write a query to count total customers. 
SELECT COUNT(CustomerID) FROM Customers ;

-- Write a query to display customers whose City is either London or Paris using IN. 
SELECT CustomerName FROM Customers WHERE City IN ('London', 'Paris');




CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT
);

INSERT INTO Orders (OrderID, CustomerID)
VALUES
(101, 1),
(102, 1),
(103, 2);


-- JOIN 

-- Write an INNER JOIN to show: CustomerName, OrderID
SELECT C.CustomerName, O.OrderID
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- How many rows will the INNER JOIN produce?
SELECT COUNT(*)
FROM Cutomers C
INNER JOIN Orders O 
ON C.CutomerID = O.CustomerID;

-- Write a query to find the average price for each Category.
SELECT Category, AVG(Price)
FROM Products
GROUP BY Category;

-- Write a query to count products in each Category
SELECT Category, COUNT(*)
FROM Products
GROUP BY Category;

-- Display all columns from Customers. 
SELECT * FROM Customers;

-- Display only CustomerName and City. 
SELECT CustomerName, City
FROM Customers;

-- Display customers whose City is Paris.
SELECT CustomerName
FROM Customers
WHERE City = 'Paris';

-- Display customers whose Age is greater than 25.
SELECT CustomerName
FROM Customers
WHERE Age > 25;

-- Display customers whose Age is NOT 30.
SELECT CustomerName
FROM Customers
WHERE NOT Age = 30;

-- Display customers from London AND older than 30
SELECT CustomerName
FROM Customers
WHERE City = 'London' AND Age > 30;

-- Display customers from London OR Paris
SELECT CustomerName
FROM Customers
WHERE City = 'London' OR City = 'Paris'; 

SELECT CustomerName
FROM Customers
WHERE City IN ('London', 'Paris');

-- Display customers whose Age is between 25 and 30
SELECT CustomerName
FROM Customers
WHERE Age BETWEEN 25 AND 30;

-- Display customers whose City is London, Paris, or Berlin using IN
SELECT CustomerName
FROM Customers
WHERE City IN ('London', 'Paris', 'Berlin');

-- Display customers whose Age is NOT between 25 and 30
SELECT CustomerName
FROM Customers
WHERE Age NOT BETWEEN 25 AND 30;

-- Display customers whose names start with 'A'.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE 'A%';

--Display customers whose names end with 'y'.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '%y';

-- Display customers whose names contain 'ar'.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '%ar%';

-- Display customers whose city starts with 'L'.
SELECT CustomerName
FROM Customers
WHERE City LIKE 'L%';

-- Display customers whose name has exactly 5 characters.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '_____';

-- Find the total number of customers.
SELECT COUNT(*)
FROM Customers;

-- Find the average age.
SELECT AVG(Age)
FROM Customers;

-- Find the oldest customer's age.
SELECT MAX(Age)
FROM Customers;

-- Find the youngest customer's age.
SELECT MIN(Age)
FROM Customers;

-- Find the sum of all ages.
SELECT SUM(Age)
FROM Customers;


Orders
OrderID	CustomerID	Amount
101	      1	          100
102	      1	          200
103	      2	          150
104       3	          300
105       3	          100


-- Find total order amount for each customer.
SELECT CustomerID, SUM(Amount)
FROM Orders
GROUP BY CustomerID;

-- Find number of orders for each customer.
SELECT CustomerID, COUNT(*)
FROM Orders
GROUP BY CustomerID;

-- Find average order amount for each customer.
SELECT CustomerID, AVG(Amount)
FROM Orders
GROUP BY CustomerID;

-- Find maximum order amount for each customer.
SELECT CustomerID, MAX(Amount)
FROM Orders
GROUP BY CustomerID;

-- Find minimum order amount for each customer.
SELECT CustomerID, MIN(Amount)
FROM Orders
GROUP BY CustomerID;

-- Show CustomerName and OrderID using INNER JOIN.
SELECT C.CustomerName, O.OrderID
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- Show CustomerName and Amount using INNER JOIN.
SELECT C.CustomerName, O.Amount
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- Show all customers even if they have no orders.
SELECT C.CustomerName
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- Write one query that returns:
City	NumberOfCustomers
London	2
Paris	2
Berlin	1

SELECT City, COUNT(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY City;