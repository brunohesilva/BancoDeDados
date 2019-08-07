USE M_SSolve;

INSERT INTO Clientes(NomeFantasia, CNPJ, RazaoSocial, Endereco)
VALUES ('BancoItau', '607011900001', 'ItauUnibancoBancoMúltiploSA', 'PraçadaRepública490');

INSERT INTO Clientes(NomeFantasia, CNPJ, RazaoSocial, Endereco)
VALUES ('CocaCola ', '45997418000153', 'CocaColaIndústriasLtda', 'SãoPauloSP');

SELECT * FROM Clientes;

INSERT Servicos(Servico, Comodo, Preco, DataInicio, DataFinalizacao)
VALUES ('ManutencaodoChuveiro', 'Banheiro', '500', '2019-08-07T18:30:00', '2019-08-07T19:30:00');

INSERT Servicos(Servico, Comodo, Preco, DataInicio, DataFinalizacao)
VALUES ('Trocoualuz', 'Areadeservico', '300', '2019-08-07T19:30:00', '2019-08-07T20:30:00');

INSERT Servicos(Servico, Comodo, Preco, DataInicio, DataFinalizacao)
VALUES ('ConsertouumBuraco', 'Quarto', '1000', '2019-08-07T21:30:00', '2019-08-07T22:30:00');

SELECT * FROM Servicos;

INSERT INTO Funcionarios(Nome)
VALUES ('Helena');

INSERT INTO Funcionarios(Nome)
VALUES ('Erik');

INSERT INTO Funcionarios(Nome)
VALUES ('Bruno');

SELECT * FROM Funcionarios;

INSERT ServicosFuncionarios(IdServico,IdFuncionario	) values (2,3)

INSERT ServicosFuncionarios(IdServico,IdFuncionario	) values (2,1)

INSERT ServicosFuncionarios(IdServico,IdFuncionario	) values (3,2)

INSERT ServicosFuncionarios(IdServico,IdFuncionario	) values (3,1)

SELECT * FROM ServicosFuncionarios;











