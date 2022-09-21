USE Oficina;

SELECT * FROM PessoaFisica;
INSERT INTO PessoaFisica VALUES (1, 'Luiza', 98765432110, 'Rua Ipe, 159', '43824674033'),
								(2, 'Paulo', 97382304035, 'Rua Lirio, 80', '49804053047'),
                                (3, 'Clara', 45005459057, 'Rua Flores, 50', '60969284047'),
                                (4, 'Tulio', 73253699056, 'Rua Margarida, 851', '59350985047'),
                                (5, 'Elisa', 76808360006, 'Rua Sandalo, 7', '72244097072'),
                                (6, 'Jose', 74019296006, 'Rua Consolação, 25', '66076322039');

SELECT * FROM Veiculo;
INSERT INTO Veiculo VALUES 	(1, 1, 'HWC4180'),
							(2, 2, 'JLLQ7750'),
                            (3, 3, 'AMAA6737'),
                            (4, 4, 'ELWQ1735'),
                            (5, 5, 'ANET1092'),
                            (6, 6, 'JMYD1745');

SELECT * FROM Conserto;
INSERT INTO Conserto VALUES (1, 'Não funciona'),
							(2, 'Quebrado'),
                            (3, 'Não liga'),
                            (4, 'Barulho'),
                            (5, 'Pneu furado'),
                            (6, 'Ar condicionado quebrado');
                            
SELECT * FROM Mecanico;
INSERT INTO Mecanico VALUES	(1, 'Foara', 'Rua Haley Bypass', 'Borracharia'),
							(2, 'Nuon', 'Rua Camille Roads', 'Eletricista'),
                            (3, 'Ryos', 'Av Miller Drive, 11', 'Qualquer tipo de reparo'),
                            (4, 'Zuoko', 'Rua Feeney Corner, 124', 'Funilaria'),
                            (5, 'Arfiu', 'Rua Kuhlman Forest, 466', 'Eletricista'),
                            (6, 'Kiwo', 'Av. Dortha Corners', 'Motor');

SELECT * FROM OdServiço;
INSERT INTO OdServiço VALUES 	(1, '2022/09/08', '134.50', '15.00', '149.50', 'AGUARDANDO', NULL),
								(2, '2022/09/06', '198.90', '80.90', '207.88', 'CONCLUIDO', '2022/09/09'),
								(3, '2022/09/03', '930.99', '520.10', '930.99', 'CONCLUIDO', '2022/09/10'),
								(4, '2022/08/18', '245.70', '110.90', '356.60', 'EM ANDAMENTO', NULL),
								(5, '2022/08/30', '480.87', '10.15', '491.02', 'CANCELADO', NULL),
								(6, '2022/08/25', '736.56', '7.50', '736.56', 'EM ANDAMENTO', NULL);
                                
SELECT * FROM Autorização;
INSERT INTO Autorização VALUES 	(1, FALSE),
								(2, TRUE),
								(3, TRUE),
								(4, TRUE),
								(5, FALSE),
								(6, TRUE);
                                
SELECT * FROM Pecas;
INSERT INTO Pecas VALUES 	(1, 'Volante', '15.00'),
							(2, 'Pistão', '80.90'),
							(3, 'Cambio', '520.10'),
							(4, 'Caixa eletrica', '110.90'),
							(5, 'Pneu', '10.15'),
							(6, 'Ar Condicionado', '7.50');
                                
SELECT * FROM Serviços;
INSERT INTO Serviços VALUES 	(1, 'Problemas Eletricos', '134.50'),
								(2, 'Caixa de cambio quebrado', '198.90'),
								(3, 'Problemas Eletricos', '930.99'),
								(4, 'Peça proxima a caixa de direção danificada', '245.70'),
								(5, 'Pneu Furado', '480.87'),
								(6, 'O sistema de ar condicionado danificada', '736.56');

SELECT Autorização.Autorizado, OdServiço.idOdServiço, Clientes.idClientes
	FROM Autorização
    CROSS JOIN OdServiço, Clientes;