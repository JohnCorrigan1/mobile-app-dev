-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema jjc18e1
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `jjc18e1` ;

-- -----------------------------------------------------
-- Schema jjc18e1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jjc18e1` DEFAULT CHARACTER SET utf8 ;
USE `jjc18e1` ;

-- -----------------------------------------------------
-- Table `jjc18e1`.`petstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jjc18e1`.`petstore` ;

CREATE TABLE IF NOT EXISTS `jjc18e1`.`petstore` (
  `pst_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_name` VARCHAR(30) NOT NULL,
  `pst_street` VARCHAR(30) NOT NULL,
  `pst_city` VARCHAR(30) NOT NULL,
  `pst_state` CHAR(2) NOT NULL,
  `pst_zip` INT(9) UNSIGNED NOT NULL,
  `pst_phone` BIGINT NOT NULL,
  `pst_email` VARCHAR(100) NOT NULL,
  `pst_url` VARCHAR(100) NOT NULL,
  `pst_ytd_sales` DECIMAL(10,2) NOT NULL,
  `pst_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pst_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jjc18e1`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jjc18e1`.`customer` ;

CREATE TABLE IF NOT EXISTS `jjc18e1`.`customer` (
  `cus_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_fname` VARCHAR(15) NOT NULL,
  `cus_lname` VARCHAR(30) NOT NULL,
  `cus_street` VARCHAR(30) NOT NULL,
  `cus_city` VARCHAR(30) NOT NULL,
  `cus_state` CHAR(2) NOT NULL,
  `cus_zip` INT(9) NOT NULL,
  `cus_phone` BIGINT NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_balance` DECIMAL(8,2) NOT NULL,
  `cus_total_sales` DECIMAL(8,2) NOT NULL,
  `cus_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`cus_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jjc18e1`.`pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jjc18e1`.`pet` ;

CREATE TABLE IF NOT EXISTS `jjc18e1`.`pet` (
  `pet_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_id` SMALLINT UNSIGNED NOT NULL,
  `cus_id` SMALLINT UNSIGNED NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `pet_sex` ENUM('m', 'f') NOT NULL,
  `pet_cost` DECIMAL(6,2) NOT NULL,
  `pet_price` DECIMAL(6,2) NOT NULL,
  `pet_age` INT NOT NULL,
  `pet_color` VARCHAR(30) NOT NULL,
  `pet_sale_date` DATE NULL,
  `pet_vaccine` ENUM('y', 'n') NOT NULL,
  `pet_neuter` ENUM('y', 'n') NOT NULL,
  `pet_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pet_id`),
  INDEX `fk_pet_petstore_idx` (`pst_id` ASC),
  INDEX `fk_pet_customer1_idx` (`cus_id` ASC),
  CONSTRAINT `fk_pet_petstore`
    FOREIGN KEY (`pst_id`)
    REFERENCES `jjc18e1`.`petstore` (`pst_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pet_customer1`
    FOREIGN KEY (`cus_id`)
    REFERENCES `jjc18e1`.`customer` (`cus_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `jjc18e1`.`petstore`
-- -----------------------------------------------------
START TRANSACTION;
USE `jjc18e1`;
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (1, 'Claws and Paws', '123 Main St.', 'L.A.', 'CA', 090195341, 8185551234, 'clawsandpaws@gmail.com', 'clawsandpaws.com', 10000, 'notes1');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (2, 'Furry Friends', '1435 Chase Dr.', 'Chicago', 'IL', 618959031, 7175551234, 'furryfriends@gmail.com', 'furryfriends.com', 20000, 'notes2');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (3, 'Pet Partners', '811 4th St.', 'NY', 'NY', 001256728, 6165551234, 'petpartners@gmail.com', 'petpartners.com', 30000, 'notes3');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (4, 'Pet Palace', '18903 Tenessee St.', 'Tallahassee', 'FL', 000125678, 5155551234, 'petpalace@gmail.com', 'petpalace.com', 40000, 'notes4');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (5, 'Purrs and Grrs', '751 Lois Lane', 'Phoenix', 'AZ', 000012567, 4145551234, 'purrsandgrrs@gmail.com', 'purrsandgrrs.com', 50000, 'notes5');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (6, 'Pet Smart', '321 Main St.', 'Sarasota', 'FL', 000001256, 3135551234, 'petsmart@gmail.com', 'petsmart.com', 600000, 'notes6');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (7, 'Smart Pets', '456 Pet Lane', 'Pensacola', 'FL', 000000125, 2125551234, 'smartpet@gmail.com', 'smartpet.com', 60000, 'notes7');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (8, 'Pet Paradise', '123 Tree Rd.', 'Austin', 'TX', 000123456, 1115551234, 'petparadise@gmail.com', 'petparadise.com', 70000, 'notes8');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (9, 'Pet Store', '678 Pensacola St.', 'Tallahassee', 'FL', 001234567, 9195551234, 'petstore@gmail.com', 'petstore.com', 80000, 'notes9');
INSERT INTO `jjc18e1`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (10, 'Store of Pet', '981 Ocala Rd.', 'Tallahassee', 'FL', 012345678, 0105551234, 'storepet@gmail.com', 'storepet.com', 90000, 'notes10');

COMMIT;


-- -----------------------------------------------------
-- Data for table `jjc18e1`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `jjc18e1`;
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Billy', 'Bob', '123 Main St.', 'NY', 'NY', 123456789, 8013234242, 'billybob@gmail.com', 1000.00, 2000.00, 'notes1');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Jane', 'Doe', '321 Main St.', 'Pensacola', 'FL', 987654321, 1082322424, 'janedoe@gmail.com', 2000.00, 4000.00, 'notes2');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Dwayne', 'Johnson', '456 Rock Ave.', 'Miami', 'FL', 098765432, 9018944567, 'therock@gmail.com', 3000.00, 6000.00, 'notes3');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'John', 'Corrigan', '123 Tree Rd.', 'Sarasota', 'FL', 432156789, 0983456789, 'johnc@gmail.com', 4000.00, 8000.00, 'notes4');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Kevin', 'James', '456 Tenessee St.', 'Tallahassee', 'FL', 908345678, 3145672345, 'kjames@gmail.com', 6000.00, 12000.00, 'notes5');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Mark', 'Jowett', '789 Pensacola St.', 'Tallahassee', 'FL', 897567890, 8907654321, 'mjowett@gmail.com', 8000.00, 16000.00, 'notes6');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Mary', 'Jane', '420 Beach Rd.', 'Miami', 'FL', 897654321, 9056789012, 'maryjane@gmail.com', 10000.00, 20000.00, 'notes7');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Emily', 'Jones', '789 Ocala Rd.', 'Tallahassee', 'FL', 908765432, 1237659012, 'emilyjones@gmail.com', 12000.00, 24000.00, 'notes8');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'John', 'Cena', '555 Invisible Ln.', 'Savannah', 'GA', 890657893, 0981234567, 'johncena@gmail.com', 14000.00, 28000.00, 'notes9');
INSERT INTO `jjc18e1`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Sarah', 'Connor', '101 Terminator Ave.', 'L.A.', 'CA', 908679361, 4891274637, 'sarahconnor@gmail.com', 16000.00, 32000.00, 'notes10');

COMMIT;


-- -----------------------------------------------------
-- Data for table `jjc18e1`.`pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `jjc18e1`;
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, 6, 'Doberman', 'm', 350, 525, 52, 'black/tan', '2009-07-05', 'y', 'y', 'notes1');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, NULL, 'Chiwawa', 'f', 175, 165, 78, 'white/brown', NULL, 'n', 'n', 'notes2');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 4, 7, 'American Bobtail', 'm', 195, 385, 104, 'black', '2011-12-24', 'y', 'y', 'notes3');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 3, 3, 'Amerian Longhair', 'm', 165, 275, 156, 'white', '2005-08-01', 'n', 'y', 'notes4');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, NULL, 'British Shorthair', 'f', 155, 145, 28, 'grey', NULL, 'y', 'n', 'notes5');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 2, 8, 'Rose-Ringed Parakeet', 'f', 18, 32, 2, 'green/yellow', '2010-11-12', 'n', 'n', 'notes6');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, 4, 'African Grey Parrot', 'm', 1295, 1800, 250, 'grey/blue', '2007-09-19', 'n', 'n', 'notes7');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 3, 1, 'Pitbull', 'm', 300, 495, 8, 'black/white', '2001-05-27', 'n', 'y', 'notes8');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, 2, 'Boa Constrictor', 'f', 450, 735, 80, 'grey/green', '2006-10-31', 'n', 'n', 'notes9');
INSERT INTO `jjc18e1`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 2, NULL, 'Giraffe', 'f', 1735, 2495, 208, 'yellow and black spots', NULL, 'n', 'n', 'notes10');

COMMIT;

