-- TO_YMINTERVAL
-- Syntax: TO_YMINTERVAL('y-m')

SELECT TO_YMINTERVAL('04-06') EVENT_TIME FROM DUAL;

-- TO_DSINTERVAL
-- Syntax: TO_DSINTERVAL(slq_format, nls_parms)
SELECT TO_DSINTERVAL('40 08:30:00.03225') EVENT_TIME
    FROM DUAL;
    
-- NUMTOYYMINTERVAL
-- Syntax: NUMTOYMINTERVAL(n, interval_unit)
SELECT NUMTOYMINTERVAL(27, 'MONTH') FROM DUAL;
SELECT NUMTOYMINTERVAL(10, 'YEAR') FROM DUAL;

-- NUMTODSINTERVAL
-- Syntax: NUMTODSINTERVAL(n, interval_unit)
-- interval unit: 'DAY', 'HOUR', 'MINUTE', OR 'SECOND'.
-- Transform in INTERVAL DAY TO SECOND
SELECT NUMTODSINTERVAL(36, 'HOUR') FROM DUAL;

-- CAST
-- Syntax: CAST(e AS d)
-- Parameters: e is a expression; d is a data type
SELECT CAST('19-JAN-25 11:30:30' AS TIMESTAMP WITH LOCAL TIME ZONE) "CONVERTED LTZ"
    FROM DUAL;
    
-- If we want to use a format mask for any reason
SELECT CAST(TO_TIMESTAMP('19-JAN-25 13:40:31', 'DD-MON-RR HH24:MI:SS')
    AS TIMESTAMP WITH LOCAL TIME ZONE) "CONVERTED LTZ"
    FROM DUAL;
