DROP TABLE IF EXISTS registration;

CREATE TABLE registration (
    Id INT PRIMARY KEY,
    name VARCHAR(50),
    Age INT,
    Fees DECIMAL(10,2),
    CourseName VARCHAR(50),
    DOB DATE
);

INSERT INTO registration (Id, name, Age, Fees, CourseName, DOB)
VALUES (1, 'Aishi', 21, 1000000, 'Computer Science', '2022-04-13');

INSERT INTO registration (Id, name, Age, Fees, CourseName, DOB)
VALUES (2, 'Parthiv', 23, 300000, 'Computer Science', '2022-04-24');

INSERT INTO registration (Id, name, Age, Fees, CourseName, DOB)
VALUES (3, 'Parthiv', 23, 3780000, 'Computer Science', '2022-04-24');

Delete FROM registration Where Id = 3;

UPDATE registration
SET Fees = 230000;

SELECT * FROM registration;