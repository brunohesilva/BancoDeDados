USE M_SStop;

INSERT INTO Artistas (Nome)
	   VALUES		 ('AC/DC');

INSERT INTO Artistas (Nome)
	   VALUES		 ('Imagine Drag�es');

INSERT INTO Artistas (Nome)
	   VALUES		 ('KPOP');

INSERT INTO Artistas (Nome)
	   VALUES		 ('Madonna');

SELECT *
	FROM Artistas;

UPDATE Artistas
	SET Nome = 'T�cnico em Desenvolvimento de Sistemas'
	WHERE IdCurso = 1;