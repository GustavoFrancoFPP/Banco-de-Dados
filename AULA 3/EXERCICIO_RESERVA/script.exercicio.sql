create database reserva;
use reserva;

create table cliente (
cod_cliente int auto_increment primary key not null,
nome_cliente varchar(100) not null,
cpf_cliente varchar(14) not null,
endereco varchar(100) not null,
celular varchar(18) not null
);

create table funcionario (
cod_funcionario int auto_increment primary key not null,
nome_funcionario varchar(100) not null,
cargo varchar(20) not null,
celular varchar(18) not null,
email varchar(60) not null
);

create table equipamento (
cod_equipamento int auto_increment primary key not null,
nome_equipamento varchar(100) not null,
descricao varchar (255) not null,
status_equipamento varchar(20) not null,
qtde int
);

create table reserva (
cod_reserva int auto_increment primary key not null,
data_reserva datetime not null,
data_inicio datetime not null,
data_fim datetime not null,
status  varchar(20) not null
);

create table categoria (
cod_categoria int auto_increment primary key not null,
nome_categoria varchar(100) not null,
descricao varchar(255) not null,
setor varchar(20) not null,
prioridade varchar(20) not null
);

create table tem (
cod_tem int auto_increment primary key not null,
cod_cliente int,
cod_funcionario int,
cod_equipamento int,
cod_reserva int,
cod_categoria int,
foreign key (cod_cliente) references cliente (cod_cliente),
foreign key (cod_funcionario) references funcionario (cod_funcionario),
foreign key (cod_equipamento) references equipamento (cod_equipamento),
foreign key (cod_reserva) references reserva (cod_reserva),
foreign key (cod_categoria) references categoria (cod_categoria)
);