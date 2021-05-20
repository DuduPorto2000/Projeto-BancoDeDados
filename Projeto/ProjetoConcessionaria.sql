CREATE DATABASE ProjetoConcessionaria
GO
USE ProjetoConcessionaria
GO

CREATE TABLE Cliente(
cpf CHAR(11) NOT NULL PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
telefone INT,
cidade VARCHAR(40),
bairro VARCHAR(40),
rua VARCHAR(150),
numero INT CHECK(numero > 0)
)

CREATE TABLE Gerente(
registro VARCHAR(11) NOT NULL PRIMARY KEY,
cpf CHAR(11) NOT NULL UNIQUE,
nome VARCHAR(150) NOT NULL,
telefone INT,
salario FLOAT NOT NULL CHECK(salario > 0) DEFAULT 2000,
cidade VARCHAR(40) NOT NULL,
bairro VARCHAR(40) NOT NULL,
rua VARCHAR(150),
numero INT CHECK(numero > 0)
)

CREATE TABLE Carro(
serie INT NOT NULL PRIMARY KEY,
ano DATE NOT NULL,
modelo VARCHAR(40) NOT NULL,
cor VARCHAR(25) NOT NULL
)

CREATE TABLE Fornecedor(
cnpj CHAR(14) NOT NULL PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
telefone INT,
cidade VARCHAR(40),
bairro VARCHAR(40),
rua VARCHAR(150),
numero INT CHECK(numero > 0)
)

CREATE TABLE Vendedor(
registro VARCHAR(11) NOT NULL PRIMARY KEY,
cpf CHAR(11) NOT NULL UNIQUE,
nome VARCHAR(150) NOT NULL,
telefone INT NOT NULL,
salario FLOAT NOT NULL CHECK(salario > 0) DEFAULT 1045,
cidade VARCHAR(40) NOT NULL,
bairro VARCHAR(40) NOT NULL,
rua VARCHAR(150),
numero INT CHECK(numero > 0)
)

CREATE TABLE Pedido(
registro VARCHAR(11) NOT NULL FOREIGN KEY (registro) REFERENCES Vendedor,
pedido INT NOT NULL PRIMARY KEY,
carro INT NOT NULL FOREIGN KEY (carro) REFERENCES Carro,
datapedi DATE NOT NULL,
statuspedi VARCHAR(15) NOT NULL CHECK (statuspedi = 'processamento'or statuspedi = 'concluido' or statuspedi = 'cancelado' or statuspedi = 'reembolsado'),
valor FLOAT NOT NULL CHECK(valor > 0),
cpf CHAR(11) NOT NULL FOREIGN KEY (cpf) REFERENCES Cliente
)