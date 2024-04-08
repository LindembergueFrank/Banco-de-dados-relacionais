/* 
	O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela 
	empresa. A solicitação é somente para livros e não há a necessidade de realizar busca em
	outras tabelas. Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar 
	esses registros, mas as buscas estão ficando complexas. Decidiu-se então criar um banco de 
	dados separado para esse funcionário.
 */

/* MODELAGEM BÁSICA */

NOME DO LIVRO	VARCHAR(50)
NOME DO AUTOR	VARCHAR(30)
SEXO DO AUTOR	CHAR(1)
NUMERO DE PAG	INT(4)
NOME DA EDIT	VARCHAR(13)
VALOR DO LIVRO	FLOAT(10,2)
UF				CHAR(2)	
ANO DE PUBLI	INT(4)

/* MODELAGEM FÍSICA */
/* CRIANDO O BANCO DE DADOS */
CREATE DATABASE LIVRARIA;

/* TABela */
CREATE TABLE LIVROS(
	LIVRO VARCHAR(50),
	AUTOR VARCHAR(30),
	SEXO CHAR (1),
	NUM_PAGINAS INT(4),
	EDITORA VARCHAR(20),
	VALOR FLOAT(10,2),
	UF CHAR(2),
	ANO_PUBLICACAO INT(4)
);
 
/* INSERINDO VALORES */
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, NUM_PAGINAS, EDITORA, VALOR, UF, ANO_PUBLICACAO) VALUES('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', '49.9', 'RJ', 2009);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, NUM_PAGINAS, EDITORA, VALOR, UF, ANO_PUBLICACAO) VALUES('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', '98', 'SP', 2018);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, NUM_PAGINAS, EDITORA, VALOR, UF, ANO_PUBLICACAO) VALUES('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', '45', 'RJ', 2008);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, NUM_PAGINAS, EDITORA, VALOR, UF, ANO_PUBLICACAO) VALUES('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', '78.99', 'RJ', 2018);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, NUM_PAGINAS, EDITORA, VALOR, UF, ANO_PUBLICACAO) VALUES('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', '150.98', 'RJ', 2019);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, NUM_PAGINAS, EDITORA, VALOR, UF, ANO_PUBLICACAO) VALUES('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', '60', 'MG', 2016);
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, NUM_PAGINAS, EDITORA, VALOR, UF, ANO_PUBLICACAO) VALUES('7 Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', '100', 'ES', 2015);

/*
	Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam 
	enviadas para o programador. As queries são as seguintes:
*/
/* 1 – Trazer todos os dados. */
SELECT * FROM LIVROS;

/* 2 – Trazer o nome do livro e o nome da editora */
SELECT LIVRO, EDITORA FROM LIVROS;

/* 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */
SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino. */
SELECT LIVRO, NUM_PAGINAS FROM LIVROS
WHERE SEXO = 'F';

/* 5 – Trazer os valores dos livros das editoras de São Paulo. */
SELECT VALOR, EDITORA FROM LIVROS
WHERE UF = 'SP';

/* 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio). */
SELECT AUTOR, EDITORA, FROM LIVROS
WHERE SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');
