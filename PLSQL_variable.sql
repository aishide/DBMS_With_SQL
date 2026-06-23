-- AISHI DE



-- Initializing during declaration
SET SERVEROUTPUT ON;

DECLARE 
    var VARCHAR2(40) := 'Aishi';
BEGIN
    DBMS_OUTPUT.PUT_LINE(var);
END;
/

-- Initialization After Declaration

DECLARE  
    var VARCHAR2(40);
BEGIN 
    var := 'Aishi';
END;
/

OR 

DECLARE 
    a NUMBER ;
    b NUMBER;
    result NUMBER:
BEGIN
    a := 10;
    b := 20;
    result := a + b;

    DBMS_OUTPUT.PUT_LINE('The result of sum is ' ||result);
END;
/
