-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Alunos (
id_aluno int auto_increment primary key PRIMARY KEY,
data_nascimento date not null,
nome varchar(100) not null,
email varchar(100) not null
)

CREATE TABLE Cursos (
id_cursos int auto_increment primary key PRIMARY KEY,
status varchar(ativo/inativo) not null,
titulo varchar(100) not null,
carga_horaria int not null,
descricao varchar(255) not null
)

CREATE TABLE Inscrições (
id_inscricao int auto_increment primary key PRIMARY KEY,
data_inscricao date not null,
id_aluno int auto_increment primary key,
id_cursos int auto_increment primary key,
FOREIGN KEY(id_aluno) REFERENCES Alunos (id_aluno),
FOREIGN KEY(id_cursos) REFERENCES Cursos (id_cursos)
)

CREATE TABLE Avaliações (
id_avaliacao int auto_increment primary key PRIMARY KEY,
comentario varchar(255) not null,
nota decimal(2,2) not null,
id_inscricao int auto_increment primary key,
FOREIGN KEY(id_inscricao) REFERENCES Inscrições (id_inscricao)
)

