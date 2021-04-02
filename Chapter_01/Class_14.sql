/*
Vamos incluir novos campos na tabela de vendedores. Eles serão a data de admissão
(nome do campo DATA_ADMISSAO) e se o vendedor está ou não de férias (nome do campo DE_FERIAS).

*/

SELECT * FROM TABELA_DE_VENDEDORES;

ALTER TABLE tabela_de_vendedores ADD DATA_ADMISSAO DATE;
ALTER TABLE tabela_de_vendedores ADD DE_FERIAS NUMBER(1);

UPDATE tabela_de_vendedores SET data_admissao = TO_DATE('15/08/2014', 'DD/MM/YYYY') WHERE matricula = '00235';
UPDATE tabela_de_vendedores SET de_ferias = 0 WHERE matricula = '00235';

UPDATE tabela_de_vendedores SET percentual_comissao = 0.08 WHERE matricula = '00236';
UPDATE tabela_de_vendedores SET data_admissao = TO_DATE('17/09/2013', 'DD/MM/YYYY') WHERE matricula = '00236';
UPDATE tabela_de_vendedores SET de_ferias = 1 WHERE matricula = '00236';

INSERT INTO tabela_de_vendedores
VALUES 
('00237', 'Roberta Martins', 0.11, TO_DATE('18/03/2017', ('DD-MM-YYYY')), 1);

INSERT INTO tabela_de_vendedores
VALUES 
('00238', 'Péricles Alves', 0.11, TO_DATE('21/08/2016', ('DD-MM-YYYY')), 0);

ALTER TABLE TABELA_DE_VENDEDORES ADD CONSTRAINT PK_TABELA_DE_VENDEDORES PRIMARY KEY (MATRICULA);

