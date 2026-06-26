-- AISHI DE 

Syntax : 

DELETE FROM table_name
WHERE condition;



Example  :

CREATE TABLE employeeDetails (
    employee_id NUMBER(10) PRIMARY KEY,
    name VARCHAR2(10),
    department VARCHAR2(20)
);

-- Insert a single row
INSERT INTO employeeDetails (employee_id, name, department)
VALUES (101, 'John Smith', 'HR');

-- Insert another row
INSERT INTO employeeDetails (employee_id, name, department)
VALUES (102, 'Jane Doe', 'IT');

-- Insert  a third row
INSERT INTO employeeDetails (employee_id, name, department)
VALUES (103, 'Mike Brown', 'Finance');

-- Insert a fourth row
INSERT INTO employeeDetails (employee_id, name, department)
VALUES (104, 'Lisa Wong', 'HR');

--Insert a fifth row
INSERT INTO employeeDetails (employee_id, name, department)
VALUES (105, 'Alice Grey', 'Marketing');


CREATE TABLE department (
    department VARCHAR2(20), 
    name VARCHAR2(10)
);
--Insert a single row
INSERT INTO department (department, name)
VALUES ('HR', 'John Smith');

--Insert another row
INSERT INTO department (department, name)
VALUES ('Finance', 'Mike Brown');

--Insert third row
INSERT INTO department (department, name)
VALUES ('IT', 'Jane Doe');





DELETE FROM employeeDetails
WHERE department = 'IT';





DELETE FROM employeeDetails
WHERE department = 'HR' AND employee_id = 101;


