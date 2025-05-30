-- Chapter 9

CREATE TABLE SALES_DATA
    ( ID NUMBER,
    REP VARCHAR2(10),
    YEAR NUMBER(4),
    TOTAL_SALES NUMBER);
    
INSERT INTO SALES_DATA VALUES (1, 'Joe', 2018, 249);
INSERT INTO SALES_DATA VALUES (1, 'Joe', 2017, 178);
INSERT INTO SALES_DATA VALUES (1, 'Joe', 2016, 483);
INSERT INTO SALES_DATA VALUES (4, 'Ann', 2018, 422);
INSERT INTO SALES_DATA VALUES (5, 'Ann', 2017, 427);
INSERT INTO SALES_DATA VALUES (6, 'Ann', 2016, 245);
INSERT INTO SALES_DATA VALUES (7, 'Moe', 2018, 308);
INSERT INTO SALES_DATA VALUES (8, 'Moe', 2017, 721);
INSERT INTO SALES_DATA VALUES (9, 'Moe', 2016, 109);
INSERT INTO SALES_DATA VALUES (10, 'Lyn', 2018, 525);
INSERT INTO SALES_DATA VALUES (11, 'Lyn', 2017, 589);
INSERT INTO SALES_DATA VALUES (12, 'Lyn', 2016, 742);

SELECT AVG(TOTAL_SALES) AVG_SALES FROM SALES_DATA
    WHERE YEAR = 2017;

SELECT REP FROM SALES_DATA WHERE YEAR = 2018 AND TOTAL_SALES > 478.75;

SELECT * FROM SALES_DATA;

SELECT REP FROM SALES_DATA WHERE YEAR = 2018 AND 
    TOTAL_SALES > (SELECT AVG(TOTAL_SALES) FROM SALES_DATA WHERE YEAR = 2017);


SELECT S.ID, S.REP, S.YEAR, S.TOTAL_SALES FROM SALES_DATA S
    WHERE S.TOTAL_SALES > ( SELECT AVG(TOTAL_SALES) FROM SALES_DATA
    WHERE REP = S.REP)
    ORDER BY S.TOTAL_SALES;


UPDATE INVOICES INV 
    SET TERMS_OF_DISCOUNT = '10 PCT'
    WHERE TOTAL_PRICE = (SELECT MAX(TOTAL_PRICE) FROM INVOICES WHERE
                        TO_CHAR(INVOICE_DATE, 'RRRR-Q') = 
                        TO_CHAR(INV.INVOICE_DATE, 'RRRR-Q'));


UPDATE PORTS P
    SET CAPACITY = (SELECT COUNT(*) FROM SHIPS WHERE HOME_PORT_ID = P.PORT_ID)
    WHERE EXISTS (SELECT * FROM SHIPS WHERE HOME_PORT_ID = P.PORT_ID);


DELETE FROM SHIP_CABINS S1
    WHERE S1.BALCONY_SQ_FT = 
    (SELECT MIN(BALCONY_SQ_FT)
    FROM SHIP_CABINS S2
    WHERE S1.ROOM_TYPE = S2.ROOM_TYPE
    AND S1.ROOM_STYLE = S2.ROOM_STYLE);
    

-- Multiple-Row Subqueries
SELECT SHIP_ID, LAST_NAME, FIRST_NAME FROM EMPLOYEES
    WHERE SHIP_ID IN (SELECT SHIP_ID FROM EMPLOYEES WHERE LAST_NAME = 'Smith')
    ORDER BY SHIP_ID, LAST_NAME;
    
-- NOT IN AND NOT NULL
SELECT * FROM PARENT WHERE HOUSE NOT IN (SELECT HOUSE FROM KID WHERE HOUSE IS NOT NULL);

