-- Ana Laura --
CREATE DATABASE floricultura;

USE floricultura;

CREATE TABLE clientes (
id_clientes INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100), 
telefone INT,
endereco VARCHAR(30)
);

CREATE TABLE pedidos (
id_pedidos INT AUTO_INCREMENT PRIMARY KEY,
id_clientes INT,
FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes),
descricao VARCHAR(100)
);

CREATE TABLE produtos (
id_produtos INT AUTO_INCREMENT PRIMARY KEY,
id_pedidos INT,
FOREIGN KEY (id_pedidos) REFERENCES pedidos (id_pedidos),
valor FLOAT,
entrega VARCHAR(100),
estoque INT
);

CREATE TABLE funcionarios (
id_funcionarios INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR (100)
);

CREATE TABLE contem (
id_pedidos INT,
FOREIGN KEY (id_pedidos) REFERENCES pedidos (id_pedidos),
id_funcionarios INT,
FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
);