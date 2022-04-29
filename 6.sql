USE Belousov;
-- 1
SELECT DISTINCT city
FROM Customers;
-- 2
SELECT DISTINCT rating
FROM Customers;
-- 3
SELECT DISTINCT comm
FROM SalesPeople;
-- 4
SELECT *
FROM SalesPeople
WHERE city = "London";
-- 5
SELECT *
FROM SalesPeople
WHERE comm > 0.12;
-- 6
SELECT *
FROM Customers
WHERE city = "Rome";
-- 7
SELECT *
FROM Customers
WHERE rating = 100
    OR rating = 300;
-- 8
SELECT *
FROM Orders
WHERE amt < 1000;
-- 9
SELECT *
FROM Customers
WHERE city = "Rome"
    AND rating = 200;
-- 10
SELECT *
FROM Customers
WHERE city = "Berlin"
    OR rating = 300;