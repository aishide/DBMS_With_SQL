-- AISHI DE 

PROCEDURES 
-- PL/SQL provides procedures as reusable code blocks that perform specific actions or business logic within a database environment.

Syntax :
CREATE OR REPLACE PROCEDURE procedure_name (
    param1 IN NUMBER,
    param2 IN VARCHAR2,
    result OUT VARCHAR2
)
IS
BEGIN
    -- executable statements
END;
/


Example :
CREATE PROCEDURE GetStudentDetails (
    p_StudentID IN NUMBER
)
IS
    v_FirstName Students.FirstName%TYPE;
    v_LastName  Students.LastName%TYPE;
    v_BirthDate Students.BirthDate%TYPE;
    v_City      Students.City%TYPE;
    v_Country   Students.Country%TYPE;
BEGIN
    SELECT FirstName, LastName, BirthDate, City, Country
    INTO v_FirstName, v_LastName, v_BirthDate, v_City, v_Country
    FROM Students
    WHERE StudentID = p_StudentID;

    DBMS_OUTPUT.PUT_LINE(v_FirstName || ' ' || v_LastName);
END;
/






-- DROP Procedure : 
Syntax :
DROP PROCEDURE procedure_name;

example :
DROP PROCEDURE GetStudentDetails;