-- Desfio 1 - Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano
FROM Filmes;

--Desafio 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM Filmes
ORDER BY Ano ASC;

-- Desafio 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- Desafio 4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes
WHERE Ano = 1997;

-- Desafio 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes
WHERE Ano !< 2000;

-- Desafio 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- Desafio 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT (*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- Desafio 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M'
ORDER BY Id;

-- Desafio 9 - uscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- Desafio 10 - Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- Desafio 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome,G.Genero 
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero LIKE 'Mis%'

--Desafio 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT F.Nome,A.PrimeiroNome,A.UltimoNome,EF.Papel 
FROM Filmes F
INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id