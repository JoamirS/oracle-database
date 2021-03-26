-- Tipos de dados

/*
CHAR 

Armazena cadeias de caracteres de comprimento fixo. Ao criar um campo CHAR,
precisamos definir o comprimento deste campo (1 a 2000 caracteres). Se o valor
for muito grande haverá um retorno de erro.

VARCHAR e VARCHAR2

Ambos armazenam cadeias de caracteres de comprimento variável. A criar um campo
CHAR precisamos definir o comprimento deste campo (1 a 4000 caracteres). Se o valor
for muito grande haverá um retorno de erro. 

Por enquanto, eles são sinônimos.

VARCHAR é reservado Oracle para oferecer suporte à distinção entre NULL e cadeia
vazia no futuro, conforme ANSI prescrito pelo padrão.

VARCHAR2 não faz distinção entre uma NULL string e uma string vazia, e nunca o fará.

Se você confia na cadeia vazia e NULL é a mesma coisa, deve usar VARCHAR2.


NCHAR e NVARCHAR2

Armazena cadeias de caracteres de comprimento fixo ou variável, mas são caracteres
Unicode. Respeita as caracteristicas do CHAR e VARCHAR.

Unicode - Fornece um único conjunto de caracteres contendo os idiomas do mundo.

CLOB e NLOB

São campos longos que podem armazenar até 8 terabytes de dados, por campo.

CLOB e NLOB correspondem a VARCHAR2 e NVARCHAR2.

Existem um tipo chamado LONG, mas que não deve ser mais usado nas versões atuais.
Ele existe apenas para manter compatibilidade com bancos de dados Oracle antigos.

NUMBER

Armazena números de tamanho fixo e de ponto flutuante. Qualquer número pode ser
armazenado neste campo, até 38 dígitos de precisão.

Números positivos: 1X 10E -130 a 9,99 X 10E125
Números negativos: -1 X 10E -130 a 9,00 X 10E 125

Número zero.

Opcionalmente podemos determinar a precisão incluindo a escala e a precisão.

Exemplo: NUMBER(10, 2)

DATE

O campo DATE armazena dados no formato Data e Hora. Pode armazenar datas Julianas de:
01º de Janeiro de 4712 AC a 31 de Dezembro de 9999 DC.

O próprio Oracle tem sua forma interna de armazenar a data. Ela é exibida, na sua forma
padrão como: DD-MM-YY.

Na hora de incluir o campo usa como padrão 00:00:00 como hora da data. A não ser
que isso seja explicitamente especificado.

TIPO DE DADO                              | FUSO HORÁRIO | SEGUNDOS FRACIONÁRIOS

DATE                                      |     NÃO      |       NÃO
TIMESTAMP                                 |     NÃO      |       SIM
TIMESTAMP WITH ZONE                       |   EXPLÍCITO  |       SIM      
TIMESTAMP WITH LOCAL TIME ZONE            |   RELATIVO   |       SIM

BLOB

Armazena dados binários não estruturados no banco de dados. BLOBs podem armazenar
até 128 terabytes de dados binários.

BFILE:

Armazena dados binários não estruturados em arquivos do sistema operacional fora do
banco de dados.

A quantidade de BFILE que podem ser armazenados é limitada pelo sistema operacional.


*/