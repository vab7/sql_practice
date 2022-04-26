CREATE DATABASE IF NOT EXISTS Belousov4;
USE Belousov4;
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
    city VARCHAR(50) NOT NULL DEFAULT "London",
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