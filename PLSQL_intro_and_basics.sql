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


--