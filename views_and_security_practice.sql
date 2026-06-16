AISHI DE
views , injection, parameters , prepared statements , hosting , datatypes , keywwords , functions

/*
Suppose you have a table Customers with columns:

CustomerID	CustomerName	City

You frequently need to see only the CustomerName and City columns.

Write the SQL statement to create an object named CustomerView that provides this data.
*/

CREATE VIEW CustomerView AS
SELECT CustomerName, City
FROM Customers;


/*
A developer writes the following code:

SELECT * FROM Users
WHERE Username = '" + username + "'
AND Password = '" + password + "';

A malicious user enters:

' OR '1'='1
Questions:
What type of attack is this?
Why is it dangerous?
What is the best way to prevent it?
*/

It is dangerous because ' OR '1'='1 is always true and it will return all usernames and passwords which can be exploited.
More generally, it can bypass authentication or expose unauthorized data because the condition always evaluates to true.
Best way to prevent it is to use parameters and prepared statements so that ' OR '1'='1 is treated as normal text and not as part of the SQL command.
Thats exactly why parameterized queries and prepared statements are effective.


/*
A developer writes:

SELECT * FROM Customers
WHERE CustomerID = ?;

What does the ? represent, and why is it used instead of directly writing the user's input into the SQL query?

Answer in your own words.
*/

? is used as a placeholder.
Its a parameter placeholder.
When the input is taken, the placeholder converts that text into data, not a command.

The database treats the user input as a value, not as executable SQL code.
It is used to prevent SQL Injection.

The placeholder itself doesnt convert text into data. Instead:

The SQL statement is precompiled/prepared.
Later, the parameter (?) is bound to the users value.
The database knows that this value is data only, so it never interprets it as SQL syntax.

For example, if the user enters:

' OR '1'='1

the database searches for the literal string:

' OR '1'='1

instead of treating it as part of the WHERE clause.



/*
Consider these two data types:

INT
VARCHAR(50)
What kind of data is each one used to store?
Why would you choose VARCHAR(50) instead of CHAR(50) for storing names? (Answer in your own words.)
*/

INT is used to store integer numeric data.
VARCHAR stores text/string data. That text can contain letters, digits, and special characters because they are all stored as characters.

CHAR(50)
Fixed length.
Always reserves 50 characters.
If you store "John" (4 characters), it still occupies space for 50 characters (padding the rest).
VARCHAR(50)
Variable length.
Stores only the actual number of characters plus a small overhead.
"John" uses space for just 4 characters (plus metadata), making it more storage-efficient for variable-length text.
Example

If you store:

John
CHAR(50) → reserves 50 character positions.
VARCHAR(50) → stores only "John".

So for names, VARCHAR is usually preferred because names have different lengths.

/*
Which of the following are SQL keywords and which are SQL functions?

SELECT
COUNT()
WHERE
AVG()
CREATE
NOW()

Classify each one as either a keyword or a function.
*/

SELECT - keyword
COUNT() - function
WHERE - keyword
AVG() - function
CREATE - keyword
NOW() - function 


/*
You have the following query:

SELECT COUNT(*) FROM Orders;
What does COUNT(*) return?
How is it different from COUNT(OrderID)?
What happens if OrderID contains NULL values?

Answer in your own words.
*/

COUNT(*) counts every row in the result set, regardless of whether any column contains NULL.

COUNT(*) → counts all rows.
COUNT(OrderID) → counts only the rows where OrderID is NOT NULL.
If OrderID is a PRIMARY KEY, then it can never be NULL, so in practice both return the same value.

If it contains NULL value then that is not counted.

/*
What is the difference between a prepared statement and a parameter?

Explain:

What is a parameter?
What is a prepared statement?
How do they work together to prevent SQL injection?

This is a conceptual question, so answer in your own words.
*/

A parameter is a placeholder for a value that will be supplied later.

For example:

SELECT * FROM Customers
WHERE CustomerID = ?;

Here, ? is a parameter. It doesnt contain a value yet. Later, the application might bind 101 to it.

So if the user enters 101, the database treats it as:

CustomerID = 101

If the user enters:

' OR '1'='1

the database treats it as the literal string "' OR '1'='1" and not as SQL code.



A prepared statement is a SQL query that is compiled or prepared first, before the actual values are inserted.

For example:

SELECT * FROM Customers
WHERE CustomerID = ?;

The database prepares this query structure once.

Later, when a value is provided, it simply fills in the placeholder without changing the SQL structure.



Suppose a login query is written unsafely:

SELECT * FROM Users
WHERE Username = '" + username + "'
AND Password = '" + password + "';

If the user enters:

' OR '1'='1

the final query becomes:

SELECT * FROM Users
WHERE Username = '' OR '1'='1'
AND Password = '';

Since '1'='1' is always true, the attacker may bypass authentication.

With a prepared statement and parameters:
SELECT * FROM Users
WHERE Username = ?
AND Password = ?;

The database prepares the SQL first and then binds the users input to the parameters.

If the user enters:

' OR '1'='1

it is treated as plain text, not executable SQL.

So the database searches for a username literally equal to:

' OR '1'='1

instead of changing the logic of the query.




Parameter (?) → a placeholder where a value will go.
Prepared statement → the precompiled SQL template that contains those placeholders.
Together → they separate SQL code from user data, which is why they are one of the most effective defenses against SQL injection.

A prepared statement is the blueprint; parameters are the values that fill in the blanks.


/*
You have the following table:

ProductID	ProductName	Price
1	Pen	10
2	Pencil	5
3	Eraser	15

You create a view:

CREATE VIEW CheapProducts AS
SELECT ProductName, Price
FROM Products
WHERE Price < 10;
Questions:
What data will CheapProducts contain initially?
If the price of Pen is updated from 10 to 8 in the Products table, will CheapProducts automatically reflect this change? Why or why not?
*/

It will have the columns ProductName and Price and contain:

ProductName	Price
Pencil	5


A view does not store a separate copy of the data (unless its a materialized view)


When you run:

SELECT * FROM CheapProducts;

the database executes:

SELECT ProductName, Price
FROM Products
WHERE Price < 10;

using the current data in Products.

After updating Pen to 8:

ProductName	Price
Pen	8
Pencil	5

the view will automatically show:

ProductName	Price
Pen	8
Pencil	5

No need to recreate the view.


/*
Consider these SQL data types:

INT
DECIMAL(8,2)
DATE
VARCHAR(100)
BOOLEAN

For each one, give one example value that could be stored in that data type.

For example:

INT → 25
*/

int → 25
DECIMAL(8,2) → 12345.67
DATE → 2023-10-15
VARCHAR(100) → "John Doe"
BOOLEAN → TRUE

/*
SELECT UPPER(CustomerName)
FROM Customers;
Keyword or function?
What does it do?
Output for:
Alice
Bob
charlie
*/

UPPER()

is a function, and:

Alice   → ALICE
Bob     → BOB
charlie → CHARLIE



