-- AISHI

-- Iteration upto 3 


SET SERVEROUTPUT ON;

DECLARE
    count NUMBER := 1;

BEGIN
    LOOP

        DBMS_OUTPUT.PUT_LINE('The iteration is ' || count);

        IF count = 3 THEN
            EXIT;
        END IF;

        count := count + 1;

    END LOOP;
END;
/