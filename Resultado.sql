/* Desafio 1 */
SELECT Nome, Ano FROM Filmes

/* Desafio 2 - o enunciado pedia apenas Nome e Ano. Porém a imagem contém também a Duracao */
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY ANO ASC

/* Desafio 3*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o futuro'

/* Desafio 4*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

/* Desafio 5*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

/* Desafio 6*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY DURACAO ASC

/* Desafio 7 - Fiz o que o enunciado pede mas o resultado é diferente da foto, na foto o que parece é estar ordernando pela quantidade*/
SELECT Ano, COUNT(Ano) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY MAX(Duracao) DESC

/* Desafio 8 - Novamente no enunciado mostrava para retornar apenas PrimeiroNome e UltimoNome porém a foto mostrava tudo */
SELECT * FROM Atores WHERE Genero = 'M'
/* Desafio 9*/
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

/* Desafio 10*/
SELECT 
  f.Nome, g.Genero
FROM 
	Filmes f
INNER JOIN Generos g On  f.Id = g.Id

/* Desafio 11*/
SELECT 
  f.Nome, g.Genero
FROM 
	Filmes f
INNER JOIN Generos g On  f.Id = g.Id WHERE g.Genero = 'Mistério'

/* Desafio 12*/
SELECT 
  f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM 
	Filmes f
INNER JOIN ElencoFilme e On  f.Id = e.Id
INNER JOIN Atores a On f.Id = a.Id
