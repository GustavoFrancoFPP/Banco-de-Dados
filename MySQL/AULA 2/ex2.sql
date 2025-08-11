-- criar banco de dados
create database exemplo2;
-- ativar o banco de dados
use exemplo2;

create table clientes (
Cod_Cliente int,
Nome_Cliente varchar(100),
CPF_Cliente varchar(14),
Celular varchar(18),
Endereco varchar(255)
);

create table Estoque (
Cod_Estoque int,
Nome_Produto varchar(100),
Validade date,
Qtde int,
Posicao varchar(10)
);

create table Produto (
Cod_Produto int,
Nome_Produto varchar(100),
Valor decimal,
Qtde int,
Descricao varchar(255)
);

create table Funcionario (
Cod_Funcionario int,
Nome_Funcionario varchar(100),
CPF_Funcionario varchar(14),
Data_Nascimento date,
Salario decimal
);

-- Apagar tabela e banco de dados
drop table Cliente;
drop database exemplo2;

-- Consulta de tabelas
select * from clientes;
select * from Estoque;
select * from Produto;
select * from Funcionario;