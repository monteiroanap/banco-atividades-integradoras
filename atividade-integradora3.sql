
use movies_db;

-- Mostrar todos os registros da tabela de filmes 
select * from movies;

-- Mostrar o título e a classificação de todos os filmes cujo título é Toy Story.
select title from movies where title like '%toy Story%';

-- Mostrar todos os atores cujos nomes começam com Sam.
select first_name, last_name from actors where first_name like "sam%";

-- Mostrar o nome, sobrenome e classificação de todos os atores.
select first_name,last_name, rating from actors;

-- Mostrar o título de todas as séries e use alias para que tanto o nome da tabela quanto o campo estejam em Português.
select title as titulo from movies filmes;

-- Mostrar o nome e sobrenome dos atores cuja classificação é superior a 7,5.
select first_name, last_name from actors where rating > 7.5;

-- Mostrar o título dos filmes e a classificação ordenados por classificação em ordem crescente.
select title, rating from movies order by rating asc;

-- Mostrar os títulos dos três primeiros filmes no banco de dados.
select title from movies limit 3;

-- Mostrar os 5 melhores filmes com a classificação mais alta.
select * from movies order by rating desc limit 5;

-- Listar os 10 primeiros atores.
select * from actors limit 10;

-- Mostrar o título dos filmes que saíram entre 2004 e 2008.
select title from movies where Year(release_date) between '2004' and '2008' ;













