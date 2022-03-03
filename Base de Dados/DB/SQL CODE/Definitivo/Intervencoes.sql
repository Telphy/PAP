CREATE VIEW QuantasViaturasCliente AS 
#1 Mostrar as viaturas que um determinado cliente possui neste caso o cliente com id 1
SELECT C.Nome, V.Matricula
FROM Clientes C, Viaturas V
WHERE C.idCliente = V.idCliente
AND C.idCliente = 1;