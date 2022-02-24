CREATE DEFINER=`root`@`localhost` TRIGGER `intervencao_servico_AFTER_INSERT` AFTER INSERT ON `intervencao_servico` FOR EACH ROW BEGIN
	UPDATE intervencoes
    SET Estado = "Ativo", DataEntrada = CURDATE()
    WHERE intervencoes.idIntervencao = NEW.idIntervencao;
END