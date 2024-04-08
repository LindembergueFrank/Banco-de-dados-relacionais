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
	('Alagoas', 'AL', 3351543, 'Nordeste', 'Maceió', 0),
	('Amapá', 'AP', 861773, 'Norte', 'Macapá', 0),
	('Amazonas', 'AM', 4207714, 'Norte', 'Manaus', 0),
	('Bahia', 'BA', 14930634, 'Nordeste', 'Salvador', 0),
	('Ceará', 'CE', 9132078, 'Nordeste', 'Fortaleza', 0),
	('Distrito Federal', 'DF', 3055149, 'Centro-Oeste', 'Brasília', 0),
	('Espírito Santo', 'ES', 4064052, 'Sudeste', 'Vitória', 1),
	('Goiás', 'GO', 7113540, 'Centro-Oeste', 'Goiânia', 0),
	('Maranhão', 'MA', 7075181, 'Nordeste', 'São Luís', 1),
	('Mato Grosso', 'MT', 3526220, 'Centro-Oeste', 'Cuiabá', 1),
	('Mato Grosso do Sul', 'MS', 2809394, 'Centro-Oeste', 'Campo Grande', 0),
	('Minas Gerais', 'MG', 21499339, 'Sudeste', 'Belo Horizonte', 0),
	('Pará', 'PA', 8690745, 'Norte', 'Belém', 0),
	('Paraíba', 'PB', 4039277, 'Nordeste', 'João Pessoa', 0),
	('Paraná', 'PR', 11433957, 'Sul', 'Curitiba', 0),
	('Pernambuco', 'PE', 9616621, 'Nordeste', 'Recife', 0),
	('Piauí', 'PI', 3273227, 'Nordeste', 'Teresina', 0),
	('Rio de Janeiro', 'RJ', 17264943, 'Sudeste', 'Rio de Janeiro', 0),
	('Rio Grande do Norte', 'RN', 3534165, 'Nordeste', 'Natal', 1),
	('Rio Grande do Sul', 'RS', 11422973, 'Sul', 'Porto Alegre', 0),
	('Rondônia', 'RO', 1796460, 'Norte', 'Porto Velho', 1),
	('Roraima', 'RR', 631181, 'Norte', 'Boa Vista', 0),
	('Santa Catarina', 'SC', 7279632, 'Sul', 'Florianópolis', 1),
	('São Paulo', 'SP', 45919049, 'Sudeste', 'São Paulo', 0),
	('Sergipe', 'SE', 2318822, 'Nordeste', 'Aracaju', 0),
	('Tocantins', 'TO', 1590248, 'Norte', 'Palmas', 1)

--1. Selecione os estados da região Nordeste ordenados por população de forma descendente.
--2. Selecione os três estados mais populosos
--3. Selecione os estados com população inferior a 1 milhão
--4. Selecione os estados que o nome é o mesmo nome da capital 
--5. Selecione os estados da região Sul ou Sudeste cuja população seja maior que 5 milhões
--6. Selecione os estados cujo nome comece com a letra 'S' e a população seja inferior a 20 milhões
--7. Selecione os estados cuja população seja inferior a 5 milhões e a capital comece com a letra 'B'
--8. Selecione os estados cuja sigla seja 'SP', 'RJ' ou 'MG' 
--9. Selecione os estados e as capitais onde o Detrannet está implantado
--10. Selecione as regiões do país onde o Detrannet está implantado
--11. Selecione os estados cuja capital não contenha a letra 'a'.
--12. Selecione os estados ou as capitais que contenham a palavra 'Rio'
--13. Selecione os estados em que as capitais tenha um 'c' na terceira letra
--14. Selecione os estados cujo nome comece com 'M' e a capital termine com 'E'.
--15. Selecione os estados com população superior a 15 milhões.
--16. Selecione os estados cuja população esteja entre 10 e 20 milhões.
--17. Selecione os estados que termina com a letra 'á' (acentuado)
--18. Selecione os estados cujo nome contenha a letra 'e' e a letra 'o'.
--19. Selecione os estados da região 'Norte' cuja capital não contenha a letra 'a'
--20. Quantos estados tem em cada região do país




