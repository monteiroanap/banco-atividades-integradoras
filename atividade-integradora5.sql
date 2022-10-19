create database bd_integradora;
use bd_integradora;

create table cliente(
id integer, 
nome_cliente varchar(40) not null, 
sobrenome_cliente varchar(40),
endereco_cliente varchar(40),
primary key(id)
);

create table fatura(
id_fatura integer, 
data_fatura date,
forma_pgt decimal(10,0),
quantidade int,
imposto decimal(10,0),
descricao varchar(40),
valor decimal(10,0),
fk_cliente integer,
primary key(id_fatura),
foreign key(fk_cliente) references cliente(id)
);

-- foi identificado que a tabela fatura possui campos que dizem respeito a uma outra tabela, que são as informacoes dos clientes, por isso
-- foi criado uma outra tabela cliente, os campos nome_cliente, sobrenome_cliente, endereco_cliente foram removidos da tabela fatura
-- e colocado em uma outra tabela cliente, e foi feito o relacionamento entre elas atraves da chave estrangeira.


