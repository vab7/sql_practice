USE Belousov;
-- 1
SELECT sname AS "Продавец",
    Customers.cname AS "Покупатель",
    ROUND(Orders.amt + Orders.dostavka, 2) AS "Сумма покупки"
FROM SalesPeople,
    Customers,
    Orders
WHERE (
        (Orders.amt + Orders.dostavka) BETWEEN 700 AND 2000
    )
    AND SalesPeople.snum = Orders.snum
    AND Customers.snum = Orders.snum;
-- 2
SELECT sname AS "Продавец",
    ROUND(Orders.amt + Orders.dostavka, 2) AS "Сумма покупки"
FROM SalesPeople,
    Orders
WHERE SalesPeople.snum = Orders.snum;
-- 3
SELECT sname AS "Продавец",
    cname AS "Покупатель"
FROM SalesPeople,
    Customers
WHERE SalesPeople.snum = Customers.snum;
-- 4
SELECT sname AS "Продавец",
    Customers.cname AS "Покупатель",
    SalesPeople.city AS "Город"
FROM SalesPeople,
    Customers
WHERE SalesPeople.city = Customers.city;
-- 5
SELECT odate AS "Дата",
    SalesPeople.comm AS "Комиссия"
FROM Orders,
    SalesPeople
WHERE SalesPeople.comm < 0.12
    AND Orders.snum = SalesPeople.snum
ORDER BY odate;
-- 6
SELECT ROUND(amt + dostavka, 2) AS "Сумма заказа",
    Customers.rating AS "Рейтинг"
FROM Orders,
    Customers
WHERE Customers.rating > 100
    AND Orders.cnum = Customers.cnum;
-- 7
SELECT cname AS "Заказчик",
    Orders.odate AS "Дата"
FROM Customers,
    Orders
WHERE odate = "2021.10.03"
    AND Orders.cnum = Customers.cnum;
-- 8
SELECT cname AS "Покупатель",
    ROUND(Orders.amt + Orders.dostavka, 2) AS "Сумма заказа",
    SalesPeople.comm AS "Комиссионные",
    "2021.10.04" AS "Дата"
FROM Customers,
    SalesPeople,
    Orders
WHERE Orders.odate = "2021.10.04"
    AND Customers.cnum = Orders.cnum
    AND Orders.snum = SalesPeople.snum;
-- 9
SELECT cname AS "Заказчик",
    rating AS "Рейтинг",
    ROUND(Orders.amt + Orders.dostavka, 2) AS "Сумма заказа",
    odate AS "Дата"
FROM Customers,
    Orders
WHERE ROUND(Orders.amt + Orders.dostavka, 2) > 3000
    AND odate = "2021.10.03"
    AND Customers.cnum = Orders.cnum;
-- 10
SELECT onum AS "Номер заказа",
    Customers.cname AS "Имя заказчика",
    SalesPeople.sname AS "Имя продавца",
    Customers.city AS "Город"
FROM Orders,
    Customers,
    SalesPeople
WHERE Customers.city = "San Jose"
    AND Orders.cnum = Customers.cnum
    AND Orders.snum = SalesPeople.snum;