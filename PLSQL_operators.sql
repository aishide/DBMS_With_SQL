-- AISHI DE 

PL/SQL Operators : 


-- The || Operator in PLSQL is used to concatenate 2 or more strings together.
syntax :
string1 || string2 [ || string_n ]


example :
SET SERVEROUTPUT ON;

DECLARE 
    str1 string(10) := ('Hello');
    str2 string(10) := ('Aishi');

BEGIN 
    dbms_output.put_line(( str1 || ' ' || str2));

END;
/


-- AND operator 
Syntax : 
SELECT column1, column2, ... 
FROM table_name 
WHERE condition1 AND condition2;

Example :
SELECT p.product_name, p.price
FROM products p
JOIN sales s ON p.product_id = s.product_id
WHERE p.price > 250 AND s.quantity > 5;

SELECT s.sale_id, s.product_id, s.sale_date, s.quantity
FROM sales s
WHERE s.sale_date = '2024-08-15' AND s.quantity > 10;

SELECT p.product_name, p.price
FROM products p
JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_date BETWEEN '2024-08-01' AND '2024-08-10' AND p.price < 300;

SELECT s.sale_id, p.product_name, s.quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
WHERE s.quantity > 10 AND p.product_name LIKE '%Phone%';



-- LIKE operator 
syntax :
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;

example :
SELECT ProductName, Category
FROM Products
WHERE ProductName LIKE 'D%';

SELECT SupplierName, ContactName
FROM Suppliers
WHERE SupplierName LIKE '_____';

SELECT ProductName, Category
FROM Products
WHERE Category NOT LIKE 'Electronics';


-- ESCAPE '\' tells SQL that the backslash (\) is the escape character, so \_ is treated as a literal underscore instead of a wildcard.
SELECT SupplierName, ContactName
FROM Suppliers
WHERE SupplierName LIKE 'Tech\_%' ESCAPE '\';




-- NOT operator 
syntax : 
SELECT column_name
FROM table_name
WHERE NOT condition;

example : 
SELECT Name
FROM Employees
WHERE NOT Department = 'HR';

SELECT Name
FROM Employees e
WHERE NOT EXISTS (SELECT 1 FROM Projects p WHERE p.AssignedTo = e.EmployeeID);

SELECT ProjectName
FROM Projects
WHERE AssignedTo IS NOT NULL;


SELECT CASE 
           WHEN NOT Department = 'IT' THEN 'Employee is not in IT department'
           ELSE 'Employee is in IT department'
       END AS Department_Status
FROM Employees
WHERE EmployeeID = 2;



-- CASE
syntax :
CASE
   WHEN condition_1 THEN
      -- code block for condition_1
   WHEN condition_2 THEN
      -- code block for condition_2
   ...
   ELSE
      -- default code block
END CASE;


example :
DECLARE
   product_price NUMBER := 120.50;
   product_category VARCHAR2(20);
BEGIN
   CASE
      WHEN product_price < 50 THEN
         product_category := 'Low Cost';
      WHEN product_price >= 50 AND product_price <= 100 THEN
         product_category := 'Medium Cost';
      WHEN product_price > 100 THEN
         product_category := 'High Cost';
      ELSE
         product_category := 'Invalid Price';
   END CASE;

   DBMS_OUTPUT.PUT_LINE('The product falls into the category: ' || product_category);
END;



DECLARE
   day_number NUMBER := 1;
   day_name VARCHAR2(20);
BEGIN
   CASE day_number
      WHEN 1 THEN
         day_name := 'Monday';
      WHEN 2 THEN
         day_name := 'Tuesday';
      WHEN 3 THEN
         day_name := 'Wednesday';
      WHEN 4 THEN
         day_name := 'Thursday';
      WHEN 5 THEN
         day_name := 'Friday';
      WHEN 6 THEN
         day_name := 'Saturday';
      WHEN 7 THEN
         day_name := 'Sunday';
      ELSE
         day_name := 'Invalid day';
   END CASE;

   DBMS_OUTPUT.PUT_LINE('The day is: ' || day_name);
END;



