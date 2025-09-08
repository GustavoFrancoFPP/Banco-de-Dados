create database remoterc;
use remoterc;
select database();

create table produto (
codigo int not null,
unidade char(3) not null,
descricao varchar (30) not null,
valor_unit decimal(7,2) not null,
primary key (codigo)
);

create table vendedor (
codigo int not null,
nome varchar(20) not null,
salrio decimal(7,2) not null,
fsalarial char(1) not null,
primary key(codigo));

drop table vendedor;

select * from produto;

insert into produto
values(1,'999','Headset Gamer com Led',229.99);

insert into produto
values(2,'22','Cadeira Gamer',749.99);

insert into produto
values(3,'1','Mouse Multilaser',69.99);

insert into produto (codigo, unidade, descricao, valor_unit)
values(4, '55', 'Mousepad Personalisavel', 44.99);

-- ATUALIZAÇÃO DE VALORES

update produto
set valor_unit = 300.50
where descricao = 'Cadeira Gamer';


update produto
set valor_unit = 28.00,
descricao = 'Mouse Branco'
where codigo = 3;

update produto set valor_unit = valor_unit + (valor_unit * 0.1);


select * from vendedor;

insert into vendedor (codigo,nome,salrio,fsalarial)
values(1,'Jefferson','2299.00',1);

insert into vendedor (codigo,nome,salrio,fsalarial)
values(2,'Rogério','1999.00',1);

insert into vendedor (codigo,nome,salrio,fsalarial)
values(3,'Robson','5000.00',2);

insert into vendedor (codigo,nome,salrio,fsalarial)
values(4,'Gustavo','2200.00',3);

update vendedor
set salrio = 3150.00
where fsalarial = 1;

update vendedor
set salrio = salrio + (salrio * 0.1)
where fsalarial = 2;

update vendedor
set salrio = 3500.00
where fsalarial = 3;

delete from vendedor 
where salrio < 2500.00;

delete from produto;

delete from produto where codigo = '01';

delete from vendedor where fsalarial = 2;

delete from vendedor where fsalarial>=1 and
 codigo<=2; 
 
delete from clientes;
 
 truncate table produto;