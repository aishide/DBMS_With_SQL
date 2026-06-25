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


