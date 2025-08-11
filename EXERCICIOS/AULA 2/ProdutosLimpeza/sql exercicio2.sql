create database exercicio2;
use exercicio2;

create table cliente (
Cod_Cliente int,
Nome_Cliente varchar(100),
CPF_Cliente varchar(14),
Celular varchar(18),
Email varchar(255)
);

create table Estoque (
Cod_Estoque int,
Nome_Produto varchar(100),
Validade date,
Qtde int,
Local_Produto varchar(10)
);

create table Produto (
Cod_Produto int,
Nome_Produto varchar(100),
Valor_Produto decimal,
Qtde int,
Descricao_Produto varchar(255)
);

create table Funcionario (
Cod_Funcionario int,
Nome_Funcionario varchar(100),
CPF_Funcionario varchar(14),
Cargo date,
Salario decimal
);

create table Manutencao (
Cod_Manutencao int,
Tipo_Manutencao varchar(100),
Nome_Cliente varchar(100),
Valor_Manutencao decimal,
Data_Manutencao date
);