/*	SELEÇÃO, PROJEÇÃO E JUNÇÃO
	PROJEÇÃO -> É TUDO QUE QUEREMOS VISUALIZAR NA TELA	*/
SELECT * FROM ENDERECO;

/*	SELEÇÃO -> SELECIONAR UM SUBCONJUNTO DE UM CONJUNTO TOTAL, CLÁSULA DE SELEÇÃO WHERE (FILTRAR)
	PRIMEIRO PROJETAMOS */
SELECT NOME, SEXO 
FROM CLIENTE
-- DEPOIS SELECIONAMOS (FILTRAMOS)
WHERE SEXO = 'F';

/*	JUNÇÃO -> JOIN
	EX: NOME, SEXO, BAIRRO, CIDADE	
	AQUI TEMOS UMA QUERY COMPLETA
*/
SELECT NOME, SEXO, BAIRRO, CIDADE -- PROJEÇÃO
FROM ID_CLIENTE					  -- ORIGEM	
INNER JOIN ENDERECO				  -- JUNÇÃO
ON IDCLIENTE = ID_CLIENTE;		  -- SELEÇÃO	

-- RETORNO DA TABELA
+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | M    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+

-- FILTRANDO POR SEXO FEMININO
SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F';

-- RETORNO DA TABELA
+-------+------+---------+--------------+
| NOME  | SEXO | BAIRRO  | CIDADE       |
+-------+------+---------+--------------+
| ANA   | F    | JARDINS | SAO PAULO    |
| CLARA | F    | CENTRO  | B. HORIZONTE |
+-------+------+---------+--------------+

-- NOME, CPF, TIPO (TELEFONE), SEXO, TIPO
SELECT NOME, CPF, TIPO, SEXO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE
WHERE TIPO = 'CEL';

-- RETORNO DA TABELA
+--------+----------------+------+------+
| NOME   | CPF            | TIPO | SEXO |
+--------+----------------+------+------+
| JORGE  | JORGE@IG.COM   | CEL  | M    |
| JOAO   | JOAO@IG.COM    | CEL  | M    |
| ANA    | ANA@IG.COM     | CEL  | F    |
| ANA    | ANA@IG.COM     | CEL  | F    |
| CARLOS | CARLOSA@IG.COM | CEL  | M    |
+--------+----------------+------+------+
