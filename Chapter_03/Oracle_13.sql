CREATE TABLE CRUISES
    (CRUISE_ID NUMBER,
    CRUISE_TYPE_ID NUMBER,
    CRUISE_NAME VARCHAR2(20),
    CAPTAIN_ID NUMBER NOT NULL,
    START_DATE DATE,
    END_DATE DATE,
    STATUS VARCHAR2(5) DEFAULT 'DOCK',
    CONSTRAINT CRUISE_PK PRIMARY KEY (CRUISE_ID));

INSERT INTO CRUISES
    (CRUISE_ID, CRUISE_TYPE_ID, CRUISE_NAME, CAPTAIN_ID, START_DATE, END_DATE,
    STATUS)
    VALUES
    (1, 1, 'Day at sea', 101, '02-JAN-10', '09-JAN-10', 'Sched'
    );
    
DESC CRUISES;


INSERT INTO CRUISES
    (CRUISE_ID, CRUISE_NAME, STATUS, CAPTAIN_ID, START_DATE, END_DATE)
    VALUES
    ( 5, 'Captain Sea', 'Done', 104, '09-ABR-2009', '15-ABR-2010');
    
    
-- The code works because Oracle SQL is smart enough to figure out that the text
-- contained within the literal value in this situation happens to be numeric.

INSERT INTO CRUISES (CRUISE_ID, CAPTAIN_ID)
    VALUES
    (10, '106');

-- The code works because Oracle SQL is smart enough to figure out that the text
-- contained within the literal value in this situation happens to be numeric.
INSERT INTO CRUISES
    (CRUISE_ID, CRUISE_NAME, STATUS, CAPTAIN_ID, START_DATE, END_DATE)
    VALUES
    ('8', 'WS on Board', 'Sched', '200', '15-JAN-2017', '18-JAN-2017');


-- Create an object that will dispense indivual values, and we'll use it to generate
-- primary key values for our insert stataments.

CREATE SEQUENCE SEQ_CRUISE_ID;
CREATE SEQUENCE SEQ_CAPTAIN_ID;

INSERT INTO CRUISES (CRUISE_ID, CRUISE_NAME, CAPTAIN_ID)
    VALUES (SEQ_CRUISE_ID.NEXTVAL, 'Hawaii', SEQ_CAPTAIN_ID.NEXTVAL);
    
SELECT * FROM CRUISES;
