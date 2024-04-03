-- IN and LIKE function

SELECT * FROM employees WHERE employee_name LIKE 'J%';

SELECT * FROM employees WHERE employee_name LIKE '%son%';

SELECT * FROM employees WHERE department_id IN (101, 102, 103);

SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM departments WHERE location = '%New York');

DECLARE
    department_list VARCHAR2(100);
BEGIN
    department_list := '101, 102, 103';
    EXECUTE IMMEDIATE 'SELECT * FROM employees WHERE department_id IN (' || department_list || ')';
END;

SELECT SHIP_NAME FROM SHIPS ORDER BY SHIP_NAME DESC;

SELECT * FROM SHIPS WHERE SHIP_NAME IN ('_Luís');
-- The second row will be ignored because even thought the set of expressions within the IN clause includes a value for
-- '_Luís' and uses the percent sign wildcard character at the beginning, the wildcard isn't activated because LIKE ins't
-- present in the expression.
