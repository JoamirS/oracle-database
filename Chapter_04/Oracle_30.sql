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

SELECT SYSDATE TODAY, ROUND(SYSDATE, 'MM') ROUNDED_MONTH, ROUND(SYSDATE, 'RR') ROUNDED_YEAR
    FROM DUAL;
    
SELECT TO_CHAR(SYSDATE, 'DD-MON-YY HH:MI:SS') AS RAW_DATE, 
        TO_CHAR(ROUND(SYSDATE), 'DD-MON-YY HH:MI:SS') AS ROUNDED_DATE
        FROM DUAL;
        
SELECT TO_CHAR(SYSDATE, 'DD-MON-YY HH24:MI:SS') AS RAW_DATE, 
       TO_CHAR(ROUND(SYSDATE, 'MI'), 'DD-MON-YY HH24:MI:SS') AS ROUNDED_DATE
FROM DUAL;
