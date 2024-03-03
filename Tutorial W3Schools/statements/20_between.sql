-- Selecciona valores dentro de un rango determinado. Los valores pueden ser números, texto o fechas.
-- EL operador BETWEEN es inclusivo: se incluyen los valores inicial y final
-- Seleccione todos los productos con un precio entre 10 y 20
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;

-- NOT BETWEEN
SELECT *
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

-- BETWEEN with IN
-- Selecciona todos los productos con un precio entre 10 y 20. Además, el ID de categoría debe ser 1, 2 o 3
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20 AND CategoryID IN(1, 2, 3);

-- BETWEEN Text Values
-- Selecciona alfabéticamente todos los productos con un ProductName entre Carnarvon Tigers y Mozzarella di Giovanni
SELECT *
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella
di Giovanni'
ORDER BY ProductName;
-- Selecciona todos los productos con un ProductName entre Carnarvon Tigers y Chef Anton's Cajun Seasoning
SELECT *
FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton'
s Cajun Seasoning";

-- NOT BETWEEN Text Values
-- Selecciona todos los productos con un ProductName que no esté entre Carnarvon Tigers y Mozzarella di Giovanni
SELECT *
FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozarella di Giovanni';

-- BETWEEN Dates
-- Selecciona todos los pedidos con una fecha de pedido entre '01-julio-1996' y '31-julio-1996'
-- SELECT *
-- FROM Orders
-- WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996
-- #;