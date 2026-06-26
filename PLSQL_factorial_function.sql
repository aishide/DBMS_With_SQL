CREATE OR REPLACE FUNCTION factorial(x NUMBER)
  RETURN NUMBER
IS
  f NUMBER;
BEGIN
  IF x = 0 THEN
    f := 1;
  ELSE
    f := x * factorial(x - 1);
  END IF;
  RETURN f;
END;




DECLARE
  num NUMBER;
  result NUMBER;
BEGIN
  num := 5;
  result := factorial(num);
  DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is ' || result);
END;









-- Factorial recursive approach 
DECLARE
  num INT;
  answer INT;

  -- Defining the function
  FUNCTION factorial(x NUMBER)
    RETURN INT
  IS
    f INT;
  BEGIN
    IF x = 0 THEN
      f := 1;
    ELSE
      f := x * factorial(x - 1);
    END IF;
    RETURN f;
  END;

BEGIN
  num := 5;
  answer := factorial(num);
  DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is ' || answer);
END;


