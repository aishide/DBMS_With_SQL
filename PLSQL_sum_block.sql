--AISHI DE 

SET SERVEROUTPUT ON;

DECLARE 
    -- Taking input of variable a 
    a INTEGER := &a;
    --Taking input of variable b 
    b INTEGER := &b;

    C INTEGER;

BEGIN 

    c := a + b;

    DBMS_OUTPUT.PUT_LINE('Sum of' || a || 'and' || b || 'is' || c );

END;
/



OUTPUT : 
Enter value for a: 2
Enter value for b: 3

Sum of 2 and 3 is = 5

PL/SQL procedure successfully completed.

