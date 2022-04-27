CREATE DATABASE IF NOT EXISTS Belousov5;
USE Belousov5;
CREATE TABLE IF NOT EXISTS SalesPeople (
    snum INT(4) NOT NULL UNIQUE,
    sname VARCHAR(20) NOT NULL,
    city VARCHAR(50) NOT NULL DEFAULT "London",
    comm FLOAT(3) NOT NULL,
    PRIMARY KEY(snum)
);
CREATE TABLE IF NOT EXISTS Customers (
    cnum INT(4) NOT NULL UNIQUE,
    cname VARCHAR(20) NOT NULL,
    city VARCHAR(50) DEFAULT "London",
    rating INT(3) NOT NULL,
    snum INT(4) NOT NULL,
    PRIMARY KEY(cnum),
    FOREIGN KEY(snum) REFERENCES SalesPeople(snum)
);
CREATE TABLE IF NOT EXISTS Orders (
    onum INT(4) NOT NULL UNIQUE,
    amt FLOAT(10) NOT NULL,
    odate DATE NOT NULL,
    cnum INT(4) NOT NULL,
    snum INT(4) NOT NULL,
    PRIMARY KEY(onum),
    FOREIGN KEY(cnum) REFERENCES Customers(cnum),
    FOREIGN KEY(snum) REFERENCES SalesPeople(snum)
);
INSERT INTO SalesPeople (snum, sname, city, comm)
VALUES (1001, "Peel", "London", 0.12),
    (1002, "Serres", "San Jose", 0.13),
    (1004, "Motika", "London", 0.11),
    (1007, "Rifkin", "Barcelona", 0.15),
    (1003, "Axelrod", "New York", 0.10);
INSERT INTO Customers (cnum, cname, city, rating, snum)
VALUES (2001, "Hoffman", "London", 100, 1001),
    (2002, "Giovanni", "Rome", 200, 1003),
    (2003, "Liu", "San Jose", 200, 1002),
    (2004, "Grass", "Berlin", 300, 1002),
    (2006, "Clemens", "London", 100, 1001),
    (2008, "Cisneros", "San Jose", 300, 1007),
    (2007, "Pereira", "Rome", 100, 1004);
INSERT INTO Orders (onum, amt, odate, cnum, snum)
VALUES (3001, 18.69, "2021/03/10", 2008, 1007),
    (3003, 767.19, "2021/03/10", 2001, 1001),
    (3002, 1900.10, "2021/03/10", 2007, 1004),
    (3005, 5160.45, "2021/03/10", 2003, 1002),
    (3006, 1098.16, "2021/03/10", 2008, 1007),
    (3009, 1713.23, "2021/04/10", 2002, 1003),
    (3007, 75.75, "2021/04/10", 2004, 1002),
    (3008, 4723.00, "2021/05/10", 2006, 1001),
    (3010, 1309.96, "2021/06/10", 2004, 1002),
    (3011, 9891.88, "2021/06/10", 2006, 1001);
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