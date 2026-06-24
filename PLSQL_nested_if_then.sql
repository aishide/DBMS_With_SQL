-- AISHI 

SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 10;
    b NUMBER := 20;
    c NUMBER := 30;

BEGIN
    if a<b then 
    dbms_output.put_line(a || ' is less than ' ||b);
        if a<c then
        dbms_output.put_line(a || ' is less than ' || c || ' too');
        end if;
    end if;
end;
/
