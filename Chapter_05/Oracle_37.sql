-- TO_CHAR Function

-- Syntax: TO_CHAR(c)
SELECT TO_CHAR('Hello') FROM DUAL;

-- Syntax: TO_CHAR(n, format_model, nls_parms)
SELECT TO_CHAR(198, '$999.99') FROM DUAL;

-- Syntax: TO_CHAR(d, format_model, nls_parms)
SELECT TO_CHAR(SYSDATE, 'DAY, "THE" DD "OF" MONTH, RRRR') FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'FMDAY, "THE" DD "OF" MONTH, RRRR') FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'FMDAY, "the" Dd "of" Month, RRRR') FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'FMDAY, "the" Ddth "of" Month, RRRR') FROM DUAL;

SELECT TO_CHAR(SYSDATE,'HH24:MI:SS PM') FROM DUAL;

-- 
SELECT TO_CHAR(TO_DATE('01-JAN-49', 'DD-MON-YY'), 'YYYY'),
        TO_CHAR(TO_DATE('01-JAN-50', 'DD-MON-YY'), 'YYYY'),
        TO_CHAR(TO_DATE('01-JAN-49', 'DD-MON-RR'), 'RRRR'),
        TO_CHAR(TO_DATE('01-JAN-50', 'DD-MON-RR'), 'RRRR')
FROM DUAL;

SELECT TO_CHAR(TO_DATE('21-JUL-24 00:00:00', 'DD-MON-YY HH24:MI:SS'),
        'DD-MON-YY HH24:MI:SS PM') AS MIDNIGHT_HR24,
        TO_CHAR(TO_DATE('07-JUL-24 00:00:00', 'DD-MON-YY HH24:MI:SS'),
        'DD-MON-YY HH12:MI:SS PM') AS MIDNIGHT_HR12
    FROM DUAL;
