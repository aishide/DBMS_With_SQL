/*table name = employee details 
attributes - emp_id (primary key), first_anme , lastr_name , gender ,DOB, email (uniqur) ,,mobile nuumber(unique) , alternat_number , country , state , city, department , designtion , skills , graduatoin , certifications 

no duplicate records shoud be there 
enter 10 people records */

DROP TABLE IF EXISTS employee_details;

CREATE TABLE employee_details (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(25),
    DOB DATE,
    email VARCHAR(100) UNIQUE,
    mobile_number TEXT UNIQUE,
    alternate_number TEXT,
    country VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    department VARCHAR(50),
    designation VARCHAR(50),
    skills VARCHAR(100),
    graduation VARCHAR(100),
    certifications VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO employee_details
VALUES
(1, 'Aishi', 'De', 'Female', '2005-04-13', 'aishi.de@gmail.com', '9876543210', '9876500001', 'India', 'Maharashtra', 'Mumbai', 'IT', 'Software Engineer', 'Java, SQL, C', 'B.Tech CSE', 'AWS Cloud Practitioner', 123244300),

(2, 'Parthiv', 'Abhani', 'Male', '1998-06-21', 'parthiv.abhani@gmail.com', '9876543211', '9876500002', 'India', 'Delhi', 'New Delhi', 'HR', 'HR Manager', 'Recruitment, Communication', 'MBA HR', 'SHRM Certified', 34234421),

(3, 'Shlok', 'Vij', 'Male', '1999-08-11', 'shlok.vij@gmail.com', '9876543212', '9876500003', 'India', 'Gujarat', 'Ahmedabad', 'Finance', 'Financial Analyst', 'Excel, Accounting', 'B.Com', 'CPA', 23145665),

(4, 'Arjun', 'Verma', 'Male', '1997-12-15', 'arjun.verma@gmail.com', '9876543213', '9876500004', 'India', 'Karnataka', 'Bangalore', 'IT', 'Backend Developer', 'Python, SQL, APIs', 'B.Tech IT', 'Google Cloud', 653422),

(5, 'Sneha', 'Roy', 'Female', '2000-03-10', 'sneha.roy@gmail.com', '9876543214', '9876500005', 'India', 'West Bengal', 'Kolkata', 'Marketing', 'Marketing Executive', 'SEO, Social Media', 'BBA', 'Google Analytics', 453452),

(6, 'Karan', 'Singh', 'Male', '1996-09-19', 'karan.singh@gmail.com', '9876543215', '9876500006', 'India', 'Punjab', 'Chandigarh', 'Sales', 'Sales Manager', 'Negotiation, CRM', 'MBA Sales', 'HubSpot', 23425422),

(7, 'Neha', 'Joshi', 'Female', '1998-11-25', 'neha.joshi@gmail.com', '9876543216', '9876500007', 'India', 'Maharashtra', 'Mumbai', 'Design', 'UI/UX Designer', 'Figma, Adobe XD', 'B.Des', 'UX Certification', 2342312),

(8, 'Vikram', 'Nair', 'Male', '1995-05-30', 'vikram.nair@gmail.com', '9876543217', '9876500008', 'India', 'Kerala', 'Kochi', 'IT', 'DevOps Engineer', 'Docker, Kubernetes', 'B.Tech CSE', 'Azure DevOps', 4534344),

(9, 'Ananya', 'Mehta', 'Female', '2001-01-14', 'ananya.mehta@gmail.com', '9876543218', '9876500009', 'India', 'Rajasthan', 'Jaipur', 'Data Science', 'Data Analyst', 'Python, Power BI', 'B.Sc Data Science', 'IBM Data Analyst', 7534344),

(10, 'Rohan', 'Kapoor', 'Male', '1997-07-07', 'rohan.kapoor@gmail.com', '9876543219', '9876500010', 'India', 'Haryana', 'Gurgaon', 'IT', 'Full Stack Developer', 'JavaScript, React, Node.js', 'B.Tech CSE', 'Meta Frontend', 34343234);

-- Show all employees
SELECT * FROM employee_details;

-- Employees in Mumbai, Maharashtra, born after 1996-09-19
SELECT first_name
FROM employee_details
WHERE DOB > '1996-09-19'
  AND state = 'Maharashtra'
  AND city = 'Mumbai';

-- Highest salary
SELECT MAX(salary) AS Highest_salary
FROM employee_details;

-- Lowest salary
SELECT MIN(salary) AS Lowest_salary
FROM employee_details;

-- Average salary
SELECT AVG(salary) AS avg_salary
FROM employee_details;

-- Total employee count
SELECT COUNT(*) AS total_employees
FROM employee_details;

SELECT * FROM employee_details WHERE salary > 10000000;

SELECT * FROM employee_details WHERE salary < 10000000;

--Top 3 highest salaries:
SELECT DISTINCT salary
FROM employee_details
ORDER BY salary DESC
LIMIT 3;

--Top 3 lowest salaries:
SELECT DISTINCT salary
FROM employee_details
ORDER BY salary ASC
LIMIT 3;

SELECT TOP 3 salary
FROM employee_details
ORDER BY salary DESC;