-- La función MIN devuelve el valor más pequeño de la columna seleccionada
-- La función MAX devuelve el valor más grande de la columna seleccionada 

-- Encuentra el precio más bajo
SELECT MIN(Price)
FROM Products;

-- Encuentra el precio más alto
SELECT MAX(Price)
FROM Products;

-- Establecer nombre de columna (alias)
SELECT MIN(Price) AS SmallestPrice
FROM Products;