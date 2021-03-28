ALTER TABLE tb_clientes ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CPF);

ALTER TABLE tb_clientes ADD DATA_NASCIMENTO DATE;

ALTER TABLE tb_clientes ADD ESTADO CHAR(2);

INSERT INTO tb_clientes (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, limite_credito,
volume_compra, primeira_compra, data_nascimento
)
VALUES (
'05405405401', 'João da Silva', 'Rua projetada A número 10', NULL, 'Vila Roman', 'Três Rios',
'RJ', '22222222', 53, 'M', 20000.00, 2000, 0, TO_DATE('12/10/1965', 'DD/MM/YYYY'));


INSERT INTO tb_clientes (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, limite_credito,
volume_compra, primeira_compra, data_nascimento
)
VALUES (
'05405405781', 'John Wick', 'Rua projetada A número 10', NULL, 'Vila Roman', 'Três Rios',
'RJ', '22222222', 53, 'M', 20000.00, 2000, 0, TO_DATE('12/10/1965', 'MM/DD/YYYY'));

SELECT * FROM tb_clientes;

DELETE FROM tb_clientes WHERE CPF = '05405405781';
