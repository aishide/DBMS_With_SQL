-- AISHI 

SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 34;
    b NUMBER := 23;

BEGIN 

    if a>b then 
    DBMS_OUTPUT.PUT_LINE(a || 'is greater than ' || b);

    ELSE
    DBMS_OUTPUT.PUT_LINE(b || 'is greater than ' || a);

    end if;

    dbms_output.put_line('This is outside the if block');

end;
/