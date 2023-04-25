CREATE DATABASE MARKET
USE MARKET
CREATE TABLE Products
(
    Id INT,
	Name NVARCHAR(20)
)
ALTER TABLE Products
ADD Price MONEY


ALTER TABLE Products
ALTER COLUMN Name NVARCHAR(50)

INSERT INTO Products(Id,Name,Price)
VALUES
(1, 'iPhone 14 Pro Max', '4500'),
(2, 'iPhone 14 Pro', '4200'),
(3, 'iPhone 13 Pro Max','4300'),
(4, 'iPhone 13','4000'),
(5, 'iPhone 12 Pro Max','3500'),
(6, 'iPhone 12 Pro', '3100'),
(7, 'iPhone 12','3000'),
(8, 'Samsung Galaxy Z Fold 4','4200'),
(9, 'Samsung Galaxy S23 Ultra','3500'),
(10, 'Samsung Galaxy Z Flip 4','2500'),
(11, 'Samsung Galaxy S22','1670'),
(12, 'Samsung Galaxy A73','1170'),
(13, 'Samsung Galaxy A54','1150'),
(14, 'Samsung Galaxy A53','1000'),
(15, 'Samsung Galaxy A04S','350')

SELECT Price FROM Products
WHERE Price>10

SELECT * FROM Products
WHERE Name LIKE '%A%'

SELECT * FROM Products
WHERE Price BETWEEN 100 AND 500

UPDATE Products
SET Price='100'
WHERE Id=15