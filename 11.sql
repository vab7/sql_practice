USE Belousov;
-- 1
SELECT *
FROM Orders
WHERE cnum = (
        SELECT cnum
        FROM Customers
        WHERE cname = 'Hoffman'
    );
-- 2
SELECT *
FROM Orders
WHERE snum = (
        SELECT snum
        FROM SalesPeople
        WHERE city = "New York"
    );
-- 3
SELECT cname
FROM Customers
WHERE snum = (
        SELECT snum
        FROM SalesPeople
        WHERE sname = "Motika"
    );
-- 4
SELECT *
FROM SalesPeople
WHERE snum = (
        SELECT snum
        FROM Customers
        WHERE cname = "Liu"
    );
-- 5
SELECT *
FROM Orders
WHERE cnum = (
        SELECT cnum
        FROM Customers
        WHERE city = "Rome"
            AND rating = 100
    );