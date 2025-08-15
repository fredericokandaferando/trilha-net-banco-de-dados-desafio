-- Exercício 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- Exercício 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- Exercício 3 - Buscar pelo filme "De volta para o futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro';

-- Exercício 4 - Buscar os filmes lançados em 1997
SELECT *
FROM Filmes
WHERE Ano = 1997;

-- Exercício 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT *
FROM Filmes
WHERE Ano > 2000;

-- Exercício 6 - Buscar os filmes com duração > 100 e < 150, ordenando pela duração em ordem crescente
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- Exercício 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- Exercício 8 - Buscar os Atores do gênero masculino, retornando PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- Exercício 9 - Buscar os Atores do gênero feminino, retornando PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- Exercício 10 - Buscar o nome do filme e o gênero
SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN Generos g ON f.IdGenero = g.Id;

-- Exercício 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN Generos g ON f.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- Exercício 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, fa.Papel
FROM Filmes f
JOIN FilmeAtores fa ON f.Id = fa.IdFilme
JOIN Atores a ON fa.IdAtor = a.Id;
