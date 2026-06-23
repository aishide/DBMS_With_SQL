--AISHI DE 

/*
PL/SQL INTRO AND BASICS 
*/


-- Structure of PL/SQL Block  : 

DECLARE
    --declare statement 
BEGIN
    --executable statement 
EXCEPTION
    --exception handling statements 
END;
/


-- Declaring variables 

SET SERVEROUTPUT ON;

DECLARE 
    var1 INTEGER;
    var2 REAL;
    var3 VARCHAR(20);
BEGIN 
    NULL;
END;
/

OUTPUT : PL/SQL procedure successfully completed.


-- Displaying Output 

SET SERVEROUTPUT ON;

DECLARE 
    var VARCHAR2(40) := 'I love to code';
BEGIN 
    DBMS_OUTPUT.PUT_LINE(var);
END;
/

OUTPUT : 
I love GeeksForGeeks
PL/SQL procedure successfully completed.


-- Taking input from users  

SET SERVEROUTPUT ON;

DECLARE
    --taking input of a 
    a NUMBER := &a;
    --taking input of b
    b VARCHAR2(30) := &b;
BEGIN
    NULL;
END;
/

OUTPUT :

Enter value for a: 22
old   2: a number := &a;
new   2: a number := 22;
Enter value for b: 'AISHI'
old   3: b varchar2(30) := &b;
new   3: b varchar2(30) := 'AISHI';


