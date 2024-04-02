-- IN and LIKE function

SELECT * FROM employees WHERE employee_name LIKE 'J%';

SELECT * FROM employees WHERE employee_name LIKE '%son%';

SELECT * FROM employees WHERE department_id IN (101, 102, 103);

SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM departments WHERE location = 'New York');

DECLARE
    department_list VARCHAR2(100);
BEGIN
    department_list := '101, 102, 103';
    EXECUTE IMMEDIATE 'SELECT * FROM employees WHERE department_id IN (' || department_list || ')';
END;

SELECT SHIP_NAME FROM SHIPS ORDER BY LIKE SHIP_NAME, CAPACITY DESC 