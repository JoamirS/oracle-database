-- Explicit and implit conversion

-- Conversion string 
SELECT 'Chapter' || 1 || '... I am born.'
    FROM DUAL;
    
SELECT SYSDATE, ADD_MONTHS(SYSDATE, SUBSTR('Plus 3 Months', 6, 1)) PLUS_THREE
    FROM DUAL;
    
SELECT SYSDATE, ADD_MONTHS(SYSDATE, SUBSTR('Plus 3 Months 4', 15, 1)) PLUS_FOUR
    FROM DUAL;

SELECT 'TRUE' FROM DUAL WHERE '3' > '20';

SELECT 'TRUE' FROM DUAL WHERE '3' > 20;
