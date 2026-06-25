-- AISHI DE 

syntax : 

INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);


Query :

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees (employee_id, first_name, last_name, department)
VALUES (101, 'John', 'Doe', 'Sales');



Example : 

INSERT INTO employees (employee_id, first_name, last_name, department)
VALUES
(102, 'Alice', 'Smith', 'Marketing'),
(103, 'Bob', 'Johnson', 'Finance'),
(104, 'Emily', 'Brown', 'HR');

CREATE TABLE New_employees (
employee_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50)
);

INSERT INTO New_employees
SELECT * FROM employees
WHERE 1 != 2;