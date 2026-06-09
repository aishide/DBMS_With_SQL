CREATE DATABASE DB_Certwala;

USE DB_Certwala;

CREATE TABLE tbl_Registration (
    nID INT PRIMARY KEY IDENTITY(1,1),
    sName VARCHAR(50) NOT NULL
);

insert into tbl_Registration values ('Sammer'), (n,'राम');
select * from tbl_Registration;


INSERT INTO tbl_Registration (sName)
VALUES ('John Doe');

INSERT INTO tbl_Registration (sName)
VALUES ('Jane Smith');

select * from tbl_Registration;

create procedure sp_AddRegistration
    @sName NVARCHAR(50)
    as
    begin
        insert into tbl_Registration (sName)
        values (@sName);
    end;

create procecdure sp_UpdateRegistration
    @nID INT,
    @sName NVARCHAR(50)
    as
    begin
        update tbl_Registration
        set sName = @sName
        where nID = @nID;
    end;