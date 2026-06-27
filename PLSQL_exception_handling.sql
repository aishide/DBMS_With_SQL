-- AISHI DE 

An exception is an error which disrupts the normal flow of program instructions.


There are two types of exceptions defined in PL/SQL

User defined exception.
System defined exceptions.


-- 1. System-Defined Exceptions

These are predefined exceptions that occur when Oracle rules or constraints 
are violated. They include NO_DATA_FOUND, ZERO_DIVIDE, TOO_MANY_ROWS, etc.


Example  : 

DECLARE
a NUMBER := 10; 
b NUMBER := 0;  
c NUMBER;
BEGIN 
c := a / b; 
-- Division by zero  DBMS_OUTPUT.PUT_LINE('Result: ' || c);
EXCEPTION  
WHEN ZERO_DIVIDE THEN    
DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed.');
END;

Output : Error: Division by zero is not allowed.


