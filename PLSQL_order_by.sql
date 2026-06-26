-- AISHI DE 

Syntax : 

SELECT column1, column2, ...
FROM table_name 
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;


Example: 

CREATE TABLE employee (
  id INT,
  name VARCHAR2(50),
  salary NUMBER,
);

INSERT INTO employee (id, name, salary, join_date)
VALUES 
  (1,  'Aryan',  60000),
  (2,  'Sam',  75000),
  (3,  'Ritika',  65000),
  (4,  'Bobby',  70000);



SELECT id, name, salary
FROM employee
ORDER BY salary;



SELECT * FROM employee
ORDER BY salary DESC;


SELECT * FROM employee
ORDER BY salary DESC, name ASC




-- 2 → Sort by the 2nd column in the SELECT list.   so like second column 
SELECT * FROM employee
ORDER BY 2 DESC;


-- Sort the rows by the name column after converting every name to lowercase.
SELECT * FROM employee
ORDER BY LOWER(name);


SELECT id, name, salary * 0.5 AS adjusted_salary
FROM employees
ORDER BY adjusted_salary DESC;

