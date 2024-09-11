-- Consulta 1
SELECT 
	Nome, 
	Ano 
FROM Filmes

-- Consulta 2
/*
SELECT 
	Nome, 
	Ano 
FROM Filmes 
ORDER BY Ano
*/

-- Consulta 3
/*
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'
*/

-- Consulta 4
/*
SELECT * 
FROM Filmes 
WHERE Ano = 1997
*/

-- Consulta 5
/*
SELECT * 
FROM Filmes 
WHERE Ano > 2000
*/

-- Consulta 6
/*
SELECT * 
FROM Filmes 
WHERE Duracao > 100 
	AND Duracao < 150 
ORDER BY Duracao
/*

-- Consulta 7
/* 
SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC
*/

-- Consulta 8
/*
SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM Atores 
WHERE Genero = 'M'
*/

-- Consulta 9
/*
SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome
*/

-- Consulta 10
/*
SELECT 
	filme.Nome, 
	genero.Genero
FROM Filmes filme
INNER JOIN FilmesGenero filme_genero
	ON filme.Id = filme_genero.IdFilme 
INNER JOIN Generos genero
	ON filme_genero.IdGenero = filme_genero.Id
*/

-- Consulta 11
/*
SELECT 
	filme.Nome, 
	genero.Genero
FROM Filmes filme
INNER JOIN FilmesGenero filme_genero
	ON filme.Id = filme_genero.IdFilme 
INNER JOIN Generos genero
	ON filme_genero.IdGenero = genero.Id
WHERE genero.Genero = 'Mistério'
*/

-- Consulta 12
/*
SELECT 
	filme.Nome, 
	ator.PrimeiroNome, 
	ator.UltimoNome, 
	elenco_filme.Papel
FROM Filmes filme
INNER JOIN ElencoFilme elenco_filme
	ON filme.Id = elenco_filme.IdFilme
INNER JOIN Atores ator
	ON ator.Id = elenco_filme.IdAtor
*/