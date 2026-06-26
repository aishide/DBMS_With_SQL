-- AISHI DE 

Syntax : 

SELECT expression1, expression2, ... expression_n,   
aggregate_function (aggregate_expression)  
FROM tables  
WHERE conditions  
GROUP BY expression1, expression2, ... expression_n;



Example :

CREATE TABLE student (
  name VARCHAR(50),
  course_fee DECIMAL(10,2),
  course VARCHAR(50)
);

INSERT INTO student (name, course_fee, course) VALUES
('Aleena', 5000.00, 'Mathematics'),
('Ben', 6000.50, 'English'),
('Chris', 7500.75, 'Science'),
('Darla', 4500.25, 'Mathematics'),
('Erie', 8000.00, 'English'),
('Monty', 6500.00, 'Science'),
('Aleena', 5500.50, 'Mathematics'),
('Chris', 7200.75, 'Science'),
('Darla', 4800.60, 'Mathematics'),
('Ben', 8300.00, 'English');




SELECT name, SUM(course_fee) FROM student 
GROUP BY name;

SELECT Name, course, Count(*)
FROM Student
GROUP BY Course, Name;

