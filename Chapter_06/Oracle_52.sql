--  View
SELECT * FROM VW_EMPLOYEES;

CREATE OR REPLACE VIEW VW_EMPLOYEES (ID, NAME, PHONE) AS
    SELECT EMPLOYEE_ID, LAST_NAME || ',' || FIRST_NAME, PRIMARY_PHONE
    FROM EMPLOYEES;

