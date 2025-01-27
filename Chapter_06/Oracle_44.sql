-- SUM function
-- Syntax: SUM(e1)

SELECT * FROM EMPLOYEES;

SELECT SUM(SALARY) FROM EMPLOYEES;

SELECT SUM(SALARY) FROM EMPLOYEES
    WHERE DEPARTMENT_ID = 20;
    
-- MIN, MAX funtion
-- Syntax: MIN(e1); MAX(e1)
-- data type (character, date or number)
SELECT MIN(SALARY) FROM EMPLOYEES;

SELECT MAX(SALARY) FROM EMPLOYEES;

SELECT MIN(LAST_NAME), MAX(LAST_NAME) FROM EMPLOYEES;

-- AVG function
-- Syntax: AVG(e1)
-- data type: numeric
SELECT DISTINCT AVG(SALARY) FROM EMPLOYEES;

SELECT ROUND( AVG(SALARY), 2) FROM EMPLOYEES;

SELECT TO_CHAR(ROUND(AVG(SALARY), 2), '$999,999.99') FROM EMPLOYEES;

SELECT TO_CHAR(ROUND(AVG(SALARY), 2), '$999,999.99') FROM EMPLOYEES;

-- MEDIAN(e1)
-- data type: date or numeric
SELECT MEDIAN(SALARY) FROM EMPLOYEES;