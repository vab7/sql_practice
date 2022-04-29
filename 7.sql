USE Belousov;
-- 1
SELECT DISTINCT COUNT(sname) AS "Кол-во продавцов"
FROM SalesPeople;
-- 2
SELECT DISTINCT COUNT(city) AS "Города продавцов"
FROM SalesPeople;
-- 3
SELECT COUNT(*) AS "Кол-во строк"
FROM SalesPeople;
-- 4
SELECT SUM(rating) AS "Общий рейтинг заказчиков"
FROM Customers;
-- 5
SELECT SUM(amt) AS "Сумма Заказов"
FROM Orders;
-- 6
SELECT AVG(rating) AS "Средний рейтинг заказчиков"
FROM Customers;
-- 7
SELECT AVG(amt) AS "Средняя стоимость заказа"
FROM Orders;
-- 8
SELECT MIN(rating) AS "Минимальный рейтинг заказчика"
FROM Customers;
-- 9
SELECT MAX(comm) AS "Максимальная комиссия продавца"
FROM SalesPeople;
-- 10
SELECT (amt + dostavka) AS "Общая стоимость заказа"
FROM Orders;
-- 11
SELECT cname AS "Имя",
    city AS "Город",
    (rating / 50) AS "Рейтинг"
FROM Customers;
-- 12
SELECT sname AS "Имя",
    city AS "Город",
    (SIN(comm) * 10) AS "Комиссия"
FROM SalesPeople;
-- 13
SELECT "Номер заказчика",
    cnum,
    "Имя заказчика",
    cname,
    "Город",
    city
FROM Customers;
-- 14
SELECT "Номер",
    snum,
    "Имя продавца",
    sname,
    "Город",
    city,
    "Комиссионные",
    comm
FROM SalesPeople;