-- AISHI DE 


--SYNTAX : 

LOOP
   -- Code block to be executed repeatedly
END LOOP;


-- Exit statment 

LOOP
   -- Code block
   IF condition THEN
      EXIT;
   END IF;
END LOOP;



-- Exit when consition  : 

LOOP
    -- Code block
    EXIT WHEN condition;
END LOOP;


--Example 

SET SERVEROUTPUT ON;

DECLARE
   a NUMBER := 1;

BEGIN 
   LOOP 

   dbms_output.put_line('Aishi loves coding');
   a := a+1;

   Exit when a > 5;

   END LOOP;

END;
/

