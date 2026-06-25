-- AISHI DE 

syntax 

DECLARE
        --declare loop variable and provide its datatype
loop_varaible datatype;
BEGIN
        --for loop with start and end value
FOR loop_variable in start_value .. end_value LOOP
set of statements 
END LOOP;
END;
/




Example :

SET SERVEROUTPUT ON;

DECLARE 
    counter NUMBER := 1;

BEGIN

    DBMS_OUTPUT.PUT_LINE('This is the For loop :');
    dbms_output.new_line;

    FOR counter IN 1..5 LOOP
        dbms_output.put_line('The counter number ' ||counter);
    END LOOP;

    dbms_output.new_line;
    dbms_output.put_line ('This is the end of the loop');

END;
/


-- Nested For Loop 

syntax  :

BEGIN
          --outer loop 
FOR loop_variable1 IN start_value1 ..end_value1 LOOP
          --inner loop
FOR  loop_variable2 IN start_value2 ..end_value2 LOOP
          --set of statements 
END LOOP;
          --inner loop end
END LOOP;
          --outer loop end
END;
/



example :

SET SERVEROUTPUT ON;

BEGIN 
    dbms_output.put_line('This is nested for loop');
    dbms_output.new_line;

    FOR counter1 IN 1..3 LOOP 
    FOR counter2 IN 1..5 lOOP
        dbms_output.put(counter2);

    end loop;

    dbms_output.new_line;

end loop;

end;
/


Output : 


This is nested for loop

12345
12345
12345


PL/SQL procedure successfully completed.




-- Reverse keyword 

syntax  :

BEGIN
FOR loop_variable IN REVERSE start_value .. end_value  LOOP
    set_of_statements
END LOOP;
END;
/



example: 

