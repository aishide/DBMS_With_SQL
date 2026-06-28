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




-- 3. Programmer-Defined Record (User-Defined)

# Define a programmer-defined record representing a person
class Human:
    def __init__(self, name, age, address):
        self.name = name
        self.age = age
        self.address = address

# Create an instance of the Person record
Human1 = Human("Jagan Malla", 30, "Runku Street")

# Access fields of the record
print("Name:", Human1.name)
print("Age:", Human1.age)
print("Address:", Human1.address)



Referencing a Records Field :


DECLARE
    -- Declare a record based on a table structure
    TYPE employee_record_type IS RECORD (
        emp_id   employees.employee_id%TYPE,
        emp_name employees.employee_name%TYPE,
        emp_salary employees.salary%TYPE
    );
-- Declare a record variable
    employee_rec employee_record_type;

-- Assign values to the record fields
employee_rec.emp_id := 101;
employee_rec.emp_name := 'John Doe';
employee_rec.emp_salary := 50000;

-- Retrieve values from the record fields
DBMS_OUTPUT.PUT_LINE('Employee ID: ' || employee_rec.emp_id);
DBMS_OUTPUT.PUT_LINE('Employee Name: ' || employee_rec.emp_name);
DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || employee_rec.emp_salary);






Manipulate Record Fields: We can also perform the calculations and operations with the record fields.

-- Increase employee salary by 10%
employee_rec.emp_salary := employee_rec.emp_salary * 1.1;




Pass Record as Parameter: Records are passed the parameters to the functions or procedures allowing the work with the structured data with the subprograms.

-- Example of a procedure accepting a record parameter
PROCEDURE print_employee_details(emp_record IN employee_record_type) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_record.emp_salary);
END;






Cursor Fetch Into Record: We can retrieve the data from the cursor directly into the variables of the record.

DECLARE
    CURSOR emp_cursor IS
        SELECT employee_id, employee_name, salary
        FROM employees;
     emp_rec employee_record_type;
BEGIN
    OPEN emp_cursor;
    FETCH emp_cursor INTO emp_rec;
    CLOSE emp_cursor;
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_rec.emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_rec.emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_rec.emp_salary);
END;






Assigning records :

-- Assigning values to fields of emp_rec
emp_rec.emp_id := 101;
emp_rec.emp_name := 'John Doe';
emp_rec.emp_salary := 50000;

-- Assigning emp_rec to emp_rec1
emp_rec1 := emp_rec;










Records with INSERT Statement :

DECLARE
    -- Define a record type
    TYPE employee_record_type IS RECORD (
        emp_id   employees.employee_id%TYPE,
        emp_name employees.employee_name%TYPE,
        emp_salary employees.salary%TYPE
    );

    -- Declare a record variable
    emp_rec employee_record_type;

BEGIN
    -- Assign values to the record fields
    emp_rec.emp_id := 101;
    emp_rec.emp_name := 'John Doe';
    emp_rec.emp_salary := 50000;

    -- Insert data into the employees table using the record
    INSERT INTO employees (employee_id, employee_name, salary)
    VALUES (emp_rec.emp_id, emp_rec.emp_name, emp_rec.emp_salary);

    -- Commit the transaction
    COMMIT;
END;
/







Records with UPDATE Statement :

DECLARE
    -- Define a record type
    TYPE employee_record_type IS RECORD (
        emp_id   employees.employee_id%TYPE,
        emp_name employees.employee_name%TYPE,
        emp_salary employees.salary%TYPE
    );

    -- Declare a record variable
    emp_rec employee_record_type;

BEGIN
    -- Assign values to the record fields
    emp_rec.emp_id := 101;
    emp_rec.emp_name := 'John Doe';
    emp_rec.emp_salary := 55000; -- Updated salary

    -- Update data in the employees table using the record
    UPDATE employees
    SET employee_name = emp_rec.emp_name,
        salary = emp_rec.emp_salary
    WHERE employee_id = emp_rec.emp_id;

    -- Commit the transaction
    COMMIT;
END;
/






Nested Record :

DECLARE
    -- Define a nested record type
    TYPE address_record_type IS RECORD (
        street_address VARCHAR2(100),
        city VARCHAR2(50),
        state VARCHAR2(50),
        postal_code VARCHAR2(20)
    );

    TYPE employee_record_type IS RECORD (
        emp_id   INTEGER,
        emp_name VARCHAR2(100),
        emp_address address_record_type -- Nested record type
    );

    -- Declare a record variable
    emp_rec employee_record_type;

BEGIN
    -- Assign values to the fields of the nested record
    emp_rec.emp_id := 101;
    emp_rec.emp_name := 'John Doe';
    emp_rec.emp_address.street_address := '123 Main St';
    emp_rec.emp_address.city := 'New York';
    emp_rec.emp_address.state := 'NY';
    emp_rec.emp_address.postal_code := '10001';

    -- Output the nested record data
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_rec.emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_rec.emp_name);
    DBMS_OUTPUT.PUT_LINE('Street Address: ' || emp_rec.emp_address.street_address);
    DBMS_OUTPUT.PUT_LINE('City: ' || emp_rec.emp_address.city);
    DBMS_OUTPUT.PUT_LINE('State: ' || emp_rec.emp_address.state);
    DBMS_OUTPUT.PUT_LINE('Postal Code: ' || emp_rec.emp_address.postal_code);
END;
/


