SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `feedback_app` ;
CREATE SCHEMA IF NOT EXISTS `feedback_app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `feedback_app` ;

-- -----------------------------------------------------
-- Table `feedback_app`.`surveys`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `feedback_app`.`surveys` ;

CREATE TABLE IF NOT EXISTS `feedback_app`.`surveys` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL,
  `author` VARCHAR(45) NULL,
  `updated_at` DATETIME NULL,
  `created_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `feedback_app`.`survey_results`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `feedback_app`.`survey_results` ;

CREATE TABLE IF NOT EXISTS `feedback_app`.`survey_results` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `respondent_name` VARCHAR(45) NULL,
  `helpful_scale` TINYINT NULL,
  `feedback` TEXT NULL,
  `updated_at` DATETIME NULL,
  `created_at` DATETIME NULL,
  `survey_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_survey_results_surveys_idx` (`survey_id` ASC),
  CONSTRAINT `fk_survey_results_surveys`
    FOREIGN KEY (`survey_id`)
    REFERENCES `feedback_app`.`surveys` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
