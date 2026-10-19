-- Ana Laura --
CREATE DATABASE loja_virtual;

USE loja_virtual;

CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
email VARCHAR (100),
telefone VARCHAR (15),
data_cadastro DATE
);
ALTER TABLE clientes ADD cpf VARCHAR(14);
ALTER TABLE clientes MODIFY telefone VARCHAR(20);
ALTER TABLE clientes RENAME TO consumidores;
DROP TABLE consumidores;

CREATE INDEX idx_nome_cliente 
ON clientes (nome);

DROP INDEX idx_nome_cliente
ON clientes;

DROP DATABASE loja_virtual
