create database Pizzaria;

use Pizzaria;

create table Pizza (
id_Pizza int,
Sabor_Pizza varchar(255),
Preco_Pizza varchar(255),
Ingredientes_Pizza varchar(255)
);

create table Cardapio (
id_Cardapio int,
Sabor_Cardapio varchar(255),
Preco_Cardapio varchar(255),
Ingredientes_Cardapio varchar(255)
);

create table Cliente (
id_Cliente int,
Nome_Cliente varchar(255),
Cpf_Cliente varchar(255),
Email_Cliente varchar(255),
Endereco_Cliente varchar(255),
Pagamento_Cliente varchar(255)
);

create table Adm (
id_Adm int,
Nome_Adm varchar(255),
Senha_Adm varchar(255),
Codigo_Adm varchar(255)
);

select * from Cliente;