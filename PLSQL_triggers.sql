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


