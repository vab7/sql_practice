USE Belousov;
-- 1
SELECT Customers.cname AS "Заказчик",
    Customers.rating AS "Рейтинг",
    ROUND(AVG(amt), 2) AS "Средняя стоимость заказа"
FROM Orders,
    Customers
WHERE Orders.cnum = Customers.cnum
GROUP BY Orders.cnum;
-- 2
SELECT cname AS "Заказчик",
    city AS "Город",
    rating AS "Рейтинг"
FROM Customers
WHERE rating < (
        SELECT AVG(rating)
        FROM Customers
    )
    AND city LIKE "Rome";
-- 3
SELECT comm AS "Комиссионные"
FROM SalesPeople
WHERE snum = (
        SELECT DISTINCT snum
        FROM Customers
        WHERE city LIKE "Paris"
    );
-- 4
SELECT COUNT(*) AS "Кол-во заказов"
FROM Orders
WHERE (amt + dostavka) < (
        SELECT AVG(amt + dostavka)
        FROM Orders
    )
    AND odate LIKE "2021-10-03";
-- 5
SELECT *
FROM SalesPeople
WHERE snum = (
        SELECT (cnum - 1000)
        FROM Customers
        WHERE city LIKE "Berlin"
    );
-- 6
SELECT snum,
    ROUND(SUM(amt), 2) AS "Сумма приобритений"
FROM Orders
GROUP BY snum
HAVING ROUND(SUM(amt), 2) > (
        SELECT MAX(amt)
        FROM Orders
    );
-- 
select *
from Orders;
select *
from SalesPeople;
select *
from Customers;