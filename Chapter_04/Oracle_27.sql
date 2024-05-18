-- Function LPAD, RPAD

SELECT RPAD('Chapter One - I Am Born', 30, '.') FROM DUAL;

SELECT RPAD(CHAPTER_TITLE || ' ', 30, '.') || LPAD(' ' || PAGE_NUMBER, 30, ' ')
    "Table of Contents" FROM BOOK_CONTENTS ORDER BY PAGE_NUMBER;
    
-- Function LTRIM and RTRIM

SELECT RTRIM('Seven trousand -------', '-') Result FROM DUAL;

SELECT LTRIM('Seven trousand -------', '-') Result FROM DUAL;