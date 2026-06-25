-- AISHI DE 

SET SERVEROUTPUT ON;

DECLARE 
    total_sum NUMBER := 0;
    current_num NUMBER := 1;

BEGIN 

    While current_num < 11
    LOOP

        total_sum := total_sum + current_num;
        dbms_output.put_line('Current number : '|| current_num);
        dbms_output.put_line('Total sum : ' || total_sum);

        current_num := current_num + 1;

    END LOOP;
END;
/