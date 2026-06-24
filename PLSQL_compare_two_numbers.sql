-- AISHI DE 

SET SERVEROUTPUT ON;

DECLARE 
    a INTEGER := &a;
    b INTEGER := &b;

BEGIN

    if a>b then
    dbms_output.put_line(a || ' is greater than ' || b);

    elsif a=b then
    dbms_output.put_line(a || ' is equal to ' || b);

    else
    dbms_output.put_line(a || ' is smaller than ' || b);

    end if;

END;
/