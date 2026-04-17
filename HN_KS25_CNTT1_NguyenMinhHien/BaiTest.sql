CREATE DATABASE `ShopManager`;
USE `ShopManager`;
SET SQL_SAFE_UPDATES = 0;
CREATE TABLE `Categories`(
	`Category_id` INT PRIMARY KEY AUTO_INCREMENT,
    `Category_name` VARCHAR(50)
);

CREATE TABLE `Products`(
	`Product_id` INT PRIMARY KEY AUTO_INCREMENT,
    `Product_name` VARCHAR(50),
    `Price` BIGINT NOT NULL CHECK (`Price` > 0),
    `Stock` INT CHECK (`Stock` > 0),
    `Category_id` INT,
    CONSTRAINT `fk_Product_Category`
    FOREIGN KEY (`Category_id`) REFERENCES `Categories`(`Category_id`)
);

INSERT INTO `Categories`
VALUES 
	(1,'Điện tử'),
    (2,'Thời trang');
    
INSERT INTO `products`
VALUES 
	(1,'iPhone 15', 25000000, 10, 1),
    (2,'Samsung S23', 20000000, 5, 1),
    (3,'Áo sơ mi nam', 500000, 50, 2),
    (4,'Giày thể thao', 1200000, 20, 2);
    
UPDATE `products`
SET `Price` = 26000000
WHERE `Product_name` = 'iPhone 15';

UPDATE `products`
SET `Stock` = `Stock` + 10
WHERE `Category_id` = 1;

DELETE FROM `products`
WHERE `Product_id` = 4;

DELETE FROM `products`
WHERE `Price` < 1000000;

-- LỆNH XÓA HẾT LẠI
-- DELETE FROM `products`;

SELECT * FROM `products`;

SELECT * FROM `products`
WHERE `Stock` > 15;

SELECT * FROM `products`
WHERE `Price` BETWEEN 1000000 AND 25000000;

SELECT * FROM `products`
WHERE `Product_name` <> 'iPhone 15' AND `Stock` > 0;

SELECT * FROM `products`
WHERE `Category_id` <> 1 AND `Price` > 500000;