-- Le permite especificar múltiples valores en una cláusula where
-- Es una abreviatura de múltiples condiciones OR
-- Devolver todos los clientes de 'Germany', 'France' o 'UK'
SELECT *
FROM Customers
WHERE Country IN('Germany', 'France', 'UK');

-- NOT IN
-- Devolver todos los clientes que NO sean de 'Germany', 'France' o 'UK'
SELECT *
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- IN(SELECT)
-- Devuelve todos los clientes que tienen un pedido en la tabla 'Orders'
SELECT *
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
FROM Orders);

-- NOT IN(SELECT)
-- Devuelve todos los clientes que NO han realizado ningún pedido en la tabla Orders
SELECT *
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID
FROM Orders);