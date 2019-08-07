USE M_SSolve;

SELECT S.*, C.*
FROM Servicos S
JOIN Clientes C
ON S.IdCliente = C.IdCliente;