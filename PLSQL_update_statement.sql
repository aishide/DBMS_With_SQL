-- AISHI DE 

Syntax : 

UPDATE table_name
SET column1 = value1,
    column2 = value2,
    ...
WHERE condition;



Example  :

CREATE TABLE salary_adjustments (
    employee_id NUMBER PRIMARY KEY,
    new_salary NUMBER(10, 2)
);

-- Insert some sample salary adjustments
INSERT INTO salary_adjustments (employee_id, new_salary) VALUES (1001, 58000);
INSERT INTO salary_adjustments (employee_id, new_salary) VALUES (1003, 82000);
INSERT INTO salary_adjustments (employee_id, new_salary) VALUES (1005, 64000);




BEGIN
  UPDATE employees
  SET salary = salary * 1.1
  WHERE employee_id = 1002;

  COMMIT; -- Commit the changes to make them permanent

  DBMS_OUTPUT.PUT_LINE('Salary updated for employee 1002.');
END;
/




Example 2 : 

BEGIN
  UPDATE employees
  SET last_name = 'Williams',
      salary = salary * 1.15
  WHERE employee_id = 1003;

  COMMIT; -- Commit the changes to make them permanent

  DBMS_OUTPUT.PUT_LINE('Last name and salary updated for employee 1003.');
END;
/



Example 3 :

BEGIN
  UPDATE employees e
  SET e.salary = (
    SELECT sa.new_salary
    FROM salary_adjustments sa
    WHERE sa.employee_id = e.employee_id
  )
  WHERE EXISTS (
    SELECT 1
    FROM salary_adjustments sa
    WHERE sa.employee_id = e.employee_id
  );

  COMMIT; -- Commit the changes to make them permanent

  DBMS_OUTPUT.PUT_LINE('Employee salaries updated from salary_adjustments table.');
END;
/



