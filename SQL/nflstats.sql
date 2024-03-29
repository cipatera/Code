-- MySQL Script generated by MySQL Workbench
-- Sun Apr 17 01:19:02 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema nflstats
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema nflstats
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nflstats` DEFAULT CHARACTER SET utf8 ;
USE `nflstats` ;

-- -----------------------------------------------------
-- Table `nflstats`.`Player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nflstats`.`Player` (
  `name` VARCHAR(255) NOT NULL,
  `DOB` DATE NOT NULL,
  `kit_number` VARCHAR(255) NULL,
  `position` VARCHAR(255) NULL,
  PRIMARY KEY (`name`, `DOB`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nflstats`.`Team`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nflstats`.`Team` (
  `franchise` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NULL,
  `founded` INT NULL,
  `division` VARCHAR(255) NULL,
  PRIMARY KEY (`franchise`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nflstats`.`Game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nflstats`.`Game` (
  `date` DATE NOT NULL,
  `home_team` VARCHAR(255) NOT NULL,
  `away_team` VARCHAR(255) NULL,
  `home_points` INT NULL,
  `away_points` INT NULL,
  `season` INT NULL,
  `week` INT NULL,
  `type` VARCHAR(255) NULL,
  PRIMARY KEY (`date`, `home_team`),
  FOREIGN KEY (`home_team`) REFERENCES `nflstats`.`Team` (`franchise`),
  FOREIGN KEY (`away_team`) REFERENCES `nflstats`.`Team` (`franchise`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nflstats`.`Player_Stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nflstats`.`Player_Stats` (
  `name` VARCHAR(255) NOT NULL,
  `season` INT NOT NULL,
  `running_yards` INT NULL,
  `throwing_yards` INT NULL,
  `sacks` INT NULL,
  `catches` INT NULL,
  `touchdowns` INT NULL,
  `punt_returns` INT NULL,
  `field_goals` INT NULL,
  PRIMARY KEY (`name`, `season`),
  CONSTRAINT `name1`
    FOREIGN KEY (`name`)
    REFERENCES `nflstats`.`Player` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nflstats`.`Team_Stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nflstats`.`Team_Stats` (
  `franchise` VARCHAR(255) NOT NULL,
  `season` INT NOT NULL,
  `wins` INT NULL,
  `losses` INT NULL,
  `ties` INT NULL,
  `total_points` INT NULL,
  `total_yards` INT NULL,
  `touchdowns` INT NULL,
  `fieldgoals` INT NULL,
  INDEX `team_idx` (`franchise` ASC) VISIBLE,
  PRIMARY KEY (`franchise`, `season`),
  CONSTRAINT `team2`
    FOREIGN KEY (`franchise`)
    REFERENCES `nflstats`.`Team` (`franchise`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nflstats`.`Game_Stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nflstats`.`Game_Stats` (
  `franchise` VARCHAR(255) NOT NULL,
  `date` DATE NOT NULL,
  `result` VARCHAR(255) NULL,
  `total_yards` INT NULL,
  `pass_yards` INT NULL,
  `rush_yards` INT NULL,
  PRIMARY KEY (`franchise`, `date`),
  INDEX `game_idx` (`date` ASC) INVISIBLE,
  CONSTRAINT `team3`
    FOREIGN KEY (`franchise`)
    REFERENCES `nflstats`.`Team` (`franchise`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `game1`
    FOREIGN KEY (`date`)
    REFERENCES `nflstats`.`Game` (`date`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nflstats`.`play_for`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nflstats`.`play_for` (
  `name` VARCHAR(255) NOT NULL,
  `DOB` DATE NOT NULL,
  `franchise` VARCHAR(255) NOT NULL,
  `start` INT NULL,
  `end` INT NULL,
  PRIMARY KEY (`name`, `DOB`, `franchise`),
  INDEX `team_idx` (`franchise` ASC) VISIBLE,
  CONSTRAINT `player1`
    FOREIGN KEY (`name`)
    REFERENCES `nflstats`.`Player` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `team1`
    FOREIGN KEY (`franchise`)
    REFERENCES `nflstats`.`Team` (`franchise`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


