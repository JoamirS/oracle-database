-- Criando a tabela CLIENTES
CREATE TABLE CLIENTES (
    id_cliente NUMBER PRIMARY KEY,
    nome_cliente VARCHAR2(50),
    cidade VARCHAR2(50)
);

-- Criando a tabela PEDIDOS
CREATE TABLE PEDIDOS (
    id_pedido NUMBER PRIMARY KEY,
    id_cliente NUMBER,
    valor_total NUMBER(10,2),
    data_pedido DATE,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente)
);

-- Inserindo dados na tabela CLIENTES
INSERT INTO CLIENTES VALUES (1, 'Alice', 'São Paulo');
INSERT INTO CLIENTES VALUES (2, 'Bruno', 'Rio de Janeiro');
INSERT INTO CLIENTES VALUES (3, 'Carla', 'Belo Horizonte');
INSERT INTO CLIENTES VALUES (4, 'Diego', 'Porto Alegre');

-- Inserindo dados na tabela PEDIDOS
INSERT INTO PEDIDOS VALUES (1001, 1, 250.00, TO_DATE('2024-01-10', 'YYYY-MM-DD'));
INSERT INTO PEDIDOS VALUES (1002, 2, 120.50, TO_DATE('2024-01-15', 'YYYY-MM-DD'));
INSERT INTO PEDIDOS VALUES (1003, 1, 350.00, TO_DATE('2024-01-20', 'YYYY-MM-DD'));
INSERT INTO PEDIDOS VALUES (1004, 3, 500.00, TO_DATE('2024-01-22', 'YYYY-MM-DD'));
INSERT INTO PEDIDOS VALUES (1005, 4, 180.00, TO_DATE('2024-01-25', 'YYYY-MM-DD'));
INSERT INTO PEDIDOS VALUES (1006, NULL, 300.00, TO_DATE('2024-01-28', 'YYYY-MM-DD')); -- Pedido sem cliente registrado

COMMIT;

-- ? EQUJOIN: Relacionando PEDIDOS e CLIENTES
SELECT p.id_pedido, c.nome_cliente, p.valor_total, p.data_pedido
FROM PEDIDOS p
JOIN CLIENTES c ON p.id_cliente = c.id_cliente;

-- ? NON-EQUIJOIN: Classificação de pedidos por valor (Faixa de Gastos)
SELECT p.id_pedido, p.valor_total,
       CASE 
           WHEN p.valor_total < 200 THEN 'Baixo'
           WHEN p.valor_total BETWEEN 200 AND 400 THEN 'Médio'
           ELSE 'Alto'
       END AS faixa_de_gasto
FROM PEDIDOS p;

-- Criando uma tabela de FAIXAS DE PEDIDOS para um Non-Equijoin mais complexo
CREATE TABLE FAIXA_PEDIDOS (
    id_faixa NUMBER PRIMARY KEY,
    descricao VARCHAR2(50),
    valor_min NUMBER(10,2),
    valor_max NUMBER(10,2)
);

INSERT INTO FAIXA_PEDIDOS VALUES (1, 'Baixo', 0, 199.99);
INSERT INTO FAIXA_PEDIDOS VALUES (2, 'Médio', 200, 399.99);
INSERT INTO FAIXA_PEDIDOS VALUES (3, 'Alto', 400, 1000);

COMMIT;

-- ? NON-EQUIJOIN: Relacionando pedidos com a tabela FAIXA_PEDIDOS
SELECT p.id_pedido, p.valor_total, f.descricao AS faixa_de_gasto
FROM PEDIDOS p
JOIN FAIXA_PEDIDOS f ON p.valor_total BETWEEN f.valor_min AND f.valor_max;
