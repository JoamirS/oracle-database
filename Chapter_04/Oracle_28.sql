-- Criação da tabela para testar funções de caracteres
CREATE TABLE teste_caracteres (
    id NUMBER PRIMARY KEY,
    texto_varchar2 VARCHAR2(4000),
    texto_char CHAR(100),
    texto_clob CLOB,
    descricao VARCHAR2(100) -- Para descrever o conteúdo da linha
);

-- Inserção de 20 linhas com múltiplos comandos INSERT
BEGIN
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (1, 'The quick brown fox', 'Jumped over', 'The lazy dog', 'Frase famosa');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (2, 'Lorem ipsum dolor sit amet', 'Consectetur adipiscing', 'Elit, sed do eiusmod tempor', 'Texto de exemplo');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (3, 'To be or not to be', 'That is the question', 'Whether tis nobler in the mind', 'Shakespeare');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (4, 'All work and no play', 'Makes Jack a dull boy', 'Repeated ad nauseam', 'Frase de filme');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (5, 'Call me Ishmael.', 'Some years ago', 'Never mind how long precisely', 'Início de romance');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (6, 'A journey of a thousand miles', 'Begins with a single step', 'Lao Tzu', 'Provérbio chinês');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (7, 'In the beginning', 'God created', 'The heavens and the earth', 'Bíblia');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (8, 'It was the best of times', 'It was the worst of times', 'It was the age of wisdom', 'Charles Dickens');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (9, 'A long time ago', 'In a galaxy far', 'Far away', 'Star Wars');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (10, 'I think, therefore I am', 'Cogito, ergo sum', 'Descartes', 'Filosofia');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (11, 'Elementary, my dear Watson', 'Sherlock Holmes', 'Arthur Conan Doyle', 'Mistério');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (12, 'Houston, we have a problem', 'Apollo 13', 'Space mission', 'Histórico');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (13, 'To infinity and beyond', 'Buzz Lightyear', 'Toy Story', 'Animação');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (14, 'May the Force be with you', 'Star Wars', 'Sci-fi epic', 'Frase icônica');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (15, 'I have a dream', 'Martin Luther King Jr.', 'Civil rights', 'Discurso famoso');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (16, 'E=mc²', 'Einstein', 'Theory of relativity', 'Física');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (17, 'It is a truth universally acknowledged', 'That a single man', 'In possession of a good fortune', 'Jane Austen');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (18, 'Once upon a time', 'In a land far, far away', 'Lived a young princess', 'Conto de fadas');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (19, '4 score and 7 years ago', 'Our fathers brought forth', 'On this continent, a new nation', 'Discurso de Lincoln');
    INSERT INTO teste_caracteres (id, texto_varchar2, texto_char, texto_clob, descricao) VALUES (20, NULL, 'Empty values', 'Are also useful', 'Testando valores nulos');
    COMMIT;
END;


-- TRIM Function
-- Remove in the begin: LEADING
-- Remove in the end: TRAILING
-- Syntax: TRIM(trim_info trim_char FROM trim_source
SELECT
    TRIM('t' FROM "A1"."TEXTO_VARCHAR2") "OUTPUT"
FROM
    "SYS"."TESTE_CARACTERES" "A1";
    
SELECT
    TRIM(LEADING 'A' FROM "A1"."TEXTO_VARCHAR2") "OUTPUT"
FROM
    "SYS"."TESTE_CARACTERES" "A1";
    
SELECT
    TRIM(TRAILING 'e' FROM "A1"."TEXTO_VARCHAR2") "OUTPUT"
FROM
    "SYS"."TESTE_CARACTERES" "A1";

-- LENGHT Function
-- Get the length of the string
-- Syntax: LENGTH(s)
SELECT LENGTH(texto_varchar2) FROM teste_caracteres;

-- INSTR Function
-- Find the position in wich the chacterer is located.
SELECT
    INSTR(texto_varchar2, 'or', 1, 1) FROM teste_caracteres;

-- SUBSTR Function
-- Extracts a substring from the main string
-- Syntax: SUBSTR(s, pos, len)
SELECT
    SUBSTR(texto_varchar2, 1, 10) FROM teste_caracteres;

-- SOUNDEX Function
-- Translate a source string into its SOUNDEX code
-- Syntax: SOUNDEX(s)
SELECT SOUNDEX('Joamir'), SOUNDEX('Moraes') FROM DUAL;
SELECT SOUNDEX('Robert') FROM DUAL;

