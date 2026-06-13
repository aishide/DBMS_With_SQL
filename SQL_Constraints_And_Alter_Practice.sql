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

/*
Create a table Products with:

ProductID → INT, Primary Key, and AUTO_INCREMENT
ProductName → VARCHAR(100), NOT NULL
Price → DECIMAL(10,2) with a CHECK constraint that ensures the price is greater than 0

Write the complete CREATE TABLE statement.
*/

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2),
    CHECK (Price > 0)
);


/*
You have an existing table:

Students
---------
StudentID
StudentName
Age

Write the SQL statement to add a CHECK constraint so that Age must always be 18 or greater.

(Use ALTER TABLE.)
*/

ALTER TABLE Students
ADD CHECK (Age >= 18);

OR 

ALTER TABLE Students
ADD CONSTRAINT CHK_Age
CHECK (Age >= 18);


/*
You have an existing table:

Employees
---------
EmployeeID
EmployeeName
Salary

Write a SQL statement to add a DEFAULT constraint so that Salary defaults to 30000 when no value is provided.

(Use ALTER TABLE.)
*/

ALTER TABLE Employees
ADD CONSTRAINT DF_Salary
DEFAULT 30000 FOR Salary;

OR 

ALTER TABLE Employees
ALTER Salary SET DEFAULT 30000;

IF FROM SCRATCH :

CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary INT DEFAULT 30000
);


/*
Create a table Users with the following requirements:

UserID → INT, PRIMARY KEY, AUTO_INCREMENT
Username → VARCHAR(50), NOT NULL, UNIQUE
Age → INT, must be at least 13
Country → VARCHAR(50), defaults to 'India'

Write the complete CREATE TABLE statement. This combines multiple concepts into one question.
*/

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Age INT CHECK (Age >= 13),
    Country VARCHAR(50) DEFAULT 'India'
);


/*
You have two tables:

Customers
CustomerID
CustomerName

Create an Orders table with these requirements:

OrderID → INT, PRIMARY KEY, AUTO_INCREMENT
CustomerID → INT, Foreign Key referencing Customers(CustomerID)
OrderDate → defaults to the current date
Amount → DECIMAL(10,2), must be greater than 0
Status → VARCHAR(20), defaults to 'Pending'

Write the complete CREATE TABLE Orders statement.

This combines almost everything you've learned. Take your time.
*/

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE DEFAULT CURRENT_DATE,
    Amount DECIMAL(10,2) CHECK (Amount > 0),
    Status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);