SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `spielmodell` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `spielmodell` ;

-- -----------------------------------------------------
-- Table `spielmodell`.`team`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spielmodell`.`team` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `shortname` VARCHAR(45) NOT NULL,
  `league` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `shortname_UNIQUE` (`shortname` ASC))
ENGINE = InnoDB
COMMENT = 'this is the table mean to hold all different teams';


-- -----------------------------------------------------
-- Table `spielmodell`.`league`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spielmodell`.`league` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `country` INT NULL,
  `nr_of_teams` VARCHAR(45) NOT NULL,
  `country_rank` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spielmodell`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spielmodell`.`country` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `shortname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spielmodell`.`results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spielmodell`.`results` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `team1` INT NOT NULL,
  `team2` INT NOT NULL,
  `g1` TINYINT NOT NULL,
  `g2` TINYINT NOT NULL,
  `team1_table_pos` INT NULL,
  `team2_table_pos` INT NULL,
  `team1_prev_state` TINYINT NULL,
  `team2_prev_state` TINYINT NULL,
  `g1_half_time` TINYINT NULL,
  `g2_half_time` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spielmodell`.`states`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spielmodell`.`states` (
  `state_nr` INT NOT NULL,
  `state` TINYTEXT NOT NULL,
  `description` TINYINT NULL,
  PRIMARY KEY (`state_nr`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
