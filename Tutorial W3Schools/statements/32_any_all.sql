-- Los operadores ANY y ALL le permiten realizar una comparación entre un valor de una sola columna y un rango de otros valores

-- El operador ANY
-- Devuelve un valor booleano como resultado, devuelve verdadero si cualquiera de los valores de la subconsulta cumple la condición

-- El operador ALL
-- Devuelve un valor booleano como resultado, devuelve verdadero si todos los valores de la subconsulta cumplen la condición. Es utilizado con declaraciones SELECT, WHERE y HAVING

-- Enumera el nombre del producto si encuentra cualquier registro en la tabla OrderDetails que tenga una cantidad igual a 10 (esto devolverá verdadero porque la columna cantidad tiene algunos valores de 10)
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID
FROM OrderDetails
WHERE Quantity=10);

-- Enumera el nombre del producto si encuentra cualquier registro en la tabla OrderDetails que tenga una cantidad mayor que 99 (esto delvolverá verdadero porque la columna cantidad tiene algunos valores mayores que 99)
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID
FROM OrderDetails
WHERE Quantity > 99);

-- Enumera el nombre del producto si encuentra cualquier registro en la tabla OrderDetails que tenga una cantidad mayor que 1000 (esto devolverá falso porque la columna cantidad no tiene valores mayores que 1000)
SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID
FROM OrderDetails
WHERE Quantity > 1000);

-- Enumera todos los nombres de productos
-- SELECT ALL ProductName
-- FROM Products
-- WHERE TRUE;  

-- Enumera el nombre del producto si todos los registros en la tabla OrderDetails tienen una cantidad igual a 10. Por supuesto, esto devolverá falso porque la columna cantidad tiene muchos valores diferentes (no solo el valor de 10)
SELECT ProductName
FROM Products
WHERE ProductID = ALL (SELECT ProductID
FROM OrderDetails
WHERE Quantity=10);