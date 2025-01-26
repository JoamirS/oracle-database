-- Conditional Expressions

-- CASE
-- Syntax: CASE expression1 WHEN condition1 THEN result1 WHEN condition2
-- THEN result2 .. ELSE resultfinal END

SELECT CASE 'option1' 
    WHEN 'option1' THEN 'found it'
    WHEN 'option2' THEN 'did not find it'
    END AS "Answer"
    FROM DUAL;

-- The Function starts with the keyword CASE and ends with the keyword END.
-- The CASE expression may include a column name, like this:

SELECT * FROM SHIPS

INSERT INTO SHIPS (SHIP_ID, SHIP_NAME, HOME_PORT_ID) VALUES (5, 'Tutóia', 13);
INSERT INTO SHIPS (SHIP_ID, SHIP_NAME, HOME_PORT_ID) VALUES (6, 'Vargem Grande', 21);

SELECT SHIP_ID, SHIP_NAME,
    CASE WHEN SHIP_NAME = 'São Luís' THEN 'Capital' ELSE NULL END AS CAPITAL_MARANHÃO
    FROM SHIPS WHERE SHIP_ID < 4;

-- DECODE
-- Syntax: DECODE(E, search_expression, d)
SELECT STATE, DECODE(STATE, 'CA', 'California', 'IL', 'Illinoois', 'Other')
    AS DECORED_STATE FROM ADDRESSES;
    
-- NVL
-- Syntax: NVL(e1, e2)
SELECT 
    EMPLOYEE_NAME,
    NVL(COMMISSION, 'No Commission') AS COMMISSION_STATUS
FROM EMPLOYEES;

SELECT NVL(NULL, 0) FIRST_ANSWER,
        14 + NULL -4 SECOND_ANSWER,
        14 + NVL(NULL, 0) -4 THIRD_ANSWER
        FROM DUAL;
        
-- NULLIF
-- Syntax: (e1, e2)
SELECT TEST_SCORE, UPDATE_TEST_SCORE,
        NULLIF(UPDATED_TEST_SCORE, TEST_SCORE) REVISION_ONLY
        FROM SCORES;
