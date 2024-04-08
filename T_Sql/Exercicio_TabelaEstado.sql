--1 Selecione os estados da região Nordeste ordenados por população de forma descendente.
SELECT Nome, Populacao
FROM ESTADO
WHERE Regiao = 'Nordeste'
ORDER BY Populacao DESC

--2 Selecione os três estados mais populosos
SELECT TOP 3 *
FROM Estado
ORDER BY Populacao DESC

--3 Selecione os estados com população inferior a 1 milhão
SELECT NOME, POPULACAO 
FROM ESTADO
WHERE POPULACAO < 1000000

--4 Selecione os estados que o nome é o mesmo nome da capital 
SELECT NOME, CAPITAL
FROM ESTADO
WHERE NOME = CAPITAL

--5 Selecione os estados da região Sul ou Sudeste cuja população seja maior que 5 milhões
SELECT REGIAO, POPULACAO
FROM ESTADO
WHERE POPULACAO > 5000000
AND (REGIAO = 'SUL' OR REGIAO = 'SUDESTE')

--6 Selecione os estados cujo nome comece com a letra 'S' e a população seja inferior a 20 milhões
SELECT NOME, POPULACAO
FROM ESTADO
WHERE POPULACAO < 20000000
AND NOME LIKE 'S%'

--7 Selecione os estados cuja população seja inferior a 5 milhões e a capital comece com a letra 'B'
SELECT CAPITAL, POPULACAO
FROM ESTADO
WHERE POPULACAO < 5000000
AND CAPITAL LIKE 'B%' 

--8 Selecione os estados cuja sigla seja 'SP', 'RJ' ou 'MG' 
SELECT NOME, SIGLA
FROM ESTADO
WHERE SIGLA = 'SP' OR SIGLA = 'RJ' OR SIGLA = 'MG'

--9 Selecione os estados e as capitais onde o Detrannet está implantado
SELECT NOME, CAPITAL, DETRANNET
FROM ESTADO
WHERE DETRANNET = 1

--10 Selecione as regiões do país onde o Detrannet está implantado
SELECT REGIAO, COUNT(*) AS QUANTIDADE
FROM ESTADO
WHERE DETRANNET = 1
GROUP BY REGIAO

--11 Selecione os estados cuja capital não contenha a letra 'a'.
SELECT CAPITAL, NOME
FROM ESTADO
WHERE Capital NOT LIKE '%a%'

--12 Selecione os estados ou as capitais que contenham a palavra 'Rio'
SELECT CAPITAL, NOME
FROM ESTADO
WHERE NOME LIKE '%Rio%' 
OR CAPITAL LIKE '%Rio%'

--13 Selecione os estados em que as capitais tenha um 'c' na terceira letra
SELECT NOME, CAPITAL
FROM ESTADO
WHERE CAPITAL LIKE '__c%'

--14 Selecione os estados cujo nome comece com 'M' e a capital termine com 'E'.
SELECT NOME, CAPITAL
FROM ESTADO
WHERE NOME LIKE 'M%'
AND CAPITAL LIKE '%E'

--15 Selecione os estados com população superior a 15 milhões.
SELECT NOME, POPULACAO
FROM ESTADO
WHERE POPULACAO > 15000000

--16 Selecione os estados cuja população esteja entre 10 e 20 milhões.
SELECT NOME, POPULACAO
FROM ESTADO
WHERE POPULACAO > 10000000 
AND POPULACAO < 20000000

--17 Selecione os estados que termina com a letra 'á' (acentuado)
SELECT NOME 
FROM ESTADO
WHERE NOME LIKE '%á' COLLATE Latin1_General_CI_AS

--18 Selecione os estados cujo nome contenha a letra 'e' e a letra 'o'.
SELECT NOME 
FROM ESTADO
WHERE NOME LIKE '%e%'
AND NOME LIKE '%o%'

--19 Selecione os estados da região 'Norte' cuja capital não contenha a letra 'a'
SELECT NOME, REGIAO, CAPITAL
FROM ESTADO
WHERE REGIAO = 'Norte' 
AND CAPITAL NOT LIKE '%a%'

--20 Quantos estados tem em cada região do país
SELECT REGIAO, COUNT(*) AS [Estados por região]
FROM ESTADO
GROUP BY REGIAO

/*
	Algumas questões possuem parâmetros que podem reduzir a performance
	ou não são essenciais para realização da Query, no entanto, foi utilizado
	para melhor visualização dos dados nas questões.
*/