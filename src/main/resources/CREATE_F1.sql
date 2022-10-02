-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema F1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema F1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `F1` DEFAULT CHARACTER SET utf8 ;
USE `F1` ;

-- -----------------------------------------------------
-- Table `F1`.`monoposto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`monoposto` (
  `id_vettura` VARCHAR(45) NOT NULL,
  `motore` VARCHAR(100) NOT NULL,
  `anno_produzione` INT NOT NULL,
  `foto_monoposto` VARCHAR(6000) NOT NULL,
  `foto_motore` VARCHAR(6000) NOT NULL,
  PRIMARY KEY (`id_vettura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`scuderia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`scuderia` (
  `logo` VARCHAR(6000) NOT NULL,
  `nome_scuderia` VARCHAR(45) NOT NULL,
  `sito_web` VARCHAR(6000) NOT NULL,
  `team_principal` VARCHAR(45) NOT NULL,
  `storia` VARCHAR(6000) NOT NULL,
  `anno_esordio` INT NOT NULL,
  `numero_vittorie` INT NOT NULL,
  `primo_pilota` VARCHAR(45) NOT NULL,
  `secondo_pilota` VARCHAR(45) NOT NULL,
  `id_vettura` VARCHAR(45) NOT NULL,
  `nazionalita` varchar(45) not null,
  `icona` varchar(1000) not null,
  `prima_vittoria` int not null,
  PRIMARY KEY (`nome_scuderia`),
  INDEX `fk_Scuderia_Monoposto1_idx` (`id_vettura` ASC) VISIBLE,
  CONSTRAINT `fk_Scuderia_Monoposto1`
    FOREIGN KEY (`id_vettura`)
    REFERENCES `F1`.`monoposto` (`id_vettura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`pilota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`pilota` (
  `foto` VARCHAR(6000) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cognome` VARCHAR(45) NOT NULL,
  `data_nascita` DATE NOT NULL,
  `luogo_nascita` VARCHAR(45) NOT NULL,
  `nazionalita` VARCHAR(45) NOT NULL,
  `numero_pilota` INT NOT NULL,
  `profilo_social` VARCHAR(6000) NOT NULL,
  `biografia` VARCHAR(6000) NOT NULL,
  `titoli_mondiali` INT NOT NULL,
  `nome_scuderia` VARCHAR(45) NOT NULL,
  `bandiera` varchar(1000) not null,
  PRIMARY KEY (`numero_pilota`),
  INDEX `fk_Pilota_Scuderia1_idx` (`nome_scuderia` ASC) VISIBLE,
  CONSTRAINT `fk_Pilota_Scuderia1`
    FOREIGN KEY (`nome_scuderia`)
    REFERENCES `F1`.`scuderia` (`nome_scuderia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`circuito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`circuito` (
  `foto_circuito` VARCHAR(6000) NOT NULL,
  `nome_circuito` VARCHAR(45) NOT NULL,
  `lunghezza` int NOT NULL,
  `numero_giri` INT NOT NULL,
  `citta` VARCHAR(45) NOT NULL,
  `nazione` VARCHAR(45) NOT NULL,
  `miglior_tempo` FLOAT NOT NULL,
  `pole_position` VARCHAR(45) NOT NULL,
  `vincitore` VARCHAR(45) NOT NULL,
   `indirizzo` varchar(100) not null,
  PRIMARY KEY (`nome_circuito`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`Gara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`Gara` (
  `idGara` INT NOT NULL,
  `listaPiloti` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `grigliaDiPartenza` VARCHAR(45) NOT NULL,
  `numeroGiri` INT NOT NULL,
  `nomeCircuito` VARCHAR(45) NOT NULL,
  `pilotaNumero` INT NOT NULL,
  PRIMARY KEY (`idGara`),
  INDEX `fk_Gara_Circuito1_idx` (`nomeCircuito` ASC) VISIBLE,
  INDEX `fk_Gara_Pilota1_idx` (`pilotaNumero` ASC) VISIBLE,
  CONSTRAINT `fk_Gara_Circuito1`
    FOREIGN KEY (`nomeCircuito`)
    REFERENCES `F1`.`circuito` (`nome_circuito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gara_Pilota1`
    FOREIGN KEY (`pilotaNumero`)
    REFERENCES `F1`.`pilota` (`numero_pilota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`ClassificaPiloti`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`ClassificaPiloti` (
  `annoClassifica` VARCHAR(45) NOT NULL,
  `nomePilota` VARCHAR(45) NOT NULL,
  `posizione` INT NOT NULL,
  `numeroPilota` INT NOT NULL,
  `puntiPilota` INT NOT NULL,
  UNIQUE INDEX `anno_UNIQUE` (`annoClassifica` ASC) VISIBLE,
  PRIMARY KEY (`annoClassifica`),
  INDEX `fk_ClassificaPiloti_Pilota1_idx` (`numeroPilota` ASC) VISIBLE,
  CONSTRAINT `fk_ClassificaPiloti_Pilota1`
    FOREIGN KEY (`numeroPilota`)
    REFERENCES `F1`.`pilota` (`numero_pilota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`ClassificaCostruttori`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`ClassificaCostruttori` (
  `annoClassificaScuderia` VARCHAR(45) NOT NULL,
  `puntiScuderia` INT NOT NULL,
  `nomeScuderia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`annoClassificaScuderia`),
  UNIQUE INDEX `anno_UNIQUE` (`annoClassificaScuderia` ASC) VISIBLE,
  INDEX `fk_classificaCostruttori_Scuderia1_idx` (`nomeScuderia` ASC) VISIBLE,
  CONSTRAINT `fk_classificaCostruttori_Scuderia1`
    FOREIGN KEY (`nomeScuderia`)
    REFERENCES `F1`.`scuderia` (`nome_scuderia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`ClassificaGara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`ClassificaGara` (
  `numeroPilota` INT NOT NULL,
  `tempoPilota` FLOAT NOT NULL,
  `punteggioPilota` INT NOT NULL,
  `ordineArrivo` INT NOT NULL,
  `annoClassificaPiloti` VARCHAR(45) NOT NULL,
  `annoClassificaCostruttori` VARCHAR(45) NOT NULL,
  INDEX `fk_ClassificaGara_ClassificaPiloti1_idx` (`annoClassificaPiloti` ASC) VISIBLE,
  INDEX `fk_ClassificaGara_classificaCostruttori1_idx` (`annoClassificaCostruttori` ASC) VISIBLE,
  CONSTRAINT `fk_ClassificaGara_ClassificaPiloti1`
    FOREIGN KEY (`annoClassificaPiloti`)
    REFERENCES `F1`.`ClassificaPiloti` (`annoClassifica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ClassificaGara_classificaCostruttori1`
    FOREIGN KEY (`annoClassificaCostruttori`)
    REFERENCES `F1`.`ClassificaCostruttori` (`annoClassificaScuderia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`Admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`Admin` (
  `userId` INT NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userId`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
