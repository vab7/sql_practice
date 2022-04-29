USE Belousov;
-- 1
SELECT cname AS "Заказчик",
    rating AS "Рейтинг"
FROM Customers
ORDER BY rating DESC;
-- 2
SELECT sname AS "Продавец",
    cname AS "Заказчик"
FROM Customers
    JOIN SalesPeople ON SalesPeople.snum = Customers.snum
ORDER BY sname DESC;
-- 3
SELECT snum AS "Номер",
    sname AS "Имя",
    city AS "Город"
FROM SalesPeople
ORDER BY sname DESC;
-- 4
SELECT cname AS "Имя",
    city AS "Город",
    rating AS "Рейтинг"
FROM Customers
ORDER BY rating,
    cname;
-- 5
SELECT sname AS "Имя",
    city AS "Город"
FROM SalesPeople
GROUP BY city
ORDER BY sname;
-- 6
SELECT cname AS "Имя",
    city AS "Город",
    rating AS "Рейтинг"
FROM Customers
ORDER BY 2;
-- 7
SELECT city AS "Город",
    rating AS "Рейтинг"
FROM Customers
ORDER BY rating;