-- MySQL Script generated by MySQL Workbench
-- 12/10/14 13:19:12
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Customers
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Customers
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Customers` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Customers` ;

-- -----------------------------------------------------
-- Table `Customers`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Customers`.`Customer` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NULL,
  `BankAccount` VARCHAR(25) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Customers`.`PostAddress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Customers`.`PostAddress` (
  `PostAddressID` INT NOT NULL AUTO_INCREMENT,
  `Country` VARCHAR(45) NULL,
  `Town` VARCHAR(45) NULL,
  `Address` VARCHAR(255) NULL,
  `Customer_CustomerID` INT NOT NULL,
  `PostAddresscol` VARCHAR(45) NULL,
  PRIMARY KEY (`PostAddressID`),
  INDEX `fk_PostAddress_Customer_idx` (`Customer_CustomerID` ASC),
  UNIQUE INDEX `PostAddresscol_UNIQUE` (`PostAddresscol` ASC),
  CONSTRAINT `fk_PostAddress_Customer`
    FOREIGN KEY (`Customer_CustomerID`)
    REFERENCES `Customers`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
