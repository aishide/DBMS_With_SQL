-- AISHI DE 

A Cursor in PL/SQL is a pointer to a context area that
 stores the result set of a query.


The cursor is used to retrieve data one row at a time from the results set, 
unlike other SQL commands that operate on all rows at once.


The Data that is stored in the Cursor is called the Active Data Set. 

Oracle DBMS has another predefined area in the main memory Set, within which the cursors
are opened. Hence the size of the cursor is limited by the size of this pre-defined area.

Cursor Actions  :
1. Declare cursor 
2. fetch
3. open 
4. close
5. deallocate 


Types of Cursors in PL/SQL
Cursors are classified depending on the circumstances in which they are opened.
1. Implicit Cursor: If the Oracle engine opened a cursor for its internal processing 
it is known as an Implicit Cursor. It is created "automatically" for the user by
Oracle when a query is executed and is simpler to code.
2. Explicit Cursor: A Cursor can also be opened for processing data through a PL/SQL block, 
on demand. Such a user-defined cursor is known as an Explicit Cursor.



