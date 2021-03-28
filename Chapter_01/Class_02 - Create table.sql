-- Criando o tabela vendedores 
CREATE TABLE TABELA_DE_VENDEDORES (
  MATRICULA CHAR(5), NOME VARCHAR(100), PERCENTUAL_COMISSAO NUMBER);

-- Mudando o tipo do campo Percentual_Comissao
ALTER TABLE TABELA_DE_VENDEDORES MODIFY PERCENTUAL_COMISSAO FLOAT;

-- Transformando o campo Matricula em chave primária
ALTER TABLE TABELA_DE_VENDEDORES ADD CONSTRAINT PK_TABELA_DE_VENDEDORES PRIMARY KEY (MATRICULA);