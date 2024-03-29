CREATE DATABASE M_SSolve;

USE M_SSolve;

CREATE TABLE Clientes(
	IdCliente INT IDENTITY NOT NULL PRIMARY KEY
	,NomeFantasia VARCHAR(255) NOT NULL	UNIQUE 
	,CNPJ VARCHAR(18) NOT NULL UNIQUE
	,RazaoSocial VARCHAR(255) NOT NULL 
	,Endereco VARCHAR(20) NOT NULL
);

CREATE TABLE Servicos(
	IdServico INT IDENTITY NOT NULL PRIMARY KEY
	,Servico VARCHAR(255) NOT NULL
	,Comodo VARCHAR(255) NOT NULL
	,Preco VARCHAR(10) NOT NULL 
	,IdCliente INT FOREIGN KEY REFERENCES Clientes(IdCliente)
	,DataInicio DATETIME NOT NULL
	,DataFinalizacao DATETIME NOT NULL
);

CREATE TABLE Funcionarios(
	IdFuncionario INT IDENTITY NOT NULL PRIMARY KEY
	,Nome VARCHAR(255) NOT NULL
);

CREATE TABLE ServicosFuncionarios(
	IdServico INT FOREIGN KEY REFERENCES Servicos(IdServico)
	,IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios(IdFuncionario)
);