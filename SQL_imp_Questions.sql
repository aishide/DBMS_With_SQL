-- Students Table

CREATE TABLE students (
student_id INT,
student_name VARCHAR(50),
marks INT,
course_id INT,
mentor_id INT,
email VARCHAR(100),
admission_date DATE
);

-- Data

INSERT INTO students VALUES
(1,'Aarav',85,101,NULL,'aarav@gmail.com','2025-01-10'),
(2,'Diya',92,102,1,'diya@gmail.com','2024-05-15'),
(3,'Vivaan',70,101,1,'vivaan@gmail.com','2025-02-20'),
(4,'Ananya',92,103,2,'ananya@gmail.com','2023-08-11'),
(5,'Kabir',65,102,2,NULL,'2025-03-12'),
(6,'Ishita',98,103,4,'ishita@gmail.com','2022-11-05'),
(7,'Arjun',70,101,1,'arjun@gmail.com','2025-04-22'),
(8,'Meera',80,102,2,'meera@gmail.com','2024-12-30'),
(9,'Rohan',98,103,4,'rohan@gmail.com','2025-01-18'),
(10,'Sanya',60,101,1,'sanya@gmail.com','2025-06-01');

-- Courses Table

CREATE TABLE courses (
course_id INT,
course_name VARCHAR(50)
);

-- Data
INSERT INTO courses VALUES
(101,'Python'),
(102,'SQL'),
(103,'Data Science');




-- Find the 2nd Highest Marks.

SELECT MAX(marks) AS [second highest marks] 
FROM students
WHERE marks < (SELECT MAX(marks) FROM students);

-- Find Duplicate Student Records.

SELECT student_id, COUNT(*) AS [Duplicate Student Record]
FROM students
GROUP BY student_id
HAVING COUNT(*) > 1;

-- Duplicate based on which column(s)? (email .. then )

SELECT email, COUNT(*)
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- Delete Duplicate Student Records.
DELETE s1
FROM Students s1
JOIN Students s2
ON s1.studentID = s2.studentID
WHERE s1.ID > s2.ID;

--Find Students Scoring More Than Average Marks.
SELECT student_name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

-- Find the Highest Marks in Each Course.
SELECT course_id, MAX(marks) AS [Highest Marks]
FROM students
GROUP BY course_id;

-- Find Students Admitted in 2025.
SELECT student_id, student_name
FROM Students
WHERE YEAR(admission_date) = 2025;

OR 

SELECT student_id, student_name
FROM Students
WHERE admission_date > '2024-12-31';

OR 

SELECT student_id, student_name
FROM Students
WHERE admission_date >= '2025-01-01'
  AND admission_date < '2026-01-01';

-- Find Number of Students in Each Course.
SELECT course_id,
       COUNT(student_id) AS student_count
FROM Students
GROUP BY course_id;


-- Find Students With NULL Email.
SELECT student_id, student_name
FROM Students
WHERE email IS NULL;

--Get Top 3 Highest Marks.
SELECT student_id, student_name, marks
FROM Students
ORDER BY marks DESC
LIMIT 3;

--Find the top 3 highest distinct marks
SELECT DISTINCT marks
FROM Students
ORDER BY marks DESC
LIMIT 3;

--Find Students Whose Name Starts With 'A'.
SELECT student_name
FROM Students
WHERE student_name LIKE 'A%';

--Find Total Marks Course Wise.
SELECT course_id,
       SUM(marks) AS total_marks
FROM Students
GROUP BY course_id;

--Find Students With Same Marks.
SELECT marks, COUNT(*) AS student_count
FROM Students
GROUP BY marks
HAVING COUNT(*) > 1;

OR 

SELECT s1.student_id,
       s1.student_name,
       s1.marks
FROM Students s1
JOIN Students s2
ON s1.marks = s2.marks
AND s1.student_id <> s2.student_id;

--Find Odd and Even Student Records.
SELECT *,
       CASE
           WHEN student_id % 2 = 0 THEN 'Even'
           ELSE 'Odd'
       END AS record_type
FROM Students;

OR 

for odd  :
SELECT *
FROM Students
WHERE student_id % 2 = 1;

for even :
SELECT *
FROM Students
WHERE student_id % 2 = 0;

-- Find Courses Having More Than 10 Students.

