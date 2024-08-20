/*1- Buscar o nome e ano dos filmes */
SELECT Nome, Ano FROM Filmes




/*2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT Nome, Ano FROM Filmes
ORDER BY Ano




/*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'



/* 4 - Buscar os filmes lançados em 1997 */
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997



/* 5 - Buscar os filmes lançados APÓS o ano 2000 */
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano >= 2000



/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao



/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
SELECT Ano, COUNT(Ano) Duracao
FROM Filmes GROUP BY Ano ORDER BY Duracao DESC



/* 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT PrimeiroNome, UltimoNome
FROM Atores WHERE Genero = 'M'




/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */
SELECT PrimeiroNome, UltimoNome
FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome




/* 10 - Buscar o nome do filme e o gênero */
SELECT
    f.nome AS nome_filme,
    g.Genero AS nome_genero
FROM
    FilmesGenero fg
JOIN
    Filmes f ON fg.IdFilme= f.id
JOIN
    Generos g ON fg.IdGenero= g.id



/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" */
SELECT
    f.Nome,
    g.Genero 
FROM
    FilmesGenero fg
JOIN
    Filmes f ON fg.IdFilme= f.id
JOIN
    Generos g ON fg.IdGenero= g.id
WHERE
	g.Genero = 'Mistério'



/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT
    f.nome AS nomeFilme,
    a.PrimeiroNome,
	a.UltimoNome,
	el.Papel
FROM
    ElencoFilme AS el
JOIN
	 Filmes f ON el.IdFilme = f.id
JOIN
	Atores a ON el.IdAtor = a.id
