create database Somativa;
use Somativa;

create table alunos (
  id_aluno int primary key auto_increment,
  nome varchar(100),
  email varchar(100) not null,
  data_nascimento date
);

create table cursos (
  id_curso int primary key auto_increment,
  titulo varchar(50),
  descricao varchar(255),
  carga_horaria int,
  status_curso char(10) not null default 'Ativo'
);

create table inscricoes (
  id_inscricao int primary key auto_increment,
  data_inscricao date,
  id_aluno int,
  id_curso int,
  foreign key (id_aluno) references alunos(id_aluno),
  foreign key (id_curso) references cursos(id_curso)
);

create table avaliacoes (
  id_avaliacao int primary key auto_increment,
  id_inscricao int,
  nota decimal(4,2),
  comentario varchar(255),
  foreign key (id_inscricao) references inscricoes(id_inscricao)
);

insert into alunos (nome, email, data_nascimento) values
('Joao Silva', 'joao@email.com', '1998-05-10'),
('Maria Oliveira', 'maria@email.com', '1992-11-20'),
('Carlos Santos S', 'carlinhospvp@email.com', '2001-01-15'),
('Ana Lima', 'ana@email.com', '1996-07-30'),
('Paulo Rodrigues', 'paulo@email.com', '1989-09-10');

insert into cursos (titulo, descricao, carga_horaria, status_curso) values
('Banco de Dados', 'Curso de SQL e modelagem relacional', 40, 'Ativo'),
('Programacao em Python', 'Curso basico de Python', 35, 'Ativo'),
('Desenvolvimento Web', 'Html, css e javascript', 25, 'Ativo'),
('Redes de Computadores', 'Fundamentos de redes', 50, 'Inativo'),
('Seguranca da Informacao', 'Boas praticas de seguranca digital', 30, 'Ativo');

insert into inscricoes (id_aluno, id_curso, data_inscricao) values
(1, 1, '2025-09-20'),
(2, 2, '2025-09-21'),
(3, 3, '2025-09-22'),
(4, 4, '2025-09-22'),
(5, 5, '2025-09-23');

insert into avaliacoes (id_inscricao, nota, comentario) values
(1, 9.5, 'Excelente curso!'),
(2, 8.0, 'Muito bom, mas poderia ter mais exemplos'),
(3, 9.8, 'Otimo conteudo!');

update alunos set email = 'Carlosnovo@email.com' where id_aluno = 3;
update cursos set carga_horaria = 600 where id_curso = 2;
update alunos set nome = 'Carlos Santos Silva' where id_aluno = 3;
update cursos set status_curso = 'Inativo' where id_curso = 4;
update avaliacoes set nota = 10.0 where id_avaliacao = 2;

delete from inscricoes where id_inscricao = 5;
delete from cursos where id_curso = 3;
delete from avaliacoes where id_avaliacao = 2;
delete from alunos where id_aluno = 5;
delete from inscricoes where id_curso = 4;

select * from alunos;
select nome, email from alunos;
select * from cursos where carga_horaria > 30;
select * from cursos where status_curso = 'Inativo';
select * from alunos where data_nascimento > 1995;
select * from avaliacoes where nota > 9;
select count(*) as titulo from cursos;
select * from cursos order by carga_horaria desc limit 3;

-- Desafio
create index idx_email on alunos(email);
-- --------
drop database Somativa;