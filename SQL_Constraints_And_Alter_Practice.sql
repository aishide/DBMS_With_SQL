AISHI DE 
alter table , constraints, not null , unique , foreign key , primary key , check , default , craete index , auto increment , dates

/*
You have a table Students with columns:

StudentID
StudentName
Age

Write a SQL statement to add a new column Email of type VARCHAR(100) to the existing Students table.
*/
MySQL and PostgreSQL : 

ALTER TABLE Students
ADD COLUMN Email VARCHAR(100);

SQL Server : 

ALTER TABLE Students
ADD Email VARCHAR(100);

/*
You already have a table:

Employees
-----------
EmployeeID
EmployeeName
Salary

Write a SQL statement to change the data type of Salary to DECIMAL(10,2).

(Write the SQL statement.)
*/

MySQL : 

ALTER TABLE Employees
MODIFY Salary DECIMAL(10,2);

SQL Server :

ALTER TABLE Employees
ALTER COLUMN Salary DECIMAL(10,2);

/*
You are creating a Students table.

Requirements:

StudentID should never be NULL.
StudentName should never be NULL.
Email can be NULL.

Write the CREATE TABLE statement. Only include these three columns.
*/

CREATE TABLE Students (
    StudentID INT NOT NULL,
    StudentName VARCHAR(255) NOT NULL,
    Email VARCHAR(255)
);

/*
You have two tables:

Departments
DepartmentID	DepartmentName
1	HR
2	IT
Employees

You want DepartmentID in Employees to reference DepartmentID in Departments.

Write the CREATE TABLE Employees statement with:

EmployeeID as the Primary Key
EmployeeName as VARCHAR(100)
DepartmentID as an INT
A Foreign Key constraint linking DepartmentID to Departments(DepartmentID)

Write the SQL statement.
*/

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

