-- AISHI DE 

/*PL/SQL contains a declaration section, execution section, and 
exception-handling section. Declare and exception handling sections are optional.*/

PROCEDURES  :
* predefined programs invoked automatically
* They are associated with response-based events such as a
    Database Definition Language statements such as CREATE, DROP or ALTER.
    Database Manipulation Language statements such as UPDATE, INSERT or DELETE.
    Database operations such as LOGON, LOGOFF, STARTUP, and SHUTDOWN .



Syntax : 
CREATE OR REPLACE TRIGGER trigger_name

BEFORE or AFTER or INSTEAD OF                      //trigger timings 

INSERT  or UPDATE or  DELETE                          // Operation to be performed 

of column_name

on Table_name

FOR EACH ROW

DECLARE

Declaration section

BEGIN

Execution section

EXCEPTION

Exception section

END;
/


Query operation to be performed i.e INSERT,DELETE,UPDATE.






CONDITIONAL TRIGGER  :

-- Create Geeks table
CREATE TABLE Geeks (
    Id INT,
    Name VARCHAR2(20),
    Score INT
);

-- Insert into Geeks Table 
INSERT INTO Geeks (Id, Name, Score) VALUES (1, 'Sam', 800);
INSERT INTO Geeks (Id, Name, Score) VALUES (2, 'Ram', 699);
INSERT INTO Geeks (Id, Name, Score) VALUES (3, 'Tom', 250);
INSERT INTO Geeks (Id, Name, Score) VALUES (4, 'Om', 350);
INSERT INTO Geeks (Id, Name, Score) VALUES (5, 'Jay', 750);
-- insert statement should be written for each entry in Oracle Sql Developer

CREATE TABLE Affect (
    Id INT,
    Name VARCHAR2(20),
    Score INT
);


Before :

-- BEFORE INSERT trigger
CREATE OR REPLACE TRIGGER BEFORE_INSERT
BEFORE INSERT ON Geeks
FOR EACH ROW
BEGIN
    INSERT INTO Affect (Id, Name, Score)
    VALUES (:NEW.Id, :NEW.Name, :NEW.Score);
END;
/
INSERT INTO Geeks (Id, Name, Score) VALUES (6, 'Arjun', 500);



BEFORE DELETE Trigger :

-- BEFORE DELETE trigger
CREATE OR REPLACE TRIGGER BEFORE_DELETE
BEFORE DELETE ON Geeks
FOR EACH ROW
BEGIN
    INSERT INTO Affect (Id, Name, Score)
    VALUES (:OLD.Id, :OLD.Name, :OLD.Score);
END;
/
DELETE FROM Geeks WHERE Id = 3;



-- Before update trigger :

-- BEFORE UPDATE trigger
CREATE OR REPLACE TRIGGER BEFORE_UPDATE
BEFORE UPDATE ON Geeks
FOR EACH ROW
BEGIN
    INSERT INTO Affect (Id, Name, Score)
    VALUES (:OLD.Id, :OLD.Name, :OLD.Score);
END;
/
UPDATE Geeks SET Score = 900 WHERE Id = 5;
SELECT * FROM Affect; 
SELECT * FROM Geeks; 







Conditional Trigger: After

SET SERVEROUTPUT ON;


CREATE TABLE Geeks (
    Id INT,
    Name VARCHAR2(20),
    Score INT
);


-- Insert into Geeks Table 
INSERT INTO Geeks (Id, Name, Score) VALUES (1, 'Sam', 800);
INSERT INTO Geeks (Id, Name, Score) VALUES (2, 'Ram', 699);
INSERT INTO Geeks (Id, Name, Score) VALUES (3, 'Tom', 250);
INSERT INTO Geeks (Id, Name, Score) VALUES (4, 'Om', 350);
INSERT INTO Geeks (Id, Name, Score) VALUES (5, 'Jay', 750);
-- insert statement should be written for each entry in Oracle Sql Developer


CREATE TABLE Affect (
    Id INT,
    Name VARCHAR2(20),
    Score INT
);
SELECT * FROM Geeks; 
-- AFTER DELETE trigger
CREATE OR REPLACE TRIGGER AFTER_DELETE
AFTER DELETE ON Geeks
FOR EACH ROW
BEGIN
    INSERT INTO Affect (Id, Name, Score)
    VALUES (:OLD.Id, :OLD.Name, :OLD.Score);
END;
/
DELETE FROM Geeks WHERE Id = 4;


-- AFTER UPDATE trigger
CREATE OR REPLACE TRIGGER AFTER_UPDATE
AFTER UPDATE ON Geeks
FOR EACH ROW
BEGIN
    INSERT INTO Affect (Id, Name, Score)
    VALUES (:NEW.Id, :NEW.Name, :NEW.Score);
END;
/
UPDATE Geeks SET Score = 1050 WHERE Id = 5;
SELECT * FROM Affect; 
SELECT * FROM Geeks; 