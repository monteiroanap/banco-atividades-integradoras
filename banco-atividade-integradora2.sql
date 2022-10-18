create database empresa_internet;

-- A chave primaria é a coluna id, por que ela foi anotada com a constraint primary key.
-- O cliente tem a chave estrangeira que referencia a tabela plano internet.
-- A relaçao entre elas é que um cliente tem um plano de internet contratado.
-- A chave estrangeira no cliente se refere ao id (primary key) da tabela plano internet.
-- A chave estrangeira no cliente esta anotado com a constraint foreign key referenciando a tabela plano internet.
create table cliente(
id integer, 
nome varchar(100) not null, 
sobrenome varchar(50),
data_nascimento varchar(20),
estado varchar(50),
cidade varchar(50),
fk_id_plano_internet integer,
primary key(id),
foreign key(fk_id_plano_internet) references plano_internet(id)
);

-- A chave primaria é a coluna id, por que ela foi anotada com a constraint primary key.
create table plano_internet(
id integer, 
velocidade varchar(30),
preco double default 0,
desconto double default 0,
primary key(id)
);

insert into plano_internet(id, velocidade, preco, desconto) values
(1, '300mb', 109.9, 15),
(2, '100mb', 49.9, 10),
(3, '400mb', 149.9, 15),
(4, '550mb', 199.9, 20),
(5, '600mb', 249.9, 10);

insert into cliente(id, nome, sobrenome, data_nascimento, estado, cidade, fk_id_plano_internet) values
(1, 'ana', 'paula', '02/04/1997', 'pr', 'londrina', 5),
(2, 'william', 'novaes', '17/11/1993', 'pr', 'londrina', 1),
(3, 'paty', 'ogasawara', '10/10/1985', 'pr', 'londrina', 2),
(4, 'renan', 'silva', '20/11/1996', 'pr', 'cornelio', 2),
(5, 'maria', 'clara', '07/01/2012', 'pr', 'cornelio', 1),
(6, 'iolanda', 'chaves', '15/10/1979', 'pr', 'cornelio', 4),
(7, 'ricardo', 'chaves', '23/07/1982', 'pr', 'cornelio', 1),
(8, 'yago', 'victor', '10/10/1996', 'pr', 'cambe', 1),
(9, 'maria', 'iani', '01/01/2007', 'pr', 'cornelio', 1),
(10, 'joao', 'ricardo', '30/08/1989', 'sp', 'osasco', 1);

-- consultas dos campos cliente id, cliente nome, plano internet velocidade da tabela cliente inner join com plano internet.
select c.id, c.nome, pi.velocidade from cliente c inner join plano_internet pi on pi.id = c.fk_id_plano_internet;
-- consulta todos os clientes.
select * from cliente;
-- consulta todos os planos internet.
select * from plano_internet;
-- consulta todos os clientes cujo o plano contratado é o 5.
select * from cliente where fk_id_plano_internet = 5;
-- consulta o id, nome e sobrenome de todos os clientes cujo sobrenome seja chaves.
select id, nome, sobrenome from cliente where sobrenome = 'chaves';
-- consulta da quantidade de clientes com o plano 1 contratado.
select count(id) from cliente where fk_id_plano_internet = 1 group by fk_id_plano_internet;
-- consulta todos os clientes ordenados por nome decrescente.
select * from cliente order by nome desc;
-- consulta todos os planos do mais barato ao mais caro.
select * from plano_internet order by preco asc;
-- consulta todos os dados de cliente e plano de internet quando o nome do cliente for ana.
select * from cliente c inner join plano_internet pi on pi.id = c.fk_id_plano_internet where nome = 'ana';
-- consuta todos os dados do cliente quando o id for 5.
select * from cliente where id = 5;
