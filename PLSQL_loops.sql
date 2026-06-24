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



-- nested loop 

syntax :

-- Outer Loop
LOOP
     -- Code block
     -- Inner Loop
     LOOP
         -- Inner loop code block
         EXIT WHEN inner_condition;
     END LOOP;
   EXIT WHEN outer_condition;
END LOOP;




Example: 

DECLARE
  outer_counter NUMBER := 1;
  inner_counter NUMBER := 1;
BEGIN
  FOR outer_counter IN 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE('Outer Loop - Iteration ' || outer_counter);
    
    FOR inner_counter IN 1..2 LOOP
      DBMS_OUTPUT.PUT_LINE('Inner Loop - Iteration ' || inner_counter);
    END LOOP;
  END LOOP;
END;
/

Output:

Statement processed.
Outer Loop - Iteration 1
Inner Loop - Iteration 1
Inner Loop - Iteration 2
Outer Loop - Iteration 2
Inner Loop - Iteration 1
Inner Loop - Iteration 2
Outer Loop - Iteration 3
Inner Loop - Iteration 1
Inner Loop - Iteration 2