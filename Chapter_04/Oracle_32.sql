-- LAG and LEAD Function

CREATE TABLE VENDAS (
    ID NUMBER PRIMARY KEY,
    DATE_SALE DATE,
    VALUE_SALE NUMBER(10, 2)
    );

INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (1, DATE '2024-01-10', 1500.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (2, DATE '2024-01-15', 2300.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (3, DATE '2024-02-05', 1750.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (4, DATE '2024-02-20', 3200.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (5, DATE '2024-03-03', 2890.40);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (6, DATE '2024-03-25', 4100.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (7, DATE '2024-04-16', 3050.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (8, DATE '2024-04-18', 1950.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (9, DATE '2024-05-02', 2500.00);
INSERT INTO VENDAS (ID, DATE_SALE, VALUE_SALE) VALUES (10, DATE '2024-05-15', 3300.00);

SELECT ID, DATE_SALE, VALUE_SALE, LAG(VALUE_SALE)
    OVER (ORDER BY DATE_SALE) PREVIOUS_VALUE
        FROM VENDAS
            ORDER BY DATE_SALE;
            
SELECT ID, DATE_SALE, VALUE_SALE, LEAD(VALUE_SALE, 1)
    OVER (ORDER BY DATE_SALE) AS NEXT_VALUE
    FROM VENDAS 
        ORDER BY DATE_SALE;
        
SELECT ID, DATE_SALE, VALUE_SALE,
    LAG(VALUE_SALE, 2) OVER (ORDER BY DATE_SALE) AS PREVIUOS_VALUE,
    LEAD(VALUE_SALE, 1) OVER (ORDER BY DATE_SALE) AS NEXT_VALUE
        FROM VENDAS ORDER BY DATE_SALE;
