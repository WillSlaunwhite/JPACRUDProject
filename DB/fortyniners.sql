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
-- Table `Player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Player` ;

CREATE TABLE IF NOT EXISTS `Player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `position` VARCHAR(45) NOT NULL,
  `number` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `age` INT NULL,
  `height` INT NULL,
  `weight` INT NULL,
  `experience` INT NULL,
  `college` VARCHAR(100) NULL,
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
-- Data for table `Player`
-- -----------------------------------------------------
START TRANSACTION;
USE `fortyninersdb`;
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (1, 'QB', 10, 'Jimmy', 'Garoppolo', 29, 6.2, 225, 8, 'Eastern Illinois');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (2, 'QB', 5, 'Trey', 'Lance', 21, 6.4, 224, 0, 'North Dakota State');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (3, 'QB', 7, 'Nate', 'Sudfeld', 27, 6.6, 226, 6, 'Indiana');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (4, 'RB', 40, 'Trenton', 'Cannon', 27, 5.11, 185, 5, 'Virginia State');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (5, 'RB', 23, 'JaMycal', 'Hasty', 25, 5.8, 205, 2, 'Baylor');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (6, 'RB', 25, 'Elijah', 'Mitchell', 23, 5.10, 200, 0, 'Louisianna-Lafayette');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (7, 'RB', 31, 'Raheem', 'Mostert', 29, 5.10, 205, 7, 'Purdue');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (8, 'RB', 28, 'Trey', 'Sermon', 22, 6.0, 215, 0, 'Ohio State');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (9, 'RB', 30, 'Jeff', 'Wilson Jr.', 25, 6.0, 213, 4, 'North Texas');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (10, 'FB', 40, 'Josh', 'Hokit', 23, 6.1, 225, 1, 'Fresno State');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (11, 'FB', 44, 'Kyle', 'Juszczyk', 30, 6.1, 235, 9, 'Harvard');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (12, 'WR', 11, 'Brandon', 'Aiyuk', 23, 6.0, 200, 2, 'Arizona State');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (13, 'WR', 17, 'Travis', 'Benjamin', 31, 5.10, 175, 9, 'Miama(FL)');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (14, 'WR', 86, 'River', 'Cracraft', 26, 6.0, 198, 3, 'Washington State');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (15, 'WR', 14, 'Jalen', 'Hurd', 25, 6.5, 235, 3, 'Baylor');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (16, 'WR', 13, 'Richie', 'James', 26, 5.9, 185, 4, 'Middle Tennessee');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (17, 'WR', 15, 'Jauan', 'Jennings', 24, 6.3, 212, 1, 'Tennessee');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (18, 'WR', 19, 'Deebo', 'Samuel', 25, 6.0, 215, 3, 'South Carolina');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (19, 'WR', 6, 'Mohamed', 'Sanu Jr.', 32, 6.2, 210, 10, 'Rutgers');
INSERT INTO `Player` (`id`, `position`, `number`, `first_name`, `last_name`, `age`, `height`, `weight`, `experience`, `college`) VALUES (20, 'WR', 81, 'Trent', 'Sherfield', 25, 6.1, 219, 4, 'Vanderbilt');

COMMIT;

