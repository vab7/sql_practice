use belousov;
/* 1 */
SELECT SUM(amt1) AS "Сумма приобритений 3 Октября"
FROM Orders1
GROUP BY odate1
HAVING odate1 = "2021.10.03";
/* 2 */
/* 3 */
SELECT cnum AS "Покупатель",
    MIN(amt1) AS "Мин. сумма заказчика"
FROM Orders1
GROUP BY snum;
/* 4 */
SELECT odate1 AS "Дата",
    snum AS "Продавец",
    MIN(amt1) AS "Мин. сумма приобритений в день"
FROM Orders1
GROUP BY odate1;
/* 5 */
SELECT cname AS "Заказчик",
    MIN(amt1) AS "Мин. заказы"
FROM Orders1
    JOIN Customers1 ON Orders1.cnum = Customers1.cnum
GROUP BY cname
HAVING cname IN ("Cisneros", "Grass", "Clemens");
/* 6 */
SELECT cname AS "Заказчик"
FROM Customers1
GROUP BY cname DESC
HAVING cname LIKE "G%";
/* 7 */
SELECT city1 AS "Город",
    MAX(rating1) AS "Рейтинг"
FROM Customers1
GROUP BY city1;
/* 8 */
SELECT odate1 AS "Дата",
    COUNT(DISTINCT snum) AS "Рег. заказы"
FROM Orders1
    JOIN SalesPeople1 ON Orders1.snum = SalesPeople1.snum1
GROUP BY odate1;
/* 9 */