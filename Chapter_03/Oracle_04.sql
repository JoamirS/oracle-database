INSERT INTO PRODUTOS
(CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES
('1040107', 'Light - 350 ml - Melancia', 'Melancia', '350 ml', 'Lata', 4.46);


-- Selecionando tudo da tabela
SELECT * FROM PRODUTOS;

-- Inserindo mais dados na tabela
INSERT INTO PRODUTOS
(CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES
('1040108', 'Light - 350 ml - Graviola', 'Graviola', '350 ml', 'Lata', 4.00);

-- Inserindo mais dados na tabela
INSERT INTO PRODUTOS
VALUES
('1040109', 'Light - 350 - Acai', 'Acai', '350 ml', 'Lata', 5.60);

-- Corrigindo dados na tabela
UPDATE PRODUTOS P SET P.DESCRITOR = 'Light - 350 ml - Acai' WHERE P.CODIGO = '1040109';
    
-- Inserting more data
INSERT ALL
    INTO PRODUTOS VALUES ('1040110', 'Light - 350 ml - Jaca', 'Jaca', '350 ml', 'Lata', 6.00)
    INTO PRODUTOS VALUES ('1040111', 'Light - 350 ml - Manga', 'Manga', '350 ml', 'Lata', 3.50)
        SELECT DUMMY FROM DUAL;

-- Inserting values in customer table
INSERT INTO CLIENTE C
VALUES ('1478662710', 'Érica Carvalho', 'R. Iriquitia', 'Jardins', 'São Paulo', 'SP', '80012212',
        '01/09/1990', 27, 'F', 170000, 24500, 0);

-- Changing the number of table fields
ALTER TABLE PRODUTOS MODIFY (EMBALAGEM VARCHAR(50));

