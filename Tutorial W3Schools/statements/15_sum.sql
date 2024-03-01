-- Devuelve la suma total de una columna numérica
-- Devuelve la suma de todos los valores del campo Quantity de la tabla OrderDetails
SELECT SUM(Quantity)
FROM OrderDetails;

-- Agregar una cláusula where
-- Devuelve el número de pedidos realizados para el producto con ProductID igual a 11
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductID=11;

-- Utilice un alias
SELECT SUM(Quantity) AS total
FROM OrderDetails;

-- sum() con una expresión
SELECT SUM(Quantity * 10)
FROM OrderDetails;