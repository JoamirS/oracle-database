-- Date Functions

SELECT SYSDATE FROM DUAL;

-- ROUND - Date
-- Syntax: ROUND(d, i)


-- Criando a tabela para testes de fun��es de data
CREATE TABLE test_dates (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    event_date DATE,
    event_timestamp TIMESTAMP,
    description VARCHAR2(100)
);

-- Inserindo alguns dados de exemplo na tabela
INSERT INTO test_dates (event_date, event_timestamp, description) VALUES (SYSDATE, SYSTIMESTAMP, 'Evento Atual');
INSERT INTO test_dates (event_date, event_timestamp, description) VALUES (SYSDATE - 7, SYSTIMESTAMP - INTERVAL '7' DAY, 'Evento de 7 dias atr�s');
INSERT INTO test_dates (event_date, event_timestamp, description) VALUES (SYSDATE + 30, SYSTIMESTAMP + INTERVAL '30' DAY, 'Evento em 30 dias');
INSERT INTO test_dates (event_date, event_timestamp, description) VALUES (TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Evento de 1� de janeiro de 2023');

-- Confirmando as inser��es
COMMIT;


-- Round Function

SELECT SYSDATE TODAY, ROUND(SYSDATE, 'MM') ROUNDED_MONTH, ROUND(SYSDATE, 'RR') ROUNDED_YEAR
    FROM DUAL;
    
SELECT TO_CHAR(SYSDATE, 'DD-MON-YY HH:MI:SS') AS RAW_DATE, 
        TO_CHAR(ROUND(SYSDATE), 'DD-MON-YY HH:MI:SS') AS ROUNDED_DATE
        FROM DUAL;
        
SELECT TO_CHAR(SYSDATE, 'DD-MON-YY HH24:MI:SS') AS RAW_DATE, 
       TO_CHAR(ROUND(SYSDATE, 'MI'), 'DD-MON-YY HH24:MI:SS') AS ROUNDED_DATE
FROM DUAL;


SELECT TO_CHAR(TO_DATE('01-AGO-16 12:01:00', 'DD-MON-YY HH24:MI:SS'), 'DD-MON-YY HH:MI:SS') AS DAY_AT_NOON,
        TO_CHAR(ROUND(TO_DATE('01-AGO-16 12:00:00', 'DD-MON-YY HH24:MI:SS')), 'DD-MON-YY HH:MI:SS') AS ROUNDED_TO_NEXT_DAY
        FROM DUAL;



-- Trunc Function
-- Syntax: TRUNC(d, i)
-- Trunc always rounds down
SELECT SYSDATE TODAY, TRUNC(SYSDATE, 'MM') TRUNCATED_MONTH,
        TRUNC(SYSDATE, 'RR') TRUNCATED_TEAR
        FROM DUAL;

-- Next_Day Function
-- Syntax: Next_Day(d, c)
SELECT NEXT_DAY(SYSDATE, 'S�bado') FROM DUAL;

-- Last_Day Function
-- Syntax: Last_Day(d)
-- Shows the last day of the month
SELECT LAST_DAY(SYSDATE) FROM DUAL;

-- Add_Months Funtion
-- Syntax: Add_months(d, n)
SELECT ADD_MONTHS(SYSDATE, 1) FROM DUAL;
SELECT ADD_MONTHS(SYSDATE, -1) FROM DUAL;
