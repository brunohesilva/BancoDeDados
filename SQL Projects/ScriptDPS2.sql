CREATE DATABASE M_Moda;

USE M_Moda;

CREATE TABLE Marcas
(
	IdMarca INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Camisetas
(
	IdCamiseta INT PRIMARY KEY IDENTITY
	,Modelo VARCHAR(200)UNIQUE NOT NULL
	,IdMarca INT FOREIGN KEY REFERENCES Marcas (IdMarca)
);

CREATE TABLE Cores
(
	IdCor INT PRIMARY KEY IDENTITY
	,Cor VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Tamanhos
(
	IdTamanho INT PRIMARY KEY IDENTITY
	,Tamanho VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Modelo
(
	IdCamiseta INT FOREIGN KEY REFERENCES Camisetas (IdCamiseta)
	,IdCor INT FOREIGN KEY REFERENCES Cores (IdCor)
	,IdTamanho INT FOREIGN KEY REFERENCES Tamanhos (IdTamanho)
);

SELECT * FROM Marcas
SELECT * FROM Camisetas
SELECT * FROM Cores
SELECT * FROM Tamanhos
SELECT * FROM Modelo

INSERT INTO Marcas(Nome) 
	   VALUES	   ('Khelf');

INSERT INTO Marcas(Nome) 
	   VALUES	   ('Adidas');

INSERT INTO Marcas(Nome) 
	   VALUES	   ('Hurley');

INSERT INTO Marcas(Nome) 
	   VALUES	   ('Element');

INSERT INTO Marcas(Nome) 
	   VALUES	   ('Oakley');

INSERT INTO Camisetas(Modelo) 
	   VALUES	   ('Modelo01');

INSERT INTO Camisetas(Modelo) 
	   VALUES	   ('Modelo02');

INSERT INTO Camisetas(Modelo) 
	   VALUES	   ('Modelo03');

INSERT INTO Camisetas(Modelo) 
	   VALUES	   ('Modelo04');

INSERT INTO Camisetas(Modelo) 
	   VALUES	   ('Modelo05');

SELECT Camisetas.IdMarca, Marcas.IdMarca
FROM Camisetas
JOIN Marcas
ON Camisetas.IdMarca = Marcas.IdMarca

INSERT INTO Marcas(IdMarca)
	VALUES (5)
		   ,(4)
		   ,(3)
		   ,(2)
		   ,(1)

INSERT INTO Cores(Cor)
	VALUES ('Branca')
		   ,('Vermelha')
		   ,('Azul')
		   ,('Roxo')
		   ,('Verde')

INSERT INTO Tamanhos(Tamanho)
	VALUES ('P')
		   ,('M')
		   ,('G')
		   ,('GG')

SELECT Modelo.IdCamiseta, Camisetas,IdCamiseta
FROM Modelo
JOIN Camisetas
ON Camisetas.IdMarca = 
		   
