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

-- Em seguida o cliente vai deixar a viatura na propria oficina e será feita as intervenção na viatura com serviços, peças, e materias, nem sempre todas as tabelas precisam de ser completadas
-- como por exemplo uma intervenção pode so usar um serviço

#3.1 Sera necessario adicionar a lista de servilços realizados na intervenção

