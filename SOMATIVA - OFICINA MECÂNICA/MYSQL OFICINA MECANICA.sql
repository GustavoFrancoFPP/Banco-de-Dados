CREATE DATABASE Mecanica;
USE Mecanica;


CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(18) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    cidade VARCHAR(50),
    cep VARCHAR(9) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE OS (
    id_ordem_servico INT AUTO_INCREMENT PRIMARY KEY,
    valor_total DECIMAL(8,2) NOT NULL,
    status ENUM('feito', 'nao feito') NOT NULL,
    observacoes VARCHAR(255)
);

CREATE TABLE Mecanicos (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome_mecanico VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    carga_horaria DECIMAL(4,2) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    status ENUM('ativo', 'inativo') NOT NULL,
    id_cliente INT,
    id_ordem_servico INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_ordem_servico) REFERENCES OS(id_ordem_servico)
);

CREATE TABLE Pecas (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome_peca VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    material VARCHAR(50) NOT NULL,
    tipo_peca VARCHAR(50) NOT NULL,
    quantidade_estoque INT NOT NULL,
    preco_peca DECIMAL(8,2) NOT NULL,
    id_ordem_servico INT,
    FOREIGN KEY (id_ordem_servico) REFERENCES OS(id_ordem_servico)
);

CREATE TABLE Servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    tipo_servico VARCHAR(100) NOT NULL,
    dia_inicio DATE,
    preco DECIMAL(8,2) NOT NULL,
    tempo_estimado DECIMAL(5,2) NOT NULL,
    id_peca INT,
    id_ordem_servico INT,
    id_mecanico INT,
    FOREIGN KEY (id_peca) REFERENCES Pecas(id_peca),
    FOREIGN KEY (id_ordem_servico) REFERENCES OS(id_ordem_servico),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanicos(id_mecanico)
);

CREATE TABLE Veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    marca VARCHAR(30) NOT NULL,
    descricao VARCHAR(255),
    ano_fabricacao INT NOT NULL,
    placa VARCHAR(8) NOT NULL,
    status ENUM('pronto', 'em andamento'),
    id_cliente INT,
    id_ordem_servico INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_ordem_servico) REFERENCES OS(id_ordem_servico)
);

INSERT INTO Clientes (nome_cliente, cpf, data_nascimento, email, telefone, rua, numero, bairro, cidade, cep, data_cadastro)
VALUES
('Carlos Silva', '123.456.789-00', '1988-05-10', 'carlos@gmail.com', '(19)99999-1111', 'Rua A', 120, 'Centro', 'Limeira', '13480-000', '2033-08-15'),
('Ana Souza', '987.654.321-00', '1992-08-15', 'ana@gmail.com', '(19)98888-2222', 'Rua B', 45, 'Jardim das Flores', 'Limeira', '13481-200', '2033-07-25');

SELECT * FROM Clientes;

INSERT INTO OS (valor_total, status, observacoes)
VALUES
(500.00, 'feito', 'Troca de óleo e revisão geral'),
(1200.00, 'nao feito', 'Aguardando peça do motor');

SELECT * FROM OS;

INSERT INTO Mecanicos (nome_mecanico, cpf, especialidade, carga_horaria, salario, status, id_cliente, id_ordem_servico)
VALUES
('João Pereira', '321.654.987-00', 'Motor e Suspensão', 44.00, 3500.00, 'ativo', 1, 1),
('Marcos Lima', '741.852.963-00', 'Elétrica Automotiva', 40.00, 3300.00, 'ativo', 2, 2);

SELECT * FROM Mecanicos;

INSERT INTO Pecas (nome_peca, descricao, material, tipo_peca, quantidade_estoque, preco_peca, id_ordem_servico)
VALUES
('Filtro de Óleo', 'Filtro para motor 1.6', 'Metal', 'Motor', 25, 45.90, 1),
('Pastilha de Freio', 'Pastilha dianteira', 'Cerâmica', 'Freio', 15, 120.00, 2);

SELECT * FROM Pecas;

INSERT INTO Servicos (tipo_servico, dia_inicio, preco, tempo_estimado, id_peca, id_ordem_servico, id_mecanico)
VALUES
('Troca de Óleo', '2026-12-29', 200.00, 2.00, 1, 1, 1),
('Substituição de Pastilhas', '2015-08-17', 400.00, 3.50, 2, 2, 2);

SELECT * FROM Servicos;

INSERT INTO Veiculos (modelo, marca, descricao, ano_fabricacao, placa, status, id_cliente, id_ordem_servico)
VALUES
('Civic', 'Honda', 'Revisão completa', 2018, 'ABC1D23', 'pronto', 1, 1),
('Onix', 'Chevrolet', 'Troca de embreagem', 2020, 'XYZ9E87', 'em andamento', 2, 2);

SELECT * FROM Veiculos;
