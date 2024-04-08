-- Criar um novo schema de usuário para os nossos testes (opcional)
CREATE USER teste IDENTIFIED BY teste123;
GRANT CONNECT, RESOURCE TO teste;

-- Conectar com o novo usuário
-- CONNECT teste/teste123@SeuBancoDados;

-- Criar uma tabela de exemplo
CREATE TABLE estudantes (
  id INT PRIMARY KEY,
  nome VARCHAR2(100) NOT NULL,
  email VARCHAR2(100),
  data_nascimento DATE,
  nota_final DECIMAL(5, 2)
);

-- Inserir alguns dados de exemplo na tabela
INSERT INTO estudantes (id, nome, email, data_nascimento, nota_final) VALUES (1, 'João Silva', 'joao.silva@email.com', TO_DATE('1995-06-15', 'YYYY-MM-DD'), 85.5);
INSERT INTO estudantes (id, nome, email, data_nascimento, nota_final) VALUES (2, 'Maria Garcia', 'maria.garcia@email.com', TO_DATE('1992-08-23', 'YYYY-MM-DD'), 90.0);
INSERT INTO estudantes (id, nome, email, data_nascimento, nota_final) VALUES (3, 'Carlos Pereira', 'carlos.pereira@email.com', TO_DATE('1998-11-10', 'YYYY-MM-DD'), 76.5);

-- Criar uma sequência para os IDs
CREATE SEQUENCE estudante_seq
    START WITH 4
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Criar um trigger para auto incrementar o ID utilizando a sequência criada
CREATE OR REPLACE TRIGGER estudantes_bi
  BEFORE INSERT ON estudantes
  FOR EACH ROW
  BEGIN
    SELECT estudante_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
  END;
/

-- Confirmando a criação de todos os objetos
COMMIT;