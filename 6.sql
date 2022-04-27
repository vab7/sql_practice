use Belousov;
/* city */
SELECT DISTINCT city1
FROM Customers1;
/* rating */
SELECT DISTINCT rating1
FROM Customers1;
/* comm */
SELECT DISTINCT comm
FROM SalesPeople1;
/* city */
SELECT *
FROM SalesPeople1
WHERE city = "London";
/* comm */
SELECT *
FROM SalesPeople1
WHERE comm > 0.12;
/* city */
SELECT *
FROM Customers1
WHERE city1 = "Rome";
/* rating */
SELECT *
FROM Customers1
WHERE rating1 = 100
    OR rating1 = 300;
/* amt */
SELECT *
FROM Orders1
WHERE amt1 < 1000;
/* city, rating */
SELECT *
FROM Customers1
WHERE city1 = "Rome"
    AND rating1 = 200;
/* city, rating */
SELECT *
FROM Customers1
WHERE city1 = "Berlin"
    OR rating1 = 300;