#1 Mostrar as viaturas que um determinado cliente possui neste caso o cliente com id 1
SELECT C.Nome, V.Matricula
FROM Clientes C, Viaturas V
WHERE C.idCliente = V.idCliente
AND C.idCliente = 1;

#2 Quais as intervencoes pendentes
SELECT C.Nome, I.Matricula, I.Descricao, I.Estado
From Clientes C, Viaturas V, intervencoes I
WHERE C.idCliente = V.idCliente
AND V.Matricula = I.Matricula
AND I.Estado ='Pendente';

#3 Quais intervencoes criadas na data de hoje
SELECT C.Nome, I.Matricula, I.DataPendente
FROM Clientes C, Viaturas V, intervencoes I
WHERE C.idCliente = V.idCliente
AND V.Matricula = I.Matricula
AND I.DataPendente = CURDATE();

#4 Contar o numero de intervencoes que um cliente fez
SELECT C.Nome, COUNT(I.idIntervencao) AS "Total intervenções"
FROM Clientes C, Viaturas V, intervencoes I
WHERE V.Matricula = I.Matricula
AND V.idCliente = C.idCliente
AND C.idCliente = 1
GROUP BY C.Nome;

#5 Mostar a intervencão que usou a tinta 27B
SELECT I.idIntervencao, M.Material, M.Descricao
FROM  intervencoes I, materiais M, intervencao_matereais IM
WHERE I.idIntervencao = IM.idIntervencao
AND IM.Material = M.Material
AND M.Descricao ='27B';

#6 Adicionar um serviço a uma intervenção
INSERT INTO intervencao_servico(idIntervencao,idServico,idFuncionario,Horas)
VALUES(2,1,1,1);

INSERT INTO intervencao_servico(idIntervencao,idServico,idFuncionario,Horas)
VALUES(3,1,1,0.5);

#7 Consultar os dados de um cliente pelo Telemovel

SELECT Nome, DataNascimento, Morada, DataNascimento, Telemovel, Telefone, Email
FROM Clientes
WHERE Telemovel ='925675234';

#8 Criar vista que mostre as viaturas que um determinado cliente possui neste caso o cliente com id 1

CREATE VIEW QuantasViaturasCliente AS 
SELECT C.Nome, V.Matricula
FROM Clientes C, Viaturas V
WHERE C.idCliente = V.idCliente
AND C.idCliente = 1;

#9 Alterar o nome de alguem
UPDATE `oficinapap`.`clientes` SET `Nome` = 'Helder Atilano Sousa' WHERE (`idCliente` = '9');

#10 Remover um viatura
DELETE FROM viaturas WHERE Matricula='1';

#11 Procurar uma viatura que foram fabricadas em 2017
SELECT C.Nome, V.Matricula , V.DataFabricacao, V.Marca, V.Modelo, V.Cor
FROM Clientes C, Viaturas V
WHERE C.idCliente = V.idCliente
AND YEAR(DataFabricacao) = '2017';
-- AND DataFabricacao >= '2017-01-01' AND DataFabricacao <= '2017-12-30';

#12 Procurar uma Intrevenção que foi iniciada em certa data
SELECT I.idIntervencao, C.Nome, I.Matricula, I.DataPendente as "Data Realizada a Intervencao"
FROM Clientes C, intervencoes I, Viaturas V
WHERE V.Matricula = I.Matricula
AND V.idCliente = C.idCliente
AND I.DataPendente = '2022-02-24';

#13 Contar quantos clientes a oficina tem Registrado
SELECT COUNT(Clientes.Nome) AS "Número De Clientes"
FROM clientes;

#14 Qual e o Cliente que possui mais carros da Oficinas !!!!!! Não Completa

SELECT C.Nome, V.Matricula
FROM clientes C, viaturas V
WHERE  C.idCliente = V.idCliente
AND V.Matricula = 
	(SELECT MAX(V.Matricula)
	FROM viaturas V);

