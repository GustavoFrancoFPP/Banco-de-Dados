-- 1. Criar Banco de dados

create database biblioteca;
use biblioteca;
select database();

create table funcionarios (
codfuncionario int auto_increment primary key,
nomecfuncionario varchar(100) not null,
cpffuncionario varchar(14) not null,
email varchar(100) not null,
celular varchar(18) not null
);

create table livros (
codlivro int auto_increment primary key,
nomelivro varchar(100) not null,
autorlivro varchar(100) not null,
descricao varchar(255) not null,
editora varchar(30) not null,
Status VARCHAR(20) DEFAULT 'Disponível');

-- 2. Alterar tabelas
alter table funcionarios 
ADD COLUMN salario VARCHAR(20),
add column Status VARCHAR(20) DEFAULT 'Trabalhando';

alter table livros
add column preco decimal(7,2) not null,
add column ano_lanca int not null;

-- 3. Inserir dados
insert into funcionarios
values('Fernanda','480.685.685-60','fernandasilva12@gmail.com','19 99957-4858',2248.50);

insert into funcionarios
values('Caio','493.385.395.38','caio@hotmail.com','19 49684-3885',2453.66);

INSERT INTO livros (nomelivro, autorlivro, descricao, editora, preco, ano_lanca)
VALUES 
('O Senhor dos Anéis: A Sociedade do Anel', 
 'J.R.R. Tolkien', 
 'Primeiro livro da trilogia O Senhor dos Anéis, acompanhando Frodo em sua jornada para destruir o Um Anel.', 
 'Martins Fontes', 
 59.90, 
 1954);

INSERT INTO livros (nomelivro, autorlivro, descricao, editora, preco, ano_lanca)
VALUES 
('Dom Casmurro', 
 'Machado de Assis', 
 'Romance clássico da literatura brasileira que aborda o ciúme de Bentinho e sua relação com Capitu.', 
 'Editora Garnier', 
 29.90, 
 1899);
 
 
 -- 4. Excluir dados
 delete from livros;
 delete from funcionarios;
 truncate table livros;
 truncate table funcionarios;
 delete from livros;
 
DELETE FROM livros
WHERE codlivro = 2;

DELETE FROM livros
WHERE nomelivro = 'Machado de Assis';

DELETE FROM livros
WHERE ano_lanca < 1900;

select * from livros;
select * from funcionarios;
 


