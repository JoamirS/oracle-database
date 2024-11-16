-- Conversion Function

SELECT TO_NUMBER('170,000.23','999999D99') FROM DUAL;

-- Number at string format and convert in a number
DECLARE
    variable_str  VARCHAR2(10) := '12345';
    variable_number NUMBER;
    
BEGIN
    variable_number := TO_NUMBER(variable_str);
    DBMS_OUTPUT.PUT_LINE('O valor convertido é: ' || variable_number);
END;

--

-- whether you need to convert a specific formatting, you can use a mask to indicate
-- how the string must be interpreted.

DECLARE
    v_str   VARCHAR2(20) := '1.234,56';
    v_num   NUMBER;
    
BEGIN
    -- Usando formato '9G999D99' para interpretar a string corretamente
    v_num := TO_NUMBER(v_str, '9G999D99', 'NLS_NUMERIC_CHARACTERS='',.''');
    DBMS_OUTPUT.PUT_LINE('Valor convertido: ' || v_num);
END;

-- Convert monetary values
DECLARE 
    variable_coin VARCHAR2(20) := '$1,500.75';
    variable_number NUMBER;
BEGIN
    variable_number := TO_NUMBER(variable_coin, '$9,999.99');
    DBMS_OUTPUT.PUT_LINE('Valor convertido: ' || variable_number);
END;

-- In queries
SELECT TO_NUMBER('567.89', '999G999D99', 'NLS_NUMERIC_CHARACTERS=''.,''')
    + 100 SUM_VALUE 
        FROM DUAL;
        
SELECT TO_NUMBER('100') FROM DUAL;




