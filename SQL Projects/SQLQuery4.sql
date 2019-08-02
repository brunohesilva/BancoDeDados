USE M_Livros2;

SELECT * FROM Generos
SELECT * FROM Autores
SELECT * FROM Livros

INSERT INTO Generos(Descricao) 
	   VALUES	   ('Ação');

INSERT INTO Generos(Descricao) 
	   VALUES	   ('Aventura');

INSERT INTO Generos(Descricao) 
	   VALUES	   ('Romance');

INSERT INTO Livros(Nome)
		VALUES	  ('ATDM');

INSERT INTO Livros(Nome)
		VALUES	  ('ATDC');

INSERT INTO Livros(Nome)
		VALUES	  ('Senhor dos Aneis');

INSERT INTO LIVROS (IdGenero)
		VALUES	   (2);

SELECT Livros.*, Autores.*
FROM Livros
JOIN Autores
ON Livros.IdAutor = Autores.IdAutor

SELECT Livros.*, Generos.IdGenero
FROM Livros
JOIN Generos
ON Livros.IdGenero = Generos.IdGenero


