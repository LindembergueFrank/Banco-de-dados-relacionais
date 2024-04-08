CREATE TABLE Estado (
	idEstado INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(50),
	Sigla CHAR(2),
	Populacao INT,
	Regiao VARCHAR(50),
	Capital VARCHAR(50),
	Detrannet BIT
)

-- Inserir registros para todos os 27 estados do Brasil.
INSERT INTO Estado (Nome, Sigla, Populacao, Regiao, Capital, Detrannet)
VALUES
	('Acre', 'AC', 894470, 'Norte', 'Rio Branco', 0),
	('Alagoas', 'AL', 3351543, 'Nordeste', 'Macei�', 0),
	('Amap�', 'AP', 861773, 'Norte', 'Macap�', 0),
	('Amazonas', 'AM', 4207714, 'Norte', 'Manaus', 0),
	('Bahia', 'BA', 14930634, 'Nordeste', 'Salvador', 0),
	('Cear�', 'CE', 9132078, 'Nordeste', 'Fortaleza', 0),
	('Distrito Federal', 'DF', 3055149, 'Centro-Oeste', 'Bras�lia', 0),
	('Esp�rito Santo', 'ES', 4064052, 'Sudeste', 'Vit�ria', 1),
	('Goi�s', 'GO', 7113540, 'Centro-Oeste', 'Goi�nia', 0),
	('Maranh�o', 'MA', 7075181, 'Nordeste', 'S�o Lu�s', 1),
	('Mato Grosso', 'MT', 3526220, 'Centro-Oeste', 'Cuiab�', 1),
	('Mato Grosso do Sul', 'MS', 2809394, 'Centro-Oeste', 'Campo Grande', 0),
	('Minas Gerais', 'MG', 21499339, 'Sudeste', 'Belo Horizonte', 0),
	('Par�', 'PA', 8690745, 'Norte', 'Bel�m', 0),
	('Para�ba', 'PB', 4039277, 'Nordeste', 'Jo�o Pessoa', 0),
	('Paran�', 'PR', 11433957, 'Sul', 'Curitiba', 0),
	('Pernambuco', 'PE', 9616621, 'Nordeste', 'Recife', 0),
	('Piau�', 'PI', 3273227, 'Nordeste', 'Teresina', 0),
	('Rio de Janeiro', 'RJ', 17264943, 'Sudeste', 'Rio de Janeiro', 0),
	('Rio Grande do Norte', 'RN', 3534165, 'Nordeste', 'Natal', 1),
	('Rio Grande do Sul', 'RS', 11422973, 'Sul', 'Porto Alegre', 0),
	('Rond�nia', 'RO', 1796460, 'Norte', 'Porto Velho', 1),
	('Roraima', 'RR', 631181, 'Norte', 'Boa Vista', 0),
	('Santa Catarina', 'SC', 7279632, 'Sul', 'Florian�polis', 1),
	('S�o Paulo', 'SP', 45919049, 'Sudeste', 'S�o Paulo', 0),
	('Sergipe', 'SE', 2318822, 'Nordeste', 'Aracaju', 0),
	('Tocantins', 'TO', 1590248, 'Norte', 'Palmas', 1)

--1. Selecione os estados da regi�o Nordeste ordenados por popula��o de forma descendente.
--2. Selecione os tr�s estados mais populosos
--3. Selecione os estados com popula��o inferior a 1 milh�o
--4. Selecione os estados que o nome � o mesmo nome da capital 
--5. Selecione os estados da regi�o Sul ou Sudeste cuja popula��o seja maior que 5 milh�es
--6. Selecione os estados cujo nome comece com a letra 'S' e a popula��o seja inferior a 20 milh�es
--7. Selecione os estados cuja popula��o seja inferior a 5 milh�es e a capital comece com a letra 'B'
--8. Selecione os estados cuja sigla seja 'SP', 'RJ' ou 'MG' 
--9. Selecione os estados e as capitais onde o Detrannet est� implantado
--10. Selecione as regi�es do pa�s onde o Detrannet est� implantado
--11. Selecione os estados cuja capital n�o contenha a letra 'a'.
--12. Selecione os estados ou as capitais que contenham a palavra 'Rio'
--13. Selecione os estados em que as capitais tenha um 'c' na terceira letra
--14. Selecione os estados cujo nome comece com 'M' e a capital termine com 'E'.
--15. Selecione os estados com popula��o superior a 15 milh�es.
--16. Selecione os estados cuja popula��o esteja entre 10 e 20 milh�es.
--17. Selecione os estados que termina com a letra '�' (acentuado)
--18. Selecione os estados cujo nome contenha a letra 'e' e a letra 'o'.
--19. Selecione os estados da regi�o 'Norte' cuja capital n�o contenha a letra 'a'
--20. Quantos estados tem em cada regi�o do pa�s




