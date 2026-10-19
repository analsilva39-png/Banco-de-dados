-- Ana Laura --
CREATE DATABASE Escola_Atividade02;

USE Escola_Atividade02;

CREATE TABLE Alunos(
id_alunos INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
idade INT,
email VARCHAR (30),
curso VARCHAR (20)
);

USE Escola_Atividade02;

CREATE TABLE Professor(
id_professor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
email VARCHAR (30),
curso VARCHAR (20)
);


USE Escola_Atividade02;

CREATE TABLE Curso(
id_curso INT AUTO_INCREMENT PRIMARY KEY,
curso VARCHAR (20),
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

USE Escola_Atividade02;

CREATE TABLE Matrícula(
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES Professor(id_professor),
id_alunos INT,
FOREIGN KEY (id_alunos) REFERENCES Alunos(id_alunos)
);

