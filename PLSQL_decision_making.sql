--AISHI DE 

-> IF THEN 
-> IF THEN ELSE
-> NESTED-IF=THEN
-> IF THEN ELSIF-THEN-ELSE LADDER


/*
IF THEN  : (Syntax) 

if condition then 
    -- DO SOMETHING 
end if;

*/

-- Example

declare 
    -- declare the values here
begin

    if condition then 
    dbms_output.put_line('output');
    end if;

    dbms_output.put_line('output2');

end;


-- IF THEN ELSE 

if (condition) then
    -- Executes this block if
    -- condition is true
else 
    -- Executes this block if
    -- condition is false