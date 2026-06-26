SET SERVEROUTPUT ON;

DECLARE
  a INT;
  b FLOAT;
  myexp EXCEPTION;

  FUNCTION sqroot(x INT)
    RETURN FLOAT
  AS
    answer FLOAT;
  BEGIN
    IF x < 0 THEN
      RAISE myexp;
    ELSE
      answer := SQRT(x);
    END IF;
    RETURN answer;
  EXCEPTION
    WHEN myexp THEN
      DBMS_OUTPUT.PUT_LINE('Square root of a negative number is not allowed, so returning the same number');
      RETURN x;
  END;

BEGIN
  b := sqroot(-2);
  DBMS_OUTPUT.PUT_LINE('The value is ' || b);
END;


