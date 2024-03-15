-- Filtrar registros

-- Seleccione todos los clientes de México
SELECT *
FROM Customers
WHERE Country='Mexico';

SELECT *
FROM Customers
WHERE CustomerId=1;

-- Operadores en la cláusula where
--Seleccione todos los clientes con un CustomerID superior a 80
SELECT *
FROM Customers
WHERE CustomerID > 80;

-- Selecciona los registros de los clientes donde el campo city tenga los valores Paris y London
SELECT *
FROM Customers
WHERE City IN('Paris', 'London');