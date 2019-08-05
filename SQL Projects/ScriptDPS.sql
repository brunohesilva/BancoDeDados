CREATE DATABASE M_DPS;

USE M_DPS;

CREATE TABLE Departamentos
(
	IdDepartamento INT PRIMARY KEY IDENTITY
	,Departamento VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Habilidades
(
	IdHabilidade INT PRIMARY KEY IDENTITY 
	,Habilidade VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Funcionarios
(
	IdFuncionario INT PRIMARY KEY IDENTITY 
	,IdDepartamento INT FOREIGN KEY REFERENCES Departamentos (IdDepartamento)
	,Funcionario  VARCHAR(200)UNIQUE NOT NULL
	,Salario VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Aptidoes
(
	IdAptidao INT PRIMARY KEY IDENTITY 
	,IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios (IdFuncionario)
	,IdHabilidade INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
);

SELECT * FROM Departamentos
SELECT * FROM Habilidades
SELECT * FROM Funcionarios
SELECT * FROM Aptidoes

INSERT INTO Departamentos(Departamento)
	VALUES ('Administrativo')
		   ,('Financeiro')
		   ,('RH')
		   ,('Comercial')

INSERT INTO Habilidades(Habilidade)
	VALUES ('Flexibilidade')
		   ,('Iniciativa')
		   ,('Autoconfiança')
		   ,('Competitividade')
		   ,('Persuasão')

INSERT INTO Funcionarios(Funcionario)
	VALUES ('Jorge')
		   ,('Cleyton')
		   ,('Matias')
		   ,('Osvaldo')
		   ,('Clebson')

INSERT INTO Funcionarios(Salario)
	VALUES ('900')
		   ,('1200')
		   ,('1600')
		   ,('2200')
		   ,('3000')

SELECT F.IdDepartamento, D.IdDepartamento
FROM Funcionarios AS F
JOIN Departamentos AS D
ON F.IdDepartamento = D.IdDepartamento
