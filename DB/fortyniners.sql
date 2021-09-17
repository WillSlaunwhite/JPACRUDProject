-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fortyninersdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fortyninersdb` ;

-- -----------------------------------------------------
-- Schema fortyninersdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fortyninersdb` DEFAULT CHARACTER SET utf8 ;
USE `fortyninersdb` ;

-- -----------------------------------------------------
-- Table `fortyniners`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fortyniners` ;

CREATE TABLE IF NOT EXISTS `fortyniners` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS fortyniner@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'fortyniner'@'localhost' IDENTIFIED BY 'fortyniner';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'fortyniner'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fortyniners`
-- -----------------------------------------------------
START TRANSACTION;
USE `fortyninersdb`;
INSERT INTO `fortyniners` (`id`, `first_name`) VALUES (1, 'Jimmy');

COMMIT;

