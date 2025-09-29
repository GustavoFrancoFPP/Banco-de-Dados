CREATE DATABASE Formativa;
USE Formativa;
SELECT DATABASE();

CREATE TABLE clientes (
    cpf VARCHAR(18) PRIMARY KEY,
    email_clientes VARCHAR(60) NOT NULL,
    telefone VARCHAR(18) NOT NULL,
    nascimento_clientes DATETIME NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);

-- Tabela de editores
CREATE TABLE editores (
    nome_editora VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) PRIMARY KEY,
    telefone VARCHAR(18) NOT NULL,
    cidade VARCHAR(100),
    contato VARCHAR(50) NOT NULL
);

-- Tabela de autores
CREATE TABLE autores (
    cod_autores INT AUTO_INCREMENT PRIMARY KEY,
    nome_autores VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(100) NOT NULL,
    nascimento DATETIME NOT NULL
);

-- Tabela de livros
CREATE TABLE livros (
    cod_livros INT AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(40) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    editora VARCHAR(100) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    quantidade INT,
    cod_autores INT,
    cnpj VARCHAR(18),
    FOREIGN KEY(cod_autores) REFERENCES autores(cod_autores),
    FOREIGN KEY(cnpj) REFERENCES editores(cnpj)
);

-- Tabela de vendas
CREATE TABLE Vendas (
    cod_venda INT AUTO_INCREMENT PRIMARY KEY,
    Quantidade INT NOT NULL,
    data_vendas DATETIME NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    cpf VARCHAR(18) NOT NULL,
    cod_livros INT,
    FOREIGN KEY(cpf) REFERENCES clientes(cpf),
    FOREIGN KEY(cod_livros) REFERENCES livros(cod_livros)
);


-- Inserir clientes
INSERT INTO clientes (cpf, email_clientes, telefone, nascimento_clientes, nome_cliente) VALUES
('123.456.789-00', 'joao.silva@email.com', '11999999999', '1990-05-12 00:00:00', 'João Silva'),
('987.654.321-00', 'maria.oliveira@email.com', '11988888888', '1985-11-23 00:00:00', 'Maria Oliveira'),
('111.222.333-44', 'carlos.santos@email.com', '11977777777', '2000-01-15 00:00:00', 'Carlos Santos'),
('555.666.777-88', 'ana.lima@email.com', '11966666666', '1995-07-30 00:00:00', 'Ana Lima'),
('999.888.777-66', 'paulo.rodrigues@email.com', '11955555555', '1988-09-10 00:00:00', 'Paulo Rodrigues');

-- Inserir editores
INSERT INTO editores (cnpj, nome_editora, endereco, telefone, cidade, contato) VALUES
('12.345.678/0001-99', 'Editora Alpha', 'Rua das Flores, 100', '1133334444', 'São Paulo', 'Contato Alpha'),
('98.765.432/0001-55', 'Editora Beta', 'Av. Central, 200', '1144445555', 'Rio de Janeiro', 'Contato Beta'),
('11.223.344/0001-66', 'Editora Gama', 'Rua Nova, 300', '1155556666', 'Belo Horizonte', 'Contato Gama'),
('22.334.455/0001-77', 'Editora Delta', 'Av. Principal, 400', '1166667777', 'Curitiba', 'Contato Delta'),
('33.445.566/0001-88', 'Editora Épsilon', 'Rua das Acácias, 500', '1177778888', 'Porto Alegre', 'Contato Épsilon');

-- Inserir autores
INSERT INTO autores (nome_autores, nacionalidade, nascimento) VALUES
('José da Silva', 'Brasileiro', '1970-03-15 00:00:00'),
('Maria Fernandes', 'Portuguesa', '1980-07-22 00:00:00'),
('Carlos Pereira', 'Brasileiro', '1990-12-05 00:00:00'),
('Ana Souza', 'Argentina', '1985-08-30 00:00:00'),
('Paulo Lima', 'Brasileiro', '1975-01-10 00:00:00');

-- Inserir livros
INSERT INTO livros (genero, titulo, autor, editora, preco, quantidade, cod_autores, cnpj) VALUES
('Ficção', 'O Mundo Perdido', 'José da Silva', 'Editora Alpha', 39.90, 10, 1, '12.345.678/0001-99'),
('Romance', 'Amor Eterno', 'Maria Fernandes', 'Editora Beta', 29.90, 5, 2, '98.765.432/0001-55'),
('História', 'Brasil Colônia', 'Carlos Pereira', 'Editora Gama', 49.90, 8, 3, '11.223.344/0001-66'),
('Aventura', 'Expedição Amazônia', 'Ana Souza', 'Editora Delta', 34.90, 12, 4, '22.334.455/0001-77'),
('Fantasia', 'Reino Encantado', 'Paulo Lima', 'Editora Épsilon', 44.90, 7, 5, '33.445.566/0001-88');
select * from livros;

-- Inserir vendas
INSERT INTO Vendas (Quantidade, data_vendas, valor_total, cpf, cod_livros) VALUES
(2, '2025-09-22 10:30:00', 79.80, '123.456.789-00', 1),
(1, '2025-09-22 11:00:00', 29.90, '987.654.321-00', 2),
(3, '2025-09-22 12:15:00', 149.70, '111.222.333-44', 3),
(1, '2025-09-22 13:45:00', 34.90, '555.666.777-88', 4),
(2, '2025-09-22 14:20:00', 89.80, '999.888.777-66', 5);

select count(*) from livros;
SELECT titulo, preco FROM livros WHERE titulo LIKE 'B%' and preco > 130;
select cod_livros, count(*) as quantidade from vendas group by cod_livros;
select count(*) as quantidade from livros;
delete from livros where cod_livros = 5;
alter table livros add column ano_publicacao DATE;

