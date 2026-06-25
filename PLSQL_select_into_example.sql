SET SERVEROUTPUT ON;

DECLARE
    new_cid HR.COUNTRIES.country_id%type;
    new_cname HR.COUNTRIES.country_name%type;

BEGIN 
    SELECT country_id , country_name 
    INTO new_cid , new_cname
    FROM HR.COUNTRIES
    WHERE COUNTRY_ID = 'IN';

    dbms_output.put_line(new_cid);
    dbms_output.put_line(new_cname);

EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
        dbms_output.put_line('Sorry data is not there');

END;
/


-- Used this website :  https://freesql.com/