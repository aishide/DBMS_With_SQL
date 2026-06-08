TOPICS COVERED : 
union, union all,  group by,  having, 
exists,  any,  all,  select into,  insert into select,  case,  null,  
function,  stored procedure,  comments,  operators,  create database,  
create table,  drop db,  truncate db,  backup db

/* Question 1 (UNION vs UNION ALL)

Suppose we have:

Table A

Name
Alice
Bob
Charlie

Table B

Name
Bob
David

What will be the output of:

SELECT Name FROM A
UNION
SELECT Name FROM B;

and what will be the output of:

SELECT Name FROM A
UNION ALL
SELECT Name FROM B;

Explain the difference between the two.
*/
UNION
SELECT Name FROM A
UNION
SELECT Name FROM B;

Output:

Name
Alice
Bob
Charlie
David

UNION removes duplicate rows.


UNION ALL
SELECT Name FROM A
UNION ALL
SELECT Name FROM B;

The rows are returned from the first query followed by the rows from the second query:

Name
Alice
Bob
Charlie
Bob
David


UNION ALL → keeps duplicates and is generally faster because SQL doesnt need to check for duplicates

/*
Question 2 (GROUP BY)

Given this table:

CustomerID	City
1	London
2	Paris
3	London
4	Berlin
5	Paris

Write a query that returns:

City	NumberOfCustomers
London	2
Paris	2
Berlin	1*/

SELECT City, COUNT(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY City;

/*
Question 3 (HAVING)

Given the same table:

CustomerID	City
1	London
2	Paris
3	London
4	Berlin
5	Paris

Write a query to display only those cities that have more than 1 customer.

Expected output:

City	NumberOfCustomers
London	2
Paris	2
*/

SELECT City, COUNT(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 1;


/*
Question 4 (EXISTS)

Tables:

Customers

CustomerID	CustomerName
1	Alice
2	Bob
3	Charlie

Orders

OrderID	CustomerID
101	1
102	1
103	3

What will this query return?

SELECT CustomerName
FROM Customers C
WHERE EXISTS (
    SELECT *
    FROM Orders O
    WHERE O.CustomerID = C.CustomerID
);

Explain why each customer is or is not included.
*/

For each customer, SQL runs the subquery:

Alice (CustomerID = 1)

Subquery:

SELECT *
FROM Orders
WHERE CustomerID = 1;

Returns 2 rows (Order 101 and 102).

Since at least one row exists, EXISTS = TRUE ✅

So Alice is included.

Bob (CustomerID = 2)

Subquery:

SELECT *
FROM Orders
WHERE CustomerID = 2;

Returns 0 rows.

Since no rows exist, EXISTS = FALSE ❌

So Bob is not included.

Charlie (CustomerID = 3)

Subquery:

SELECT *
FROM Orders
WHERE CustomerID = 3;

Returns 1 row (Order 103).

Since at least one row exists, EXISTS = TRUE ✅

So Charlie is included.

/*
Question 5 (ANY)

Tables:

Products

ProductName	Price
A	100
B	200
C	300
D	400

Orders

ProductPrice
150
250

What will this query return?

SELECT ProductName, Price
FROM Products
WHERE Price > ANY (
    SELECT ProductPrice
    FROM Orders
);

Which products are returned, and why?
*/
Subquery:

SELECT ProductPrice
FROM Orders;

returns:

150
250

Main query:

WHERE Price > ANY (150, 250)

> ANY means:

Is the price greater than at least one value in the list?

Product A (100)
100 > 150 ❌
100 > 250 ❌

No comparison is true → Not returned.

Product B (200)
200 > 150 ✅
200 > 250 ❌

At least one comparison is true → Returned.

Product C (300)
300 > 150 ✅
300 > 250 ✅

Returned.

Product D (400)
400 > 150 ✅
400 > 250 ✅

Returned.

Result
ProductName	Price
B	200
C	300
D	400

A useful shortcut:
Price > ANY (150,250)

/*
Question 6 (ALL)

Using the same tables:

Products

ProductName	Price
A	100
B	200
C	300
D	400

Orders

ProductPrice
150
250

What will this query return?

SELECT ProductName, Price
FROM Products
WHERE Price > ALL (
    SELECT ProductPrice
    FROM Orders
);

Which products are returned, and why?
*/

Subquery returns:

150
250

The condition becomes:

Price > ALL (150, 250)

which means:

Price must be greater than every value returned by the subquery.

So lets check:

Product	Price	>150?	>250?	Result
A	100	❌	❌	Not returned
B	200	✅	❌	Not returned
C	300	✅	✅	Returned
D	400	✅	✅	Returned
Result
ProductName	Price
C	300
D	400

/*
Question 7 (SELECT INTO)

What does this query do?

SELECT *
INTO CustomersBackup
FROM Customers;

Explain:

Is a new table created?
Does it copy only the structure or both structure and data?
What happens if CustomersBackup already exists?
*/

1. Is a new table created?

✔ Yes.

SELECT *
INTO CustomersBackup
FROM Customers;

creates a new table called CustomersBackup.

2. Does it copy structure or structure + data?

✔ Correct.

It copies:

Table structure (columns and data types)
Data from the selected rows

3. What if CustomersBackup already exists?

SELECT INTO does not overwrite an existing table.

Instead, SQL will usually throw an error similar to:

There is already an object named 'CustomersBackup' in the database.

If the table already exists, you would use:

INSERT INTO CustomersBackup
SELECT *
FROM Customers;

to add data into it.

Quick Memory Trick
Statement	Table Exists?	Creates New Table?
SELECT INTO	No	✅ Yes
INSERT INTO SELECT	Yes	❌ No

/*
Suppose:

Customers

CustomerID	CustomerName
1	Alice
2	Bob

CustomersBackup (already exists)

CustomerID	CustomerName
3	Charlie

After executing:

INSERT INTO CustomersBackup
SELECT *
FROM Customers;
*/

After:

INSERT INTO CustomersBackup
SELECT *
FROM Customers;

the existing rows are kept, and the selected rows are added.

Final CustomersBackup table:

CustomerID	CustomerName
3	Charlie
1	Alice
2	Bob

/*
Question 9 (CASE)

Given this table:

CustomerName	Age
Alice	18
Bob	25
Charlie	35

What will this query return?

SELECT CustomerName,
CASE
    WHEN Age < 20 THEN 'Teen'
    WHEN Age < 30 THEN 'Young Adult'
    ELSE 'Adult'
END AS Category
FROM Customers;

Write the complete output table.
*/

Output:

CustomerName	Category
Alice	Teen
Bob	Young Adult
Charlie	Adult
Why?
Alice (18)
WHEN Age < 20 THEN 'Teen'

18 < 20 ✅ → Teen

Bob (25)

First condition:

Age < 20

25 < 20 ❌

Second condition:

Age < 30

25 < 30 ✅ → Young Adult

Charlie (35)
35 < 20 ❌
35 < 30 ❌

Falls to:

ELSE 'Adult'

→ Adult

/*
Question 10 (NULL Functions)

Suppose we have:

ProductName	Price
Pen	10
Pencil	NULL
Eraser	5

What will this query return?

SELECT ProductName,
IFNULL(Price, 0) AS Price
FROM Products;

Write the output table
*/

Output:

ProductName	Price
Pen	10
Pencil	0
Eraser	5

Your reasoning is also correct:

IFNULL(Price, 0)

means:

If Price is NULL, return 0; otherwise return the actual value of Price.

/*
Question 11:

Stored Procedure

What is a Stored Procedure?

Mention:

Where it is stored.
Why it is useful.
How it differs from a normal SQL query.
*/

A Stored Procedure is a set of SQL statements stored in the database.
It can be executed multiple times using its name.
It is useful because it avoids rewriting the same SQL code repeatedly and can make maintenance easier.
A normal SQL query is written and executed directly, whereas a stored procedure is saved in the database and can be called whenever needed.

/*
Operators (1 mark)

What will this query return?

SELECT *
FROM Customers
WHERE Age >= 18
AND Age <= 30;

Describe in words which customers would be selected. Don't worry about writing a table.
*/

It selects customers whose age is between 18 and 30 inclusive.

Because both conditions must be true:

Age >= 18
AND
Age <= 30

So ages like 18, 20, 25, 30 are included.

Ages like 17 or 31 are excluded.

/*
Write a SQL statement to create a table called Students with these columns:

Column	Data Type
StudentID	INT
StudentName	VARCHAR(50)
Age	INT
*/
CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(50),
    Age INT
);

/*
Question 15 — TRUNCATE vs DROP (1 mark)

Suppose you have a table called Students.

What is the difference between:

TRUNCATE TABLE Students;

and

DROP TABLE Students;

What happens to:

The data?
The table structure?

Explain both.
*/

TRUNCATE
TRUNCATE TABLE Students;

✔ Deletes all rows (records) from the table.
✔ Keeps the table structure (columns, data types, constraints).

After truncating:

StudentID	StudentName	Age
(no rows)		

The table still exists.

DROP
DROP TABLE Students;

✔ Deletes all data.
✔ Deletes the entire table structure.
✔ The table no longer exists.

After dropping:

Students table does not exist.

/*
Question 16 — CREATE DATABASE (1 mark)

Write the SQL statement to create a database called:

CollegeDB
*/

CREATE DATABASE CollegeDB;

/*
Question 17 — HAVING vs WHERE (1 mark)

What is the difference between WHERE and HAVING?

Specifically:

When is WHERE applied?
When is HAVING applied?
Which one is used with aggregate functions like COUNT(), SUM(), AVG()?
*/

WHERE
Filters rows before grouping and aggregation.
Cannot directly use aggregate functions like COUNT(), SUM(), AVG().

Example:

SELECT *
FROM Customers
WHERE Age > 18;
HAVING
Filters groups after GROUP BY and aggregation.
Used with aggregate functions.

Example:

SELECT City, COUNT(*)
FROM Customers
GROUP BY City
HAVING COUNT(*) > 1;
Quick Memory Trick
WHERE  -> before GROUP BY
HAVING -> after GROUP BY
WHERE  -> filters rows
HAVING -> filters groups
Aggregate functions?
HAVING ✅
WHERE ❌

/*
Question 18 — ANY vs ALL (1 mark)

Suppose the subquery returns:

10
20
30

Which values of X satisfy:

X > ANY (10, 20, 30)

and which values of X satisfy:

X > ALL (10, 20, 30)

Explain the difference in words.
*/

X > ANY (10, 20, 30)

Only one comparison needs to be true.

Examples:

X = 15 → 15 > 10 ✅, 15 > 20 ❌, 15 > 30 ❌ → TRUE
X = 25 → TRUE
X = 31 → TRUE
X = 9 → all comparisons false → FALSE

So effectively:

X > ANY (10,20,30)

means:

X > 10

(the smallest value)

X > ALL (10, 20, 30)

Every comparison must be true.

Examples:

X = 31 → 31 > 10 ✅, 31 > 20 ✅, 31 > 30 ✅ → TRUE
X = 25 → 25 > 30 ❌ → FALSE
X = 10 → 10 > 10 ❌ → FALSE

So effectively:

X > ALL (10,20,30)

means:

X > 30

(the largest value)

/*
What will be the output?

SELECT CustomerName,
CASE
    WHEN Age >= 60 THEN 'Senior'
    WHEN Age >= 18 THEN 'Adult'
    ELSE 'Minor'
END AS Category
FROM Customers;

For these rows:

CustomerName	Age
Alice	15
Bob	25
Charlie	65
*/

Output:

CustomerName	Age	Category
Alice	15	Minor
Bob	25	Adult
Charlie	65	Senior

/*
You have:

Customers

CustomerID	CustomerName	City
1	Alice	London
2	Bob	Paris
3	Charlie	London
4	David	Berlin

Write one SQL query that returns only cities having more than 1 customer, along with the number of customers in each city.

Expected output:

City	NumberOfCustomers
London	2
*/

SELECT City, COUNT(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 1;






/*

Style	Example
PascalCase	MonkeyLovesBanana
camelCase	monkeyLovesBanana
snake_case	monkey_loves_banana
SCREAMING_SNAKE_CASE	MONKEY_LOVES_BANANA
kebab-case	monkey-loves-banana
*/