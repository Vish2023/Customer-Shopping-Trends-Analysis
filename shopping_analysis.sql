CREATE DATABASE shopping_db;
USE shopping_db;

CREATE TABLE shopping (
    `Customer ID` INT,
    `Age` INT,
    `Gender` VARCHAR(10),
    `Item Purchased` VARCHAR(50),
    `Category` VARCHAR(20),
    `Purchase Amount (USD)` DECIMAL(10,2),
    `Location` VARCHAR(50),
    `Size` VARCHAR(10),
    `Color` VARCHAR(20),
    `Season` VARCHAR(20),
    `Review Rating` DECIMAL(3,1),
    `Subscription Status` VARCHAR(10),
    `Payment Method` VARCHAR(20),  -- Already included, but reordered
    `Shipping Type` VARCHAR(20),
    `Discount Applied` VARCHAR(10),
    `Promo Code Used` VARCHAR(10),
    `Previous Purchases` VARCHAR(20),  -- Keeping as VARCHAR for now
    `Preferred Payment Method` VARCHAR(20),  -- New 19th column
    `Frequency of Purchases` VARCHAR(20)
);

SELECT COUNT(*) FROM shopping;
SELECT * FROM shopping LIMIT 5;

SELECT `Category`, SUM(`Purchase Amount (USD)`) AS Total_Purchases
FROM shopping
GROUP BY `Category`
ORDER BY Total_Purchases DESC;

SELECT `Gender`, AVG(`Review Rating`) AS Avg_Rating
FROM shopping
GROUP BY `Gender`;

SELECT `Location`, SUM(`Purchase Amount (USD)`) AS Total_Purchases
FROM shopping
GROUP BY `Location`
ORDER BY Total_Purchases DESC
LIMIT 5;