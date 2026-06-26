-- AISHI DE 

TYPES OF PL/SQL INDEX :
Single Column Index: Created on a single column of a table
Composite Index: An index on multiple columns
Unique Index: Ensures that the indexed column has unique values.
Clustered Index: Arranges the data rows in the table according to the index order.


SYNTAX :
CREATE INDEX Index_Name ON Table_Name ( Column_Name);  


composote index syntax:
CREATE INDEX index_name ON table_name (column1, column2, ...);


Example:
CREATE INDEX idx_Stud_ID ON Students(Stud_ID);


Display Created Index from Database:  
SHOW INDEX FROM Students;