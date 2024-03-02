-- Devuelve el valor promedio de una columna numérica
-- Encuentre el precio promedio de todos los productos
SELECT AVG(Price)
FROM Products;

-- Agregar una cláusula where
-- Devuelve el precio medio de los productos de la categoría 1
SELECT AVG(Price)
FROM Products
WHERE CategoryID=1;

-- Utilice un alias
-- Nombra la columna "average price"
SELECT AVG(Price) AS [average price]
FROM Products;

-- Higher than average
-- Devolver todos los productos con un precio superior al precio medio
SELECT *
FROM Products
WHERE Price > (SELECT AVG(Price)
FROM Products);