INSERT INTO tb_produtos (
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
)
VALUES (
'1040108', 'Premium - 450 ml', 'PET', '450 ml', 'Limão', 7.0
)

-- Selecionando os registros da tabela.

SELECT * FROM tb_produtos;

-- Alterando o registro da tabela

UPDATE tb_produtos SET embalagem = 'Lata',
preco_lista = 2.46
WHERE produto = '1040108';