-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema processo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema processo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `processo` DEFAULT CHARACTER SET utf8 ;
USE `processo` ;

-- -----------------------------------------------------
-- Table `processo`.`tipoProcesso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `processo`.`tipoprocesso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nomeTipoProcesso` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `processo`.`processo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `processo`.`processo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipoProcesso` VARCHAR(255) NULL,
  `numeroProcesso` INT NULL,
  `dataEntrada` DATE NULL,
  `valorProcesso` FLOAT NULL,
  `objetivo` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
