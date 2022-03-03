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

#7 Consultar os dados de um cliente

SELECT
