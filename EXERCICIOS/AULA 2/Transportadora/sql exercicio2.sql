create database transportadora2;
use transportadora2;

create table Motorista (
Cod_Motorista int,
Nome_Motorista varchar(100),
CPF_Motorista varchar(14),
Celular_Motorista varchar(18),
Empresa_Motorista varchar(255)
);

create table Cliente (
Cod_Cliente int,
Nome_Cliente varchar(100),
Endereco_cliente varchar(100),
celular_cliente varchar(18),
CPF_CLiente varchar(14)
);

create table Veiculo (
Cod_Veiculo int,
Placa varchar(8),
Modelo varchar(50),
Ano int,
Capacidade decimal
);

create table Carga (
Cod_Carga int,
Descricao varchar(100),
Peso decimal,
Volume decimal,
Valor_Carga decimal
);

create table Entrega (
Cod_Entrega int,
Cod_Carga int,
Nome_Motorista varchar(100),
Data_Saida date,
Data_Entrega date
);