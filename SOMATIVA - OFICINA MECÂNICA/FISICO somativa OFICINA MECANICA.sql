-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Mecanicos (
carga_horaria decimal(2,2) not null,
especialidade varchar(50) not null,
cpf varchar(14) not null,
salario decimal(5,2) not null,
id_mecanico int auto_increment primary  key PRIMARY KEY,
status status('ativo','inativo') not null,
nome_mecanico varchar(100) not null,
id_ordem_servico int auto_increment primary  key,
id_cliente int auto_increment primary  key
)

CREATE TABLE Servicos (
tipo_servico varchar(100),
id_servico int auto_increment primary  key PRIMARY KEY,
dia_inicio datetime,
preco decimal(5,2) not null,
tempo_estimado decimal(2,2) not null,
id_peca int auto_increment primary  key,
id_ordem_servico int auto_increment primary  key,
id_mecanico int auto_increment primary  key,
FOREIGN KEY(id_mecanico) REFERENCES Mecanicos (id_mecanico)
)

CREATE TABLE Pecas (
id_peca int auto_increment primary  key PRIMARY KEY,
nome_peca varchar(100) not null,
descricao varchar(255) not null,
material varchar(50) not null,
tipo_peca varchar(50) not null,
quantidade_estoque int not null,
preco_peca decimal(5,2) not null,
id_ordem_servico int auto_increment primary  key
)

CREATE TABLE OS (
valor_total decimal(5,2) not null,
status status('feito','nao feito') not null,
observacoes varchar(255) not null,
id_ordem_servico int auto_increment primary  key PRIMARY KEY
)

CREATE TABLE veiculos (
id_veiculo int auto_increment primary  key PRIMARY KEY,
modelo varchar(100) not null,
ano_fabricacao datetime,
descricao varchar(255) not null,
marca varchar(30) not null,
placa varchar(8) not null,
status status('pronto','em andamento'),
id_cliente int auto_increment primary  key,
id_ordem_servico int auto_increment primary  key,
FOREIGN KEY(id_ordem_servico) REFERENCES OS (id_ordem_servico)
)

CREATE TABLE clientes (
email varchar(100) not null,
data_cadastro datetime not null,
telefone varchar(18) not null,
bairro varchar(40) not null,
rua varchar(100) not null,
cidade varchar(50),
cep varchar(9) not null,
numero int not null,
data_nascimento datetime not null,
nome_cliente varchar(100) not null,
cpf varchar(14) not null,
id_cliente int auto_increment primary  key PRIMARY KEY
)

ALTER TABLE Mecanicos ADD FOREIGN KEY(id_ordem_servico) REFERENCES OS (id_ordem_servico)
ALTER TABLE Mecanicos ADD FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente)
ALTER TABLE Servicos ADD FOREIGN KEY(id_peca) REFERENCES Pecas (id_peca)
ALTER TABLE Servicos ADD FOREIGN KEY(id_ordem_servico) REFERENCES OS (id_ordem_servico)
ALTER TABLE Pecas ADD FOREIGN KEY(id_ordem_servico) REFERENCES OS (id_ordem_servico)
ALTER TABLE veiculos ADD FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente)
