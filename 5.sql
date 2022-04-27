use Belousov;
/* rename tables */
RENAME TABLE SalesPeople TO SalesPeople1;
RENAME TABLE Customers TO Customers1;
RENAME TABLE Orders TO Orders1;
/* change columns name */
ALTER TABLE SalesPeople1 CHANGE snum snum1 INT(4),
    CHANGE sname sname1 VARCHAR(20);
ALTER TABLE Customers1 CHANGE city city1 VARCHAR(50),
    CHANGE rating rating1 INT(3);
ALTER TABLE Orders1 CHANGE amt amt1 FLOAT(10),
    CHANGE odate odate1 DATE;
/* add naprav */
ALTER TABLE SalesPeople1
ADD Naprav VARCHAR(50)
AFTER sname1;
/* update naprav */
UPDATE SalesPeople1
SET Naprav = "Продукты"
WHERE snum1 = 1001;
UPDATE SalesPeople1
SET Naprav = "Молочная продукция"
WHERE snum1 = 1002;
UPDATE SalesPeople1
SET Naprav = "Алкогольная продукция"
WHERE snum1 = 1004;
UPDATE SalesPeople1
SET Naprav = "Табачные изделия"
WHERE snum1 = 1007;
UPDATE SalesPeople1
SET Naprav = "Колбасная продукция"
WHERE snum1 = 1003;
/* add dostavka */
ALTER TABLE Orders1
ADD Dostavka FLOAT(10)
AFTER amt1;
/* update dostavka */
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
/* add oplata */
ALTER TABLE Orders1
ADD Oplata VARCHAR(50)
AFTER Dostavka;
/* update oplata */
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
/* update rating */
UPDATE Customers1
SET rating1 = 125
WHERE cnum = 2001;
UPDATE Customers1
SET rating1 = 225
WHERE cnum = 2002;
UPDATE Customers1
SET rating1 = 610
WHERE cnum = 2003;
UPDATE Customers1
SET rating1 = 350
WHERE cnum = 2004;
UPDATE Customers1
SET rating1 = 480
WHERE cnum = 2007;
UPDATE Customers1
SET rating1 = 320
WHERE cnum = 2008;
/* update london */
UPDATE Customers1
SET city1 = "Paris"
WHERE city1 = "London";
/* update comm */
UPDATE SalesPeople1
SET comm = 0.16
WHERE comm > 0.12;
/* delete 3011 */
DELETE FROM Orders1
WHERE onum = 3011;