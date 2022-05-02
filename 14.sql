USE Belousov;
DROP VIEW IF EXISTS CustomersRating300;
DROP VIEW IF EXISTS CnameZ;
DROP VIEW IF EXISTS LondonSalesPeople;
DROP VIEW IF EXISTS OrderMore1000;
DROP VIEW IF EXISTS OrderMarchToApril;
DROP VIEW IF EXISTS CustomersTop5Rating;
DROP VIEW IF EXISTS AvgOrder;
DROP VIEW IF EXISTS CitySalesPeople;
DROP VIEW IF EXISTS RomeSalesPeople;
DROP VIEW IF EXISTS AvgOrderSalesPeople;
DROP VIEW IF EXISTS SalesPeopleWithCustomers;
DROP VIEW IF EXISTS OrderSalesPeopleApril;
-- 1
CREATE VIEW CustomersRating300 AS
SELECT *
FROM Customers
WHERE rating = 300;
SELECT *
FROM CustomersRating300;
-- 2
CREATE VIEW CustomersC AS
SELECT *
FROM Customers
WHERE cname LIKE "C%";
RENAME TABLE CustomersC TO CnameZ;
SELECT *
FROM CnameZ;
-- 3
CREATE VIEW LondonSalesPeople AS
SELECT *
FROM SalesPeople
WHERE city LIKE "London";
SELECT *
FROM LondonSalesPeople;
-- 4
CREATE VIEW OrderMore1000 AS
SELECT *
FROM Orders
WHERE amt > 1000;
SELECT *
FROM OrderMore1000;
-- 5
CREATE VIEW OrderMarchToApril AS
SELECT *
FROM Orders
WHERE odate BETWEEN "2021-10-00" AND "2021-11-00";
SELECT *
FROM OrderMarchToApril;
-- 6
CREATE VIEW CustomersTop5Rating AS
SELECT *
FROM Customers
ORDER BY rating DESC
LIMIT 5;
SELECT *
FROM CustomersTop5Rating;
-- 7
CREATE VIEW AvgOrder AS
SELECT snum,
    cnum,
    ROUND(AVG(amt), 2),
    ROUND(MAX(amt), 2)
FROM Orders
GROUP BY snum;
SELECT *
FROM AvgOrder;
-- 8
CREATE VIEW CitySalesPeople AS
SELECT city,
    snum
FROM SalesPeople
ORDER BY city;
SELECT *
FROM CitySalesPeople;
-- 9
CREATE VIEW RomeSalesPeople AS
SELECT sname,
    Customers.city,
    comm
FROM SalesPeople,
    Customers
WHERE (SalesPeople.snum = Customers.snum)
    AND (
        Customers.city LIKE "Rome"
        OR Customers.city LIKE "San Jose"
    );
SELECT *
FROM RomeSalesPeople;
-- 10
CREATE VIEW AvgOrderSalesPeople AS
SELECT sname,
    ROUND(AVG(amt + dostavka), 2),
    ROUND(SUM(amt + dostavka), 2)
FROM Orders,
    SalesPeople
WHERE Orders.snum = SalesPeople.snum
GROUP BY Orders.snum;
SELECT *
FROM AvgOrderSalesPeople;
-- 11
SELECT *
FROM LondonSalesPeople;
-- 12
CREATE VIEW SalesPeopleWithCustomers AS
SELECT snum,
    cnum
FROM Orders
ORDER BY snum;
SELECT *
FROM SalesPeopleWithCustomers;
-- 13
CREATE VIEW OrderSalesPeopleApril AS
SELECT snum,
    odate
FROM Orders
WHERE odate LIKE "2021-10-%";
SELECT *
FROM OrderSalesPeopleApril;
--
SELECT *
FROM Customers;
SELECT *
FROM SalesPeople;
SELECT *
FROM Orders;