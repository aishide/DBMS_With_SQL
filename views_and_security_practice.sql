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

