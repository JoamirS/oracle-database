-- Um cliente da nossa base de dados, com CPF 1478662710, se mudou para 
-- a Rua Jorge Emilio, 23, no bairro de Santo Amaro, cidade São Paulo,
-- estado SP e CEP 8833223.

UPDATE CLIENTE SET ENDERECO = 'Rua Jorge Emilio, 23', BAIRRO = 'Santo Amaro',
    CIDADE = 'São Paulo', ESTADO = 'SP', CEP = '8833223' WHERE CPF = '1478662710';
    
SELECT * FROM CLIENTE;
