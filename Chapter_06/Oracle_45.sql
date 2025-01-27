-- RANK

-- RANK: Analytic
-- Syntax: RANK() OVER (PARTITION BY p1 ORDER BY ob1)
-- p1 is a partition | ob1 is an expression

SELECT * FROM EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME, SALARY,
    RANK() OVER (ORDER BY SALARY DESC) AS SALARY_RANK
    FROM EMPLOYEES;

-- RANK: Aggregate
-- Syntax: RANK(c1) WITHIN GROUP (ORDER BY e1)
-- c1 and e1 are expressions
SELECT RANK(533) WITHIN GROUP (ORDER BY SQ_FT)
    FROM SHIP_CABINS
    WHERE SHIP_CABIN_ID <= 7
    ORDER BY SQ_FT;
