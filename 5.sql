USE Belousov;
-- 1
RENAME TABLE SalesPeople TO SalesPeople1;
RENAME TABLE Customers TO Customers1;
RENAME TABLE Orders TO Orders1;
-- 2
ALTER TABLE SalesPeople1 CHANGE snum snum1 INT(4),
    CHANGE sname sname1 VARCHAR(20);
ALTER TABLE Customers1 CHANGE city city1 VARCHAR(50),
    CHANGE rating rating1 INT(3);
ALTER TABLE Orders1 CHANGE amt amt1 FLOAT(10),
    CHANGE odate odate1 DATE;
-- 3
ALTER TABLE SalesPeople1
ADD Naprav VARCHAR(50)
AFTER sname1;
-- 4
UPDATE SalesPeople1
SET naprav = "Продукты"
WHERE snum1 = 1001;
UPDATE SalesPeople1
SET naprav = "Молочная продукция"
WHERE snum1 = 1002;
UPDATE SalesPeople1
SET naprav = "Алкогольная продукция"
WHERE snum1 = 1004;
UPDATE SalesPeople1
SET naprav = "Табачные изделия"
WHERE snum1 = 1007;
UPDATE SalesPeople1
SET naprav = "Колбасная продукция"
WHERE snum1 = 1003;
-- 5
ALTER TABLE Orders1
ADD dostavka FLOAT(10)
AFTER amt1;
-- 6
UPDATE Orders1
SET Dostavka = ROUND(amt1 * 0.3, 2)
WHERE snum = 1001;
UPDATE Orders1
SET Dostavka = ROUND(amt1 * 0.3, 2)
WHERE snum = 1002;
UPDATE Orders1
SET Dostavka = ROUND(amt1 * 0.3, 2)
WHERE snum = 1004;
UPDATE Orders1
SET Dostavka = ROUND(amt1 * 0.3, 2)
WHERE snum = 1007;
UPDATE Orders1
SET Dostavka = ROUND(amt1 * 0.3, 2)
WHERE snum = 1003;
-- 7
ALTER TABLE Orders1
ADD Oplata VARCHAR(50)
AFTER Dostavka;
-- 8
UPDATE Orders1
SET Oplata = CASE
        WHEN Dostavka < 100 THEN "Наличный"
        WHEN Dostavka < 1000 THEN "Безначичный"
        ELSE "Перечисление"
    END
WHERE snum = 1001;
UPDATE Orders1
SET Oplata = CASE
        WHEN Dostavka < 100 THEN "Наличный"
        WHEN Dostavka < 1000 THEN "Безначичный"
        ELSE "Перечисление"
    END
WHERE snum = 1002;
UPDATE Orders1
SET Oplata = CASE
        WHEN Dostavka < 100 THEN "Наличный"
        WHEN Dostavka < 1000 THEN "Безначичный"
        ELSE "Перечисление"
    END
WHERE snum = 1004;
UPDATE Orders1
SET Oplata = CASE
        WHEN Dostavka < 100 THEN "Наличный"
        WHEN Dostavka < 1000 THEN "Безначичный"
        ELSE "Перечисление"
    END
WHERE snum = 1007;
UPDATE Orders1
SET Oplata = CASE
        WHEN Dostavka < 100 THEN "Наличный"
        WHEN Dostavka < 1000 THEN "Безначичный"
        ELSE "Перечисление"
    END
WHERE snum = 1003;
-- 9
ALTER TABLE Customers1 CHANGE rating1 rating1 FLOAT(3);
-- 10
UPDATE Customers1
SET city1 = "Paris"
WHERE city1 = "London";
-- 11
UPDATE SalesPeople1
SET comm = 0.16
WHERE comm > 0.12;
-- 12
DELETE FROM Orders1
WHERE onum = 3011;
--
RENAME TABLE SalesPeople1 TO SalesPeople;
RENAME TABLE Customers1 TO Customers;
RENAME TABLE Orders1 TO Orders;
--
ALTER TABLE SalesPeople CHANGE snum1 snum INT(4),
    CHANGE sname1 sname VARCHAR(20);
ALTER TABLE Customers CHANGE city1 city VARCHAR(50),
    CHANGE rating1 rating INT(3);
ALTER TABLE Orders CHANGE amt1 amt FLOAT(10),
    CHANGE odate1 odate DATE;