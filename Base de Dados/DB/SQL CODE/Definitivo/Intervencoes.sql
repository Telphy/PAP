INSERT INTO `oficinapap`.`intervencoes` (`Matricula`, `Descricao`, `Estado`, `DataPendente`) 
VALUES ('15VD78', 'A viatura em questão sofreu um acidente, e terá que ser feito uma renovação no para-choques, capô e para-brisas, e 2 peças tem que ser pintadas ', 'Pendente', CURDATE());

INSERT INTO `oficinapap`.`intervencoes` (`Matricula`, `Descricao`, `Estado`, `DataPendente`) 
VALUES ('35EF85', 'Revisão 10000Km', 'Pendente', CURDATE());

#Como dar delete em uma coluna
DELETE FROM intervencoes
WHERE idIntervencao = 2;
