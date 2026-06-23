-- AISHI DE 

SET SERVEROUTPUT ON;

DECLARE 
    a NUMBER := 5;
    b NUMBER := 20;

BEGIN 

    IF a>b then 
    DBMS_OUTPUT.PUT_LINE(a || 'is greater than ' || b);
    END IF;

dbms_output.put_line('I am Not in if');

END;
/