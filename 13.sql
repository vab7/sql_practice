USE Belousov;
-- 1
SELECT cname,
    city,
    rating,
    "ВЫСОКИЙ РЕЙТИНГ" AS "Рейтинг"
FROM Customers
WHERE rating > 200
UNION
SELECT cname,
    city,
    rating,
    "НИЗКИЙ РЕЙТИНГ"
FROM Customers
WHERE rating < 200;
-- 2
SELECT Orders.cnum AS "Номер",
    cname AS "Имя"
FROM Orders,
    Customers
WHERE Customers.cnum = Orders.cnum
GROUP BY Orders.cnum
HAVING COUNT(Orders.snum) > 1
UNION
SELECT Orders.snum,
    sname
FROM Orders,
    SalesPeople
WHERE SalesPeople.snum = Orders.snum
GROUP BY Orders.snum
HAVING COUNT(Orders.cnum) > 1
ORDER BY 2;
-- 3
SELECT snum
FROM SalesPeople
WHERE city LIKE "San Jose"
UNION
SELECT cnum
FROM Customers
WHERE city LIKE "San Jose"
UNION
SELECT onum
FROM Orders
WHERE odate LIKE "2021-10-03";
--
SELECT *
FROM SalesPeople;
SELECT *
FROM Customers;
SELECT *
FROM Orders;