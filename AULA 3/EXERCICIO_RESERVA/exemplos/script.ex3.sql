create database exemplo3;

use exemplo3;

create table clientes (
cod_cliente int auto_increment primary key not null,
nome_cliente varchar(100) not null,
cpf_cliente varchar(14) not null,
endereco varchar(100) not null,
estado char(2) default 'SP',
celular varchar(18) not null
);

create table produtos (
cod_produto int auto_increment primary key not null,
nome_produto varchar(100) not null,
qtde int,
valor decimal(5,2) not null,
descricao varchar(255) not null
);

create table if not exists fornecedores (
cod_fornecedor int auto_increment not null,
nome_fornecedor varchar(100) not null,
cnpj varchar (18) not null,
celular  varchar(18) not null,
endereco varchar(100) not null,
primary key (cod_fornecedor)
);

create table tem (
cod_tem int auto_increment primary key not null,
cod_fornecedor int,
cod_produto int,
foreign key (cod_produto) references produtos (cod_produto),
foreign key (cod_fornecedor) references fornecedores (cod_fornecedor)
);

-- consulta de tabelas
select * from clientes;
select * from produtos;
select * from fornecedores;
select * from tem;

-- remocao de tabelas
drop table clientes;
-- remocao de banco de dados
drop database exemplo3;

-- alteraçao de campos 
alter table clientes
add sexo char(1);

alter table clientes
drop column sexo;

alter table clientes
rename to pessoa_fisica;

alter table pessoa_fisica
change cpf_cliente cpfp varchar(18);

alter table pessoa_fisica
modify column nome_cliente varchar(150);

alter table pessoa_fisica
modify column estado char(2) default 'MG';

alter table pessoa_fisica
add cidade varchar(50) default 'Limeira';

alter table produtos
modify column valor decimal(7,2) not null;

alter table fornecedores
add cidade varchar(50) default 'Limeira';
alter table fornecedores
add estado char(2) default 'SP';




