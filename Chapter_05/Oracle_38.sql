-- TO_TIMESTAMP

-- Syntax: TO_TIMESTAMP(c, format_model, nls_parms)
SELECT TO_TIMESTAMP('2024-01-01 01:34:00:093423',
    'RRRR-MM-DD HH12:MI:SS:FF') EVENT_TIME 
    FROM DUAL;

-- TO_TIMESTAMP_TZ
-- TO_TIMESTAMP_TZ(c, format_model, nls_parms)
