SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `facultysched` DEFAULT CHARACTER SET latin1 ;
USE `facultysched`;

-- -----------------------------------------------------
-- Table `facultysched`.`facultyinfo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `facultysched`.`facultyinfo` (
  `Faculty_idno` INT(11) NOT NULL ,
  `First_name` VARCHAR(45) NOT NULL ,
  `Last_name` VARCHAR(45) NOT NULL ,
  `Address` VARCHAR(45) NOT NULL ,
  `Phone_No` INT(11) NOT NULL ,
  PRIMARY KEY (`Faculty_idno`) ,
  UNIQUE INDEX `idno_UNIQUE` (`Faculty_idno` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `facultysched`.`facultysched`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `facultysched`.`facultysched` (
  `Code` VARCHAR(45) NOT NULL ,
  `Subject` VARCHAR(45) NOT NULL ,
  `Time` VARCHAR(45) NOT NULL ,
  `Day` VARCHAR(45) NOT NULL ,
  `room` VARCHAR(45) NOT NULL ,
  `faculty_idno` INT NOT NULL ,
  PRIMARY KEY (`Code`, `faculty_idno`) ,
  UNIQUE INDEX `Code_UNIQUE` (`Code` ASC) ,
  INDEX `faculty_id` () ,
  CONSTRAINT `faculty_id`
    FOREIGN KEY ()
    REFERENCES `facultysched`.`facultyinfo` ()
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `facultysched`.`faculty_dept`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `facultysched`.`faculty_dept` (
  `Dept_id` INT NOT NULL ,
  `dept_name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Dept_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `facultysched`.`facultyattendance`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `facultysched`.`facultyattendance` (
  `log_id` INT NOT NULL ,
  `log_in` TIME NOT NULL ,
  `log_out` TIME NOT NULL ,
  `date` DATE NOT NULL ,
  `code` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`log_id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
