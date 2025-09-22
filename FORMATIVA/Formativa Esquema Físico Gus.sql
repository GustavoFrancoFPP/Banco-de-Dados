-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE clientes (
cpf int PRIMARY KEY PRIMARY KEY,
email_clientes varchar(60) not null,
telefone varchar(18) not null,
nascimento_clientes datetime not null,
nome_cliente varchar(100) not null
)

CREATE TABLE autores (
nacionalidade varchar(100) not null,
cod_autores int auto_increment PRIMARY KEY PRIMARY KEY,
nome_autores varchar(100) not null,
data datetime not null,
nascimento datetime not null,
autor varchar(100) not null
)

CREATE TABLE livros (
cod_livros int auto_increment PRIMARY KEY PRIMARY KEY,
genero varchar(40) not null,
titulo varchar(50) not null,
autor varchar(100) not null,
editora varchar(100),
preco decimal(5,2) not null ,
quantidade int,
cod_autores int auto_increment PRIMARY KEY,
cnpj int auto_increment PRIMARY KEY,
FOREIGN KEY(cod_autores) REFERENCES autores (cod_autores)
FOREIGN KEY (cnpj) REFERENCES editoras(cnpj)
)

CREATE TABLE editores (
nome_editora varchar(100) not null,
endereco varchar(100) not null,
cnpj int PRIMARY KEY PRIMARY KEY,
telefone varchar(18) not null,
cidade varchar(100),
contato varchar(50) not null
)

CREATE TABLE Vendas (
Quantidade int not null,
cod_venda int auto_increment PRIMARY KEY PRIMARY KEY,
data_vendas datetime not null,
valor_total decimal(10,2) not null,
cpf int auto_increment PRIMARY KEY,
cod_livros int auto_increment PRIMARY KEY,
FOREIGN KEY(cpf) REFERENCES clientes (cpf),
FOREIGN KEY (cod_livro) REFERENCES livros(cod_livro)
)