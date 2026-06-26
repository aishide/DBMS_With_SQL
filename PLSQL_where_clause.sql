-- AISHI DE 


Syntax :

SELECT column1, column2, ...
FROM table_name
WHERE condition;



-- Where clause in select statement 
SELECT name, department, salary
FROM employees
WHERE department = 'IT';

--Where clause in Update statement 
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'HR';

-- Where clause in delete statement 
DELETE FROM employees
WHERE emp_id = 3;

-- multiple conditions 
SELECT name, department, salary
FROM employees
WHERE department = 'IT' AND salary > 6500; 