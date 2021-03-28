-- Recebemos a seguinte informação:
/*

Cláudia Morais (00236) recebeu aumento e sua comissão passou a ser de 11%.

José Geraldo da Fonseca (00233) reclamou que seu nome real é José Geraldo da Fonseca Junior

Efetue estas correções na base de dados.

*/

UPDATE tabela_de_vendedores SET percentual_comissao = 0.11 WHERE matricula = 00236;

UPDATE tabela_de_vendedores SET nome = 'José Geraldo da Fonseca Junior' WHERE matricula = 00233;

SELECT * FROM tabela_de_vendedores;