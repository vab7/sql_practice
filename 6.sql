use belousov5;
SELECT DISTINCT city1
FROM Customers1;
SELECT DISTINCT rating1
FROM Customers1;
SELECT DISTINCT comm
FROM SalesPeople1;
SELECT *
FROM SalesPeople1
WHERE city = "London";
SELECT *
FROM SalesPeople1
WHERE comm > 0.12;
SELECT *
FROM Customers1
WHERE city1 = "Rome";
SELECT *
FROM Customers1
WHERE rating1 = 100
    OR rating1 = 300;
SELECT *
FROM Orders1
WHERE amt1 < 1000;
SELECT *
FROM Customers1
WHERE city1 = "Rome"
    AND rating1 = 200;
SELECT *
FROM Customers1
WHERE city1 = "Berlin"
    OR rating1 = 300;