USE Belousov;
/* 1 */
SELECT cname AS "Заказчик",
    rating1 AS "Рейтинг"
FROM Customers1
ORDER BY rating1 DESC;
/* 2 */
SELECT sname1 AS "Продавец",
    cname AS "Заказчик"
FROM Customers1
    JOIN SalesPeople1 ON snum = snum1
ORDER BY sname1 DESC;
/* 3 */
SELECT snum1 AS "Номер",
    sname1 AS "Имя",
    city AS "Город"
FROM SalesPeople1
ORDER BY sname1 DESC;
/* 4 */
SELECT cname AS "Имя",
    city1 AS "Город",
    rating1 AS "Рейтинг"
FROM Customers1
ORDER BY rating1,
    cname;
/* 5 */
SELECT sname1 AS "Имя",
    city AS "Город"
FROM SalesPeople1
GROUP BY city
ORDER BY sname1;
/* 6 */
SELECT cname AS "Имя",
    city1 AS "Город",
    rating1 AS "Рейтинг"
FROM Customers1
ORDER BY 2;
/* 7 */
SELECT city1 AS "Город",
    rating1 AS "Рейтинг"
FROM Customers1
ORDER BY rating1;