USE Belousov;
/* 1 */
SELECT DISTINCT COUNT(sname1) AS "Кол-во продавцов"
FROM SalesPeople1;
/* 2 */
SELECT DISTINCT COUNT(city) AS "Города продавцов"
FROM SalesPeople1;
/* 3 */
SELECT COUNT(*) AS "Кол-во строк"
FROM SalesPeople1;
/* 4 */
SELECT SUM(rating1) AS "Общий рейтинг заказчиков"
FROM Customers1;
/* 5 */
SELECT SUM(amt1) AS "Сумма Заказов"
FROM Orders1;
/* 6 */
SELECT AVG(rating1) AS "Средний рейтинг заказчиков"
FROM Customers1;
/* 7 */
SELECT AVG(amt1) AS "Средняя стоимость заказа"
FROM Orders1;
/* 8 */
SELECT MIN(rating1) AS "Минимальный рейтинг заказчика"
FROM Customers1;
/* 9 */
SELECT MAX(comm) AS "Максимальная комиссия продавца"
FROM SalesPeople1;
/* 10 */
SELECT (amt1 + dostavka) AS "Общая стоимость заказа"
FROM Orders1;
/* 11 */
SELECT cname AS "Имя",
    city1 AS "Город",
    (rating1 / 50) AS "Рейтинг"
FROM Customers1;
/* 12 */
SELECT sname1 AS "Имя",
    city AS "Город",
    (SIN(comm) * 10) AS "Комиссия"
FROM SalesPeople1;
/* 13 */
SELECT "Номер заказчика",
    cnum,
    "Имя заказчика",
    cname,
    "Город",
    city1
FROM Customers1;
/* 14 */
SELECT "Номер",
    snum1,
    "Имя продавца",
    sname1,
    "Город",
    city,
    "Комиссионные",
    comm
FROM SalesPeople1;