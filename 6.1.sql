use Belousov;
/* in */
SELECT *
FROM Customers1
WHERE snum IN (1001, 1002, 1007);
/* in */
SELECT *
FROM Orders1
WHERE cnum IN (2001, 2004, 2008);
/* between */
SELECT *
FROM SalesPeople1
WHERE snum1 BETWEEN 1001 AND 1005;
/* between */
SELECT *
FROM SalesPeople1
WHERE comm BETWEEN 0.10 AND 0.13;
/* like */
SELECT *
FROM Customers1
WHERE cname LIKE "A%G";
/* like */
SELECT *
FROM Customers1
WHERE city1 LIKE "A%L";
/* date */
SELECT *
FROM Orders1
WHERE odate1 BETWEEN "2021.10.03" AND "2021.10.05";
/* c */
SELECT *
FROM Customers1
WHERE cname LIKE "C%";
/* g */
SELECT *
FROM Customers1
WHERE cname LIKE "G%";
/* g and s */
SELECT *
FROM Customers1
WHERE cname LIKE "C%s";