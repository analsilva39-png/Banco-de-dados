-- Ana Laura --
CREATE DATABASE tecnologia_atividade01;

USE tecnologia_atividade01;

CREATE TABLE Departamento(
id_departamento INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (30)
);

USE tecnologia_atividade01;

CREATE TABLE Funcionario(
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (50),
cargo VARCHAR (30),
salario VARCHAR (40),
id_departamento INT,
FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

USE tecnologia_atividade01;

CREATE TABLE Projeto(
id_projeto INT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR (50),
data_inicio DATE,
data_final DATE
);

USE tecnologia_atividade01;

CREATE TABLE funcionario_e_projeto(
id_funcionario INT,
FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario),
id_projeto INT,
FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);

