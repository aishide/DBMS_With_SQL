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

