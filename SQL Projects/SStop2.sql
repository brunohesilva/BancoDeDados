CREATE DATABASE M_SStop;

USE M_SStop;

CREATE TABLE EstilosMusicais
(
	IdEstiloMusical INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200)UNIQUE NOT NULL
);

CREATE TABLE Artistas
(
	IdArtista INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200)UNIQUE NOT NULL
	,IdEstiloMUsical  INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstiloMusical)
);

-- DML
INSERT INTO EstilosMusicais(Nome) VALUES ('Folk');
INSERT INTO EstilosMusicais VALUES ('Rock'), ('Pop');

UPDATE EstilosMusicais SET Nome = 'POp' WHERE IdEstiloMusical = 2;

DELETE FROM EstilosMusicais WHERE IdEstiloMusical = 2;

-- DQL
SELECT * FROM EstilosMusicais;