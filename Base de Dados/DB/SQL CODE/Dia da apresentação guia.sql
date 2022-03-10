#1 Funcionario pergunta pelo número de telm se a ficha do cliente existe
SELECT Nome, DataNascimento, Morada, DataNascimento, Telemovel, Telefone, Email
FROM Clientes
WHERE Telemovel ='296156141';

#1.1 Se o cliente não tem a sua ficha registrada e necessário inserir o mesmo na tabela Clientes da seguinte forma
INSERT INTO `oficinapap`.`clientes` (`idTipoCliente`, `Nome`, `DataNascimento`, `Morada`, `Telemovel`, `Telefone`, `Email`) 
VALUES ('1', 'Joaquim Tavares Sousa', '1990-01-24', 'Rua do Cousinho n62 9600-175 Ribeira Grande, Pico da Pedra', '926541567', '296156141', 'dotoj659662@chatich.com');

-- O tipoCliente serve para perceber da prespetiva de administrador se é um cliente ou cordenador de um stand, assim é facil saber e destinguir as diferenças perante um e o outro.
-- Explicar o porque de não utilizar a tabela idcliente que auto incrementa um id quando um cliente e criado na DB

#1.2 Verificar agora se o cliente esta na Lista de Clientes
SELECT Nome, DataNascimento, Morada, DataNascimento, Telemovel, Telefone, Email
FROM Clientes
WHERE Telemovel ='296156141';

#2 Pergunta/Verificar ao cliente qual é a a matricula da viatura que irá realizar a intervenção
SELECT C.Nome, C.Telemovel, V.Matricula, V.Marca, V.Modelo
FROM Clientes C, viaturas V
WHERE Matricula ='9265ER';

#2.1 Se o carro não existe na base de dados é necessario inserir as informações dele
INSERT INTO `oficinapap`.`viaturas` (`Matricula`, `idCliente`, `Marca`, `Modelo`, `DataFabricacao`, `CodigoCor`, `Cor`) VALUES ('9265ER', '20', 'Ford', 'Mustang Mach-E GT', '2020-05-21', 'D4', 'Vermelho');

#2.2 E agora verificar se a viatura é existente
SELECT C.Nome, C.Telemovel, V.Matricula, V.Marca, V.Modelo
FROM Clientes C, viaturas V
WHERE Matricula ='9265ER';

#3 Depois de saber quem  é o cliente e a viatura, o funcionario tem que pergutar que tipo de intervenção quer que seja feita á viatura
INSERT INTO `oficinapap`.`intervencoes` (`Matricula`, `Descricao`) VALUES ('9265ER', 'Acidente que fez com que a viatura tenha a porta-bagagem ficou deformado após o batimento, os faróis e placa matricula tem de ser substituído');

-- Ver se a intervenção esta com data pendente e explicar o trigger 
-- Em seguida o cliente vai deixar a viatura na propria oficina e será feita as intervenção na viatura com serviços, peças, e materias, nem sempre todas as tabelas precisam de ser completadas
-- como por exemplo uma intervenção pode so usar um serviço

#3.1 Para poder ver a intrevenção no ativo será necessario incluir na intervenção um servico, então na tabela de intervenção servico

INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '10', '1', '5'); -- id 10 - Bate-Chapa
INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '11', '2', '3'); -- id 11 - Soldagem
INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '6', '2', '5'); -- id 6 - Lixagem
INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '8', '2', '2'); -- id 8 - Primario
INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '2', '3', '3'); -- id 2 - Pintura
INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '5', '3', '4'); -- id 5 - Polimento
INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '3', '3', '1.50'); -- id 3 - Lavagem Exterior
INSERT INTO `oficinapap`.`intervencao_servico` (`idIntervencao`, `idServico`, `idFuncionario`, `Horas`) VALUES ('23', '4', '4', '1'); -- id 4 - LAvagem Interior

-- Entretanto é necessario explicar o porque de inserir este dados nas tabelas, chamar primeiro o id da intervenção, o servico realizado
-- Fazer a chamada do funcionario que realizou o serviço nem quantas horas demoraram a ser realzidas, porque podem ser colocado na altura que foram concluidas

#3.2 Vai ser necessario um funcionario da oficina contactar a um fornecedor para com que nos forneca a tinta com o codigo de cor da viatura que é D4 da classe de Mustang Mach-E GT, 
# mas o funcionario tem que adicionar na BD a tinta

INSERT INTO `oficinapap`.`materiais` (`idMaterial`, `Material`, `Descricao`, `PrecoUni`) VALUES ('31', 'Lata de Tinta 1L', 'Mustang Mach-E GT D4', '199.99');

#3.3 Depois de um tempo, o funcionario vai ter que inserir todos os materiais utilizados na intervenção.

INSERT INTO `oficinapap`.`intervencao_materiais` (`idMaterial`, `idIntervencao`, `Unidades`) VALUES ('17', '23', '1'); -- Lata de polimento
INSERT INTO `oficinapap`.`intervencao_materiais` (`idMaterial`, `idIntervencao`, `Unidades`) VALUES ('18', '23', '3'); -- Lixa 400p 3 unidades
INSERT INTO `oficinapap`.`intervencao_materiais` (`idMaterial`, `idIntervencao`, `Unidades`) VALUES ('19', '23', '2'); -- Lixa 340p 2 unidades
INSERT INTO `oficinapap`.`intervencao_materiais` (`idMaterial`, `idIntervencao`, `Unidades`) VALUES ('20', '23', '2'); -- Lixa 180p 2 unidades
INSERT INTO `oficinapap`.`intervencao_materiais` (`idMaterial`, `idIntervencao`, `Unidades`, `Litros`) VALUES ('21', '23', '1', '0.3'); -- Massa de ferro utilizando apenas 0.3 L da unidade
INSERT INTO `oficinapap`.`intervencao_materiais` (`idMaterial`, `idIntervencao`, `Unidades`, `Litros`) VALUES ('23', '23', '1', '1'); -- Lata de Primario 1L
INSERT INTO `oficinapap`.`intervencao_materiais` (`idMaterial`, `idIntervencao`, `Unidades`, `Litros`) VALUES ('31', '23', '1', '1'); -- Lata de Tinta Mustang Mach-E GT CODIGO DE COR D4

#3.4 Passando para a parte das peças irá ser necessario avaliar o que será nessesario substituir e neste caso ser uma porta-bagagem e os dois farois traseiros, esquerdo e direito

INSERT INTO `oficinapap`.`pecas` (`idPecas`, `Peca`, `Modelo`, `Marca`, `Preco`) VALUES ('7', 'Matricula', '9265ER', 'NONE', '30');
INSERT INTO `oficinapap`.`pecas` (`idPecas`, `Peca`, `Modelo`, `Marca`, `Preco`) VALUES ('8', 'Porta-Bagagem', 'Mustang Mach-E GT', 'FORD', '196');
INSERT INTO `oficinapap`.`pecas` (`idPecas`, `Peca`, `Modelo`, `Marca`, `Preco`) VALUES ('9', 'Farol Traseiro E', 'Mustang Mach-E GT L', 'FORD', '49');
INSERT INTO `oficinapap`.`pecas` (`idPecas`, `Peca`, `Modelo`, `Marca`, `Preco`) VALUES ('10', 'Farol Traseiro D', 'Mustang Mach-E GT L', 'FORD', '49');

#Em seguida a viatura depois de ter tudo concluido, tem que ter um botão na aplicação que permita concluir a intervenção deixando o seu estado em terminado. E outro botão se já foi entregue
#assim o estado passa logo para entregue

-- Coisas extra --

-- Existe um caso muito comum que a tinta utilizada na oficina possa a escascar depois de um tempo, e isso não e bom, então temos que pesquisar pela tinta usada na viatura.

#4 Primeiro de tudo é necessaro fazer uma consulta de para saber qual foi a viatura e qual foi a tinta usada

SELECT DISTINCT V.Matricula, I.idIntervencao , M.Material, M.Descricao, F.Fornecedor
FROM materiais M, intervencao_materiais IM, viaturas V, intervencoes I, fornecedor F, fornecedor_pecas FP, matereais_fornecedor MF
WHERE V.matricula = I.matricula
AND I.idIntervencao = IM.idIntervencao
AND IM.idMaterial = M.idMaterial
AND M.idMaterial = MF.idMaterial
AND MF.idFornecedor = F.idFornecedor
AND M.Descricao = 'FIAT TIPO 551'
ORDER BY idIntervencao ASC;







