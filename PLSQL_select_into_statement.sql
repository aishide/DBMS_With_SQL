--AISHI DE 



Syntax : 

SELECT column1,  column2, . . . . , column_n 
INTO
variable1, variable2, . . . . , variable_n  
FROM table 
WHERE expresion1, expression2, . . . . , expression_n;



/*

CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    AGE INT,
    SALARY INT
);
INSERT INTO EMPLOYEE (EMP_ID, NAME, AGE, SALARY) VALUES
(001, 'Sahil', 21, 15000),
(002, 'Alen', 22, 13000),
(003, 'John', 22, 14000),
(004, 'Alex', 20, 13000),
(005, 'Mathew', 22, 14000),
(006, 'Sia', 21, 15000),
(007, 'David', 22, 16000),
(008, 'Tim', 21, 14000),
(009, 'Leo', 20, 15000),
(010, 'Tom', 21, 16000);

*/

example 1  :

DECLARE
    v_salary NUMBER(8);
BEGIN
    SELECT SALARY INTO v_salary
    FROM EMPLOYEE
    WHERE  EMP_ID= 1;
    DBMS_OUTPUT.PUT_LINE( v_salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee with EMP_ID=1 not found.');
END;
Output:


-- MORE THAN 1 VARIABLES

Syntax :

SELECT column1,  column2, . . . . , column_n 
INTO
variable1, variable2, . . . . , variable_n  
FROM table 
WHERE expresion1, expression2, . . . . , expression_n;