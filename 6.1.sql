USE Belousov;
-- 1
SELECT *
FROM Customers
WHERE snum IN (1001, 1002, 1007);
-- 2
SELECT *
FROM Orders
WHERE cnum IN (2001, 2004, 2008);
-- 3
SELECT *
FROM SalesPeople
WHERE snum BETWEEN 1001 AND 1005;
-- 4
SELECT *
FROM SalesPeople
WHERE comm BETWEEN 0.10 AND 0.13;
-- 5
SELECT *
FROM Customers
WHERE cname LIKE "A%G";
-- 6
SELECT *
FROM Customers
WHERE city LIKE "A%L";
-- 7
SELECT *
FROM Orders
WHERE odate BETWEEN "2021.10.03" AND "2021.10.05";
-- 8
SELECT *
FROM Customers
WHERE cname LIKE "C%";
-- 9
SELECT *
FROM Customers
WHERE cname LIKE "G%";
-- 10
SELECT *
FROM Customers
WHERE cname LIKE "C%s";