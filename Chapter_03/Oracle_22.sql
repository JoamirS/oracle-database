CREATE TABLE preco_de_casas (
    ID INT PRIMARY KEY,
    bairro VARCHAR2(50),
    preco DECIMAL(10, 2),
    numero_de_comodos INT,
    ano_de_construcao INT,
    area_m2 DECIMAL(10, 2)
);


INSERT INTO preco_de_casas (id, bairro, preco, numero_de_comodos, ano_de_construcao, area_m2) VALUES (1, 'Vila Mariana', 750000, 4, 1995, 120);
INSERT INTO preco_de_casas (id, bairro, preco, numero_de_comodos, ano_de_construcao, area_m2) VALUES (2, 'Pinheiros', 900000, 3, 2010, 98);
INSERT INTO preco_de_casas (id, bairro, preco, numero_de_comodos, ano_de_construcao, area_m2) VALUES (3, 'Tatuapé', 670000, 4, 2000, 110);
INSERT INTO preco_de_casas (id, bairro, preco, numero_de_comodos, ano_de_construcao, area_m2) VALUES (4, 'Campo Limpo', 450000, 2, 1980, 85);
INSERT INTO preco_de_casas (id, bairro, preco, numero_de_comodos, ano_de_construcao, area_m2) VALUES (5, 'Moema', 1200000, 5, 2015, 150);

-- Inserção de dados na tabela preco_de_casas a partir do número 6

INSERT INTO preco_de_casas VALUES (6, 'Praia Azul', 600000.50, 4, 2008, 180.40);
INSERT INTO preco_de_casas VALUES (7, 'Cidade Alta', 800000.75, 5, 2015, 300.90);
INSERT INTO preco_de_casas VALUES (8, 'Lagoa Serena', 400000.25, 3, 1998, 140.25);
INSERT INTO preco_de_casas VALUES (9, 'Monte Cristo', 550000.00, 4, 2003, 200.80);
INSERT INTO preco_de_casas VALUES (10, 'São Pedro', 320000.50, 3, 1993, 130.70);
INSERT INTO preco_de_casas VALUES (11, 'Floresta Negra', 420000.75, 4, 2002, 160.40);
INSERT INTO preco_de_casas VALUES (12, 'Vale do Sol', 480000.25, 3, 1996, 170.60);
INSERT INTO preco_de_casas VALUES (13, 'Santo Antônio', 650000.00, 5, 2012, 230.90);
INSERT INTO preco_de_casas VALUES (14, 'Laranjeiras', 370000.50, 3, 1994, 140.20);
INSERT INTO preco_de_casas VALUES (15, 'Mangabeira', 520000.75, 4, 2007, 190.30);
INSERT INTO preco_de_casas VALUES (16, 'Campo Belo', 380000.25, 3, 1999, 150.40);
INSERT INTO preco_de_casas VALUES (17, 'Santa Clara', 720000.00, 6, 2018, 270.80);
INSERT INTO preco_de_casas VALUES (18, 'Bela Vista', 470000.50, 4, 2006, 210.50);
INSERT INTO preco_de_casas VALUES (19, 'Parque das Árvores', 330000.75, 3, 1992, 120.90);
INSERT INTO preco_de_casas VALUES (20, 'Nova Esperança', 590000.25, 5, 2011, 220.70);
INSERT INTO preco_de_casas VALUES (21, 'Sol Nascente', 420000.00, 4, 2005, 180.00);
INSERT INTO preco_de_casas VALUES (22, 'Lagoa Azul', 550000.50, 5, 2010, 210.20);
INSERT INTO preco_de_casas VALUES (23, 'Vista Linda', 480000.75, 3, 1997, 160.90);
INSERT INTO preco_de_casas VALUES (24, 'Jardim Primavera', 650000.25, 4, 2009, 200.40);
INSERT INTO preco_de_casas VALUES (25, 'Centro Histórico', 750000.00, 6, 2017, 250.80);


SELECT * FROM preco_de_casas
    FETCH NEXT 1 PERCENT ROWS ONLY;
    

SELECT * FROM preco_de_casas
    FETCH NEXT 50 PERCENT ROWS WITH TIES;
    
SELECT * FROM preco_de_casas
    FETCH NEXT 8 ROW ONLY;

SELECT * FROM preco_de_casas
    FETCH NEXT ROW ONLY;
