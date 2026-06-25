-- AISHI DE

--While loop 

Syntax : 

WHILE condition
LOOP
   -- Statements to be executed as long as the condition is true
END LOOP;




Example :

SET SERVEROUTPUT ON;

DECLARE
    counter NUMBER := 1;

BEGIN 

    WHILE counter <= 5
    LOOP
        dbms_output.put_line('counter in while loop : ' || counter);
        counter := counter+1;

    END LOOP;

END;
/


