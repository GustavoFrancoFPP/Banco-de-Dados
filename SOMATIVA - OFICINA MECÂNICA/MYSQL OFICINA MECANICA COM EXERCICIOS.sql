CREATE DATABASE Mecanica;
USE Mecanica;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(18) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    cidade VARCHAR(50),
    cep VARCHAR(9) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE Veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    marca VARCHAR(30) NOT NULL,
    descricao VARCHAR(255),
    ano_fabricacao INT NOT NULL,
    placa VARCHAR(8) UNIQUE NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Mecanicos (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome_mecanico VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    carga_horaria DECIMAL(4,2) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    status ENUM('ativo', 'inativo') NOT NULL
);

CREATE TABLE Pecas (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome_peca VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    fabricante VARCHAR(50),
    qtd_estoque INT NOT NULL,
    preco_custo DECIMAL(8,2) NOT NULL,
    preco_venda DECIMAL(8,2) NOT NULL
);

CREATE TABLE Servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    tipo_servico VARCHAR(100) NOT NULL,
    preco_mao_obra DECIMAL(8,2) NOT NULL,
    tempo_estimado DECIMAL(5,2) NOT NULL,
    especialidade_requerida VARCHAR(50)
);

CREATE TABLE Ordem_Servico (
    id_ordem_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT NOT NULL,
    data_abertura DATE NOT NULL,
    data_conclusao DATE,
    status VARCHAR(50) NOT NULL,
    diagnostico_entrada TEXT,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
);

CREATE TABLE OS_Servicos (
    id_os_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_ordem_servico INT NOT NULL,
    id_servico INT NOT NULL,
    preco_cobrado DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (id_ordem_servico) REFERENCES Ordem_Servico(id_ordem_servico),
    FOREIGN KEY (id_servico) REFERENCES Servicos(id_servico)
);

CREATE TABLE OS_Pecas (
    id_os_peca INT AUTO_INCREMENT PRIMARY KEY,
    id_ordem_servico INT NOT NULL,
    id_peca INT NOT NULL,
    quantidade_usada INT NOT NULL,
    preco_unitario_cobrado DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (id_ordem_servico) REFERENCES Ordem_Servico(id_ordem_servico),
    FOREIGN KEY (id_peca) REFERENCES Pecas(id_peca)
);

CREATE TABLE OS_Mecanicos (
    id_os_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    id_ordem_servico INT NOT NULL,
    id_mecanico INT NOT NULL,
    horas_trabalhadas DECIMAL(5,2),
    FOREIGN KEY (id_ordem_servico) REFERENCES Ordem_Servico(id_ordem_servico),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanicos(id_mecanico)
);

-- Inserindo dados na tabela Clientes (SEM a coluna email)
INSERT INTO Clientes (nome_cliente, cpf, data_nascimento, telefone, rua, numero, bairro, cidade, cep, data_cadastro) VALUES
('João Silva', '123.456.789-01', '1985-03-15', '(11)99999-1111', 'Rua das Flores', 100, 'Centro', 'São Paulo', '01234-000', '2023-01-15'),
('Maria Santos', '234.567.890-12', '1990-07-22', '(11)98888-2222', 'Av. Paulista', 2000, 'Bela Vista', 'São Paulo', '01310-000', '2023-02-20'),
('Carlos Oliveira', '345.678.901-23', '1978-11-30', '(11)97777-3333', 'Rua Augusta', 500, 'Consolação', 'São Paulo', '01304-000', '2023-03-10'),
('Ana Costa', '456.789.012-34', '1982-05-18', '(11)96666-4444', 'Rua XV de Novembro', 300, 'Centro', 'São Paulo', '01013-000', '2023-04-05'),
('Pedro Almeida', '567.890.123-45', '1995-09-12', '(11)95555-5555', 'Alameda Santos', 800, 'Jardins', 'São Paulo', '01418-000', '2023-05-22'),
('Fernanda Lima', '678.901.234-56', '1988-12-03', '(11)94444-6666', 'Rua da Consolação', 1500, 'Consolação', 'São Paulo', '01301-000', '2023-06-18'),
('Ricardo Souza', '789.012.345-67', '1975-02-28', '(11)93333-7777', 'Av. Brigadeiro Faria Lima', 2500, 'Itaim Bibi', 'São Paulo', '01451-000', '2023-07-30'),
('Juliana Pereira', '890.123.456-78', '1992-08-14', '(11)92222-8888', 'Rua Haddock Lobo', 700, 'Cerqueira César', 'São Paulo', '01414-000', '2023-08-12'),
('Marcos Ferreira', '901.234.567-89', '1980-04-25', '(11)91111-9999', 'Alameda Jaú', 1200, 'Jardim Paulista', 'São Paulo', '01420-000', '2023-09-05'),
('Patrícia Rocha', '012.345.678-90', '1987-06-08', '(11)90000-0000', 'Rua Bela Cintra', 900, 'Consolação', 'São Paulo', '01415-000', '2023-10-20');
-- Inserindo dados na tabela Veiculos
INSERT INTO Veiculos (modelo, marca, descricao, ano_fabricacao, placa, id_cliente) VALUES
('Civic', 'Honda', 'Sedan LX 2.0', 2020, 'ABC1D23', 1),
('Corolla', 'Toyota', 'Altis Hybrid', 2022, 'DEF2G34', 2),
('Onix', 'Chevrolet', 'LT 1.0 Turbo', 2021, 'GHI3J45', 3),
('HB20', 'Hyundai', 'Sense 1.0', 2019, 'JKL4M56', 4),
('Argo', 'Fiat', 'Drive 1.3', 2021, 'MNO5P67', 5),
('T-Cross', 'Volkswagen', 'Highline 1.4', 2022, 'PQR6S78', 6),
('Kicks', 'Nissan', 'SV 1.6', 2020, 'STU7T89', 7),
('Compass', 'Jeep', 'Longitude 1.3', 2023, 'VWX8U90', 8),
('Renegade', 'Jeep', 'Sport 1.8', 2019, 'YZA9V01', 9),
('Tracker', 'Chevrolet', 'LTZ 1.2', 2022, 'BCD0W12', 10),
('Fiesta', 'Ford', 'SE 1.6', 2018, 'CDE1X23', 1),
('Gol', 'Volkswagen', 'Trendline 1.0', 2020, 'EFG2Y34', 2),
('Uno', 'Fiat', 'Way 1.0', 2017, 'GHI3Z45', 3);

-- Inserindo dados na tabela Mecanicos
INSERT INTO Mecanicos (nome_mecanico, cpf, especialidade, carga_horaria, salario, status) VALUES
('Roberto Alves', '111.222.333-44', 'Motor e Câmbio', 44.00, 4500.00, 'ativo'),
('Paulo Mendes', '222.333.444-55', 'Suspensão e Freios', 40.00, 3800.00, 'ativo'),
('Carlos Santos', '333.444.555-66', 'Injeção Eletrônica', 44.00, 4200.00, 'ativo'),
('Antônio Lima', '444.555.666-77', 'Elétrica Automotiva', 36.00, 3500.00, 'ativo'),
('Fernando Costa', '555.666.777-88', 'Ar Condicionado', 40.00, 3700.00, 'ativo'),
('Ricardo Oliveira', '666.777.888-99', 'Motor e Transmissão', 44.00, 4600.00, 'ativo'),
('José Silva', '777.888.999-00', 'Funilaria e Pintura', 40.00, 3900.00, 'inativo'),
('Marcos Rocha', '888.999.000-11', 'Suspensão', 44.00, 4100.00, 'ativo'),
('Luiz Pereira', '999.000.111-22', 'Elétrica e Injeção', 40.00, 4300.00, 'ativo'),
('Diego Souza', '000.111.222-33', 'Freios e Direção', 44.00, 4000.00, 'ativo');

-- Inserindo dados na tabela Pecas
INSERT INTO Pecas (nome_peca, descricao, fabricante, qtd_estoque, preco_custo, preco_venda) VALUES
('Filtro de Óleo', 'Filtro de óleo sintético', 'Bosch', 50, 18.00, 35.00),
('Pastilha de Freio', 'Pastilha freio dianteiro', 'TRW', 30, 85.00, 150.00),
('Velas de Ignição', 'Vela de ignição platina', 'NGK', 100, 25.00, 45.00),
('Correia Dentada', 'Kit correia dentada completa', 'Gates', 15, 120.00, 220.00),
('Filtro de Ar', 'Filtro de ar esportivo', 'Mann Filter', 40, 35.00, 65.00),
('Disco de Freio', 'Disco freio ventilado', 'Brembo', 20, 150.00, 280.00),
('Amortecedor', 'Amortecedor dianteiro', 'Monroe', 25, 180.00, 320.00),
('Bateria', 'Bateria 60Ah', 'Moura', 10, 250.00, 450.00),
('Sensor de Oxigênio', 'Sensor O2 universal', 'Bosch', 35, 90.00, 165.00),
('Bobina de Ignição', 'Bobina ignição digital', 'Delphi', 45, 75.00, 140.00),
('Filtro de Combustível', 'Filtro combustível alta pressão', 'Mahle', 28, 40.00, 75.00),
('Lâmpada Farol', 'Lâmpada H7 55W', 'Philips', 80, 15.00, 30.00),
('Rolamento', 'Rolamento roda dianteiro', 'SKF', 22, 65.00, 120.00),
('Óleo Motor', 'Óleo 5W30 sintético 1L', 'Petronas', 60, 25.00, 45.00),
('Fluido de Freio', 'Fluido freio DOT4 500ml', 'Castrol', 35, 12.00, 25.00),
('Radiador', 'Radiador alumínio', 'Valeo', 8, 300.00, 550.00),
('Embreagem', 'Kit embreagem completo', 'Luk', 12, 400.00, 720.00),
('Bomba de Combustível', 'Bomba combustível elétrica', 'Bosch', 18, 220.00, 390.00),
('Termostato', 'Termostato motor', 'Mahle', 30, 45.00, 85.00),
('Módulo de Ignição', 'Módulo ignição eletrônico', 'Delphi', 15, 180.00, 330.00);

-- Inserindo dados na tabela Servicos
INSERT INTO Servicos (tipo_servico, preco_mao_obra, tempo_estimado, especialidade_requerida) VALUES
('Troca de Óleo e Filtro', 80.00, 1.00, 'Motor'),
('Substituição de Pastilhas de Freio', 120.00, 2.50, 'Freios'),
('Alinhamento e Balanceamento', 100.00, 1.50, 'Suspensão'),
('Limpeza de Bicos Injetores', 150.00, 3.00, 'Injeção Eletrônica'),
('Substituição de Correia Dentada', 200.00, 4.00, 'Motor'),
('Reparo no Sistema de Ar Condicionado', 180.00, 3.50, 'Ar Condicionado'),
('Diagnóstico Eletrônico', 90.00, 1.00, 'Elétrica Automotiva'),
('Substituição de Amortecedores', 250.00, 5.00, 'Suspensão'),
('Troca de Embreagem', 350.00, 6.00, 'Motor'),
('Reparo no Sistema de Injeção', 220.00, 4.50, 'Injeção Eletrônica'),
('Substituição de Bateria', 50.00, 0.50, 'Elétrica Automotiva'),
('Limpeza do Sistema de Admissão', 130.00, 2.50, 'Motor'),
('Reparo no Sistema de Escape', 160.00, 3.00, 'Motor'),
('Substituição de Rolamentos', 140.00, 3.00, 'Suspensão'),
('Reparo no Sistema de Direção', 190.00, 3.50, 'Suspensão');

-- Inserindo dados na tabela Ordem_Servico
INSERT INTO Ordem_Servico (id_veiculo, data_abertura, data_conclusao, status, diagnostico_entrada, valor_total) VALUES
(1, '2024-01-10', '2024-01-12', 'Concluída', 'Troca de óleo e filtro periódica', 230.00),
(2, '2024-01-15', '2024-01-18', 'Concluída', 'Pastilhas de freio desgastadas', 420.00),
(3, '2024-01-20', NULL, 'Em Execução', 'Problema na injeção eletrônica', NULL),
(4, '2024-02-01', '2024-02-05', 'Concluída', 'Alinhamento e balanceamento', 200.00),
(5, '2024-02-10', NULL, 'Aguardando Peça', 'Correia dentada com ruído', NULL),
(6, '2024-02-15', '2024-02-20', 'Concluída', 'Ar condicionado não gelando', 580.00),
(7, '2024-02-25', NULL, 'Em Execução', 'Problema elétrico nos faróis', NULL),
(8, '2024-03-01', '2024-03-05', 'Concluída', 'Amortecedores com vazamento', 890.00),
(9, '2024-03-10', NULL, 'Aguardando Peça', 'Kit embreagem desgastado', NULL),
(10, '2024-03-15', '2024-03-18', 'Concluída', 'Troca de bateria', 500.00),
(11, '2024-03-20', '2024-03-22', 'Concluída', 'Limpeza de bicos injetores', 310.00),
(12, '2024-03-25', NULL, 'Em Execução', 'Problema na suspensão', NULL),
(13, '2024-04-01', '2024-04-03', 'Concluída', 'Troca de óleo e filtro', 230.00),
(1, '2024-04-05', NULL, 'Aguardando Peça', 'Pastilhas de freio desgastadas', NULL),
(2, '2024-04-10', '2024-04-12', 'Concluída', 'Alinhamento e balanceamento', 200.00);

-- Inserindo dados na tabela OS_Servicos
INSERT INTO OS_Servicos (id_ordem_servico, id_servico, preco_cobrado) VALUES
(1, 1, 80.00), (1, 2, 120.00),
(2, 2, 120.00), (2, 3, 100.00),
(3, 4, 150.00), (3, 10, 220.00),
(4, 3, 100.00), (4, 12, 130.00),
(5, 5, 200.00), (6, 6, 180.00),
(7, 7, 90.00), (7, 11, 50.00),
(8, 8, 250.00), (9, 9, 350.00),
(10, 11, 50.00), (10, 13, 160.00),
(11, 4, 150.00), (11, 12, 130.00),
(12, 8, 250.00), (12, 14, 140.00),
(13, 1, 80.00), (14, 2, 120.00),
(15, 3, 100.00);

-- Inserindo dados na tabela OS_Pecas
INSERT INTO OS_Pecas (id_ordem_servico, id_peca, quantidade_usada, preco_unitario_cobrado) VALUES
(1, 1, 1, 35.00), (1, 14, 4, 45.00),
(2, 2, 2, 150.00), (2, 15, 1, 25.00),
(3, 9, 1, 165.00), (3, 10, 2, 140.00),
(4, 5, 1, 65.00), (4, 12, 2, 30.00),
(5, 4, 1, 220.00), (6, 18, 1, 390.00),
(7, 8, 1, 450.00), (7, 12, 2, 30.00),
(8, 7, 2, 320.00), (9, 17, 1, 720.00),
(10, 8, 1, 450.00), (11, 3, 4, 45.00),
(12, 13, 2, 120.00), (13, 1, 1, 35.00),
(13, 14, 4, 45.00), (14, 2, 2, 150.00),
(15, 5, 1, 65.00);

-- Inserindo dados na tabela OS_Mecanicos
INSERT INTO OS_Mecanicos (id_ordem_servico, id_mecanico, horas_trabalhadas) VALUES
(1, 1, 1.00), (1, 2, 0.50),
(2, 2, 2.50), (2, 10, 1.00),
(3, 3, 3.00), (3, 9, 1.50),
(4, 8, 1.50), (4, 10, 1.00),
(5, 1, 4.00), (6, 5, 3.50),
(7, 4, 1.00), (7, 9, 0.50),
(8, 8, 5.00), (9, 1, 6.00),
(10, 4, 0.50), (10, 3, 1.50),
(11, 3, 2.50), (11, 9, 1.00),
(12, 8, 3.00), (12, 10, 2.00),
(13, 1, 1.00), (14, 2, 2.50),
(15, 8, 1.50);

SELECT * FROM Veiculos;

-- Lista de Exercicios SQL  

-- SELECT
-- 1.1
select * from veiculos where marca = 'Ford';

-- 1.3
select * from mecanicos where especialidade = 'Injeção Eletrônica';

-- 1.4
select * from ordem_servico where status = 'Aguardando Peça';

-- 1.5
select * from pecas where qtd_estoque < 5;

-- 1.6
select v.*
from veiculos v
where (
    select count(*)
    from ordem_servico os
    where os.id_veiculo = v.id_veiculo
) > 1;

-- desafio
select nome_peca, preco_venda from pecas where preco_custo > 200.00;


-- update 
-- 2.1
UPDATE Pecas 
SET preco_venda = preco_venda * 1.05 
WHERE fabricante = 'Bosch' AND id_peca > 0;

UPDATE Ordem_Servico 
SET status = 'Concluída' 
WHERE id_ordem_servico = 105 AND id_ordem_servico > 0;

UPDATE Ordem_Servico 
SET data_conclusao = CURDATE() 
WHERE status = 'Em Execução' 
AND data_abertura <= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
AND id_ordem_servico > 0;

UPDATE Pecas 
SET qtd_estoque = qtd_estoque * 2 
WHERE id_peca = 20 AND id_peca > 0;


-- alter table
-- 3.1
alter table clientes add column email varchar(100);

-- 3.2
alter table mecanicos modify column especialidade varchar(150);

-- 3.3
alter table ordem_servico drop column diagnostico_entrada;

-- desafio
alter table pecas add constraint chk_preco_venda
check (preco_venda >= preco_custo);



-- join
-- 4.1
select os.id_ordem_servico, c.nome_cliente, v.placa, os.data_abertura
from ordem_servico os
join veiculos v on os.id_veiculo = v.id_veiculo
join clientes c on v.id_cliente = c.id_cliente;

-- 4.2
select p.nome_peca, op.quantidade_usada
from os_pecas op
join pecas p on op.id_peca = p.id_peca
where op.id_ordem_servico = 50;

-- 4.3
select m.nome_mecanico
from os_mecanicos om
join mecanicos m on om.id_mecanico = m.id_mecanico
where om.id_ordem_servico = 75;

-- desafio
select v.placa, v.modelo, c.nome_cliente
from veiculos v
join clientes c on v.id_cliente = c.id_cliente;



-- inner join
-- 5.1
select v.placa, v.modelo
from veiculos v
inner join ordem_servico os on v.id_veiculo = os.id_veiculo
where os.status = 'Em Execução';

-- 5.2
select c.nome_cliente
from clientes c
inner join veiculos v on c.id_cliente = v.id_cliente
where v.marca = 'Volkswagen';

-- 5.3
select m.nome_mecanico
from mecanicos m
inner join os_mecanicos om on m.id_mecanico = om.id_mecanico;

-- desafio
select s.tipo_servico
from servicos s
inner join os_servicos os on s.id_servico = os.id_servico;



-- left join
-- 6.1
select c.nome_cliente, os.id_ordem_servico
from clientes c
left join veiculos v on c.id_cliente = v.id_cliente
left join ordem_servico os on v.id_veiculo = os.id_veiculo;

-- 6.2
select m.nome_mecanico, count(om.id_ordem_servico) as qtd_os
from mecanicos m
left join os_mecanicos om on m.id_mecanico = om.id_mecanico
group by m.id_mecanico, m.nome_mecanico;

-- desafio
select v.placa, v.modelo, max(os.data_abertura) as ultima_os
from veiculos v
left join ordem_servico os on v.id_veiculo = os.id_veiculo
group by v.id_veiculo, v.placa, v.modelo;



-- right join 
-- 7.1
select os.id_ordem_servico, c.nome_cliente
from clientes c
right join veiculos v on c.id_cliente = v.id_cliente
right join ordem_servico os on v.id_veiculo = os.id_veiculo;

-- 7.2
select s.tipo_servico, oss.id_ordem_servico
from os_servicos oss
right join servicos s on oss.id_servico = s.id_servico;

-- 7.3
select om.*, m.nome_mecanico
from os_mecanicos om
right join mecanicos m on om.id_mecanico = m.id_mecanico;

-- desafio
select v.*, os.id_ordem_servico
from ordem_servico os
right join veiculos v on os.id_veiculo = v.id_veiculo;



-- agregacao

-- 9.1
select count(*) as total_veiculos from veiculos;
select sum(qtd_estoque * preco_custo) as valor_inventario from pecas;
select avg(preco_mao_obra) as preco_medio_mao_obra from servicos;

-- 9.2
select marca, count(*) as quantidade
from veiculos
group by marca;

select month(data_abertura) as mes, count(*) as quantidade_os
from ordem_servico
group by month(data_abertura);

select status, count(*) as quantidade
from ordem_servico
group by status;