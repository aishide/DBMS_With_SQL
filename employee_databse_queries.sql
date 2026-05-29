DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT, 
    gender VARCHAR(25),
    email VARCHAR(100) UNIQUE,
    mobile_number TEXT UNIQUE,
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(100),
    joining_date DATE,
    experience INT, 
    bonus DECIMAL(10,2),
    work_mode VARCHAR(50) );

INSERT INTO employee
VALUES
(1, 'Aishi', 'De', 21, 'Female', 'aishi.de@example.com', '9876543210', 'IT', 'Software Engineer', 500000.00, 'New York', '2020-01-15', 2, 7000.00, 'Remote');

(2, 'Parthiv', 'Abhani', 23, 'Male', 'parthiv.abhani@example.com', '9876543211', 'HR', 'HR Manager', 60000.00, 'Los Angeles', '2019-03-20', 3, 6000.00, 'On-site');

(3, 'Shlok', 'Vij', 25, 'Male', 'shlok.vij@example.com', '9876543212', 'Finance', 'Financial Analyst', 55000.00, 'Chicago', '2018-07-10', 4, 5500.00, 'Hybrid');

(4, 'Arjun', 'Verma', 27, 'Male', 'arjun.verma@example.com', '9876543213', 'Marketing', 'Marketing Executive', 45000.00, 'San Francisco', '2017-11-25', 5, 4500.00, 'Remote');

(5, 'Sneha', 'Roy', 22, 'Female', 'sneha.roy@example.com', '9876543214', 'IT', 'Data Analyst', 40000.00, 'Boston', '2019-06-15', 2, 4000.00, 'Hybrid');

(6, 'Karan', 'Singh', 30, 'Male', 'karan.singh@example.com', '9876543215', 'Sales', 'Sales Executive', 45000.00, 'Seattle', '2018-09-30', 4, 4500.00, 'On-site');

(7, 'Neha', 'Joshi',    28, 'Female', 'neha.joshi@example.com', '9876543216', 'IT', 'HR Specialist', 42000.00, 'Denver', '2019-12-10', 3, 4200.00, 'Hybrid');

(8, 'Vikram', 'Nair', 26, 'Male', 'vikram.nair@example.com', '9876543217', 'IT', 'System Administrator', 50000.00, 'Austin', '2018-05-15', 4, 5000.00, 'Remote');

(9, 'Ananya', 'Mehta', 24, 'Female', 'ananya.mehta@example.com', '9876543218', 'IT', 'UX Designer', 45000.00, 'Miami', '2020-02-28', 2, 4500.00, 'Hybrid');

(10, 'Rohan', 'Kapoor', 29, 'Male', 'rohan.kapoor@example.com', '9876543219', 'IT', 'Project Manager', 55000.00, 'Washington', '2018-11-10', 4, 5500.00, 'On-site');            

(11, 'Aarav', 'Sharma', 31, 'Male', 'aarav.sharma@example.com', '9876543220', 'IT', 'Software Engineer', 50000.00, 'New York', '2020-01-15', 2, 5000.00, 'Remote');

(12, 'Isha', 'Patel', 27, 'Female', 'isha.patel@example.com', '9876543221', 'IT', 'UX Designer', 45000.00, 'Miami', '2020-02-28', 2, 4500.00, 'Hybrid');

(13, 'Kabir', 'Gupta', 29, 'Male', 'kabir.gupta@example.com', '9876543222', 'IT', 'Software Engineer', 50000.00, 'New York', '2020-01-15', 2, 5000.00, 'Remote');

(14, 'Maya', 'Shah', 26, 'Female', 'mayа.shah@example.com', '9876543223', 'IT', 'UX Designer', 45000.00, 'Miami', '2020-02-28', 2, 4500.00, 'Hybrid');

(15, 'Ravi  ', 'Kumar', 28, 'Male', 'ravi.kumar@example.com', '9876543224', 'IT', 'Software Engineer', 50000.00, 'New York', '2020-01-15', 2, 5000.00, 'Remote');

(16, 'Sanya', 'Singh', 25, 'Female', 'sanya.singh@example.com', '9876543225', 'IT', 'Data Analyst', 40000.00, 'Boston', '2019-06-15', 2, 4000.00, 'Hybrid');

(17, 'Aditya', 'Mehta', 30, 'Male', 'aditya.mehta@example.com', '9876543226', 'IT', 'Software Engineer', 50000.00, 'New York', '2020-01-15', 2, 5000.00, 'Remote');

(18, 'Pooja', 'Sharma', 27, 'Female', 'pooja.sharma@example.com', '9876543227', 'IT', 'Data Analyst', 40000.00, 'Boston', '2019-06-15', 2, 4000.00, 'Hybrid');

(19, 'Rahul', 'Verma', 29, 'Male', 'rahul.verma@example.com', '9876543228', 'IT', 'Project Manager', 55000.00, 'Washington', '2018-11-10', 4, 5500.00, 'On-site');            

(20, 'Sakshi', 'Reddy', 26, 'Female', 'sakshi.reddy@example.com', '9876543229', 'IT', 'UX Designer', 45000.00, 'Miami', '2020-02-28', 2, 4500.00, 'Hybrid');            

//display all employees
SELECT * FROM employee;

//Display only first_name and salary
SELECT first_name, salary FROM employee;

//Show all employees from New York
SELECT * FROM employee WHERE city = 'New York';

//Show employees from IT department 
SELECT * FROM employee WHERE department = 'IT';

//Display employees with salary greater than 45000
SELECT * FROM employee WHERE salary > 45000;

//Show employees whose age is less than 25
SELECT * FROM employee WHERE age < 25;

//Display employees working in Hybrid mode
SELECT * FROM employee WHERE work_mode = 'Hybrid';

//Show all female employees
SELECT * FROM employee WHERE gender = 'Female';

//Display employees with experience greater than 3 years
SELECT * FROM employee WHERE experience > 3;

//Show employees from Miami city 
SELECT * FROM employee WHERE city = 'Miami';

//Display employee names and joing dates 
SELECT first_name, joining_date FROM employee;

//Show employees whose bonus is more than 5000
SELECT * FROM employee WHERE bonus > 5000;

//Display all developers 
SELECT * FROM employee WHERE designation LIKE '%Developer%';

//Show employees with salary less than 50000
SELECT * FROM employee WHERE salary < 50000;

// Display employees from IT department 
SELECT * FROM employee WHERE department = 'IT';


//WHERE CLAUSE QUESTIONS 

//Find employees whose salary is exactly 50000
SELECT * FROM employee WHERE salary = 50000;

//Find employees whose age is greater than 25
SELECT * FROM employee WHERE age > 25;

//Show employees from New York city
SELECT * FROM employee WHERE city = 'New York';

//Find employees  having bonus less than 5000
SELECT * FROM employee WHERE bonus < 5000;

//Display employees  with experience equal to 5
SELECT * FROM employee WHERE experience = 5;

//Find employees whose designation is 'Software Engineer'
SELECT * FROM employee WHERE designation = 'Software Engineer';

//show employees whose city is miami 
SELECT * FROM employee WHERE city = 'Miami';

//find employees older than 30
SELECT * FROM employee WHERE age > 30;

//show employees working in on-site mode
SELECT * FROM employee WHERE work_mode = 'On-site';

//find employees joining after 2021
SELECT * FROM employee WHERE joining_date > '2021-12-31';

//display employees with bonus greater than 6000
SELECT * FROM employee WHERE bonus > 6000;

//find employees whose department is HR
SELECT * FROM employee WHERE department = 'HR';

//show male employees with salary greater than bonus
SELECT * FROM employee WHERE gender = 'Male' AND salary > bonus;

//Display employees with salary greater than bonus 
SELECT * FROM employee WHERE salary > bonus;

// ORDER BY question 

//Display employees sorted by salary ascending 
SELECT * FROM employee ORDER BY salary ASC;

//Display employees sorted by salary descending
SELECT * FROM employee ORDER BY salary DESC;

//Sort employees by age 
SELECT * FROM employee ORDER BY age ASC;

//Display employees sorted by experience descending 
SELECT * FROM employee ORDER BY experience DESC;

//Sort employees by first_name alphabetically 
SELECT * FROM employee ORDER BY first_name;

//Display employees sorted by joining_date ascending 
SELECT * FROM employee ORDER BY joining_date;

//Sort employees by bonus descending
SELECT * FROM employee ORDER BY bonus DESC;

//display employees sorted by city name 
SELECT * FROM employee ORDER BY city;

//GROUP BY 

//Count employees department wise
SELECT department, COUNT(*) AS employee_count FROM employee GROUP BY department;

//Find averge salary department wise
SELECT department, AVG(salary) AS average_salary FROM employee GROUP BY department;

//Find maximum salary city wise
SELECT city, MAX(salary) AS max_salary FROM employee GROUP BY city;

// Count employees city wise 
SELECT city, COUNT(*) AS employee_count FROM employee GROUP BY city;

//Find total bouns department wise
SELECT department, SUM(bonus) AS total_bonus FROM employee GROUP BY department;

//Find minimum salary department wise
SELECT department, MIN(salary) AS min_salary FROM employee GROUP BY department;

//Count employees work_mode wise
SELECT work_mode, COUNT(*) AS employee_count FROM employee GROUP BY work_mode;

//Find average experience department wise
SELECT department, AVG(experience) AS average_experience FROM employee GROUP BY department;


//HAVING 

//Find departments having more than 2 employees
SELECT department, COUNT(*) AS employee_count FROM employee GROUP BY department HAVING COUNT(*) > 2;

//Find cities having more than 1 employee
SELECT city, COUNT(*) AS employee_count FROM employee GROUP BY city HAVING COUNT(*) > 1;

//Find departments with average salary greater than 45000
SELECT department, AVG(salary) AS average_salary FROM employee GROUP BY department HAVING AVG(salary) > 45000;

//find department with total bonus greater than 15000
SELECT department, SUM(bonus) AS total_bonus FROM employee GROUP BY department HAVING SUM(bonus) > 15000;

//find cities having avaerage age greater than 27
SELECT city, AVG(age) AS average_age FROM employee GROUP BY city HAVING AVG(age) > 27;

//find department with minimum salara above 40000   
SELECT department, MIN(salary) AS min_salary FROM employee GROUP BY department HAVING MIN(salary) > 40000;

//LIMIT

//Display first 3 employees
SELECT * FROM employee LIMIT 3;

//Display top 5 highest salary employees
SELECT * FROM employee ORDER BY salary DESC LIMIT 5;

//Display fist 4 female employees
SELECT * FROM employee WHERE gender = 'Female' LIMIT 4;

//Show top 3 employees with highest bonus
SELECT * FROM employee ORDER BY bonus DESC LIMIT 3;

//AGGREGATE FUNCTION 

//Find total number of employees 
SELECT COUNT(*) AS total_employees FROM employee;

//Find maximum salary 
SELECT MAX(salary) AS max_salary FROM employee;

//Find minimum salary 
SELECT MIN(salary) AS min_salary FROM employee;

//Find average salary 
SELECT AVG(salary) AS average_salary FROM employee;

//Find total bonus amount
SELECT SUM(bonus) AS total_bonus FROM employee;

//Find average experience
SELECT AVG(experience) AS average_experience FROM employee;

//Find highest bonus
SELECT MAX(bonus) AS max_bonus FROM employee;

--Find lowest age
SELECT MIN(age) AS min_age FROM employee;

--find total salary paid
SELECT SUM(salary) AS total_salary FROM employee;


--Complex SQL Queries

--Find departments having avarage salary greater than 55000
SELECT department, AVG(salary) AS average_salary FROM employee GROUP BY department HAVING AVG(salary) > 55000;

--Display cities where more than 2 employees work 
SELECT city, COUNT(*) AS employee_count FROM employee GROUP BY city HAVING COUNT(*) > 2;

--Fimd highest salary in each department
SELECT department, MAX(salary) AS max_salary FROM employee GROUP BY department; 

--show departments whose total salary is more han 500000
SELECT department, SUM(salary) AS total_salary FROM employee GROUP BY department HAVING SUM(salary) > 500000;

--Find employees whose salary decreasing and experience increasing
SELECT * FROM employee WHERE salary < (SELECT salary FROM employee WHERE emp_id = employee.emp_id) AND experience > (SELECT experience FROM employee WHERE emp_id = employee.emp_id);

--Find departments having at least 2 employeeswith experience greater than 3 years
Select  department FROM employee where experience > 3 GROUP BY department HAVING Count(*) >=2;

--Find average salary city wise and sort  by highest average salary 
SELECT city, AVG(salary) AS average_salary FROM employee GROUP BY city ORDER BY average_salary DESC;

--Find top 3 departments with highest total salary
SELECT department, SUM(salary) AS total_salary FROM employee GROUP BY department ORDER BY total_salary DESC LIMIT 3;

--Find cities where average experience is greater thann 4 years
SELECT city, AVG(experience) AS average_experience FROM employee GROUP BY city HAVING AVG(experience) > 4;

--Count employees departmentt wise and show only departments having odd number of employees
SELECT department, COUNT(*) AS employee_count FROM employee GROUP BY department HAVING COUNT(*) % 2 = 1;

--find second highest salary department wise (using offset and limit)
SELECT department, MAX(salary) AS second_highest_salary FROM employee WHERE salary < (SELECT MAX(salary) FROM employee) GROUP BY department;

--Find departments where maximum salary is above overall average salary
SELECT department, MAX(salary) AS max_salary FROM employee GROUP BY department HAVING MAX(salary) > (SELECT AVG(salary) FROM employee);

--find city having highest total salary 
SELECT city, SUM(salary) AS total_salary FROM employee GROUP BY city ORDER BY total_salary DESC LIMIT 1;

--show employees whose salary is greater than average salary of their department
SELECT * FROM employee e1 WHERE salary > (SELECT AVG(salary) FROM employee e2 WHERE e1.department = e2.department);

--Find departments where minimum salary is lss than 50000
SELECT department, MIN(salary) AS min_salary FROM employee GROUP BY department HAVING MIN(salary) < 50000;



--More questions 

--Find employees working in IT and HR department 
SELECT * FROM employee WHERE department IN ('IT', 'HR');

--Find employees whose age is 25, 30 or 35
SELECT * FROM employee WHERE age IN (25, 30, 35);

--Find employees having rating 5 or 4 
SELECT * FROM employee WHERE rating IN (5, 4);

--Find employees whose city is New York, Los Angeles or Chicago
SELECT * FROM employee WHERE city IN ('New York', 'Los Angeles', 'Chicago');

--Find employees with salary 45000, 50000 or 55000
SELECT * FROM employee WHERE salary IN (45000, 50000, 55000);

--Find employee whose designation is 'Software Engineer' or 'Data Analyst'
SELECT * FROM employee WHERE designation IN ('Software Engineer', 'Data Analyst');

--Find female employees from Miami or Boston
SELECT * FROM employee WHERE gender = 'Female' AND city IN ('Miami', 'Boston');

--Find employees who joined in 2020 or 2021
SELECT * FROM employee WHERE YEAR(joining_date) IN (2020, 2021);

--IN operator -> find employee from IT , Fianance or Marketing department with salary above 60000
SELECT * FROM employee WHERE department IN ('IT', 'Finance', 'Marketing') AND salary > 60000;

--find employee from New York, Los Angeles or Chicago with experience greater than 3 years
SELECT * FROM employee WHERE city IN ('New York', 'Los Angeles', 'Chicago') AND experience > 3;

--Find employees whose designation is 'Software Engineer' or 'Data Analyst' and salary greater than 50000
SELECT * FROM employee WHERE designation IN ('Software Engineer', 'Data Analyst') AND salary > 50000;

--find employees aged 26, 27, 28 or 29 working in New York 
SELECT * FROM employee WHERE age IN (26, 27, 28, 29) AND city = 'New York';

--Find employees from IT, HR or Finance department with bonus less than 5000
SELECT * FROM employee WHERE department IN ('IT', 'HR', 'Finance') AND bonus < 5000;

--find employees whoes emp_id is (2, 4, 6, 8, 10) and gender is female 
SELECT * FROM employee WHERE emp_id IN (2, 4, 6, 8, 10)

--find employee working in HR , sales or supporting departmnet with experience below 5 years 
SELECT * FROM employee WHERE department IN ('HR', 'Sales', 'Support') AND experience < 5;

--Find employees whose rating is in (2,3) and salary below 60000
SELECT * FROM employee WHERE rating IN (2, 3) AND salary < 60000;

--find employee from delhi jaipur or chennai joined after 2021
SELECT * FROM employee WHERE city IN ('Delhi', 'Jaipur', 'Chennai') AND joining_date > '2021-12-31';

--find employees whose first name is AMIT , Rahul or Arjun and salary above 5000
SELECT * FROM employee WHERE first_name IN ('Amit', 'Rahul', 'Arjun') AND salary > 5000;
