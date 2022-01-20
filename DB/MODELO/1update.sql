-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema OficinaAuto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema OficinaAuto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `OficinaAuto` DEFAULT CHARACTER SET utf8 ;
USE `OficinaAuto` ;

-- -----------------------------------------------------
-- Table `OficinaAuto`.`TipoCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OficinaAuto`.`TipoCliente` (
  `idTipoCliente` INT NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OficinaAuto`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OficinaAuto`.`Clientes` (
  `idCliente` INT NOT NULL,
  `idTipoCliente` INT NOT NULL,
  `PrimeiroNome` VARCHAR(45) NOT NULL,
  `UltimoNome` VARCHAR(45) NOT NULL,
  `Idade` INT NOT NULL,
  `Morada` VARCHAR(45) NOT NULL,
  `profissao` VARCHAR(45) NOT NULL,
  `Telemovel` INT NOT NULL,
  `Telefone` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`, `idTipoCliente`),
  INDEX `fk_Clientes_TipoCliente1_idx` (`idTipoCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Clientes_TipoCliente1`
    FOREIGN KEY (`idTipoCliente`)
    REFERENCES `OficinaAuto`.`TipoCliente` (`idTipoCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OficinaAuto`.`Serviços`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OficinaAuto`.`Serviços` (
  `idServiços` INT NOT NULL,
  `NomeServiço` VARCHAR(45) NOT NULL,
  `Custo` INT NOT NULL,
  `Horas` INT NOT NULL,
  PRIMARY KEY (`idServiços`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OficinaAuto`.`Carros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OficinaAuto`.`Carros` (
  `idcarro` INT NOT NULL,
  `matricula` VARCHAR(6) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`idcarro`, `idCliente`, `matricula`, `marca`, `modelo`),
  INDEX `fk_Carros_Clientes_idx` (`idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Carros_Clientes`
    FOREIGN KEY (`idCliente`)
    REFERENCES `OficinaAuto`.`Clientes` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OficinaAuto`.`Faturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OficinaAuto`.`Faturas` (
  `idFaturas` INT NOT NULL,
  `idcarro` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `idServiços` INT NOT NULL,
  PRIMARY KEY (`idFaturas`, `idcarro`, `idCliente`, `idServiços`),
  INDEX `fk_Faturas_Carros1_idx` (`idcarro` ASC, `idCliente` ASC) VISIBLE,
  INDEX `fk_Faturas_Serviços1_idx` (`idServiços` ASC) VISIBLE,
  CONSTRAINT `fk_Faturas_Carros1`
    FOREIGN KEY (`idcarro` , `idCliente`)
    REFERENCES `OficinaAuto`.`Carros` (`idcarro` , `idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Faturas_Serviços1`
    FOREIGN KEY (`idServiços`)
    REFERENCES `OficinaAuto`.`Serviços` (`idServiços`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
