-- AISHI DE 

In PL/SQL, records are structured data types that allow grouping multiple,
related data fields under a single name.

Records are similar to structures in C, objects in Java, and tuples in Python. 
Each record has multiple fields, and each field has a data type and a name. 
Records help developers organize data logically, making it easier to work with and read. 
Records can be declared at the package, block, or schema level and used in various PL/SQL contexts.


Types of PL/SQL Records
PL/SQL offers different ways to declare and use records. Here’s an overview of the common types:

Table-Based Records: Linked to a table’s row structure, allowing you to work directly with database table columns.
Cursor-Based Records: Derived from a cursor’s query result set, providing a way to process query results one row at a time.
Programmer-Defined Records: User-defined records with custom fields and data types.
Nested Records: Records within records, enabling hierarchical data management


In databases, records are called rows in a table, and we can interact with them using SQL queries.



-- 1. Declaring and Using a Table-Based Record

record Human {
  id: Integer,
  name: String,
  age: Integer,
  ph_no: Integer
}

Now, we are creating instances for this record and inserting the data.

Human1 = Human {
     id: 1,
     name: "John",
     age: 25,
     ph_no: 9124567833
}
Human2 = Human {
    id: 2,
    name: "Amar",
    age: 26,
    ph_no: 9874567321
}




-- 2. Declaring Cursor-Based Records

DECLARE
    -- Declare a cursor to fetch data
    CURSOR employee_cursor IS
        SELECT employee_id, employee_name, salary
        FROM employees
        WHERE department_id = 10;

    -- Declare a record type based on the cursor's query structure
    TYPE employee_record_type IS RECORD (
        emp_id   employees.employee_id%TYPE,
        emp_name employees.employee_name%TYPE,
        emp_salary employees.salary%TYPE
    );

    -- Declare a variable of the record type
    employee_rec employee_record_type;

BEGIN
    -- Open the cursor
    OPEN employee_cursor;

    -- Fetch data from the cursor and process each record
    LOOP
        FETCH employee_cursor INTO employee_rec;
        EXIT WHEN employee_cursor%NOTFOUND;

        -- Process the record (for example, print the values)
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || employee_rec.emp_id || ', Name: ' || employee_rec.emp_name || ', Salary: ' || employee_rec.emp_salary);
    END LOOP;

    -- Close the cursor
    CLOSE employee_cursor;
END;