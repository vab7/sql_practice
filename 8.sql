USE Belousov;
-- 1
SELECT SUM(amt) AS "Сумма приобритений 3 Октября"
FROM Orders
GROUP BY odate
HAVING odate = "2021.10.03";
-- 2
-- 3
SELECT cnum AS "Покупатель",
    MIN(amt) AS "Мин. сумма заказчика"
FROM Orders
GROUP BY snum;
-- 4
SELECT odate AS "Дата",
    snum AS "Продавец",
    MIN(amt) AS "Мин. сумма приобритений в день"
FROM Orders
GROUP BY odate;
-- 5
SELECT cname AS "Заказчик",
    MIN(amt) AS "Мин. заказы"
FROM Orders
    JOIN Customers ON Orders.cnum = Customers.cnum
GROUP BY cname
HAVING cname IN ("Cisneros", "Grass", "Clemens");
-- 6
SELECT cname AS "Заказчик"
FROM Customers
GROUP BY cname DESC
HAVING cname LIKE "G%";
-- 7
SELECT city AS "Город",
    MAX(rating) AS "Рейтинг"
FROM Customers
GROUP BY city;
-- 8
SELECT odate AS "Дата",
    COUNT(DISTINCT Orders.snum) AS "Рег. заказы"
FROM Orders
    JOIN SalesPeople ON Orders.snum = SalesPeople.snum
GROUP BY odate;
-- 9