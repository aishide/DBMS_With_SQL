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



--NESTED if then 

if (condition1) then
   -- Executes when condition1 is true
   if (condition2) then 
     -- Executes when condition2 is true
   end if; 
end if;



-- IF THEN ELSIF-THEN-ELSE LADDER 

if (condition) then
    --statement
elsif (condition) then
    --statement
.
.
else
    --statement
endif