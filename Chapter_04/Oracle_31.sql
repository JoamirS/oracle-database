-- Analytical Functions
-- Analytical functions fall somewhere in between scalar and aggregate.

-- Over, Partition, and Order by

-- Create Table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    department_id NUMBER,
    salary NUMBER
);

-- Insert data
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES (1, 'John', 'Doe', 10, 5000);
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES (2, 'Jane', 'Smith', 20, 6000);
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES (3, 'Alice', 'Johnson', 10, 7000);
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES (4, 'Bob', 'Brown', 20, 8000);
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES (5, 'Charlie', 'Davis', 10, 5500);
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary) VALUES (6, 'Diana', 'Miller', 20, 7500);

-- Select data
SELECT * FROM EMPLOYEES;

--  Applying analytical functions 
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY,
    ROW_NUMBER() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS ROW_NUM
    FROM employees;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY,
    RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS RANK
    FROM EMPLOYEES;
    
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY,
    DENSE_RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DENSE_RANK
    FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY,
    SUM(SALARY) OVER (PARTITION BY DEPARTMENT_ID) AS DEPARTMENT_TOTAL_SALARY
    FROM EMPLOYEES;

