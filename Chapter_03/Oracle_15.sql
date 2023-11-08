-- Update in Constraints

CREATE TABLE PROJECTS
    (PROJECT_ID NUMBER PRIMARY KEY,
    PROJECT_NAME VARCHAR2(40),
    COST NUMBER,
    CONSTRAINT CK_COST CHECK (COST < 1000000));
    
INSERT INTO PROJECTS (PROJECT_ID, PROJECT_NAME, COST)
    VALUES
    (1, 'Hull Cleaning', 340000);
    
INSERT INTO PROJECTS (PROJECT_ID, PROJECT_NAME, COST)
    VALUES
    (2, 'Deck Resurfacing', '964000');
    
INSERT INTO PROJECTS (PROJECT_ID, PROJECT_NAME, COST)
    VALUES
    (3, 'Lifeboat Inspection', 12000);
    

-- The statement below the cost of each project by 20 percent.
-- This will cause teh row identifield by PROJECT_ID 2 to bump up over our limitation
-- on the cost column.
UPDATE PROJECTS SET COST = COST * 1.20;
    
-- Update variation, so as not to violate constraint
UPDATE PROJECTS SET COST = COST * 1.20 WHERE COST * 1.20 < 1000000;
