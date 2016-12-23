CREATE DATABASE agendaeletronica;
USE agendaeletronica;

CREATE TABLE Paciente (
	cpf VARCHAR(15),
	nome VARCHAR(40),
	telefone VARCHAR(20),
	PRIMARY KEY(cpf));

CREATE TABLE Doutor (
	cro VARCHAR(15),
	nome VARCHAR(40),
	telefone VARCHAR(20),
	PRIMARY KEY(cro));

CREATE TABLE Consulta (
	cod INT,
	cpf VARCHAR(15),
	cro VARCHAR(15),
	data DATE,
	hora INT,
	minuto INT,
	comentario VARCHAR(40),
	PRIMARY KEY(cod),
	FOREIGN KEY(cpf) REFERENCES Paciente(cpf),
	FOREIGN KEY(cro) REFERENCES Doutor(cro));