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





Types of system defined function : 

1. Named System Exception:

DECLARE 
   -- Variable to simulate NULL access
    v_null_var VARCHAR2(10);   
 -- Variable to simulate duplicate insertion
    v_id NUMBER := 1;
BEGIN 

   -- 1. ACCESS_INTO_NULL example
 
   BEGIN        
-- Trying to access NULL variable       
 IF v_null_var = 'test' THEN    
        NULL;    
    END IF;
    EXCEPTION     
   WHEN ACCESS_INTO_NULL THEN  
          DBMS_OUTPUT.PUT_LINE('Caught ACCESS_INTO_NULL exception');
    END;

-- 2. DUP_VAL_ON_INDEX example

    BEGIN
        -- Attempt to insert duplicate value into unique index
        INSERT INTO employees (employee_id, name)
        VALUES (v_id, 'John Doe');
        
        -- Insert again with same employee_id to cause DUP_VAL_ON_INDEX
        INSERT INTO employees (employee_id, name)
        VALUES (v_id, 'Jane Doe');

        COMMIT;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Caught DUP_VAL_ON_INDEX exception: Duplicate value');
    END;

    -- 3. LOGIN_DENIED example cannot be simulated easily inside PL/SQL, usually raised on login failure.
END;


--1.create a table name as geeks
CREATE TABLE geeks ( 
   g_id INT PRIMARY KEY,    -- Adding PRIMARY KEY will help trigger DUP_VAL_ON_INDEX 
   g_name VARCHAR(20),
    marks INT
);
--2.insert the value in geeks  table
INSERT INTO geeks VALUES (1, 'Suraj', 100);
INSERT INTO geeks VALUES (2, 'Praveen', 97);
INSERT INTO geeks VALUES (3, 'Jessie', 99);





2. Unnamed System Exception:

Syntax : 

DECLARE
  exception_name EXCEPTION; 
 PRAGMA EXCEPTION_INIT(exception_name, -error_code);
BEGIN  
-- Code that may raise the unnamed exception 
EXCEPTION  
WHEN exception_name THEN    
-- Exception handling code
END;


example  :

DECLARE  
fk_violation EXCEPTION; 
 PRAGMA EXCEPTION_INIT(fk_violation, -2292);
BEGIN  
DELETE FROM departments WHERE department_id = 10;
EXCEPTION 
 WHEN fk_violation THEN  
  DBMS_OUTPUT.PUT_LINE('Error: Cannot delete department. Employees exist in it.');
END;

Output:
Error: Cannot delete department. Employees exist in it.






Example  :

DECLARE  
 x INT := &x;  -- Runtime input 
  y INT := &y; 
  div_r FLOAT;  
 exp1 EXCEPTION;  -- For division by zero   exp2
 EXCEPTION; 
 -- For y > x
BEGIN   IF y = 0 THEN 
     RAISE exp1; 
  ELSIF y > x THEN 
     RAISE exp2;   
ELSE     
 div_r := x / y;    
  DBMS_OUTPUT.PUT_LINE('The result is ' || div_r);   
END IF;
EXCEPTION   
WHEN exp1 THEN      
DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed'); 
  WHEN exp2 THEN   
   DBMS_OUTPUT.PUT_LINE('Error: y is greater than x, please check the input');
END;


Output:
ZERO_DIVIDE: Cannot divide by zero





Example 2 :
DECLARE  
 myex EXCEPTION;
   n NUMBER := 10;
BEGIN 
  FOR i IN 1..n LOOP
      DBMS_OUTPUT.PUT_LINE(i*i);    
  IF i*i = 36 THEN      
   RAISE myex;     
 END IF;   
END LOOP;
EXCEPTION  
 WHEN myex THEN   
   RAISE_APPLICATION_ERROR(-20015, 'Welcome to GeeksForGeeks');
END;


Output:
1
4
9
16
25
36
Error Report:ORA-20015: Welcome to GeeksForGeeksORA-06512: at line 13
