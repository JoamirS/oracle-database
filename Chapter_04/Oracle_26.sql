-- Function CONCAT

SELECT CONCAT('Hello, ', 'world!') FROM DUAL;

SELECT CONCAT('Hello', 'World') FROM DUAL;

SELECT 'Hello, ' || 'World' FROM DUAL;

SELECT 'Hello, ' || 'World ' || 'Great to ' || 'see you.' FROM DUAL;

-- While CONCAT takes only two parameters, the double vertical bar syntax ca be
-- repeated as often as is necessary.