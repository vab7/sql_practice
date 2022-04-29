USE Belousov;
-- 1
SELECT sname1 AS "Продавец",
    Customers1.cname AS "Покупатель",
    ROUND(Orders1.amt1 + Orders1.dostavka, 2) AS "Сумма покупки"
FROM SalesPeople1,
    Customers1,
    Orders1
WHERE (
        (Orders1.amt1 + Orders1.dostavka) BETWEEN 700 AND 2000
    )
    AND SalesPeople1.snum1 = Orders1.snum
    AND Customers1.snum = Orders1.snum;
-- 2
SELECT sname1 AS "Продавец",
    ROUND(Orders1.amt1 + Orders1.dostavka, 2) AS "Сумма покупки"
FROM SalesPeople1,
    Orders1
WHERE snum1 = Orders1.snum;
-- 3
SELECT sname1 AS "Продавец",
    cname AS "Покупатель"
FROM SalesPeople1,
    Customers1
WHERE snum1 = Customers1.snum;
-- 4
SELECT sname1 AS "Продавец",
    Customers1.cname AS "Покупатель",
    city AS "Город"
FROM SalesPeople1,
    Customers1
WHERE city = Customers1.city1;
-- 5
SELECT odate1 AS "Дата",
    SalesPeople1.comm AS "Комиссия"
FROM Orders1,
    SalesPeople1
WHERE SalesPeople1.comm < 0.12
    AND snum = SalesPeople1.snum1
ORDER BY odate1;
-- 6
SELECT ROUND(amt1 + dostavka, 2) AS "Сумма заказа",
    Customers1.rating1 AS "Рейтинг"
FROM Orders1,
    Customers1
WHERE Customers1.rating1 > 100
    AND Orders1.cnum = Customers1.cnum;
-- 7
SELECT cname AS "Заказчик",
    Orders1.odate1 AS "Дата"
FROM Customers1,
    Orders1
WHERE odate1 = "2021.10.03"
    AND Orders1.cnum = Customers1.cnum;
-- 8
SELECT cname AS "Покупатель",
    ROUND(Orders1.amt1 + Orders1.dostavka, 2) AS "Сумма заказа",
    SalesPeople1.comm AS "Комиссионные",
    "2021.10.04" AS "Дата"
FROM Customers1,
    SalesPeople1,
    Orders1
WHERE Orders1.odate1 = "2021.10.04"
    AND Customers1.cnum = Orders1.cnum
    AND Orders1.snum = SalesPeople1.snum1;
-- 9
SELECT cname AS "Заказчик",
    rating1 AS "Рейтинг",
    ROUND(Orders1.amt1 + Orders1.dostavka, 2) AS "Сумма заказа",
    odate1 AS "Дата"
FROM Customers1,
    Orders1
WHERE ROUND(Orders1.amt1 + Orders1.dostavka, 2) > 3000
    AND odate1 = "2021.10.03"
    AND Customers1.cnum = Orders1.cnum;
-- 10
SELECT onum AS "Номер заказа",
    Customers1.cname AS "Имя заказчика",
    SalesPeople1.sname1 AS "Имя продавца",
    Customers1.city1 AS "Город"
FROM Orders1,
    Customers1,
    SalesPeople1
WHERE Customers1.city1 = "San Jose"
    AND Orders1.cnum = Customers1.cnum
    AND Orders1.snum = SalesPeople1.snum1;