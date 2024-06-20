-- Create table
CREATE TABLE numeros_teste (
    id_key NUMBER PRIMARY KEY,
    inteiro NUMBER(10),
    numero_decimal NUMBER(10, 2),
    float_numero FLOAT(126),
    double_numero BINARY_DOUBLE,
    timestamp_number DATE
);

-- Insert some data
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (1, 100, 123.45, 1234.567, 1234567.89, SYSDATE);
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (2, -50, 0.75, -987.654, -987654.32, SYSDATE - 10);
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (3, 0, -123.45, 0, -0.001, SYSDATE - 20);
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (4, 5000, 999.99, 12345.678, 12345678.90, SYSDATE - 30);

INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (5, 2500, 499.99, 6789.123, 9876543.21, SYSDATE - 40);
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (6, -1000, 200.50, -4321.567, -1234567.89, SYSDATE - 50);
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (7, 3500, 750.75, 5432.210, 8765432.10, SYSDATE - 60);
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (8, 1500, 300.25, 9876.543, 6543210.98, SYSDATE - 70);
INSERT INTO numeros_teste (id_key, inteiro, numero_decimal, float_numero, double_numero, timestamp_number) VALUES (9, 4500, 999.99, 11111.111, 1111111.11, SYSDATE - 80);

-- Numerical Functions

-- CEIL Function
-- Syntax: CEIL(n)
SELECT 
    CEIL(numero_decimal) FROM numeros_teste;

-- FLOOR Function
-- Syntax: FLOOR(n)
SELECT
    FLOOR(numero_decimal) FROM numeros_teste;

-- ROUND Function
-- Syntax: ROUND(n, i)
SELECT
    ROUND(float_numero, 2) FROM numeros_teste;

SELECT
    ROUND(float_numero, -1) FROM numeros_teste;

--  TRUNK Function
-- Syntax: TRUNC(n,i)
SELECT
    TRUNC(float_numero, 2) FROM numeros_teste;

SELECT
    TRUNC(float_numero, -1) FROM numeros_teste;
    
-- REMAINDER Function
-- Syntax: REMAINDER(n1, n2)
SELECT REMAINDER(9, 4) AS resultado FROM dual;

-- MOD Function
-- Syntax: MOD(n1, n2)
SELECT MOD (14, 4) AS MOD_RESULT FROM DUAL;
