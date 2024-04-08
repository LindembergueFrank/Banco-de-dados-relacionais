--1 Selecione os estados da regi�o Nordeste ordenados por popula��o de forma descendente.
SELECT Nome, Populacao
FROM ESTADO
WHERE Regiao = 'Nordeste'
ORDER BY Populacao DESC

--2 Selecione os tr�s estados mais populosos
SELECT TOP 3 *
FROM Estado
ORDER BY Populacao DESC

--3 Selecione os estados com popula��o inferior a 1 milh�o
SELECT NOME, POPULACAO 
FROM ESTADO
WHERE POPULACAO < 1000000

--4 Selecione os estados que o nome � o mesmo nome da capital 
SELECT NOME, CAPITAL
FROM ESTADO
WHERE NOME = CAPITAL

--5 Selecione os estados da regi�o Sul ou Sudeste cuja popula��o seja maior que 5 milh�es
SELECT REGIAO, POPULACAO
FROM ESTADO
WHERE POPULACAO > 5000000
AND (REGIAO = 'SUL' OR REGIAO = 'SUDESTE')

--6 Selecione os estados cujo nome comece com a letra 'S' e a popula��o seja inferior a 20 milh�es
SELECT NOME, POPULACAO
FROM ESTADO
WHERE POPULACAO < 20000000
AND NOME LIKE 'S%'

--7 Selecione os estados cuja popula��o seja inferior a 5 milh�es e a capital comece com a letra 'B'
SELECT CAPITAL, POPULACAO
FROM ESTADO
WHERE POPULACAO < 5000000
AND CAPITAL LIKE 'B%' 

--8 Selecione os estados cuja sigla seja 'SP', 'RJ' ou 'MG' 
SELECT NOME, SIGLA
FROM ESTADO
WHERE SIGLA = 'SP' OR SIGLA = 'RJ' OR SIGLA = 'MG'

--9 Selecione os estados e as capitais onde o Detrannet est� implantado
SELECT NOME, CAPITAL, DETRANNET
FROM ESTADO
WHERE DETRANNET = 1

--10 Selecione as regi�es do pa�s onde o Detrannet est� implantado
SELECT REGIAO, COUNT(*) AS QUANTIDADE
FROM ESTADO
WHERE DETRANNET = 1
GROUP BY REGIAO

--11 Selecione os estados cuja capital n�o contenha a letra 'a'.
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

--15 Selecione os estados com popula��o superior a 15 milh�es.
SELECT NOME, POPULACAO
FROM ESTADO
WHERE POPULACAO > 15000000

--16 Selecione os estados cuja popula��o esteja entre 10 e 20 milh�es.
SELECT NOME, POPULACAO
FROM ESTADO
WHERE POPULACAO > 10000000 
AND POPULACAO < 20000000

--17 Selecione os estados que termina com a letra '�' (acentuado)
SELECT NOME 
FROM ESTADO
WHERE NOME LIKE '%�' COLLATE Latin1_General_CI_AS

--18 Selecione os estados cujo nome contenha a letra 'e' e a letra 'o'.
SELECT NOME 
FROM ESTADO
WHERE NOME LIKE '%e%'
AND NOME LIKE '%o%'

--19 Selecione os estados da regi�o 'Norte' cuja capital n�o contenha a letra 'a'
SELECT NOME, REGIAO, CAPITAL
FROM ESTADO
WHERE REGIAO = 'Norte' 
AND CAPITAL NOT LIKE '%a%'

--20 Quantos estados tem em cada regi�o do pa�s
SELECT REGIAO, COUNT(*) AS [Estados por regi�o]
FROM ESTADO
GROUP BY REGIAO

/*
	Algumas quest�es possuem par�metros que podem reduzir a performance
	ou n�o s�o essenciais para realiza��o da Query, no entanto, foi utilizado
	para melhor visualiza��o dos dados nas quest�es.
*/