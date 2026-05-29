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


# SQL Practice Questions with Answers

## BASIC SELECT QUERIES

### Q1. Display all employees

```sql
SELECT * FROM employee;
```

### Q2. Display only first_name and salary

```sql
SELECT first_name, salary FROM employee;
```

### Q3. Show all employees from New York

```sql
SELECT * FROM employee
WHERE city = 'New York';
```

### Q4. Show employees from IT department

```sql
SELECT * FROM employee
WHERE department = 'IT';
```

### Q5. Display employees with salary greater than 45000

```sql
SELECT * FROM employee
WHERE salary > 45000;
```

### Q6. Show employees whose age is less than 25

```sql
SELECT * FROM employee
WHERE age < 25;
```

### Q7. Display employees working in Hybrid mode

```sql
SELECT * FROM employee
WHERE work_mode = 'Hybrid';
```

### Q8. Show all female employees

```sql
SELECT * FROM employee
WHERE gender = 'Female';
```

### Q9. Display employees with experience greater than 3 years

```sql
SELECT * FROM employee
WHERE experience > 3;
```

### Q10. Show employees from Miami city

```sql
SELECT * FROM employee
WHERE city = 'Miami';
```

---

# WHERE CLAUSE QUESTIONS

### Q11. Find employees whose salary is exactly 50000

```sql
SELECT * FROM employee
WHERE salary = 50000;
```

### Q12. Find employees whose age is greater than 25

```sql
SELECT * FROM employee
WHERE age > 25;
```

### Q13. Find employees having bonus less than 5000

```sql
SELECT * FROM employee
WHERE bonus < 5000;
```

### Q14. Display employees with experience equal to 5

```sql
SELECT * FROM employee
WHERE experience = 5;
```

### Q15. Find employees whose designation is 'Software Engineer'

```sql
SELECT * FROM employee
WHERE designation = 'Software Engineer';
```

### Q16. Show employees working in On-site mode

```sql
SELECT * FROM employee
WHERE work_mode = 'On-site';
```

### Q17. Find employees joining after 2021

```sql
SELECT * FROM employee
WHERE joining_date > '2021-12-31';
```

### Q18. Display employees with bonus greater than 6000

```sql
SELECT * FROM employee
WHERE bonus > 6000;
```

### Q19. Find employees whose department is HR

```sql
SELECT * FROM employee
WHERE department = 'HR';
```

### Q20. Show male employees with salary greater than bonus

```sql
SELECT * FROM employee
WHERE gender = 'Male'
AND salary > bonus;
```

---

# ORDER BY QUESTIONS

### Q21. Display employees sorted by salary ascending

```sql
SELECT * FROM employee
ORDER BY salary ASC;
```

### Q22. Display employees sorted by salary descending

```sql
SELECT * FROM employee
ORDER BY salary DESC;
```

### Q23. Sort employees by age

```sql
SELECT * FROM employee
ORDER BY age ASC;
```

### Q24. Display employees sorted by experience descending

```sql
SELECT * FROM employee
ORDER BY experience DESC;
```

### Q25. Sort employees by first_name alphabetically

```sql
SELECT * FROM employee
ORDER BY first_name;
```

### Q26. Display employees sorted by joining_date ascending

```sql
SELECT * FROM employee
ORDER BY joining_date;
```

### Q27. Sort employees by bonus descending

```sql
SELECT * FROM employee
ORDER BY bonus DESC;
```

### Q28. Display employees sorted by city name

```sql
SELECT * FROM employee
ORDER BY city;
```

---

# GROUP BY QUESTIONS

### Q29. Count employees department wise

```sql
SELECT department, COUNT(*) AS employee_count
FROM employee
GROUP BY department;
```

### Q30. Find average salary department wise

```sql
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department;
```

### Q31. Find maximum salary city wise

```sql
SELECT city, MAX(salary) AS max_salary
FROM employee
GROUP BY city;
```

### Q32. Count employees city wise

```sql
SELECT city, COUNT(*) AS employee_count
FROM employee
GROUP BY city;
```

### Q33. Find total bonus department wise

```sql
SELECT department, SUM(bonus) AS total_bonus
FROM employee
GROUP BY department;
```

### Q34. Find minimum salary department wise

```sql
SELECT department, MIN(salary) AS min_salary
FROM employee
GROUP BY department;
```

### Q35. Count employees work_mode wise

```sql
SELECT work_mode, COUNT(*) AS employee_count
FROM employee
GROUP BY work_mode;
```

### Q36. Find average experience department wise

```sql
SELECT department, AVG(experience) AS average_experience
FROM employee
GROUP BY department;
```

---

# HAVING CLAUSE QUESTIONS

### Q37. Find departments having more than 2 employees

```sql
SELECT department, COUNT(*) AS employee_count
FROM employee
GROUP BY department
HAVING COUNT(*) > 2;
```

### Q38. Find cities having more than 1 employee

```sql
SELECT city, COUNT(*) AS employee_count
FROM employee
GROUP BY city
HAVING COUNT(*) > 1;
```

### Q39. Find departments with average salary greater than 45000

```sql
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 45000;
```

### Q40. Find department with total bonus greater than 15000

```sql
SELECT department, SUM(bonus) AS total_bonus
FROM employee
GROUP BY department
HAVING SUM(bonus) > 15000;
```

### Q41. Find cities having average age greater than 27

```sql
SELECT city, AVG(age) AS average_age
FROM employee
GROUP BY city
HAVING AVG(age) > 27;
```

### Q42. Find departments with minimum salary above 40000

```sql
SELECT department, MIN(salary) AS min_salary
FROM employee
GROUP BY department
HAVING MIN(salary) > 40000;
```

---

# LIMIT QUESTIONS

### Q43. Display first 3 employees

```sql
SELECT * FROM employee
LIMIT 3;
```

### Q44. Display top 5 highest salary employees

```sql
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 5;
```

### Q45. Display first 4 female employees

```sql
SELECT * FROM employee
WHERE gender = 'Female'
LIMIT 4;
```

### Q46. Show top 3 employees with highest bonus

```sql
SELECT * FROM employee
ORDER BY bonus DESC
LIMIT 3;
```

---

# AGGREGATE FUNCTION QUESTIONS

### Q47. Find total number of employees

```sql
SELECT COUNT(*) AS total_employees
FROM employee;
```

### Q48. Find maximum salary

```sql
SELECT MAX(salary) AS max_salary
FROM employee;
```

### Q49. Find minimum salary

```sql
SELECT MIN(salary) AS min_salary
FROM employee;
```

### Q50. Find average salary

```sql
SELECT AVG(salary) AS average_salary
FROM employee;
```

### Q51. Find total bonus amount

```sql
SELECT SUM(bonus) AS total_bonus
FROM employee;
```

### Q52. Find average experience

```sql
SELECT AVG(experience) AS average_experience
FROM employee;
```

### Q53. Find highest bonus

```sql
SELECT MAX(bonus) AS max_bonus
FROM employee;
```

### Q54. Find lowest age

```sql
SELECT MIN(age) AS min_age
FROM employee;
```

### Q55. Find total salary paid

```sql
SELECT SUM(salary) AS total_salary
FROM employee;
```

---

# COMPLEX SQL QUESTIONS

### Q56. Find departments having average salary greater than 55000

```sql
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 55000;
```

### Q57. Display cities where more than 2 employees work

```sql
SELECT city, COUNT(*) AS employee_count
FROM employee
GROUP BY city
HAVING COUNT(*) > 2;
```

### Q58. Find highest salary in each department

```sql
SELECT department, MAX(salary) AS max_salary
FROM employee
GROUP BY department;
```

### Q59. Show departments whose total salary is more than 500000

```sql
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department
HAVING SUM(salary) > 500000;
```

### Q60. Find top 3 departments with highest total salary

```sql
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department
ORDER BY total_salary DESC
LIMIT 3;
```

### Q61. Find city having highest total salary

```sql
SELECT city, SUM(salary) AS total_salary
FROM employee
GROUP BY city
ORDER BY total_salary DESC
LIMIT 1;
```

### Q62. Show employees whose salary is greater than average salary of their department

```sql
SELECT *
FROM employee e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employee e2
    WHERE e1.department = e2.department
);
```

### Q63. Find departments where minimum salary is less than 50000

```sql
SELECT department, MIN(salary) AS min_salary
FROM employee
GROUP BY department
HAVING MIN(salary) < 50000;
```

---

# IN OPERATOR QUESTIONS

### Q64. Find employees working in IT and HR department

```sql
SELECT * FROM employee
WHERE department IN ('IT', 'HR');
```

### Q65. Find employees whose age is 25, 30 or 35

```sql
SELECT * FROM employee
WHERE age IN (25, 30, 35);
```

### Q66. Find employees whose city is New York, Los Angeles or Chicago

```sql
SELECT * FROM employee
WHERE city IN ('New York', 'Los Angeles', 'Chicago');
```

### Q67. Find employees with salary 45000, 50000 or 55000

```sql
SELECT * FROM employee
WHERE salary IN (45000, 50000, 55000);
```

### Q68. Find employee whose designation is 'Software Engineer' or 'Data Analyst'

```sql
SELECT * FROM employee
WHERE designation IN ('Software Engineer', 'Data Analyst');
```

### Q69. Find female employees from Miami or Boston

```sql
SELECT * FROM employee
WHERE gender = 'Female'
AND city IN ('Miami', 'Boston');
```

### Q70. Find employees who joined in 2020 or 2021

```sql
SELECT * FROM employee
WHERE YEAR(joining_date) IN (2020, 2021);
```

### Q71. Find employees from IT, Finance or Marketing department with salary above 60000

```sql
SELECT * FROM employee
WHERE department IN ('IT', 'Finance', 'Marketing')
AND salary > 60000;
```

### Q72. Find employees from New York, Los Angeles or Chicago with experience greater than 3 years

```sql
SELECT * FROM employee
WHERE city IN ('New York', 'Los Angeles', 'Chicago')
AND experience > 3;
```

### Q73. Find employees whose designation is 'Software Engineer' or 'Data Analyst' and salary greater than 50000

```sql
SELECT * FROM employee
WHERE designation IN ('Software Engineer', 'Data Analyst')
AND salary > 50000;
```

### Q74. Find employees aged 26, 27, 28 or 29 working in New York

```sql
SELECT * FROM employee
WHERE age IN (26, 27, 28, 29)
AND city = 'New York';
```

### Q75. Find employees from IT, HR or Finance department with bonus less than 5000

```sql
SELECT * FROM employee
WHERE department IN ('IT', 'HR', 'Finance')
AND bonus < 5000;
```

